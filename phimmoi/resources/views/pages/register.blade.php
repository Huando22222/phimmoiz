<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<script>
var csrfToken = "{{ csrf_token() }}";
</script>

<!DOCTYPE html>
<html>

<head>
    <title>Đăng ký </title>
    <!--Made with love by Mutiullah Samim -->
    <!--Bootsrap 4 CDN-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
        integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <!--Fontawesome CDN-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
        integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

    <!--Custom styles-->
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <div class="container">
        <div class="d-flex justify-content-center h-100">
            <div class="card">
            <form action="{{ route('register2') }}" method="post">
            <div class="card-header">
                @csrf
                <h3>Đăng ký</h3>    
                <form>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-user"></i></span>
                            </div>
                            <input type="text" name="user" class="form-control" placeholder="Tên đăng nhập tài khoản"
                                required>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-envelope"></i></span>
                            </div>
                            <input type="email" name="email" class="form-control" placeholder="Địa chỉ email" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-key"></i></span>
                            </div>
                            <input type="text" name="confirmation_code" class="form-control" placeholder="Mã xác nhận"
                                required>
                            <div class="input-group-append">
                                <button type="button" class="btn btn-secondary" id="sendCode">Gửi mã</button>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-lock"></i></span>
                            </div>
                            <input type="password" name="password" class="form-control" id="password"
                                placeholder="Mật khẩu" required>
                            <div class="input-group-append">
                                <button class="btn btn-outline-secondary" type="button" id="togglePassword">
                                    <i class="fas fa-eye"></i>
                                </button>
                            </div>
                        </div>
                        <ul id="passwordConditions" class="list-unstyled text-danger"></ul>
                    </div>


                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-stamp"></i></span>
                            </div>
                            <input type="text" name="fullname" class="form-control" placeholder="Họ và tên" required>
                        </div>
                    </div>

                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-calendar-alt"></i></span>
                        </div>
                        <input type="date" name="dob" class="form-control" required>
                    </div>

                    <div class="row align-items-center remember">

                    </div>
                    <div class="form-group">
                        <input type="submit" value="Đăng ký" class="btn float-right login_btn">
                        <a href="{{ route('login2') }}" style="color:white; font-weight: bold;">Đã có tài khoản?
                            Đăng nhập ngay</a>
                    </div>

                </form>


            </div>
        </div>
    </div>
    </div>
    </div>
    </div>


</body>


</html>


<style type="text/css">
/* Made with love by Mutiullah Samim*/

@import url('https://fonts.googleapis.com/css?family=Numans');

html,
body {
    background-image: url('https://wallpapers.com/images/featured/c0pujiakubq5rwas.jpg');
    background-size: cover;
    background-repeat: no-repeat;
    height: 100%;
    font-family: 'Numans', sans-serif;
}

.container {
    height: 100%;
    align-content: center;
}

.card {
    height: 500px;
    margin-top: auto;
    margin-bottom: auto;
    width: 400px;
    background-color: rgba(0, 0, 0, 0.5) !important;
}

.social_icon span {
    font-size: 60px;
    margin-left: 10px;
    color: #FFC312;
}

.social_icon span:hover {
    color: white;
    cursor: pointer;
}

.card-header h3 {
    color: white;
}

.social_icon {
    position: absolute;
    right: 20px;
    top: -45px;
}

.input-group-prepend span {
    width: 50px;
    background-color: #FFC312;
    color: black;
    border: 0 !important;
}

input:focus {
    outline: 0 0 0 0 !important;
    box-shadow: 0 0 0 0 !important;

}

.remember {
    color: white;
}

.remember input {
    width: 20px;
    height: 20px;
    margin-left: 15px;
    margin-right: 5px;
}

.login_btn {
    color: black;
    background-color: #FFC312;
    width: 100px;
}

.login_btn:hover {
    color: black;
    background-color: white;
}

.links {
    color: white;
}

.links a {
    margin-left: 4px;
}

.form-group {
    margin-bottom: 20px;
}

.input-group-prepend,
.input-group-append {
    display: flex;
}

.input-group-prepend .input-group-text,
.input-group-append .input-group-text {
    min-width: 40px;
}

.input-group-append .btn {
    border-top-left-radius: 0;
    border-bottom-left-radius: 0;
}

#passwordHelp {
    margin-top: 5px;
    color: white;
}

#passwordConditions li {
    margin-top: 5px;
}
</style>

<!-- mail -->
<script>
var csrfToken = "{{ csrf_token() }}";

$(document).ready(function() {
    $("#sendCode").click(function() {
        var email = $("input[name='email']").val();

        if (email) {
            $.ajax({
                url: "{{ route('send.code') }}",
                type: "POST",
                data: {
                    email: email,
                    _token: csrfToken
                },
                success: function(response) {
                    $("#message").html('<div class="alert alert-success">' + response
                        .message + '</div>');
                },
                error: function(error) {
                    $("#message").html('<div class="alert alert-danger">' + error
                        .responseJSON.error + '</div>');
                }
            });
        } else {
            $("#message").html(
                '<div class="alert alert-danger">Vui lòng nhập địa chỉ email trước khi gửi mã.</div>'
            );
        }
    });

    $("form[action='{{ route('register2') }}']").submit(function(event) {
        var confirmation_code = $("input[name='confirmation_code']").val();
        if (!confirmation_code) {
            event.preventDefault();
            $("#message").html(
                '<div class="alert alert-danger">Vui lòng nhập mã xác nhận trước khi đăng ký.</div>'
            );
        }
    });
});
</script>



<!-- eye -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$(document).ready(function() {
    $("#togglePassword").click(function() {
        var passwordField = $("#password");
        var passwordFieldType = passwordField.attr('type');
        if (passwordFieldType == 'password') {
            passwordField.attr('type', 'text');
            $("#togglePassword").removeClass('fa-eye').addClass('fa-eye-slash');
        } else {
            passwordField.attr('type', 'password');
            $("#togglePassword").removeClass('fa-eye-slash').addClass('fa-eye');
        }
    });
});
</script>

<!-- Pass -->
<script>
document.getElementById('password').addEventListener('input', function() {
    var password = this.value;
    var conditions = document.getElementById('passwordConditions');
    conditions.innerHTML = '';

    if (password.length < 8) {
        conditions.innerHTML += '<li>Mật khẩu phải có ít nhất 8 ký tự.</li>';
    }
    if (password.length > 16) {
        conditions.innerHTML += '<li>Mật khẩu không được quá 16 ký tự.</li>';
    }
    if (!password.match(/[A-Za-z]/)) {
        conditions.innerHTML += '<li>Mật khẩu phải chứa ít nhất một chữ cái.</li>';
    }
    if (!password.match(/\d/)) {
        conditions.innerHTML += '<li>Mật khẩu phải chứa ít nhất một chữ số.</li>';
    }
    if (!password.match(/[@$!%*#?&]/)) {
        conditions.innerHTML += '<li>Mật khẩu phải chứa ít nhất một ký tự đặc biệt (@$!%*#?&).</li>';
    }
});
</script>