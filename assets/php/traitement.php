<?php
require_once "connect.php";

if (isset($_POST["titre"]) && $_POST["titre"] != " ") {
    $titre = $_POST["titre"];
} else {
    echo "Erreur de complétion Titre</br>";
}

if (isset($_POST["desc"]) && $_POST["desc"] != " ") {
    $desc = $_POST["desc"];
} else {
    echo "Erreur de complétion de la description</br>";
}

if (isset($_POST["date"]) && $_POST["date"] != " ") {
    $date = $_POST["date"];
} else {
    echo "Erreur de complétion de la date</br>";
}

$age_id = $_POST["age"];
$film_realisateur = $_POST["film_realisateur"];

$stmt = $db->prepare("INSERT INTO film(
        film_titre, 
        film_description, 
        film_date,
        film_realisateur_id,
        film_age_id
    ) 
    VALUES (
        :titre,
        :desc,
        :date, 
        :film_realisateur, 
        :age)"
);

const PDO_STR = PDO::PARAM_STR; // c'est pour caster en STR par exemple si c'est pas le cas il mettre "0" ou NULL et pour les int il fera pareil ou se qu'il peut
const PDO_INT = PDO::PARAM_INT; // astuce de developer pour pas à avoir à toujours réécrire de préférence dans un fichier dédié pour les racourcis et fonction toutes faites 
$stmt->bindParam(":titre", $titre, PDO_STR); // si on ecrit pas de constante il faut mettre PDO::PARAM_STR au lieu de PDO_STR que j'ai défini à la place juste au dessu
$stmt->bindParam(":desc", $desc, PDO_STR);
$stmt->bindParam(":date", $date, PDO_INT);
$stmt->bindParam(":film_realisateur", $film_realisateur, PDO_STR);
$stmt->bindParam(":age", $age_id, PDO_INT);
$stmt->execute();

?>
