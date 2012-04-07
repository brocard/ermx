  <div class="row-fluid">
    <div class="span8">
      <div><a href="<?=base_url()?>index.php"><img src="<?=base_url()?>/design/img/miniermex.png" alt="ERmx"></a> beta</div>
      <div class="alert alert-error separaForma">
        <h2 class="alert-error">Recupera tu password</h2>
        <div class="row-fluid">
          <div class="span8 offset1">
          		<?php
				$attributes = array('id' => 'recpass', 'name'=>"recpass", "method"=>"post");
				echo form_open('security/recpass', $attributes);
				?>
				<label><strong>Email:</strong></label> 
				<input name="email" type="text" class="span3" value="">
                <?php if(!empty($msg)){ ?>
                	<div class="label label-error"><?=$msg?></div>
				<?php } ?>
                <br />
				<button type="submit" class="btn btn-info" id="recbtn" name="recbtn" value="true">Recuperar</button>
				
				</form>
            	<a href="<?=base_url()?>index.php" class="btn btn-warning">Ir a la página inicial</a>
          </div>
        </div>
        
       
      </div>

      <!-- /hero-unit --> 
      
    </div>
  </div>