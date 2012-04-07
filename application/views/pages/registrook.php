<?php
	$dataR=$this->session->userdata('ROK');
?>
  <div class="row-fluid">
    <div class="span12">
      <div class="alert alert-info">
      <div><a href="<?=base_url()?>index.php"><img src="<?=base_url()?>/design/img/miniermex.png" alt="ERmx"></a> beta</div>
        <h3 class="alert-info">Gracias <?=$username?>!</h3>
        <p>Haz registrado una nueva sala de emergencias!!!</p>
        <p>Sigue colaborando con nosotros.</p>      
        
            <table class="table table-striped table-condensed table-bordered">
            <tr><td>
            <strong>Domicilio:</strong>
           	</td></tr>
            <tr><td>
            <div class="addrval"><?=$dataR['addr']?></div> <h6>( lat/long: <?=round($dataR['lat'],6)?>,<?=round($dataR['lon'],6)?> )</h6>
            </td></tr>
            <tr><td>
            <strong>Nombre o Referencia:</strong>
           	</td></tr>
            <tr><td>
            <div class="addrval"><?=$dataR['name']?></div>
            </td></tr>
            <tr><td>
            <strong>Tipo:</strong>
            </td></tr>
            <tr><td>
            <div class="addrval"><?=$dataR['type']?></div>
            </td></tr>
            <tr><td>
            <strong>Nota:</strong>
            </td></tr>
            <tr><td>
            <div class="addrval"><?=$dataR['desc']?></div>
            </td></tr>
            </table>
            <br />
            <a class="btn btn-primary" id="back" href="<?=base_url()?>index.php/mainmenu">Buscar otra</a>
            <a class="btn btn-warning" id="back" href="<?=base_url()?>index.php">Página inicial</a>
 
      </div>
    </div>
  </div>