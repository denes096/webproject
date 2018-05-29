			
<HTML>
<Head>
	<Title>Tv Guide</Title>
</Head>
	<center>
		<Body background="movie.jpeg">
		
			
			<table bgcolor="grey" >
   
    <?php
            include_once ('db.php');
            $kezd=$_POST["kezd"];
			$bef=$_POST["bef"];
			echo "<h1>$kezd és $bef KÖZÖTTI MŰSOROK </h1>"; 
			
	?>
<table border=3 bgcolor="black" >
				  <tr>
					<th><a href="csatorna.php"><font color="white">CSATORNÁK</font></a></th>
					
					<th>
						<a href="szereplok.php"><font color="white">SZÍNÉSZEK</font></a>
										</th>
					<th><a href="add.php"><font color="white">HOZZÁAD</font></a></th>
					<th><a href="update.php"><font color="white">MÓDOSÍT</font></a></th>
					<th><a href="lekerdezes1.php"><font color="white">LEKÉRDEZÉS1</font></a></th>
					<th><a href="lekerdezes2.php"><font color="white">LEKÉRDEZÉS2</font></a></th>
				  </tr>
				  
			</table>
			</table><Table bgcolor="grey">
	<?php
			 include_once ('db.php');
            $kezd=$_POST["kezd"];
			$bef=$_POST["bef"];
            $rs = mysql_query("SELECT nev,cim,mikor,meddig FROM csatorna,sugaroz,media WHERE DATE_FORMAT(mikor, '%H:%i') BETWEEN '$kezd' AND '$bef' AND DATE_FORMAT(meddig, '%H:%i') BETWEEN '$kezd' AND 'bef' AND csatorna.csid=sugaroz.csid AND media.mid=sugaroz.mid ");
            while($row = mysql_fetch_array($rs)) {
                echo "<tr ><td>".$row['nev']."</td><td></td><td>".$row['cim']."</td><td></td><td>".$row['mikor']."</td><td></td><td>".$row['meddig']."</td></tr>";
            }
           
    ?>
</table>
			
			
			
			
				
		</Body>
	</center>
</html>