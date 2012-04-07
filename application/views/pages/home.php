  <div class="row-fluid">
    <div class="span10">
      <div><img src="<?=base_url()?>/design/img/ermex.png" width="323" height="88" alt="ERmx"></div>
      <h1>Localiza las salas de emergencia del país y compártelo con el mundo</h1>
      
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
      <div class="alert alert-info">
        <h2 class="alert-info">Registra una sala</h2>
        <div class="row-fluid">
          <div class="span6 offset1">
          <?php
			$attributes = array('id' => 'login');
			echo form_open('security/login', $attributes);
			?>
             
              <div><input name="user"  id="prependedInput" size="10" type="text" placeholder="email"></div>
             
              <div><input name="password" size="10" type="password"  placeholder="password"></div>
       	  	
             <button type="submit" class="btn btn-large btn-info">Ingresa</button>   <a href="index.php/nuevacuenta" class="btn btn-large btn-success">Regístrate</a>
            
            </form>
            <p><br /><br /><a href="recpass.html">Recuperar mi password</a></p>
            
            <?php if(isset($_GET['c']) && $_GET['c']=="true" ){ ?><div class="alert alert-success"><a name="nc" id="nc"></a>Tu cuenta ha sido creada.</div><?php }?>
            <?php if(isset($_GET['lerr']) && $_GET['lerr']=="true" ){ ?><div class="alert alert-warning"><a name="le" id="le"></a>Login inválido.</div><?php }?>
        </div>
          <div class="span4">
           
          </div>
        </div>
      </div>
      <!-- /hero-unit --> 
      
    </div>
  </div>