<html>
<title>Login</title>
<head>
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.slim.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="mainbody">
    <div class="loginBox">
        <div class="container-fluid">
            <div class="row no-gutter">
                <div class="d-none d-md-flex col-md-4 col-lg-6 bg-image"></div>
                <div class="col-md-8 col-lg-6">
                    <div class="login d-flex align-items-center py-5">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-9 col-lg-8 mx-auto">
                                    <h3 class="login-heading mb-4">Sign-In!</h3>
                                    <form>
                                        <div class="form-label-group">
                                            <input type="email" id="inputEmail" class="form-control"
                                                   placeholder="Email address" required autofocus>
                                            <label for="inputEmail">Email address</label>
                                        </div>
                                        <br>
                                        <br>
                                        <div class="form-label-group">
                                            <input type="password" id="inputPassword" class="form-control"
                                                   placeholder="Password" required>
                                            <label for="inputPassword">Password</label>
                                        </div>
                                        <div class="custom-control custom-checkbox mb-3">
                                            <input type="checkbox" class="custom-control-input" id="customCheck1">
                                            <label class="custom-control-label" for="customCheck1">Remember
                                                password</label>
                                        </div>
                                        <button class="btn btn-lg btn-info btn-block btn-login text-uppercase font-weight-bold mb-2"
                                                type="submit">Sign in
                                        </button>
                                        <div class="text-center">

                                            <div class="ssolink"><a href="/sso">
                                                    <button class="btn btn-lg btn-info btn-block btn-login text-uppercase font-weight-bold mb-2"
                                                            type="button">Sign in with Kent ID
                                                    </button>
                                                    <div class="text-center">
                                                </a>
                                            </div>

                                            <br>
                                            <a class="small" href="/passwordreset">Forgot password?</a></div>
                                        <br>
                                        <a class="small" href="/signup">Don't have an account? Create one now!</a>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="foot">
            <a href="/"><h1>UpRoar</h1></a>
        </div>
    </div>
</div>
</body>
</html>