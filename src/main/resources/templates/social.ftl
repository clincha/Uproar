<#macro social instaLink="" snapLink="" twitterLink="" fbLink="">
<#-- this will be the bar that contains the social media links, to be used as footer on main page and in the societies/event pagec-->
    <div class="social-basic">
        <div class="social">
            <#if instaLink?has_content>
                <a href="${instaLink}"><i class="icon ion-social-instagram"></i></a>
            </#if>
            <#if snapLink?has_content>
                <a href="${snapLink}"><i class="icon ion-social-snapchat"></i></a>
            </#if>
            <#if twitterLink?has_content>
                <a href="${twitterLink}"><i class="icon ion-social-twitter"></i></a>
            </#if>
            <#if fbLink?has_content>
                <a href="${fbLink}"><i class="icon ion-social-facebook"></i></a>
            </#if>
        </div>
    </div>
</#macro>