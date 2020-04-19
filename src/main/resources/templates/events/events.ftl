<#import "../layout.ftl" as layout>
<#import "../navbar.ftl" as navbar>


<@layout.standardPage; section>
    <#if section = "scripts">
        <script src="/js/script.js"></script>

    <#-- javascript tags go in here -->
    </#if>
    <#if section = "styles">
    <#-- Import your stylesheets here -->
        <link rel="stylesheet" href="/css/eventheader.css">
        <link rel="stylesheet" href="/css/search.css">
        <link rel="stylesheet" href="/css/style.css">

    </#if>

    <#if section="content">
    <#-- This is where the main content of the page would go, this section sits inbetween the body tags -->
        <@navbar.navbar></@navbar.navbar> <br><br><br><br><br>
        <div class="article">
            <div class="search_box"> <#-- search box -->
                <input type="text" placeholder="Search Events">
            </div>
            <br>
            <div>
                <h1>${event.title}</h1>
                <h3 class="page-title">Event Description</h3>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec varius auctor lacus nec feugiat.
                    Phasellus sit amet ex ipsum. Praesent pharetra
                    tincidunt tempor. Etiam velit eros, dapibus eget porta in, lacinia et magna.
                    Nam eget eros non orci consectetur congue at ac augue. Proin eget arcu in enim feugiat
                    ultricies.
                    Curabitur maximus metus nec metus pretium viverra at et orci. Integer hendrerit ante ut placerat
                    cursus.
                </p>
                <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quo, soluta minus hic repellendus
                    neque,
                    dolor similique
                    dolorum ad dicta aspernatur facere officia fugit praesentium quas nostrum? Veritatis quaerat
                    consequuntur natus
                </p>
                <p>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec varius auctor lacus nec feugiat.
                    Phasellus sit amet ex ipsum. Praesent pharetra
                    tincidunt tempor. Etiam velit eros, dapibus eget porta in, lacinia et magna.
                    Nam eget eros non orci consectetur congue at ac augue. Proin eget arcu in enim feugiat
                    ultricies.
                    Curabitur maximus metus nec metus pretium viverra at et orci. Integer hendrerit ante ut placerat
                    cursus.
                </p>
                <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quo, soluta minus hic repellendus
                    neque,
                    dolor similique
                    dolorum ad dicta aspernatur facere officia fugit praesentium quas nostrum? Veritatis quaerat
                    consequuntur natus
                </p>
                <p>
            </div>
            <div>
                <div class="price-box">
                    <div class="card">
                        <h5 class="card-header">Event Price: £5.00</h5>
                        <div class="card-body">
                            <h5 class="card-title">Buy Now</h5>
                            <p class="card-text">With supporting text below as a natural lead-in to additional
                                content.</p>
                            <a href="/ticket/buy/${event.id}" class="btn btn-success btn-lg">Buy Now</a>
                        </div>
                    </div>
                    <br/>
                    <div>
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2494.754977480543!2d1.061028515762254!3d51.29723297960098!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47deca36929a4527%3A0xe17bfa0b0060a838!2sUniversity%20of%20Kent!5e0!3m2!1sen!2suk!4v1573472462343!5m2!1sen!2suk"
                                width="400" height="300" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
                    </div>
                </div>
            </div>
        </div>
    </#if>
</@layout.standardPage>
