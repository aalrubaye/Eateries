<form action="" method="get">

    Search :
    <input type="text" name="values" id="values"></input>
    <input type="submit" name="submit" value="submit"></input>
</form>

<?php
if( isset($_GET['submit']) )
{
    $val = htmlentities($_GET['values']);
    Search($val);
}

function Search($val)
{
    $dbhost = 'localhost';
    $dbuser = 'root';
    $dbpass = '';

    $conn = mysql_connect($dbhost, $dbuser, $dbpass);

    if(! $conn ) {
       die('Could not connect: ' . mysql_error());
    }
    
    $sql = "SELECT * FROM (SELECT E.`Name`, E.`City`, E.`State`, E.`Zip`,
      ET.`Type Name`, EO.`First Name`, EO.`Last Name`, EO.`Phone` FROM `Eateries`
       as E, `Eatery Type` as ET, `Eatery Owners` as EO WHERE E.Type=ET.ID and
       E.Owner=EO.ID) as T WHERE T.`First Name` = '$val' or
       T.`Last Name` = '$val' or T.`City` = '$val' or T.`State` = '$val'
       or T.`Zip` = '$val' or T.`Type Name` = '$val'";
    mysql_select_db('Ascentus_db');
    $retval = mysql_query( $sql, $conn );

    if(! $retval ) {
       die('Could not get data: ' . mysql_error());
    }
    $count = 0;

    while($row = mysql_fetch_array($retval, MYSQL_ASSOC)) {

        echo "&bull;{$row['Name']}: <br> ".
            " &nbsp&nbsp&nbsp&nbsp &#8211; Owned by: {$row['First Name']} {$row['Last Name']} | Phone: {$row['Phone']} <br>".
            " &nbsp&nbsp&nbsp&nbsp &#8211; Located in: {$row['City']}, {$row['State']} {$row['Zip']} <br>".
          "<br>";
          $count += 1;
    }

    if ($count == 0){
      echo "No data was found";
    }
    mysql_close($conn);
}
?>
