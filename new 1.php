 <table>
 <?php include_once('db.php');
            $result=mysql_query("SELECT nev,cim FROM szereplok,jatszik,media WHERE cim='Szövetségesek' szereplok.szid=jatszik.szid AND media.mid=jatszik.mid"); 
		while($row = mysql_fetch_array($result)) {
                echo "\t<tr><td>".$row['nev'].$row['cim']."</td></tr>\n";
            }
           
    ?></table>