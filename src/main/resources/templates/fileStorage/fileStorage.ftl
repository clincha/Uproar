<#macro uploadbox>
    <form enctype="multipart/form-data" action="/file/uploadFile" method="post">
        <input id="file" name=file type="file"/>
        <button type="submit">Upload</button>
    </form>
</#macro>