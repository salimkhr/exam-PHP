<?php

class Category
{
    private int $id;    // Identifiant de la catégorie (entier)
    private string $name;  // Nom de la catégorie (chaîne de caractères)

    public function __construct(string $name)
    {
        $this->name = $name;
    }

    public function getId(): int
    {
        return $this->id;
    }

    public function getName(): string
    {
        return $this->name;
    }

    public function setName(string $name): void
    {
        $this->name = $name;
    }
}
