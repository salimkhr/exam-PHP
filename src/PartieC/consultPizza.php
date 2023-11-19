<?php
include('fct_aux.inc.php');
include ('db.inc.php');

echo enTete();

$pizzas = initPizza();

foreach ($pizzas as $pizza)
{
    //TODO: récuperer la liste des ingrediants  de la pizza dans la base de donnée  et les passer en 2éme paramétre de la fonction Afficher Pizza.

    echo afficherPizza($pizza,);
}

echo pied();

function afficherPizza(Pizza $pizza, array $ingredients):String
{
  $s= '<div class="card w-25 mx-auto">
        <img src="img/'.$pizza->getId().'.jpg" class="card-img-top img-fluid img-thumbnail" alt="'.$pizza->getName().'">
        <div class="card-header">
            <h3 class="text-center">'.$pizza->getName().'</h3>
        </div>
        <div class="card-body">
            <p class="card-text">'.$pizza->getDescription().'</p>
            <h3>Ingredient:</h3>
            <ul class="list-group">';
              foreach ($ingredients as $ingredient) {
                $s.='<li>'
                .$ingredient->getName().' '.$ingredient->getQuantity().' '.($ingredient->getUnit() ?? '').
                '</li>';
              }
          $s.='</ul>
            <h3 class="mt-5">Recette:</h3><p>'.$pizza->getRecipeText().'</p>
        </div>
        <div class="card-footer">
            <p class="float-start">'.$pizza->getCategory().'</p>
            <p class="float-end">'.$pizza->getPrice().'€</p>
        </div>
    </div>';

    return $s;
}

function initPizza():array
{
    return DB::getInstance()->getPizzas();
}
?>