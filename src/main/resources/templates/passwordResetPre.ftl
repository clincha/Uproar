<#import "layout.ftl" as layout>
<@layout.standardPage title="Create an account"; section>
    <#if section = "styles">
        <link rel="stylesheet" href="css/login.css">
    </#if>
    <#if section="content">
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
                                            <h3 class="login-heading mb-4">Enter your email</h3>
                                            <h4 class="login-heading mb-5">If you have an account with the email
                                                entered, a reset link will be emailed</h4>
                                            <form>
                                                <div class="form-label-group">
                                                    <input type="email" id="inputEmail" class="form-control"
                                                           placeholder="Email address" required autofocus>
                                                    <label for="inputEmail">Email address</label>
                                                </div>
                                                <button class="btn btn-lg btn-info btn-block btn-login text-uppercase font-weight-bold mb-2"
                                                        type="submit">Reset Password
                                                </button>
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
    </#if>
</@layout.standardPage>
