

<?
$a = $_POST['a'];
$b = $_POST['b'];
$operator = $_POST['operator'];

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

	echo "$result <br /> <br /> 1st Number: $a <br /> 2nd Number: $b <br /><br />";
echo "Answer is:" .vuvuzela($a,$b,$result);

?>
