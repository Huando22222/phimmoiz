<div class="container">
    <div class="row mt-5 mb-5">
        <div class="col-md-4">
            <form action="" method="POST" role="form">
                @csrf
                <legend>Đặt lại mật khẩu</legend>

                <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-prepend">
                            <label for="">password</label>
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
                    <label for="">Confirm password</label>
                    <input type="password" class="form-control" name="confirm_password" placeholder="Input field">

                    @error('confirm_password')
                        <small>{!!$message !!}</small>
                    @enderror
                </div>

                <button type="submit" class="btn btn-primary">Đặt lại mật khẩu</button>
            </form>
        </div>
    </div>
</div>

<style>
    /* Custom CSS for resetting password form */

.container {
    margin-top: 50px;
}

.form-group {
    margin-bottom: 20px;
}

.btn-primary {
    background-color: #007bff;
    border-color: #007bff;
}

.btn-primary:hover {
    background-color: #0056b3;
    border-color: #0056b3;
}

legend {
    margin-bottom: 20px;
}

/* Style for password visibility toggle button */
#togglePassword {
    cursor: pointer;
}

/* Responsive adjustments */
@media (max-width: 768px) {
    .col-md-4 {
        width: 100%;
    }

}

</style>


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