<<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/water.css">
	<title></title>
</head>
<body>
	<form action="process_insert.php" method="post">
		<h1>Simple Calculator</h1><br>

		First Number:<input name="a" value="a"><br>
		Second Number:<input name="b" value="b"><br>

		<input type="submit" name="operator" value="+">
		<input type="submit" name="operator" value="-">
		<input type="submit" name="operator" value="*">
		<input type="submit" name="operator" value="/">
		<br><br>
		

		<!-- <br>Result: <input type='text' value="<?php echo $ans; ?>"><br> -->

	</form>

<?php
session_start();

require_once("dbconnect2.php");
//require_once("cal.php")

if(isset($_POST["operator"])){
    //$id=$_POST["id"];
    $a=$_POST["a"];
    $b=$_POST["b"];
    $operator = $_POST['operator'];

    //$result=$_POST["result"];

    function vuvuzela($a,$b,$operator){
	$a = $_POST['a'];
	$b = $_POST['b'];
	$operator = $_POST['operator'];

		$result = '';
		if (is_numeric($a) && is_numeric($b)) {
			switch ($operator) {
				case "+":
					$result = $a + $b;
					break;
				case "-":
				 	$result = $a - $b;
					break;
				case "*":
					$result = $a * $b;
					break;
				case "/":
					$result = $a / $b;
					break;
			}
		
		}
		return $result;
	}

	$ans= vuvuzela($a,$b, $operator);
	//echo "Answer is:" .vuvuzela($a,$b, $operator); 
	//echo $ans;



     $sql= "INSERT INTO jina(id,a,b,result) VALUES('','$a','$b','$ans')";

        if (mysqli_query($link,$sql)){
            echo "1 successfully";
            }   
  		else{
            echo "2-failed".$link->error;
        }
  
    }


?>

</body>

	Result: <input type='text' value="<?php echo $ans; ?>">

</html>
