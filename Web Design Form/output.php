
<?php
ini_set( 'display_errors', 1 );
ini_set( 'display_startup_errors', 1 );

 $db = new PDO('mysql:host=localhost;dbname=Golf;charset=utf8', 'root', 'root');
 // sets error mode, which allows errors to be thrown, rather than silently ignored
 $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
 $db->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);

$name = $_POST["name"];
echo "Welcome " . $name;

$email = $_POST["email"];
echo "Your username is:" . $email;

$postal = $_POST["postal"];
$skill = $_POST["skillLevel"];
$country = $_POST["country"];



// $db->exec( "INSERT INTO User (Email, Name) VALUES ('$email', '$name')" );

$stmt = $db->prepare("INSERT INTO User (Email, Name, Postal, GolfSkill, Handicap) VALUES (:email, :name, :postal, :skill, :country)");
$stmt->bindParam(':name', $name);
$stmt->bindParam(':email', $email);
$stmt->bindParam(':postal', $postal);
$stmt->bindParam(':skill', $skill );
$stmt->bindParam(':country', $country);

$stmt->execute();



?>
