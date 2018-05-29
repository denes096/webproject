<HTML>
<Head>
	<Title>Tv Guide</Title>
</Head>
	<center>
		<Body background="movie.jpeg"><h1>Tudd meg kik szerepelnek a filmben</h1>
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
			<td><h3>Melyik film szerelpői kellenek?<br>
			<?php
            include_once ('db.php');
            
            $rs = mysql_query("SELECT cim FROM media ");
            while($row = mysql_fetch_array($rs)) {
                echo "<tr ><td>".$row['cim']."</td></tr>";
            }
           
    ?>
					
			
			
			<form action="lek2.php" method="POST">
				<td>Film Címe: <input type="text" name="cim"><br>
			
				<input type="submit" >
				</table>
		</Body>
	</center>
</html>