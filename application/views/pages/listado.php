<?php
	$dataR=$this->session->userdata('ROK');
?>
  <div class="row-fluid">
    <div class="span12">
      <div class="alert alert-info">
      <div><a href="<?=base_url()?>index.php"><img src="<?=base_url()?>/design/img/miniermex.png" alt="ERmx"></a> beta</div>
        <h3 class="alert-info">Gracias <?=$username?>!</h3>
        <p>Veamos el listado de salas que llevamos registrado!!!</p>
        <p>En total son: <?=count($listado);?></p>      
        
            <table class="table table-striped table-condensed table-bordered">
            <tr>
            <td>
            <strong>Nombre</strong>
           	</td>
            <td>
            <strong>Tipo</strong>
           	</td>
            <td>
            <strong>Autor</strong>
           	</td>
            <td>
            <strong>Domicilio</strong>
           	</td>
            </tr>
            <?php foreach($listado as $l){ ?>
                <tr>
                
                <td>
                <div class="addrval"><?=$l->name?></div>
                </td>
                <td>
                <div class="addrval"><?=$l->type?></div>
                </td>
                <td>
                <div class="addrval"><?php if($l->author!=""){echo $l->author;}else{ echo "NA";}?></div>
                </td>
                <td>
                <div class="addrval"><?=$l->fulladdr?></div>
                </td>
                
                
                
                </tr>
            <?php } ?>
            </table>
            <br />
            <a class="btn btn-primary" id="back" href="<?=base_url()?>index.php/mainmenu">Buscar otra</a>
            <a class="btn btn-warning" id="back" href="<?=base_url()?>index.php">Página inicial</a>
 
      </div>
    </div>
  </div>