<?php echo $headerjs; ?>
<?php echo $headermap; ?>
  <div class="row-fluid">
    <div class="span12">
      <div class="alert alert-info">
      	<div><a href="<?=base_url()?>index.php"><img src="<?=base_url()?>/design/img/miniermex.png" alt="ERmx"></a> beta</div>
        <h3 class="alert-info"><?=$username; ?>, estás cerca de: </h3>
        <h4 class="addr" id="domicilio"></h4>
        <?php
			$attributes = array('id' => 'newregistry', 'name'=>"newregistry");
			echo form_open('ermex/newregistry', $attributes);
		?>
        	<input type="hidden" id="locLat" name="locLat" value="" />
            <input type="hidden" id="locLon" name="locLon" value="" />
            <input type="hidden" id="locAddr" name="locAddr" value="" />
            <br />
            <button type="submit" class="btn btn-primary" id="registry" name="registry" value="true">Registrar</button>
            <a class="btn btn-warning" id="back" href="<?=base_url()?>index.php/mainmenu">Regresar</a>
        	<br />
        	<p>Coloca el marcador en la posición más exacta posible</p>
        </form>
      </div>
    </div>
  </div>
<?php echo $onload; ?> 
<?php echo $map; ?>

<script type="application/javascript">

var geocoder = new google.maps.Geocoder();

var dblClickHandler = function( lat , lon, target){
	//show address in var.
	
	var latlng = new google.maps.LatLng(lat, lon);
    geocoder.geocode({'latLng': latlng}, function(results, status){
		 
		if (status == google.maps.GeocoderStatus.OK) {
			if (results[1]) {
			  $('#domicilio').html(results[1].formatted_address);
			  $('#locLat').attr('value',lat);
			  $('#locLon').attr('value',lon);
			  $('#locAddr').attr('value',results[1].formatted_address);
			  
			}
		  } else {
			alert("Geocoder failed due to: " + status);
		  }
	});


}

var endDragHandler = function( lat , lon, target){
	var latlng = new google.maps.LatLng(lat, lon);
    geocoder.geocode({'latLng': latlng}, function(results, status){
		 
		if (status == google.maps.GeocoderStatus.OK) {
			if (results[1]) {
			  $('#domicilio').html(results[1].formatted_address);
			  $('#locLat').attr('value',lat);
			  $('#locLon').attr('value',lon);
			  $('#locAddr').attr('value',results[1].formatted_address); 
			}
		  } else {
			alert("Geocoder failed due to: " + status);
		  }
	});
}

</script>