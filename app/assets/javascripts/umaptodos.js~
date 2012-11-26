var geocoder;
var map;

function initialize() {
	geocoder = new google.maps.Geocoder();
	var myOptions = {
		zoom: 2,
		center: new google.maps.LatLng(9.85398990406704, -83.90923976898193),
		mapTypeId: google.maps.MapTypeId.ROADMAP
	};
	map = new google.maps.Map(document.getElementById("map_canvastodos"), myOptions);
	
	//Para cada universidad un marker
	for (var i = 0, len = universidadJson.length; i < len; i++) {
		var name = universidadJson[i].nombre;
		var latitude = universidadJson[i].latitud;
		var longitude = universidadJson[i].longitud;
		
		var location = new google.maps.LatLng(latitude, longitude);
		
		var marker = new google.maps.Marker({
			position: location,
			map: map
		});
		//Crea los infowindows de cada marker.
		showInfo(marker, name);
	}
}

//Función para los infowindows de googlemaps.
function showInfo(marker, name) {
	var infowindow = new google.maps.InfoWindow( {
		content: "<p> Universidad: " + name +"</p>",
		size: new google.maps.Size(50,50)
	});
	google.maps.event.addListener(marker, 'click', function() {
		infowindow.open(map,marker);
	});
}






