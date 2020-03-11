<#import "layout.ftl" as layout>
<#import "header.ftl" as header>

<@layout.standardPage; section>

    <#if section = "scripts">

        <script type="text/javascript">

        </script>

    </#if>
    <#if section = "styles">
        <link rel="stylesheet" type="text/css"
              href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
              crossorigin="anonymous">
        <!-- Icons and fonts -->
        <link rel="stylesheet" type="text/css"
              href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css"
              href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding&display=swap">
        <link rel="stylesheet" type="text/css"
              href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
        <link rel="stylesheet" type="text/css" href="css/search.css">
    </#if>
    <#if section="content">
        <body>
        <!-- Image and text -->
        <nav class="navbar navbar-dark bg-dark">
            <a class="navbar-brand" href="#">
                Navbar to go hear
            </a>
        </nav>

        </nav>
        <section>
            <br/>
            <div class="container">
                <h1>
                    Search Events
                </h1>
                <div class="col-sm-12"></div>
                <div class="search_box">
                    <input type="text" placeholder="Search Events">
                    <i class="fa fa-search search-icon"></i>
                </div>
                <div>
                    <br/>
                    <div class col-sm-3>c
                        <h3 id="filter">Filters</h3>
                        <div class="row">
                            <div class="col-12">

                                <!-- Filters -->
                                <div class="btn-group-justified btn-group-expand-lg mb-10" role="group">
                                    <div class="btn-group dropdown">

                                        <!-- Toggle -->
                                        <button class="btn btn-sm btn-block btn-outline-border dropdown-toggle"
                                                data-toggle="dropdown" data-display="static">
                                            Sort by
                                        </button>

                                        <!-- Menu -->
                                        <form class="dropdown-menu">
                                            <div class="card">
                                                <div class="card-body">

                                                    <!-- Form group -->
                                                    <div class="form-group-overflow">
                                                        <div class="custom-control custom-control-text mb-3">
                                                            <input class="custom-control-input" id="sortOne" name="sort"
                                                                   type="radio" value="Default">
                                                            <label class="custom-control-label"
                                                                   for="sortOne">Default</label>
                                                        </div>
                                                        <div class="custom-control custom-control-text mb-3">
                                                            <input class="custom-control-input" id="sortTwo" name="sort"
                                                                   type="radio" value="Newest">
                                                            <label class="custom-control-label"
                                                                   for="sortTwo">Newest</label>
                                                        </div>
                                                        <div class="custom-control custom-control-text mb-3">
                                                            <input class="custom-control-input" id="sortThree"
                                                                   name="sort" type="radio" value="Most Popular">
                                                            <label class="custom-control-label" for="sortThree">Most
                                                                Popular</label>
                                                        </div>
                                                        <div class="custom-control custom-control-text mb-3">
                                                            <input class="custom-control-input" id="sortFour"
                                                                   name="sort" type="radio" value="Default Price">
                                                            <label class="custom-control-label" for="sortFour">Default
                                                                Price</label>
                                                        </div>
                                                        <div class="custom-control custom-control-text">
                                                            <input class="custom-control-input" id="sortFive"
                                                                   name="sort" type="radio" value="Highest Price">
                                                            <label class="custom-control-label" for="sortFive">Highest
                                                                Price</label>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </form>

                                    </div>
                                    <div class="btn-group dropdown">

                                        <!-- Toggle -->
                                        <button class="btn btn-sm btn-block btn-outline-border dropdown-toggle"
                                                data-toggle="dropdown" data-display="static">
                                            Category
                                        </button>

                                        <!-- Menu -->
                                        <form class="dropdown-menu">
                                            <div class="card">
                                                <div class="card-body">

                                                    <!-- Form group -->
                                                    <div class="form-group-overflow">
                                                        <div class="custom-control custom-checkbox mb-3">
                                                            <input class="custom-control-input" id="categoryOne"
                                                                   name="category" type="checkbox" value="All Products">
                                                            <label class="custom-control-label" for="categoryOne">All
                                                                Categories</label>
                                                        </div>
                                                        <div class="custom-control custom-checkbox mb-3">
                                                            <input class="custom-control-input" id="categoryTwo"
                                                                   name="category" type="checkbox"
                                                                   value="Blouses and Shirts">
                                                            <label class="custom-control-label" for="categoryTwo">Food
                                                                and Drink</label>
                                                        </div>
                                                        <div class="custom-control custom-checkbox mb-3">
                                                            <input class="custom-control-input" id="categoryThree"
                                                                   name="category" type="checkbox"
                                                                   value="Coats and Jackets">
                                                            <label class="custom-control-label" for="categoryThree">Music</label>
                                                        </div>
                                                        <div class="custom-control custom-checkbox mb-3">
                                                            <input class="custom-control-input" id="categoryFour"
                                                                   name="category" type="checkbox" value="Dresses">
                                                            <label class="custom-control-label" for="categoryFour">
                                                                Network/meet and greet</label>
                                                        </div>
                                                        <div class="custom-control custom-checkbox mb-3">
                                                            <input class="custom-control-input" id="categoryFive"
                                                                   name="category" type="checkbox"
                                                                   value="Hoodies and Sweats">
                                                            <label class="custom-control-label" for="categoryFive">Non
                                                                student friendly</label>
                                                        </div>
                                                        <div class="custom-control custom-checkbox mb-3">
                                                            <input class="custom-control-input" id="categorySix"
                                                                   name="category" type="checkbox" value="Denim">
                                                            <label class="custom-control-label"
                                                                   for="categorySix">Sports</label>
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="card-footer d-flex flex-nowrap border-top">
                                                    <button class="btn btn-outline-info btn-sm" type="reset">
                                                        Clear
                                                    </button>
                                                    <button class="btn btn-primary btn-sm ml-2" type="submit">
                                                        Show Results
                                                    </button>

                                                </div>
                                            </div>
                                        </form>

                                    </div>
                                    <div class="btn-group dropdown">

                                        <!-- Toggle -->
                                        <button class="btn btn-sm btn-block btn-outline-border dropdown-toggle"
                                                data-toggle="dropdown" data-display="static">
                                            Season
                                        </button>

                                        <!-- Menu -->
                                        <form class="dropdown-menu">
                                            <div class="card">
                                                <div class="card-body">

                                                    <!-- Form group -->
                                                    <div class="form-group-overflow">
                                                        <div class="custom-control custom-checkbox mb-3">
                                                            <input class="custom-control-input" id="seasonOne"
                                                                   name="category" type="checkbox" value="Summer">
                                                            <label class="custom-control-label"
                                                                   for="seasonOne">Summer</label>
                                                        </div>
                                                        <div class="custom-control custom-checkbox mb-3">
                                                            <input class="custom-control-input" id="seasonTwo"
                                                                   name="category" type="checkbox" value="Winter">
                                                            <label class="custom-control-label"
                                                                   for="seasonTwo">Winter</label>
                                                        </div>
                                                        <div class="custom-control custom-checkbox mb-3">
                                                            <input class="custom-control-input" id="seasonThree"
                                                                   name="category" type="checkbox"
                                                                   value="Spring &amp; Fall">
                                                            <label class="custom-control-label" for="seasonThree">Spring
                                                                &amp;</label>
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="card-footer d-flex flex-nowrap border-top">
                                                    <button class="btn btn-outline-info btn-sm" type="reset">
                                                        Clear
                                                    </button>
                                                    <button class="btn btn-primary btn-sm ml-2" type="submit">
                                                        Show Results
                                                    </button>

                                                </div>
                                            </div>
                                        </form>

                                    </div>

                                    <div class="btn-group dropdown show">

                                        <!-- Toggle -->
                                        <button class="btn btn-sm btn-block btn-outline-border dropdown-toggle"
                                                data-toggle="dropdown" data-display="static" aria-expanded="true">
                                            Price
                                        </button>

                                        <!-- Menu -->
                                        <form class="dropdown-menu show">
                                            <div class="card">
                                                <div class="card-body">

                                                    <!-- Form group -->
                                                    <div class="form-group-overflow">
                                                        <div class="custom-control custom-checkbox mb-3">
                                                            <input class="custom-control-input" id="priceOne"
                                                                   type="checkbox">
                                                            <label class="custom-control-label" for="priceOne">
                                                                Free
                                                            </label>
                                                        </div>
                                                        <div class="custom-control custom-checkbox mb-3">
                                                            <input class="custom-control-input" id="priceTwo"
                                                                   type="checkbox">
                                                            <label class="custom-control-label" for="priceTwo">
                                                                £5-£10
                                                            </label>
                                                        </div>
                                                        <div class="custom-control custom-checkbox mb-3">
                                                            <input class="custom-control-input" id="priceThree"
                                                                   type="checkbox">
                                                            <label class="custom-control-label" for="priceThree">
                                                                £10-£15
                                                            </label>
                                                        </div>
                                                        <div class="custom-control custom-checkbox">
                                                            <input class="custom-control-input" id="priceFour"
                                                                   type="checkbox">
                                                            <label class="custom-control-label" for="priceFour">
                                                                £15 and more
                                                            </label>
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="card-footer d-flex flex-nowrap border-top">

                                                    <!-- Buttons -->
                                                    <button class="btn btn-outline-info btn-sm" type="reset">
                                                        Clear
                                                    </button>
                                                    <button class="btn btn-primary btn-sm ml-2" type="submit">
                                                        Show Results
                                                    </button>

                                                </div>
                                            </div>
                                        </form>

                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <br/>
        </section>

            <div class="container ">
                <h1>Search Results</h1>
                <div class="bg-white rounded shadow-sm">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="card">
                                <a href="/event/1">
                                    <img src="../image/Placeholder.jpg" class="card-img-top" alt="...">
                                </a>
                                <div class="card-body">
                                    <h5 class="card-title">Event Example</h5>
                                    <p class="card-text">Here we will need the bio of the event, can just have event
                                        name,
                                        time
                                        place society etc</p>
                                </div>
                            </div>

                            <div class="card">
                                <a href="/event/1">
                                    <img src="../image/Placeholder.jpg" class="card-img-top" alt="...">
                                </a>
                                <div class="card-body">
                                    <h5 class="card-title">Event Example</h5>
                                    <p class="card-text">Here we will need the bio of the event, can just have event
                                        name,
                                        time
                                        place society etc</p>
                                </div>
                            </div>
                            <div class="card">
                                <a href="/event/1">
                                    <img src="../image/Placeholder.jpg" class="card-img-top" alt="...">
                                </a>
                                <div class="card-body">
                                    <h5 class="card-title">Event Example</h5>
                                    <p class="card-text">Here we will need the bio of the event, can just have event
                                        name,
                                        time
                                        place society etc</p>
                                </div>
                            </div>


                        </div>
                        <div class="col-sm-6">
                            <div class="mapouter">
                                <div class="gmap_canvas">
                                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2494.834994965505!2d1.0657662934985892!3d51.29576052639414!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47decba691cd5653%3A0x559a97b0c841cf74!2sThe%20Venue!5e0!3m2!1sen!2sus!4v1583787854488!5m2!1sen!2sus"
                                            width="800" height="600" frameborder="0" style="border:0;"
                                            allowfullscreen=""></iframe>
                                </div>


                            </div>
                        </div>


                    </div>


                </div>
            </div>
        </body>


    </#if>
</@layout.standardPage>
