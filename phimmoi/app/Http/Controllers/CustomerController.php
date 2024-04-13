<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Customer;
use Laravel\Socialite\Facades\Socialite;
use Illuminate\Support\Facades\Auth;

use PragmaRX\Tracker\Vendor\Laravel\Facade as Tracker;
use PragmaRX\Tracker\Vendor\Laravel\Support\Session;
use Illuminate\Support\Facades\Mail;
use Laravel\Socialite\Two\Token;
use Illuminate\Support\Str;
//h
use App\Mail\RandomCodeMail;

class CustomerController extends Controller
{
    public function showLoginForm()
    {
        return view('pages.login');
    }

    public function login(Request $request)
    {
        $user = $request->input('user');
        $password = $request->input('password');
    
        $customer = Customer::where('user', $user)->first();
    
        if ($customer && password_verify($password, $customer->password)) {
            session(['user' => $user, 'customer_id' => $customer->id_customer]);
            return redirect()->route('homepage'); 
        }
    
        return redirect()->route('login2')->with('error', 'Đăng nhập không thành công.');
    }

    public function showRegistrationForm()
    {
        return view('pages.register');
    }

    public function sendCode(Request $request)
    {
        $email = $request->input('email');

        $existingCustomer = Customer::where('email', $email)->first();

        if ($existingCustomer) {
            return response()->json(['error' => 'Địa chỉ email này đã được sử dụng.']);
        }
        
        if ($email) {
            // Generate random 6-character code
            $code = strtoupper(Str::random(6));

            // Send email
            Mail::to($email)->send(new RandomCodeMail($code));
            $request->session()->put('confirmation_code', $code);

            return response()->json(['message' => 'Mã đã được gửi đến email của bạn.']);
        } else {
            return response()->json(['error' => 'Vui lòng nhập địa chỉ email trước khi gửi mã.']);
        }
    }
     
    public function register(Request $request)
    {
        $data = $request->validate([
            'user' => 'required|unique:customers',
            'email' => 'required|email|unique:customers',
            'password' => 'required|min:8|max:16|regex:/^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,16}$/',
            'fullname' => 'required',
            'dob' => 'required|date',
        ], [
            'password.regex' => 'Mật khẩu phải chứa ít nhất một ký tự đặc biệt.'
        ]);
    
        // Lấy mã xác nhận từ form
        $confirmation_code = $request->input('confirmation_code');
    
        // Lấy mã xác nhận từ session
        $stored_code = $request->session()->get('confirmation_code');
    
        // Kiểm tra xem mã xác nhận có tồn tại và khớp với mã lưu trong session hay không
        if(!$confirmation_code || $confirmation_code != $stored_code){
            return redirect()->back()->with('error', 'Mã xác nhận không đúng.');
        }
    
        $data['password'] = password_hash($data['password'], PASSWORD_DEFAULT);
    
        Customer::create($data);
    
        return redirect()->route('login2')->with('success', 'Đăng ký thành công. Đăng nhập để tiếp tục.');
    }
    

    public function logout()
    {
        session()->forget('user');

        return redirect()->route('homepage');
    }

    public function index()
    {
        $customer = Customer::all(); // Lấy tất cả comment từ cơ sở dữ liệu
        return view('admincp.customer.index', ['customer' => $customer]); // Trả về view index và truyền dữ liệu comments vào view


        // return redirect()->route('login2')->with('success', 'Đăng ký thành công. Đăng nhập để tiếp tục.');
    }


     public function destroy($id_customer)
    {
        customer::find($id_customer)->delete();
        return redirect()->back();
    }


    public function redirectToGoogle()
{
    return Socialite::driver('google')->redirect();
}

// public function handleGoogleCallback()
// {
//     // Lấy thông tin người dùng từ Google
//     $googleUser = Socialite::driver('google')->user();

//     // Kiểm tra xem người dùng đã đăng nhập hay chưa
//     $existingCustomer = Customer::where('user', $googleUser->getEmail())->first();

//     if ($existingCustomer) {
//         // Nếu người dùng đã tồn tại trong cơ sở dữ liệu, đăng nhập người dùng
//         Auth::login($existingCustomer);

//         return redirect('/home'); // Hoặc đường dẫn tùy chỉnh của bạn
//     } else {
//         // Ngược lại, người dùng chưa tồn tại trong cơ sở dữ liệu, đăng ký người dùng mới
//         $newCustomer = new Customer();
//         $newCustomer->user = $googleUser->getEmail();
//         $newCustomer->password = bcrypt(str_random(8)); // Tạo mật khẩu ngẫu nhiên hoặc sử dụng phương thức khác để tạo mật khẩu
//         $newCustomer->fullname = $googleUser->getName();
//         $newCustomer->dob = $googleUser->user['birthday'] ?? null; // Tùy thuộc vào cách Google trả về thông tin ngày sinh

//         $newCustomer->save();

//         // Đăng nhập người dùng mới
//         Auth::login($newCustomer);

//         return redirect('/home'); // Hoặc đường dẫn tùy chỉnh của bạn
//     }
// }

public function testEmail()
{

    $name = 'Nguyễn Trịnh Minh Quang';   
    Mail::send('emails.test', ['name' => $name], function($message) {
        $message->to('minhquang2002nt@gmail.com', 'Minh Quang')->subject('Test email');
    });
}
public function forgetPass()
{
    return view('pages.forgetPass');
}
public function postForgetPass(Request $request)
{
    $request->validate([
        'email' => 'required|exists:customers,email' // Cập nhật điều kiện tồn tại của email trong bảng customers
    ], [
        'email.required' => 'Vui lòng nhập địa chỉ email hợp lệ',
        'email.exists' => 'Email này không tồn tại trong hệ thống'
    ]);

    $token = strtoupper(Str::random(10));
    $customer = Customer::where('email', $request->email)->first();
    $customer->update(['token' => $token]);

    Mail::send('emails.check_email_forget', compact('customer'), function($email) use($customer) {
        $email->subject('Lấy lại mật khẩu');
        $email->to($customer->email,$customer->name);
    });

    return redirect()->back()->with('yes', 'Mã xác nhận đã được gửi đến email của bạn');
}
public function getPass(Customer $customer, $token)
{
    if($customer->token === $token){
        return view('pages.getPass');
    }
    return abort(404);
}
public function postGetPass(Customer $customer, $token, Request $request)
{
    $request->validate([
        'password' => 'required|min:8|max:16|regex:/^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,16}$/',
        'confirm_password' => 'required|same:password',
    ]);

    $password_h = bcrypt($request->password);
    $customer->update(['password' => $password_h, 'token' => null]);
    return redirect()->route('login2')->with('Yes','Đổi mật khẩu thành công, bạn có thể đăng nhập');
}




}