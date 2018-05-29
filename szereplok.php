
			
<HTML>
<Head>
	<Title>Tv Guide</Title>
</Head>
	<center>
		<Body background="movie.jpeg">
			<h1>Szereplők</h1>
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
    <tr>
 
        <th>nev</th>
    </tr>
    <?php
            include_once ('db.php');
            
            $rs = mysql_query("SELECT nev FROM szereplok ");
            while($row = mysql_fetch_array($rs)) {
                echo "\t<tr><td>".$row['nev']."</td></tr>\n";
            }
           
    ?>
</table>
			
			
			
			
				
		</Body>
	</center>
</html>