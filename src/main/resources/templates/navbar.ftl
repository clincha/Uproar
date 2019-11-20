<#macro navbar>
    <nav>
        <div class="menu-icon">
            <i class="fa fa-bars fa-2x"></i>
        </div>
        <div class="logo">
            UpRoar
        </div>
        <div class="menu">
            <ul>
                <li><a href="/user/tickets">My Tickets</a></li>
                <li><a href="/user/events">My Events</a></li>
                <li><a href="/user/societies">My Societies</a></li>
                <li><a href="/user/settings">Settings</a></li>
               <#-- <li><a href="/${login.inout}">Log ${login.inout}</a></li> but for now--> <li><a href="/login">Log In</a></li>
            </ul>
        </div>
    </nav>
</#macro>