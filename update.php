<HTML>
<Head>
	<Title>Tv Guide</Title>
</Head>
	<center>
		<Body background="movie.jpeg">
			<h1>Színész modosítása</h1>
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
			<table bgcolor="grey">
			<form action="upd.php" method="POST">
				<tr><td>Név:</td><td> <input type="text" name="name"></td></tr>
				<tr><td>Születési éve:</td><td> <input type="date" name="szulev"></td></tr>
				<tr><td><input type="submit" ></td></tr>
			<?php  	
			$conn=mysql_pconnect('localhost','root','');
			$db=mysql_select_db('guide');
            
            $rs = mysql_query("SELECT nev,szulev FROM szereplok ");
            while($row = mysql_fetch_array($rs)) {
                echo "\t<tr><td>".$row['nev']."</td><td>".$row['szulev']."</td></tr>\n";
            }			
				
				
				
			?> 
				
			<tr><td><a href="index.html">Vissza</a></td></tr>
			
			</table>	
		</Body>
	</center>
</html>