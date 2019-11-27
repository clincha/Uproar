<#import "navbar.ftl" as navbar>
<#macro header>
    <@navbar.navbar/>
    <div class="heading">
        <header>
            <div class="header-text">
                <div class="container">
                    <div class="text-center">
                        <h1 class="display-1"><strong>Find Events Near You!</strong></h1>
                        <p class="lead"> With UpRoar you can explore the latest events and nights out hosted by the
                            clubs
                            and societies near you. Search now to get started!</p>
                    </div>
                    <br/>

                    <div class="search-box">
                        <div class="search-icon"><i class="fa fa-search search-icon"></i></div>
                        <form action="" class="search-form">
                            <input type="text" placeholder="Search" id="search" autocomplete="off">
                        </form>
                        <svg class="search-border" version="1.1" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px"
                             viewBox="0 0 671 111" style="enable-background:new 0 0 671 111;"
                             xml:space="preserve">
          <path class="border" d="M335.5,108.5h-280c-29.3,0-53-23.7-53-53v0c0-29.3,23.7-53,53-53h280"/>
                            <path class="border" d="M335.5,108.5h280c29.3,0,53-23.7,53-53v0c0-29.3-23.7-53-53-53h-280"/>
        </svg>
                        <div class="go-icon"><i class="fa fa-arrow-right"></i></div>
                    </div>

                </div>
            </div>
        </header>
</#macro>