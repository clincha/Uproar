<#macro create events>
    <#import "navbar.ftl" as navbar>

    <head>
        <link rel="stylesheet" href="./style.css">

        <link href="http://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet"
              id="bootstrap-css">
    </head>

    <body>

    <nav>
        <@navbar.navbar></@navbar.navbar>
    </nav>

    <section id="page-title">
        <div class="banner-image">
            <h1> Create an Event</h1>
        </div>
    </section>

    <div class="container">

        <form>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputEmail4">Event Name</label>
                    <input type="email" class="form-control" placeholder="Event Name">
                </div>
                <div class="form-group col-md-6">
                    <label for="inputPassword4">Society</label>
                    <input type="password" class="form-control">
                </div>
            </div>
            <div class="form-group">
                <label for="inputAddress">Address line 1</label>
                <input type="text" class="form-control" id="iAddress" placeholder="example avenue">
            </div>
            <div class="form-group">
                <label for="inputAddress2">Address line 2</label>
                <input type="text" class="form-control" id="Address2">
            </div>

            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputCity">City</label>
                    <input type="text" class="form-control" id="inputCity">
                </div>

                <div class="form-group col-md-2">
                    <label for="inputZip">Postcode</label>
                    <input type="text" class="form-control">
                </div>
            </div>

            <button type="submit" class="btn btn-primary">Create event</button>
        </form>
    </div>

    </body>
</#macro>