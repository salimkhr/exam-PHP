<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(\E_ALL);

include 'fct_aux.inc.php';
include 'db.inc.php';

echo enTete();
$pizzas = initPizza();

echo '<div class="row">';
foreach ($pizzas as $pizza)
{
    // TODO: récuperer la liste des ingrediants  de la pizza dans la base de donnée  et les passer en 2éme paramétre de la fonction Afficher Pizza.
    echo afficherPizza($pizza, DB::getInstance()->getIngredientsByPizza($pizza->getId()));
}
echo '</div>';
echo pied();

function afficherPizza(Pizza $pizza, array $ingredients = []): string
{
    $s = '
<div class="col-lg-3 col-md-6 col-sm-12 mt-5">
  <div class="card">
    <img src="../img/' . $pizza->getId() . '.jpg" class="card-img-top" alt="' . $pizza->getId() . '">
    <div class="card-header">
        <h3 class="text-center">' . $pizza->getName() . '</h3>
    </div>
    <div class="card-body">
        <p class="card-text">' . $pizza->getDescription() . '</p>
        <h3>Ingredient:</h3>
        <ul>';
    foreach ($ingredients as $ingredient)
    {
        $s .= '<li>'
        . $ingredient->getName() . ' : ' . $ingredient->getQuantity() . ' ' . ($ingredient->getUnit() ?? '') .
        '</li>';
    }
    $s .= '</ul>
        <a href="editIngredient.php?idPizza=' . $pizza->getId() . '" class="btn btn-primary btn-sm">Ajouter un ingrédient</a>
        <h3 class="mt-5">Recette:</h3><p>' . $pizza->getRecipeText() . '</p>
    </div>
    <div class="card-footer">
        <p class="float-start">' . $pizza->getCategory() . '</p>
        <p class="float-end">' . $pizza->getPrice() . '€</p>
    </div>
  </div>
</div>
    ';

    return $s;
}

function initPizza(): array
{
    return DB::getInstance()->getPizzas();
}
