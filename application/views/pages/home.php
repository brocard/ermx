  <div class="row-fluid">
    <div class="span10">
      <div><img src="<?=base_url()?>/design/img/ermex.png" width="323" height="88" alt="ERmx"></div>
      <h1>Localiza las salas de emergencia del país y compártelo con el mundo</h1>
      
      <!-- FORMA DE LOCALIZACION TEMPORALMENTE SUSPENDIDA 
      <div class="alert alert-error separaForma">
        <h2 class="alert-error">Localiza una sala</h2>
        <div class="row-fluid">
          <div class="span8 offset1">
            <p class="subtitle">En base a tu posición geográfica</p>
            <a class="btn btn-large btn-danger" href="buscar.html">Busca cerca de mí</a> 
          </div>
        </div>
        <div class="row-fluid separaForma">
         <div class="span8 offset1">
            <p class="subtitle">o ingresa la dirección que desees</p>
            <?php
			$attributes = array('id' => 'buscar');
			echo form_open('buscar', $attributes);
			?>
              <input name="address" type="text" class="span6" placeholder="dirección">
              <br/>
              <button type="submit" class="btn btn-large btn-danger">Buscar</button>
            </form>
          </div>
          
        </div>
      </div>
      -->
      <div class="alert alert-error separaForma">
        <h2 class="alert-error">¡Participa!</h2>
        <div class="row-fluid">
          <div class="span8 offset1">
          	<h4>Nos encontramos en etapa de recolección de datos. Necesitamos de tu ayuda para registar la mayor cantidad de salas de emergencia del país y poder publicar el servicio.</h4>
          	
          </div>
        </div>
      </div>
      
      <div class="row-fluid">
      <div class="span4 offset1">
      <div class="alert alert-success separaForma">Llevamos: <a href="<?=base_url()?>index.php/ermex/listado"><?=$stats_er?> salas</a> y <?=$stats_usr?> personas</div>
      </div>
      <div class="span4 offset1">
      <div class="alert alert-success separaForma">Ayúdanos a mejorar: <a href="https://twitter.com/ermx1" class="twitter-follow-button" data-show-count="false" data-lang="en">Follow @ermx1</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script></div>
      </div>
      </div>
      
      <div class="alert alert-info separaForma">
       <?php if(empty($sessiondata) || !isset($sessiondata['USERID'])){ ?>
        <h2 class="alert-info">Ingresa para participar</h2>
        <?php if(isset($_GET['c']) && $_GET['c']=="true" ){ ?><div class="alert alert-success"><a name="nc" id="nc"></a>Tu cuenta ha sido creada.</div><?php }?>
       <?php }else{ ?>
       <h2 class="alert-info">Bienvenido <?=$username?></h2>
       <?php } ?>
        <div class="row-fluid">
          <div class="span6 offset1">
          <?php if(empty($sessiondata) || !isset($sessiondata['USERID'])){ ?>
          <!-- usuario sin sesion -->
          <?php
			$attributes = array('id' => 'login');
			echo form_open('security/login', $attributes);
			?>
             
              <div><input name="user"  id="prependedInput" size="10" type="text" placeholder="email"></div>
             
              <div><input name="password" size="10" type="password"  placeholder="password"></div>
       	  	
             <button type="submit" class="btn btn-large btn-info">Ingresar</button>   <a href="<?=base_url()?>index.php/nuevacuenta" class="btn btn-large btn-success">Crear Cuenta</a>
            
            </form>
            <?php if(isset($_GET['lerr']) && $_GET['lerr']=="true" ){ ?><div class="alert alert-warning"><a name="le" id="le"></a>Login inválido.</div><?php }?>
            <p><br /><br /><a href="<?=base_url()?>index.php/recpass">Recuperar mi password</a></p>
            
           
            
            
             <?php }else { ?>
             <!-- usuario logeado -->
             	<a href="index.php/mainmenu" class="btn btn-large btn-primary">Registra una nueva sala</a>
                <br/>
                <br />
                <a href="index.php/logoff" class="btn btn-large btn-info">Cerrar sesión</a>
             
             <?php } ?>
        </div>
          <div class="span4">
           
          </div>
        </div>
      </div>
      <!-- /hero-unit --> 
      
    </div>
  </div>