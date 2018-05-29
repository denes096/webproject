


<HTML>
<Head>
	<Title>Tv Guide</Title>
</Head>
	<center>
	<table border=3 >
				  <tr>
					<th><a href="csatorna.php">CSATORNÁK</a></th>
					
					<th>
						<a href="szereplok.php">SZÍNÉSZEK</a>
										</th>
					<th><a href="add.php">HOZZÁAD</a></th>
					<th><a href="update.php">MÓDOSÍT</a></th>
					<th><a href="lekerdezes1.php">LEKÉRDEZÉS 1</a></th>
					<th><a href="lekerdezes2.php">LEKÉRDEZÉS 2</a></th>
				  </tr>
				  
			</table>
		<Body bgcolor="#E6E6FA">
		<?php
				include_once('db.php');				
				$name=$_POST["name"];
				if(mysql_query("INSERT INTO csatorna(nev) VALUES('$name')")){
					echo "success";
					
				}
				else echo "fail";
	
		?>
			<a href="index.html">Vissza</a>
				
		</Body>
	</center>
</html>			
