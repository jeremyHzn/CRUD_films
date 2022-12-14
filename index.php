<?php
require_once "./assets/php/connect.php";
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/styles/pages/index.css">

    <!-- SEO -->
    <meta name="keywords" content="HTML, CSS, PHP, SQL, fullstack Junior">
    <meta name="author" content="Jérémy Heizmann">
    <meta name="description" content="Formulaire d'ajout de films dans la base de données - Metz Numric School [BSD-2021-2024]">

    <title>Formulaire PHP</title>
</head>
<body>
    <h1>Ajout film</h1>
    <form action="./assets/php/traitement.php" method="post">
        <label for="titre">Titre</label>
        <input type="text" name="titre" placeholder="Titre" required>
        
        <label for="desc">Description</label>
        <textarea name="desc" id="" cols="30" rows="3" placeholder="Description"></textarea>
        
        <label for="date">Date</label>
        <input type="text" name="date" required placeholder="date">
    
        <label for="film_realisateur">Réalisateurs</label>
        <select name="film_realisateur" id="">
            <option value="0">Sélectionnez</option>
            <?php
            $recordset = $db->query("SELECT * FROM realisateur");
            foreach ($recordset as $row) {
            ?> 
            <option value="<?= htmlspecialchars($row["realisateur_id"]) ?>">
                <?= htmlspecialchars($row["realisateur_prenom"]." ". $row["realisateur_nom"]) ?>
            </option>
            <?php
            }
            ?>
        </select>
        <label for="age">Age recommandé</label>
        <select name="age" id="">
            <option value="0">Sélectionnez</option>
            <?php
            $recordset = $db->query("SELECT * FROM age_categorie");
            foreach ($recordset as $row) {
                ?> 
                <option value="<?= htmlspecialchars($row["age_id"]) ?>">
                    <?= htmlspecialchars($row["age_minimum"]) ?>
                </option>
                <?php
            }
            ?>
        </select>
        <input type="submit" value="Valider">
    </form>
    <footer>
        <p>
            &copy Copyright jérémy Heizmann - 2022
        </p>
    </footer>
</body>
</html>