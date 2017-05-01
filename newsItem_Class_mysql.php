<?php
/**
 * Created by PhpStorm.
 * User: Ernie Simuro
 * Date: 5/9/16
 * Time: 7:52 AM
 */

class newsItem  {
    private $conn;

    public function __construct()
    {
        include "./includes/config.php";
        $this->conn = new mysqli($dbHost, $dbUser, $dbPass, $dbData);
    }

    public function getSpecificItem($key)
    {
        $mQuery = 'select * from newsletters where id = ' . $key;

        $result = $this->conn->query($mQuery);
        $outp = array();
        while($rs = $result->fetch_array(MYSQLI_ASSOC)) {
            $out  = array();
            $out["id"] =  $rs["id"];
            $out["email"] =  $rs["email"];
            $out["name"] =  $rs["name"];
            $out["requestDate"] = $rs["requestDate"] ;
        }
        return $out;
    }

    public function getListofItems()
    {
        $mQuery = 'select * from newsletters order by requestDate DESC' ;
        $result = $this->conn->query($mQuery);
        $num = $result->num_rows;
        $res = array();
        while($rs = $result->fetch_array(MYSQLI_ASSOC)) {
            $out  = array();
            $out["id"] =  $rs["id"];
            $out["email"] =  $rs["email"];
            $out["name"] =  $rs["name"];
            $out["requestDate"] = $rs["requestDate"] ;
            $res[] = $out;
        }
        return $res;
    }

    public function addNewsletterItem($request) {

        $mQuery = 'insert into newsletters (`email`, `name`, `requestDate`) values (  '
            . '"' . $request['email'] . '", '
            . '"' . $request['name'] . '", '
            . '"' . date("Y-m-d ")  . '")';

        if ($this->conn->query($mQuery) === TRUE) {
            $result = "Congratulations your request has been sucessfully added to our list of treehouse newsletter receipents ";
        } else {
            $result = 'Sorry we were unable to add you to the list of treehouse newsletter receipents, error reason "' . $this->conn->error . '"';
        }
        return $result;
    }
} 