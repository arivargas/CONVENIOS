var geocoder;
var map;
var lat;
var lng;
var marker;


function initialize() {
	geocoder = new google.maps.Geocoder();
	var myOptions = {
		zoom: 4,
		center: new google.maps.LatLng(9.85398990406704, -83.90923976898193),
		mapTypeId: google.maps.MapTypeId.ROADMAP
	};
	
	map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
	
	if (universidadJson !== null){
		var latitude = universidadJson.latitud;
		var longitude = universidadJson.longitud;
		
		var location = new google.maps.LatLng(latitude, longitude);
		
		marker = new google.maps.Marker({
			position: location,
			map: map 	
      
		});
		
	}
	
	
	
	google.maps.event.addListener(map, 'click', function(event) {
		placeMarker(event.latLng);
		
	});
}

function placeMarker(location) {

	//si no existe un market, entonces se crea uno.
	if (!marker){
		marker = new google.maps.Marker({
		position: location,
		map: map,
		animation: google.maps.Animation.DROP,
		draggable:true,
		});
	}
	//de lo contrario, se cambia su posición, nada más.
	else {
		marker.setPosition(location);
	}
	

	map.setCenter(location);
	//se envía la posición al form.
	sendLanLonToInput(marker);
	
	google.maps.event.addListener(marker, 'dragend', function(event) {
		sendLanLonToInput(marker);
	});
}


function sendLanLonToInput(marker) {
	latlng = marker.getPosition();
	lat = latlng.lat();
	lng = latlng.lng();
	document.getElementById("universidad_latitud").defaultValue=lat;
	document.getElementById("universidad_longitud").defaultValue=lng;
}



