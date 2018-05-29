 <?php
			include_once('db.php');
            $rs = mysql_query("SELECT nev FROM szereplok");
            while($row = mysql_fetch_array($rs)) {
                echo "\t<tr><td>".$row['nev']."</td></tr>\n";
            }
         
    ?>