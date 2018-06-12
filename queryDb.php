<?php	
   $address = "localhost";
   $user = "root";
   $password = "276612";
   $database = "1621ict";


   function getCustomers($searchTerm = null) {
     global $address,  $user,  $password, $database;
      
      $db = new mysqli( $address,  $user,  $password, $database);
	  $array = [];
      if(!$db){
         echo '<script type="text/javascript">alert("'.$db->error.'");</script>';
      } else {
         //echo "Opened database successfully\n";
      }
      if(!$searchTerm) {
         $sql ='SELECT * FROM CUSTOMERS;';
      } else {
         $sql ='SELECT * FROM CUSTOMERS WHERE FIRSTNAME LIKE "'.$searchTerm.'" OR LASTNAME LIKE "'.$searchTerm.'" OR ADDRESS LIKE "'.$searchTerm.'" OR PHONE  LIKE "'.$searchTerm.'"';
      }
      $ret = $db->query($sql);
      if(!$ret){
        echo $db->error;
        return [];
      } else {
         while($row = $ret->fetch_assoc() ){
            $array[] = $row;
         }
         $db->close();
         return $array;
      }
   }
   
   
   function getProducts($searchTerm = null) {
     global $address,  $user,  $password, $database;
      
      $db = new mysqli($address, $user, $password, $database);
	  $array = [];
      if(!$db){
         echo '<script type="text/javascript">alert("'.$db->error.'");</script>';
      } else {
         //echo "Opened database successfully\n";
      }

      if(!$searchTerm) {
         $sql ='SELECT * from product;';
      } else {
         $sql ='SELECT * FROM product WHERE name LIKE "%'.$searchTerm.'%"';
      }
      $ret = $db->query($sql);
      if(!$ret){
        echo $db->error;
        return [];
      } else {
          while($row = $ret->fetch_assoc() ){
            $array[] = $row;
         }
         $db->close();
         return $array;
      }
   }
   
   
   function getEvents($searchTerm = null) {
     global $address,  $user,  $password, $database;
      $db = new mysqli($address, $user, $password, $database);
	  $array = [];
      if(!$db){
         echo '<script type="text/javascript">alert("'.$db->error.'");</script>';
      } else {
         //echo "Opened database successfully\n";
      }
      
        if(!$searchTerm) {
         $sql ='SELECT * from EVENTS;';
      } else {
         $sql ='SELECT * FROM EVENTS WHERE EVENTNAME LIKE "'.$searchTerm.'" OR DESCRIPTION LIKE "'.$searchTerm.'" OR LOCATION LIKE "'.$searchTerm.'" OR DATE LIKE "'.$searchTerm.'"';
      }
      $ret = $db->query($sql);
      if(!$ret){
        echo $db->error;
        return [];
      } else {
          while($row = $ret->fetch_assoc() ){
            $array[] = $row;
         }
         $db->close();
         return $array;
      }
   }
   
   
   
   function addCustomer($fname, $lname, $address, $phone) {
     global $address,  $user,  $password, $database;
      
      $db = new mysqli($address, $user, $password, $database);
      if(!$db){
         echo '<script type="text/javascript">alert("'.$db->error.'");</script>';
      } else {
         //echo "Opened database successfully\n";
      }

      $sql ='INSERT INTO CUSTOMERS (FIRSTNAME, LASTNAME, ADDRESS, PHONE) VALUES ("'.$fname.'", "'.$lname.'", "'.$address.'", "'.$phone.'");';
      $db->query($sql);
   }
   
   
   function addProduct($pname, $man, $desc, $price) {
     global $address,  $user,  $password, $database;
      
      $db = new mysqli($address, $user, $password, $database);
      if(!$db){
         echo '<script type="text/javascript">alert("'.$db->error.'");</script>';
      } else {
         //echo "Opened database successfully\n";
      }

      $sql ='INSERT INTO PRODUCTS (PRODUCTNAME, MANUFACTURER, DESCRIPTION, PRICE) VALUES ("'.$pname.'", "'.$man.'", "'.$desc.'", "'.$price.'");';
      $db->query($sql);
   }
   
   
   function addEvent($ename, $loc, $desc, $date) {
      
      $db = new mysqli($address, $user, $password, $database);
      if(!$db){
         echo '<script type="text/javascript">alert("'.$db->error.'");</script>';
      } else {
         //echo "Opened database successfully\n";
      }

      $sql ='INSERT INTO EVENTS (EVENTNAME, LOCATION, DESCRIPTION, DATE) VALUES ("'.$ename.'", "'.$loc.'", "'.$desc.'", "'.$date.'");';
      $db->query($sql);
   }
   
      
?>
