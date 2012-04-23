<?php
	require('GMap.php');
	
	$inputfile="input.txt";
	$f = fopen ($inputfile, "r");
		    $ln= 0;
			$place=array();
			$outrow="";
			$gmap=new Gmap();
		    while ($line= fgets ($f)) {
		        ++$ln;
		        //printf ("%2d: ", $ln);
		        if ($line===FALSE) print ("FINAL\n");
		        else {
					 //print ($line);
					 if(trim($line)=="--"){
						//got all data for this place.
						if(count($place)>1){
							$name=trim($place[0]);
							$address=trim($place[1]);
							$extra="";
							if(count($place)==3){
								$extra=$place[2];
							}
							//get the coords
							$coords=$gmap->geoGetCoords($place[1]);
							
							//inserta en cache.
							$sql=sprintf("insert into geocode_cache(lng,lat,query) values('%s','%s','%s');\n",
							$coords['lon'],$coords['lat'],$address);
							print($sql);
							
							
							$sql=sprintf("insert into er(name,lat,lon,fulladdr,description,georefaddr,type,author,
							device,inputdatetime,status) values('%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s');\n",
							$name,$coords['lat'],$coords['lon'],$address,$name,$address,'ER','1','Inicial',
							'2012-04-13 16:14:01','0');
							print($sql);
							
						}
						$place=array(); //new place
					 }else{
					 	array_push($place,$line);
					 }
					 
				 }	
				
		    }
		    fclose ($f);
	
	
?>