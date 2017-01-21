<?php
	function contientFlag($flag)
	{
		$ret = false;

		if (startsWith($flag, 'score:'))
		{
			$test = explode(":", $flag);
			$if = $_COOKIE['score'].' '.$test[1];
			$ret = eval("return $if ? true : false;");
		}
		else
		{
			foreach (explode("|", $_COOKIE['flags']) as $f)
			{
				if ($flag == $f)
					$ret = true;
			}
		}

		return $ret;
	}

	function startsWith($haystack, $needle)
	{
	     $length = strlen($needle);
	     return (substr($haystack, 0, $length) === $needle);
	}

?>