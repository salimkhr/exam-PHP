<?php
include('fct_aux.inc.php');

echo enTete();

echo '<form methode="post">

<label for="name" class="form-label">Name<span class="text-danger">*</span></label>
<input type="text" name="name" class="form-control" required>

<label for="qte" class="form-label">Quantite</label>
<input type="number" name="qte" class="form-control">

<label for="unite" class="form-label">Unite</label>
<select name="unite" class="form-control">
  <option value="" selected></option>
  <option value="grammes" selected>Gramme</option>
  <option value="Litre" selected>Litre</option>
  <option value="Tranche" selected>Tranche</option>
  <option value="tasse" selected>Tasse</option>
  <option value="feuilles" selected>Feuille</option>
</select>
';

echo pied();
