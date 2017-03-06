<?php 
	error_reporting(E_ALL);
	ini_set('display_errors', 1);

	require_once('lib/rb.php');
	
	setlocale(LC_ALL,"it_IT");
	date_default_timezone_set('Europe/Rome');
	
	R::setup('mysql:host=localhost;dbname=es2','root', 'root');
	R::freeze(FALSE);
	
	$pg=(empty($_REQUEST['p'])) ? 'home' : $_REQUEST['p'];
	$pg='pgs/'.$pg.'.php';
	
?>
<!doctype html>
<html lang="it">
  <head>
    <title>Ricevute</title>
	<meta charset="utf-8" />
  </head>
  <body>
	<div id="all" class="all">
		<? if (file_exists($pg)) include_once($pg); ?>
	</div>
  </body>
</html>
