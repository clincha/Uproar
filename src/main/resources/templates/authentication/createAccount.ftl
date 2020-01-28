<#import "../layout.ftl" as layout>

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
                                                    <label for="name">First Name</label>
                                                    <input type="text" id="name" name="firstName" class="form-control"
                                                           placeholder="First Name" required autofocus>
                                                </div>
                                                <div class="form-label-group">
                                                    <label for="surname"> Surname</label>
                                                    <input type="text" id="surname" name="lastName" class="form-control"
                                                           placeholder="Surname" required autofocus>
                                                </div>
                                                <div class="form-label-group">
                                                    <label for="email">Email address</label>
                                                    <input type="email" id="email" name="email" class="form-control"
                                                           placeholder="Email address" required autofocus>
                                                </div>
                                                <br>
                                                <div class="form-label-group">
                                                    <label for="password">Password</label>
                                                    <input type="password" id="password" name="password"
                                                           class="form-control"
                                                           placeholder="Password" required>
                                                </div>
                                                <div class="form-label-group">
                                                    <label for="passwordConfirmation">Confirm Password</label>
                                                    <input type="password" id="passwordConfirmation"
                                                           name="passwordConfirmation" class="form-control"
                                                           placeholder="Confirm Password" required>
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