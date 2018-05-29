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
				$conn=mysql_pconnect('localhost','root','');
				$db=mysql_select_db('guide');
				
				$name=$_POST["name"];
				$szulev=$_POST["szulev"];
				$sql="UPDATE `szereplok` SET `szulev` = '$szulev' WHERE  nev='$name'";
				$result = mysql_query($sql,$conn);
				if($result){
					echo "success";
					
				}
				else {echo "Nincs ilyen szereplő , előbb add hozzá";
						
				}mysql_close($conn);
		
           
	
			?> 
					
			<a href="update.php">Vissza</a>
			
			
				
		</Body>
	</center>
</html>