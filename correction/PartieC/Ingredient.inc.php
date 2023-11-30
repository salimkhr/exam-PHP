<?php

class Ingredient
{
    private string $name;      // Nom de l'ingrédient (chaîne de caractères)
    private int $quantity;  // Quantité de l'ingrédient (entier)
    private ?string $unit;      // Unité de mesure (chaîne de caractères ou null)
    private ?int $idPizza;

    public function __construct(string $name = '', int $quantity = 0, ?string $unit = null, ?int $idPizza = null)
    {
        $this->name = $name;
        $this->quantity = $quantity;
        $this->unit = $unit;
        $this->idPizza = $idPizza;
    }

    public function getName(): string
    {
        return $this->name;
    }

    public function getQuantity(): int
    {
        return $this->quantity;
    }

    public function setQuantity(int $quantity): void
    {
        $this->quantity = $quantity;
    }

    public function getUnit(): ?string
    {
        return $this->unit;
    }

    public function setUnit(?string $unit): void
    {
        $this->unit = $unit;
    }

    public function getIdPizza(): ?int
    {
        return $this->idPizza;
    }

    public function setIdPizza(?int $idPizza): void
    {
        $this->idPizza = $idPizza;
    }

    public function __toString(): string
    {
        return '<article><h3>' . $this->name . '</h3> <h4>' . $this->quantity . ' ' . $this->unit . '</h4></article>';
    }

    public function __serialize(): array
    {
        return [
          'name' => $this->name,
          'quantity' => $this->quantity,
          'unit' => $this->unit,
        ];
    }

    public function __unserialize(array $data): void
    {
        $this->name = $data['name'];
        $this->quantity = $data['quantity'];
        $this->unit = $data['unit'];
    }
}
