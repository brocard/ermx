  <div class="row-fluid">
    <div class="span12">
      
      <div class="alert alert-info">
      <div><a href="<?=base_url()?>index.php"><img src="<?=base_url()?>/design/img/miniermex.png" alt="ERmx"></a> beta</div>
        <h3 class="alert-info">Información General: </h3>
        <p>Por favor, sé lo más preciso posible.</p>
        <?php
			$attributes = array('id' => 'newregistrypost', 'name'=>"newregistrypost", "method"=>"post");
			echo form_open('ermex/newregistrypost', $attributes);
		?>
        	
        	<input type="hidden" id="locLat" name="locLat" value="<?=($loclat);?>" />
            <input type="hidden" id="locLon" name="locLon" value="<?=($loclon);?>" />
            <input type="hidden" id="locAddr" name="locAddr" value="<?=base64_encode($locaddr)?>" />
            
            <label><strong>*Domicilio:</strong></label>
            <input type="text" name="addr" id="addr" value="<?=$locaddr?>" class="span6"/>
            <label><strong>*Nombre o Referencia:</strong></label>
            <input type="text" name="name" id="name" value="" class="span3"/> 
            <label><strong>*Tipo:</strong></label>
            <select class="span2" name="type">
                <option value="ER" selected>Sala de Emergencias</option>
                <option value="Hospital">Hospital</option>
                <option value="Sanatorio">Sanatorio</option>
                <option value="Dispensario">Dispensario</option>
                <option value="Otro">Otro</option>
            </select>
            <label><strong>Nota:</strong></label>
            <textarea name="description" class="span6"></textarea>
            <br />
            <button type="submit" class="btn btn-primary" id="registry" name="registry" value="true">Enviar</button>
            <a class="btn btn-warning" id="back" href="<?=base_url()?>index.php/mainmenu">Regresar</a>
        </form>
         <script type="application/javascript">
				$(document).ready(function() {
					$("#newregistrypost").validate({
						rules: {
							addr:{
								required: true
							},
							name: {
								required: true
							},
							type:{
								required: true
							}
						},
						messages: {
							addr:{
								required: 'El domicilio es obligatorio'
							},
							name: {
								required: 'Usa un nombre o referencia para catalogar la sala'
							},
							type:{
								required: 'El tipo es obligatorio'
							}
						}
					});
				
				});
            </script>
      </div>
    </div>
  </div>