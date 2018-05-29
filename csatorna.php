<HTML>
<Head>
	<Title>Tv Guide</Title>
</Head>
	<center>
		<Body background="movie.jpeg">
			<h1>Csatornák</h1>
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
			<Table bgcolor="grey">
				<tr><td><h1>Csatorna||</td><td><center><h1>Cím</td><td><h1>||Kezdés||</td><td><h1>Befejezés</td></tr>
<?php  	include_once('db.php');
		
		$result=mysql_query("SELECT nev,cim,mikor,meddig FROM csatorna,sugaroz,media WHERE csatorna.csid=sugaroz.csid AND media.mid=sugaroz.mid"); 
		while($row = mysql_fetch_array($result)) {
                echo "\t<tr><td>".$row['nev']."</td><td>".$row['cim']."</td><td>".$row['mikor']."</td><td>".$row['meddig']."</td></tr>\n";
            }
           
	
	?> 

			</table>
			
			
				
		</Body>
	</center>
</html>