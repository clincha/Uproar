<#import "layout.ftl" as layout>
<#import "navbar.ftl" as navbar>
<@layout.standardPage; section>
<#if section = "scripts">
<#-- javascript tags go in here -->
    <script>
        function openTab(evt, tabName) {
            var i, content, links;
            content = document.getElementsByClassName("content");
            for (i = 0; i < content.length; i++) {
                content[i].style.display = "none";
            }
            links = document.getElementsByClassName("links");
            for (i = 0; i < links.length; i++) {
                links[i].className = links[i].className.replace(" active", "");
            }
            document.getElementById(tabName).style.display = "block";
            evt.targetarget.className += " active";
        }
    </script>
</#if>
<#if section = "styles">
<#-- Import your stylesheets here -->
    <link rel="stylesheet" type="text/css" href="eventheader.css">
    <link rel="stylesheet" type="text/css" href="css/search.css">
    <link rel="stylesheet" type="text/css" href="css/tabs.css">
</#if>
<#if section="content">

<!-- Image and text -->
<#--<@navbar.navbar></@navbar.navbar> <br><br><br><br><br>-->

<nav class="navbar navbar-dark bg-dark">
    <a class="navbar-brand" href="#">
        Navbar to go hear
    </a>
</nav>

<br/>
    <br/>
    <div class="container">
        <div class="search_box">
        <input type="text" placeholder="Search Events">
        <i class="fa fa-search search-icon"></i>
    </div>
    <div class="container shadow p-3 mb-5 bg-white rounded ">
        <div class="card ">
            <img class="card-img-top" src="image/blank-profile.png" alt="Card image cap">
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            </div>
        </div>

        <h2>Quick Access </h2>
        <p>View Content Quickly</p>

        <div class="tabs">
            <button class="links" onclick="openTab(event, 'Tickets')">Tickets</button>
            <button class="links" onclick="openTab(event, 'Societies')">Societies</button>
            <button class="links" onclick="openTab(event, 'Tickets-placed-up-for-grabs')">Tickets put up for grabs</button>
        </div>

        <div id="Tickets" class="tab-content content">
            <h3>Tickets</h3>
            <div class="card-deck">
                <div class="card">
                    <img src="../image/Placeholder.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a wider card with supporting text below...<br/> <a> read more</a>
                        </p>

                        <a href="#" class="btn btn-danger btn-lg">Sell Ticket</a>
                    </div>
                </div>
                <div class="card">
                    <img src="../image/Placeholder.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a wider card with supporting text below...<br/> <a> read more</a>
                        </p>

                        <a href="#" class="btn btn-danger btn-lg">Sell Ticket</a>
                    </div>
                </div>
                <div class="card">
                    <img src="../image/Placeholder.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a wider card with supporting text below...<br/> <a> read more</a>
                        </p>

                        <a href="#" class="btn btn-danger btn-lg">Sell Ticket</a>
                    </div>
                </div>
                <div class="card">
                    <img src="../image/Placeholder.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a wider card with supporting text below...<br/> <a> read more</a>
                        </p>

                        <a href="#" class="btn btn-danger btn-lg">Sell Ticket</a>
                    </div>
                </div>
            </div>

        </div>

        <div id="Societies" class="tab-content content">
            <h3>Societies</h3>
            <p>Society 1.</p>
            <p>Society 1.</p>
            <p>Society 1.</p>
            <p>Society 1.</p>
        </div>

        <div id="Tickets-placed-up-for-grabs" class="tab-content content">
            <h3>Tickets-placed-up-for-grabs</h3>
            <div class="card-deck">
                <div class="card">
                    <img src="../image/Placeholder.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a wider card with supporting text below...<br/> <a> read more</a>
                        </p>

                        <a href="#" class="btn btn-danger btn-lg">Sold</a>
                    </div>
                </div>
                <div class="card">
                    <img src="../image/Placeholder.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a wider card with supporting text below...<br/> <a> read more</a>
                        </p>

                        <a href="#" class="btn btn-danger btn-lg">Sold</a>
                    </div>
                </div>
                <div class="card">
                    <img src="../image/Placeholder.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a wider card with supporting text below...<br/> <a> read more</a>
                        </p>

                        <a href="#" class="btn btn-danger btn-lg">Sold</a>
                    </div>
                </div>
                <div class="card">
                    <img src="../image/Placeholder.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a wider card with supporting text below...<br/> <a> read more</a>
                        </p>

                        <a href="#" class="btn btn-danger btn-lg">Sold</a>
                    </div>
                </div>
            </div>

        </div>

        <hr/>

        <div class="my-3 shadow p-3 mb-5 bg-white rounded">
            <h6 class="border-bottom border-gray pb-2 mb-0">Recent updates</h6>
            <div class="media text-muted pt-3">
                <svg class="bd-placeholder-img mr-2 rounded" width="32" height="32" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 32x32"><title>Placeholder</title><rect width="100%" height="100%" fill="#007bff"></rect><text x="50%" y="50%" fill="#007bff" dy=".3em">32x32</text></svg>
                <p class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
                    <strong class="d-block text-gray-dark">@Rugby</strong>
                    Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.
                </p>
            </div>
            <div class="media text-muted pt-3">
                <svg class="bd-placeholder-img mr-2 rounded" width="32" height="32" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 32x32"><title>Placeholder</title><rect width="100%" height="100%" fill="#e83e8c"></rect><text x="50%" y="50%" fill="#e83e8c" dy=".3em">32x32</text></svg>
                <p class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
                    <strong class="d-block text-gray-dark">@Ice-Hockey</strong>
                    Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.
                </p>
            </div>
            <div class="media text-muted pt-3">
                <svg class="bd-placeholder-img mr-2 rounded" width="32" height="32" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 32x32"><title>Placeholder</title><rect width="100%" height="100%" fill="#6f42c1"></rect><text x="50%" y="50%" fill="#6f42c1" dy=".3em">32x32</text></svg>
                <p class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
                    <strong class="d-block text-gray-dark">@Swimming</strong>
                    Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.
                </p>
            </div>
            <div class="media text-muted pt-3">
                <svg class="bd-placeholder-img mr-2 rounded" width="32" height="32" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 32x32"><title>Placeholder</title><rect width="100%" height="100%" fill="#6f42c1"></rect><text x="50%" y="50%" fill="#6f42c1" dy=".3em">32x32</text></svg>
                <p class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
                    <strong class="d-block text-gray-dark">@Swimming</strong>
                    Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.
                </p>
            </div>
            <small class="d-block text-right mt-3">
                <a href="#">All updates</a>
            </small>
        </div>

    </div>
</#if>
</@layout.standardPage>