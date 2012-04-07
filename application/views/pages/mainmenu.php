 <script type="text/javascript" src="https://maps.google.com/maps/api/js?sensor=true"></script>
  <div class="row-fluid">
    <div class="span10">
      <div><img src="<?=base_url()?>/design/img/miniermex.png" alt="ERmx"></div>
      <div class="alert alert-info separaForma">
        <h2 class="alert-info"><?=$username; ?>, registrando una sala</h2>
        <div class="row-fluid">
          <div class="span8 offset1">
             <?php
			$attributes = array('id' => 'registrarfrm', 'name'=>"registrarfrm", "method"=>"get");
			echo form_open('ermex/mapLocator', $attributes);
			?>
            <label><strong>Domicilio:</strong></label> 
            <input name="address" type="text" class="span6" value="">
            <button type="submit" class="btn btn-info" id="findme" name="findme" value="true">Cerca de mí</button> 
			<button type="submit" class="btn btn-info" id="findaddr" name="findaddr" value="true">Buscar domicilio</button>
            <input type="hidden" name="mylocLat" id="mylocLat" value=''>
            <input type="hidden" name="mylocLon" id="mylocLon" value=''>
            </form>
            <div><a class="btn btn-success">Mis estadísticas</a></div>
          </div>
          
        </div>
        
       
      </div>
    
      
    </div>
  </div>
 
 <script type="text/javascript">
 	
  	$(document).ready(function() {
	
		console.log('buscandote en el mapa');
		findthisdevice();	
				
	});
	
	var browserSupportFlag =  new Boolean();

    var findthisdevice=function(){
		
	  // Try W3C Geolocation (Preferred)
	  if(navigator.geolocation) {
		browserSupportFlag = true;
		navigator.geolocation.getCurrentPosition(function(position) {
		  var loc1=position.coords.latitude;
		  $('#mylocLat').attr('value',loc1);
		  var loc2=position.coords.longitude;
		  $('#mylocLon').attr('value',loc2);  
		  //alert($('#myloc').attr('value'));

		}, function() {
		  handleNoGeolocation(browserSupportFlag);
		});
	  // Browser doesn't support Geolocation
	  } else {
		browserSupportFlag = false;
		 $('#mylocLat').attr('value','');
		 $('#mylocLon').attr('value','');  
	  }

	  function handleNoGeolocation(errorFlag) {
		if (errorFlag == true) {
		  alert("Geolocation service failed.");
		  $('#mylocLat').attr('value','');
		  $('#mylocLon').attr('value',''); 
		} else {
		  alert("Your browser doesn't support geolocation. We've placed you in Siberia.");
		  $('#mylocLat').attr('value','');
		  $('#mylocLon').attr('value',''); 
		}
		
	  }
	}
  
  </script>