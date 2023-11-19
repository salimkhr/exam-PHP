<?php
/* fctAux.inc.php */

// ------------------------------------
// FONCTIONS AUXILIAIRES DE SORTIE HTML
// ------------------------------------

function enTete($titre='') {
  return
  '<!DOCTYPE html>
    <html>
      <head>
        <meta http-equiv="Content-type" content="text/html;charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>'.$titre.'</title>
        <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
      </head>
      <body>'.
  menu().
  haut();
}

function pied() {
  //MODIF 1617
  return '</div>

          </body>
          </html>';
}

/* Ajout pour l'en-tete et le menu */
function haut() {
  return '<div class="container mt-5">';
}

function menu() {
  return '<nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Pizza-Shop</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" href="editIngredient.php">Éditer Ingrédients</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="consultPizza.php">Consulter Pizzas</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="bye.php">Quitter</a>
        </li>
      </ul>
    </div>
  </div>
</nav>';
}
?>
