<?php
include('fct_aux.inc.php');

echo enTete();

echo '<form methode="post">

 <label for="name" class="form-label">Name</label>
 <input type="text" name="name" class="form-control" required>

 <label for="name" class="form-label">Quantite</label>
 <input type="number" name="qte" class="form-control">

<label for="name" class="form-label">Unite</label>
<select name="unite" class="form-control">

<option value="" selected></option>
<option value="Gramme" selected>Gramme</option>
<option value="Litre" selected>Litre</option>
<option value="Tranche" selected>Tranche</option>
<option value="c. à soupe" selected>c. à soupe</option>
</select>';

echo pied();
