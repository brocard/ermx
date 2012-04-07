<?php echo $headerjs; ?>
<?php echo $headermap; ?>
  <div class="row-fluid">
    <div class="span12">
      <div><img src="<?=base_url()?>/design/img/miniermex.png" alt="ERmx"></div>
      <div class="alert alert-info separaForma">
        <h2 class="alert-info"><?=$username; ?>, registrando una sala</h2>
        <p>Para registrar haz doble click o doble toque en el marcardor.</p> 
      </div>
    </div>
  </div>
<?php echo $onload; ?>
<?php echo $map; ?>
<p id="domicilio"></p>
<script type="application/javascript">

var geocoder = new google.maps.Geocoder();

var dblClickHandler = function( lat , lon, target){
	//show address in var.
	alert("dblclick handler");
	var latlng = new google.maps.LatLng(lat, lon);
    geocoder.geocode({'latLng': latlng}, function(results, status){
		 
		if (status == google.maps.GeocoderStatus.OK) {
			if (results[1]) {
			  $('#domicilio').html('Domicilio: '+results[1].formatted_address);
			   alert('Domicilio: '+results[1].formatted_address);
			}
		  } else {
			alert("Geocoder failed due to: " + status);
		  }
	});


}

var endDragHandler = function( lat , lon, target){
	var latlng = new google.maps.LatLng(lat, lon);
    geocoder.geocode({'latLng': latlng}, addAddressToMapWindow(results, status));
}



var addAddressToMapWindow=function(results, status)
{
	 
	if (status == google.maps.GeocoderStatus.OK) {
        if (results[1]) {
          $('#domicilio').html('Domicilio: '+results[1].formatted_address);
          infowindow.setContent(results[1].formatted_address);
          infowindow.open(map, marker);
        }
      } else {
        alert("Geocoder failed due to: " + status);
      }
}
</script>