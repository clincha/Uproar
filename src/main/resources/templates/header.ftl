<#import "navbar.ftl" as navbar>
<#macro header>
    <title>UpRoar</title>
<head>
    <link rel="stylesheet" href="css/header.css">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>

</head>
<div class="heading">
    <header>
        <@navbar.navbar></@navbar.navbar>
    </header>
    <body>


    <script src="js/script.js"></script>
    </body>

</#macro>