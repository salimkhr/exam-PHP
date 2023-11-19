<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

include('fct_aux.inc.php');
include('Ingredient.inc.php');
include('Pizza.inc.php');
include('Category.inc.php');

echo enTete();

$pizza = initPizza();

//TODO: récupérer la liste des ingredients et les passer en 2éme paramétrè de la fonction AfficherPizza

echo afficherPizza($pizza);
echo pied();

function afficherPizza(Pizza $pizza, array $ingredients = []):String
{
  $s= '<div class="card w-25 mx-auto">
        <img src="../img/'.$pizza->getId().'.jpg" class="card-img-top img-fluid img-thumbnail" alt="'.$pizza->getName().'">
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
            <p class="float-start">'.$pizza->getCategory()->getName().'</p>
            <p class="float-end">'.$pizza->getPrice().'€</p>
        </div>
    </div>';

    return $s;
}

function initPizza()
{
  $pizza = new Pizza(
      5,
      'Hawaïenne',
      'Une pizza classique avec du jambon et de l\'ananas',
      13.99,
      'Étalez la sauce tomate sur la pâte, ajoutez du fromage mozzarella, du jambon et des morceaux d\'ananas. Cuisez jusqu\'à ce que le fromage soit fondu et la croûte dorée.',
  );
  $pizza->setCategory(new Category('Ne devrais pas exister'));

  return $pizza;
}

?>
