<#import "../layout.ftl" as layout>

<@layout.standardPage; section>
    <#if section = "scripts">
    <#-- javascript tags go in here -->
    </#if>
    <#if section = "styles">
    <#-- Import your stylesheets here -->
    </#if>
    <#if section="content">
    <#-- This is where the main content of the page would go, this section sits inbetween the body tags -->
        <div class="container">
            <div class="py-5 text-center">
                <h1>Create Event</h1>
            </div>
            //
            <form action="/create" method="post">
                <div class="form-group row">
                    <label for="" class="col-sm-2 col-form-label">Event Name</label>
                    <div class="col-4">
                        <input id="" name="name" type="text" class="form-control">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="" class="col-sm-2 col-form-label">Event Location</label>
                    <div class="col-4">
                        <input id="" name="location" type="text" class="form-control">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="text2" class="col-sm-2 col-form-label">Address Line 1</label>
                    <div class="col-4">
                        <input id="text2" name="text2" type="text" class="form-control">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="text" class="col-sm-2 col-form-label">Address Line 2</label>
                    <div class="col-4">
                        <input id="text" name="text" type="text" class="form-control">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="text1" class="col-sm-2 col-form-label">Town</label>
                    <div class="col-4">
                        <input id="text1" name="text1" type="text" class="form-control">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="text3" class="col-sm-2 col-form-label">County</label>
                    <div class="col-4">
                        <input id="text3" name="text3" type="text" class="form-control">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="text4" class="col-sm-2 col-form-label">Postcode</label>
                    <div class="col-4">
                        <input id="text4" name="text4" type="text" class="form-control">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="textarea" class="col-sm-2 col-form-label">Event Desciption</label>
                    <div class="col-4">
                        <textarea id="textarea" name="textarea" cols="40" rows="" class="form-control"></textarea>
                    </div>
                </div>

                <div class="form-group">
                    <label for="showcase_image">Upload showcase image</label>
                    <input type="file" class="form-control-file" id="showcase_image">
                </div>

                <div class="form-group row">
                    <div class="offset-4 col-4">
                        <button name="submit" type="submit" class="btn btn-primary">Create Event</button>
                    </div>
                </div>

            </form>
        </div>
    </#if>
</@layout.standardPage>