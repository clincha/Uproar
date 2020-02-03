<#import "../layout.ftl" as layout>

<@layout.standardPage title="Society Name"; section>
    <#if section = "scripts">

    </#if>
    <#if section = "styles">

    </#if>
    <#if section="content">
        <div class="container">
            <form action="/society/create" method="post">
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="societyName">Society Name</label>
                        <input id="societyName" name="name" type="text" class="form-control" placeholder="Society name">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="facebookLink">Facebook link</label>
                        <input id="facebookLink" name="link" type="text" class="form-control"
                               placeholder="Facebook link">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-12">
                        <label for="societyDescription">Society Description</label>
                        <input id="societyDescription" name="description" type="text" class="form-control"
                               placeholder="Description">
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Create society</button>
            </form>
        </div>
    </#if>
</@layout.standardPage>