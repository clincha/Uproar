<#import "../layout.ftl" as layout>
<#import "../navbar.ftl" as navbar>

<@layout.standardPage; section>
    <#if section = "scripts">

    </#if>
    <#if section = "styles">
        <link rel="stylesheet" href="/css/eventheader.css">
        <link rel="stylesheet" href="/css/createEvent.css">
    </#if>
    <#if section="content">
        <@navbar.navbar/><br><br><br><br><br>
        <div class="container">
            <form enctype="multipart/form-data" action="/event/create" method="post">
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="eventTitle">Event Title</label>
                        <input id="eventTitle" name="title" type="text" class="form-control" placeholder="Event Title">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="eventSociety">Society</label>
                        <select id="eventSociety" name="society" class="form-control">
                            <option>UKC Mens Rugby</option>
                            <option>UKC Mens Hockey</option>
                        </select>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-12">
                        <label for="eventDescription">Event Description</label>
                        <textarea id="eventDescription" name="description" class="form-control"
                                  placeholder="Description" rows="4"></textarea>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="date">Event Date</label>
                        <input id="date" name="date" type="date" class="form-control">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="time">Event Time</label>
                        <input id="time" name="time" type="time" class="form-control">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-12">
                        <label for="place">Event Location</label>
                        <textarea id="place" name="place" class="form-control"
                                  placeholder="Enter the full UK address" rows="4"></textarea>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="ticketNumber">Number of tickets</label>
                        <input id="ticketNumber" name="ticketNumber" type="text" class="form-control"
                               placeholder="Number of tickets">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="ticketPrice">Ticket price</label>
                        <input id="ticketPrice" name="ticketPrice" type="text" class="form-control"
                               placeholder="Event Title">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-12">
                        <label for="image">Event Image</label>
                        <input id="image" name="image" type="file" class="form-control-file"
                               placeholder="Upload">
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Create event</button>
            </form>
        </div>
    </#if>
</@layout.standardPage>