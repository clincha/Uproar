<#import "../layout.ftl" as layout>
<#import "../navbar.ftl" as navbar>
<@layout.standardPage; section>
    <#if section = "scripts">
    <#-- javascript tags go in here -->
    </#if>
    <#if section = "styles">
    <#-- Import your stylesheets here -->
        <link rel="stylesheet" type="text/css" href="css/search.css">
        <link rel="stylesheet" href="/css/eventheader.css">
        <link rel="stylesheet" href="/css/ufg.css">
    </#if>
    <#if section="content">

        <!-- Image and text -->
        <#-- <nav class="navbar navbar-dark bg-dark">
            <a class="navbar-brand" href="#">
                Navbar to go hear
            </a>
        </nav> -->
        <@navbar.navbar/><br><br><br><br>

        <br/>
        <section>
            <br/>
            <div class="container">
                <h1>
                    Tickets Up for Grabs
                </h1>
                <div class="col-sm-12"></div>
                <div class="search_box">
                    <input type="text" placeholder="Search Events">
                </div><br/>
                <div class="ufgbox">
                <div>


                    <div class col-sm-3>
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

        <div class="container">

            <div class="card-deck">
                <div class="card">
                    <img src="../image/Placeholder.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Black Tie Poker Night</h5>
                        <p class="card-text">Black Tie Poker Night hosted by UKC Korean Society<br/>
                        </p>

                        <a href="#" class="btn btn-success btn-lg">Buy Ticket</a>
                        <button type="button" class="btn btn-info btn-lg">Info</button>
                    </div>
                </div>
                <div class="card">
                    <img src="../image/varsity.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Varsity UKC Hockey</h5>
                        <p class="card-text">Come support our boys and girls at the upcoming varsity matches<br/>
                        </p>

                        <a href="#" class="btn btn-success btn-lg">Buy Ticket</a>
                        <button type="button" class="btn btn-info btn-lg">Info</button>
                    </div>
                </div>
                <div class="card">
                    <img src="../image/varsity.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">VolleyBall Varsity</h5>
                        <p class="card-text">Come watch us hold onto our 5 year win streak at this year's varsity for Volleyball!<br/>
                        </p>

                        <a href="#" class="btn btn-success btn-lg">Buy Ticket</a>
                        <button type="button" class="btn btn-info btn-lg">Info</button>
                    </div>
                </div>
                <div class="card">
                    <img src="../image/varsity.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Womans Football Varsity</h5>
                        <p class="card-text">UKC Women's football will be putting out 3 teams this year to Play Christ Church<br/>
                        </p>
                        <div class="buyticket">
                        <a href="#" class="btn btn-success btn-lg">Buy Ticket</a>
                            <button type="button" class="btn btn-info btn-lg">Info</button>
                            </div>
                    </div>
                </div>
            </div>
        </div>
        <br>.
        </div>

        <div class="viewmore">
            <button type="button" class="btn btn-dark">View More Tickets</button>
        </div>

    </#if>
</@layout.standardPage>