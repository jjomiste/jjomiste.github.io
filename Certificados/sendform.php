<?php
//error_reporting(E_ALL);
//ini_set('display_errors', true);
//print_r($_POST);
//proceso del formulario
// si existe "enviar"...
if(isset($_POST['poster'])){ $pst=1;} else{ $pst=0;}
if(isset($_POST['oralpresentation'])){ $op=1;} else{ $op=0;}
if(isset($_POST['visitcesga'])){ $vc=1;} else{ $vc=0;}
if (isset ($_POST['Submit'])) {
//recogemos las variables
$name=$_POST['name'];
$middle=$_POST['middle'];
$lastname=$_POST['lastname'];
$position=$_POST['position'];
$email=$_POST['email'];
$organization=$_POST['organization'];
$address=$_POST['address'];
$zipcode=$_POST['zipcode'];
$city=$_POST['city'];
$country=$_POST['country'];
$phone=$_POST['phone'];
$ext=$_POST['ext'];
$fax=$_POST['fax'];
//$oralpresentation=$_POST['oralpresentation'];
//$poster=$_POST['poster'];
$authorsop=$_POST['authorsop'];
$titleop=$_POST['titleop'];
$authorsposter=$_POST['authorsposter'];
$titleposter=$_POST['titleposter'];
$visitcesga=$_POST['visitcesga'];
//--------------------------------------------------
//comprobamos si todos los campos fueron completados
if ( $name!='' && $lastname!='' && $email!='' && $organization!='' && $address!='' && $zipcode!='' && $city!='' && $country!='' && $phone!='' ) 
{
// si es asi armamos el correo
$dia=date("m.d.Y");
$hora=date("H:i:s");
$destinatario="j2ifam2011@usc.es";
$subject= "J2IFAM2011";
$desde = 'From: '.$_POST[email];
$contingut = "
El mensaje se ha enviado el dia $dia a las $hora\n\n
---------------Registration J2IFAM2011-------------------------------------\n
Name= $_POST[name]\n
Middle Name= $_POST[middle]\n
Last Name= $_POST[lastname]\n
Position= $_POST[position]\n
E-mail= $_POST[email]\n
Organization= $_POST[organization]\n
Address= $_POST[address]\n
Zip Code= $_POST[zipcode]\n
City= $_POST[city]\n
Country= $_POST[country]\n
Phone= $_POST[phone]\n
Ext= $_POST[ext]\n
Fax= $_POST[fax]\n
Oral Presentation= $op\n
Poster= $pst\n
Authors Oral Presentation= $_POST[authorsop]\n
Title Oral Presentation= $_POST[titleop]\n
Authors Poster= $_POST[authorsposter]\n
Title Poster= $_POST[titleposter]\n
Guided Visit to CESGA= $vc\n
----------------------------------------------------------------------------\n
";
mail($destinatario, $subject, $contingut, $desde);
$flag='ok';
$mensaje='<div id="ok">Your form has been submitted correctly. Thank you.</div>';
echo $mensaje;
} else {
//si no todos los campos fueron completados se frena el envio y avisamos al usuario
$flag='err';
$mensaje='<div id="error">Please, fill all the required fields.</div>';
echo $mensaje;
}
}
?> 
