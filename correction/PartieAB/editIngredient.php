<?php
session_start();
include('fct_aux.inc.php');
include('Ingredient.inc.php');

if(isset($_POST['name']))
{
  exploiterFormulaire($_POST);
}
else
{
  echo enTete();
  echo genererFormulaire();
  echo pied();
}

function exploiterFormulaire($data)
{
  $name = htmlentities($data['name']);
  $qte = htmlentities($data['qte']);
  $unite = htmlentities($data['unite']);

  if($name===null || !is_numeric($qte))
    echo genererFormulaire();

  $ingredient = new Ingredient($name,$qte,$unite,1);

  if(!isset($_SESSION['ingredient']))
    $_SESSION['ingredient'] = [];

  $_SESSION['ingredient'][] = serialize($ingredient);
  header('Location: consultPizza.php');
}

function genererFormulaire()
{
  return '<form method="post">

      <label for="name" class="form-label">Nom de l\'ingrédient :<span class="text-danger">*</span></label>
      <input type="text" name="name" class="form-control" required>

      <label for="qte" class="form-label">Quantité</label>
      <input type="number" name="qte" class="form-control">

      <label for="unite" class="form-label">Unité</label>
      <select name="unite" class="form-control">
        <option value="" selected></option>
        <option value="grammes" selected>Gramme</option>
        <option value="Litre" selected>Litre</option>
        <option value="Tranche" selected>Tranche</option>
        <option value="tasse" selected>Tasse</option>
        <option value="feuilles" selected>Feuille</option>
      </select>

      <input type="submit" value="Valider" class="btn btn-primary mt-5">
      <input type="reset" value="Annuler" class="btn btn-warning mt-5">
  </form>';
}
?>
