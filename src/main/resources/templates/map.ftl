<#--This is a recourse for later on in the project, Mapbox is an opensource JS framework for mapping, guides can be found https://docs.mapbox.com/help/tutorials/add-points-pt-3/ -->

<head lang="EN">
    <script src='https://api.mapbox.com/mapbox-gl-js/v1.4.1/mapbox-gl.js'></script>
    <link rel='stylesheet' href='https://api.mapbox.com/mapbox-gl-js/v1.4.1/mapbox-gl.css'/>
    <title>Map</title>
</head>
<body>
<div id='map' style='width: 400px; height: 300px;'></div>
<script>
    mapboxgl.accessToken = 'pk.eyJ1Ijoic2Q1ODUiLCJhIjoiY2sya2l0eG9rMHpzMzNib2VmbXFtd2R1ZyJ9.nVXo2FCz-gywuy3IOC75jA';
    var map = new mapboxgl.Map({
        container: 'map',
        style: 'mapbox://styles/mapbox/streets-v11'
    });
</script>

</body>