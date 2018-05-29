<HTML>
<Head>
	<Title>Tv Guide</Title>
</Head>
	<center>
		<Body background="movie.jpeg">
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
			<h1>Színész hozzáadása</h1>
			
			<?php  	
				include_once('db.php');				
				$name=$_POST["name"];
				$szulev=$_POST["szulev"];
	
				if(mysql_query("INSERT INTO szereplok(nev,szulev) VALUES('$name','$szulev')")){
					echo "success";
					
				}
				else echo "fail";
		
           
	
			?> 

			<a href="index.html">Vissza</a>
			
				
		</Body>
	</center>
</html>