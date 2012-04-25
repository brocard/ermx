  <div class="row-fluid">
    <div class="span8">
      <div><a href="<?=base_url()?>index.php"><img src="<?=base_url()?>/design/img/miniermex.png" alt="ERmx"></a> beta</div>
      <div class="alert alert-info separaForma">
        <h2 class="alert-info">Crea una nueva cuenta</h2>
        <div class="row-fluid">
          <div class="span8 offset1">
            <?php
				$attributes = array('id' => 'newaccount','method'=>'post');
				echo form_open('ermex/newacc', $attributes);
			?>
            <label><strong>E-mail:</strong></label> 
            <input name="email" type="text" class="span3">
            <?php if(isset($_GET['userexist'])){ ?>
            <p class="error">
            	Este email ya ha sido registrado antes.
            </p>		
			<?php	}?>
				
            <p class="separaForma">
              <label><strong>Nombre o Apodo:</strong></label> 
             <input name="nick" type="text" class="span3" >
             <label><strong>Contraseña:</strong></label>
             <input name="password" type="password" class="span3">
            </p>
            <button type="submit" class="btn btn-primary">Registrar</button>
            </form>
            <script type="application/javascript">
				$(document).ready(function() {
					$("#newaccount").validate({
						rules: {
							email:{
								required: true,
								email: true
							},
							nick: {
								required: true,
								minlength: 4
							},
							password:{
								required: true,
								minlength: 4
							}
						},
						messages: {
							email:{
								required: 'El correo electrónico es obligatorio',
								email: 'Debes ingresar una dirección válida'
							},
							nick: {
								required: 'Tu nombre o un apodo es obligatorio',
								minlength: 'Debes usar al menos 4 letras o números'
							},
							password:{
								required: 'La contraseña es obligatoria',
								minlength: 'Debes usar al menos 4 caracteres.'
							}
						}
					});
				
				});
            </script>
            <small>Tu información será manejada con la más estricta confidencialidad. El objetivo de este servicio es ayudar. No tenemos fines de lucro.</small>
          </div>
        </div>
        
       
      </div>

      <!-- /hero-unit --> 
      
    </div>
  </div>