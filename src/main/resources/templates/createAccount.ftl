<#import "layout.ftl" as layout>

<@layout.standardPage title="Create Account"; section>
    <#if section = "scripts">
    <#-- javascript tags go in here -->
    </#if>
    <#if section = "styles">
        <link rel="stylesheet" href="css/login.css">
    </#if>
    <#if section="content">
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
                                            <h3 class="login-heading mb-4">Create Account</h3>
                                            <form>
                                                <div class="form-label-group">
                                                    <input type="text" id="InputName" class="form-control"
                                                           placeholder="First Name" required autofocus>
                                                    <label for="InputName">First Name</label>
                                                </div>
                                                <div class="form-label-group">
                                                    <input type="text" id="InputSurname" class="form-control"
                                                           placeholder="Surname" required autofocus>
                                                    <label for="InputSurname"> Surname</label>
                                                </div>


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
                                                <div class="form-label-group">
                                                    <input type="password" id="inputPasswordAgain" class="form-control"
                                                           placeholder="Confirm Password" required>
                                                    <label for="inputPasswordAgain">Confirm Password</label>
                                                </div>


                                                <button class="btn btn-lg btn-info btn-block btn-login text-uppercase font-weight-bold mb-2"
                                                        type="submit">Create Account
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

        </body>
    </#if>
</@layout.standardPage>