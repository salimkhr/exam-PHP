<?php
class Pizza {
    private int $id;          // Identifiant de la pizza (entier)
    private string $name;        // Nom de la pizza (chaîne de caractères)
    private ?string $description; // Description de la pizza (chaîne de caractères ou null)
    private float $price;       // Prix de la pizza (nombre à virgule flottante)
    private ?string $recipeText;  // Texte de la recette de la pizza (chaîne de caractères ou null)
    private ?Category $category;  // Texte de la catégorie à laquelle la pizza appartient (chaîne de caractères) géré en base de données via la table Category

    public function __construct(int $id,string $name, ?string $description, float $price, ?string $recipeText) {
        $this->id = $id;
        $this->name = $name;
        $this->description = $description;
        $this->price = $price;
        $this->recipeText = $recipeText;
        $this->category = null;
    }

    public function getId(): int {
        return $this->id;
    }

    public function getName(): string {
        return $this->name;
    }

    public function getDescription(): ?string {
        return $this->description;
    }

    public function setDescription(?string $description): void {
        $this->description = $description;
    }

    public function getPrice(): float {
        return $this->price;
    }

    public function setPrice(float $price): void {
        $this->price = $price;
    }

    public function getRecipeText(): ?string {
        return $this->recipeText;
    }

    public function setRecipeText(?string $recipeText): void {
        $this->recipeText = $recipeText;
    }

    public function getCategory(): ?Category {
        return $this->category;
    }

    public function setCategory(?Category $category): void {
        $this->category = $category;
    }
}
