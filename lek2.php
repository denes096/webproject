			
<HTML>
<Head>
	<Title>Tv Guide</Title>
</Head>
	<center>
		<Body background="movie.jpeg">
		<h1>TV Guide</h1>
		
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
			
			<table bgcolor="grey"  ><br>
   
    <?php
            include_once ('db.php');
            
			$cim=$_POST["cim"];
			echo "<h1>A $cim címü filmben játszó színészek:</h1>";
		
			
			
            $rs = mysql_query("SELECT nev FROM szereplok,jatszik,media WHERE cim='$cim' AND szereplok.szid=jatszik.szid AND media.mid=jatszik.mid ");
            while($row = mysql_fetch_array($rs)) {
                echo "<tr ><td>".$row['nev']."</td></tr>";
            }
           
    ?>
</table>
			
			
			
			
				
		</Body>
	</center>
</html>