<#import "../layout.ftl" as layout>

<@layout.standardPage; section>
    <#if section = "scripts">
        <script src="https://cdn.jsdelivr.net/jsbarcode/3.6.0/JsBarcode.all.min.js"></script>
        <script src="/js/barcode.js"></script>
    </#if>
    <#if section = "styles">
        <link rel="stylesheet" href="/css/myPages.css">
    </#if>
    <#if section="content">
        <div class="row">
           <div class="title">  <h1>  My Societies</h1> </div>
        </div>

        <br><br>
        <h2>

            <a href="/search"><i>Search for a society.</i></a><br>
            <a href="/societies/all"><i>Or Create your own!</i></a>
        </h2>

        <div class="cards">
        <div class="card mb-3">
            <img class="card-img-top" id="banner" src="/image/rugby banner.jpg" alt="Card image cap">
            <div class="card-body">
                <h5 class="card-title">UKC Men's Rugby</h5>
                <p class="card-text">UKC Men's Rugby are the Rugby Union Club at the University of Kent in Canterbury.

                    UKC Men’s Rugby is comprised of 5 Squads- 4 competitive squads that compete in BUCS Leagues and one development squad that caters for those who are beginners to the game. We train three times a week (Tuesday, Friday and Sunday), with a match every Wednesday for the BUCS teams. We are the biggest sports society on Kent’s campus boasting in excess of 130 members. The club has a thriving social scene, with the club members all meeting together at least once a week for socials, often more. The UKC Men's Rugby society prides itself on the awareness and funding we raise for charities throughout the year. We have consistently been the society that has raised the most money for the Movember Foundation over the past few years, raising in excess of £5000 in 2017. We wholly accept anyone into our club and encourage diversity- rugby is a global sport that is played throughout the world but if anyone hasn't encountered the sport we see it a necessary challenge to help spread the values of the game we all love.

                    We are a club that prides itself on being enjoyable, tight-knit, and a club that is bigger than the sum of its parts. These values are reflected by the accolade of Club of the Year 2018/19, presented by Kent Sport.
                </p>
                <a href="/societies/rugby" class="btn btn-primary">View Page</a>
            </div>
        </div>
            <br>
            <div class="card mb-3">
                <img class="card-img-top" id="banner" src="/image/HB.jpg" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">UKC Men's Hockey</h5>
                    <p class="card-text">Welcome to the University of Kent Men’s Hockey Club! We are the oldest sports club on campus; fielding three BUCS teams. We welcome players of all abilities and encourage new players to join up as well. Joining a sports club at University is a great way to meet lots of new people and to get involved in University life outside of the classroom! We hold socials every week, either in teams, as a club, with our sister club, the Women’s Hockey Club or with another society or sport from UKC. We provide opportunities for our members to have coaching, umpiring and first aid training throughout the year. The highlight of our hockey calendar is Varsity, where our 1st XI and 2nd XI compete against Canterbury Christ Church University during the annual Varsity week. We have had our most successful Varsities in recent years in the 2017/18 and 2018/19 season where both our 1st XI and 2nd XI beat Canterbury Christ Church convincingly. </p>
                    <a href="/societies/rugby" class="btn btn-primary">View Page</a>
                </div>
            </div>
        </div>

    </#if>
</@layout.standardPage>
<a style="display:block" href="/">
    <footer>
        <div class="upRoar">
            Uproar
        </div>
    </footer></a>