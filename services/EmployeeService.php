<?php 
class EmployeeService { 
  protected $username ; 
  protected $password; 
  protected $server; 
  protected $databasename; 
  protected $tablename;  
  
  var $connection; 
  public function __construct() { 
  	$this->connectionDetails();  	
    $this->connection = mysqli_connect( 
                       $this->server,  
                       $this->username,  
                       $this->password, 
                       $this->databasename
                       ); 
    
    $this->throwExceptionOnError($this->connection); 
  } 
  
  public function connectionDetails() {
  	$ini_path="connection.ini";
  	$ini_array = parse_ini_file($ini_path, true);
  	$this->username=$ini_array["details"]["user"];
  	$this->password=$ini_array["details"]["pass"];
  	$this->server=$ini_array["details"]["host"];
  	$this->databasename=$ini_array["details"]["db"];
  	$this->tablename=$ini_array["details"]["table"];
  }
  
  public function getEmployees() {
  	 $tablename = $this->tablename;
     $stmt = mysqli_prepare($this->connection,
          "SELECT
              $tablename.firstname,
              $tablename.lastname,
              $tablename.photofile
           FROM $tablename");     
         
      $this->throwExceptionOnError();

      mysqli_stmt_execute($stmt);
      $this->throwExceptionOnError();

      $rows = array();
     mysqli_stmt_bind_result($stmt, $row->firstname,
                    $row->lastname, $row->photofile);

      while (mysqli_stmt_fetch($stmt)) {
      	$rows[] = $row;
      	$row = new stdClass();
      	mysqli_stmt_bind_result($stmt,  $row->firstname,
      			$row->lastname, $row->photofile);
      	}

      mysqli_stmt_free_result($stmt);
      mysqli_close($this->connection);

      return $rows;
  }  

/** 
  * Utitity function to throw an exception if an error occurs 
  * while running a mysql command. 
  */ 
  private function throwExceptionOnError($link = null) { 
    if($link == null) { 
      $link = $this->connection; 
    } 
    if(mysqli_error($link)) { 
      $msg = mysqli_errno($link) . ": " . mysqli_error($link); 
      throw new Exception('MySQL Error - '. $msg); 
    }         
  } 
 
} 

?>