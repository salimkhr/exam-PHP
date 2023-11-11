/*drop table Ingredient;
drop table Pizza;
drop table Category;*/

CREATE TABLE Category (
    idCategory SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE Pizza (
    idPizza SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    recipeText TEXT,
    idCategory INT,
    FOREIGN KEY (idCategory) REFERENCES Category(idCategory)
);

CREATE TABLE Ingredient (
    idIngredient SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    quantity INT NOT NULL,
    unit VARCHAR(50),
    idPizza INT,
    FOREIGN KEY (idPizza) REFERENCES Pizza(idPizza)
);

--Insertion dans la table Category
INSERT INTO Category (name) VALUES
    ('Végétarienne'),
    ('Amateurs de viande'),
    ('Margherita'),
    ('Délice de la mer'),
    ('Ne devrait pas exister');
	commit;

INSERT INTO Pizza (name, description, price, recipeText, idCategory) VALUES
    ('Délice végétarien', 'Une pizza délicieuse garnie de légumes frais', 12.99, 'Étalez la sauce tomate sur la pâte, ajoutez du fromage mozzarella, des champignons et des poivrons rouges. Cuisez jusqu''à ce que la croûte soit dorée.', 1),
    ('Festin de viande', 'Pour les carnivores, une pizza avec pepperoni et saucisse', 14.99, 'Étalez la sauce tomate sur la pâte, ajoutez du fromage mozzarella, du pepperoni et de la saucisse. Cuisez jusqu''à ce que la croûte soit croustillante.', 2),
    ('Margherita', 'Une pizza classique avec des tomates et du basilic', 11.99, 'Étalez la sauce tomate sur la pâte à pizza, ajoutez des tomates fraîches, du fromage mozzarella et du basilic. Cuisez jusqu''à ce que le fromage soit fondu et bouillonnant.', 3),
    ('Sensation de la mer', 'Une pizza délicieuse avec des crevettes et de l''ail', 15.99, 'Étalez la sauce tomate sur la pâte à pizza, ajoutez du fromage mozzarella, des crevettes et de l''ail haché. Cuisez jusqu''à ce que la croûte soit dorée et que les crevettes soient cuites.', 4),
    ('Hawaïenne', 'Une pizza classique avec du jambon et de l''ananas', 13.99, 'Étalez la sauce tomate sur la pâte, ajoutez du fromage mozzarella, du jambon et des morceaux d''ananas. Cuisez jusqu''à ce que le fromage soit fondu et la croûte dorée.', 5),
	  ('Végétarienne suprême', 'Une pizza végétarienne avec champignons, olives, et oignon rouge', 14.99, 'Étalez la sauce tomate sur la pâte, ajoutez du fromage mozzarella, des champignons, des olives noires, et de l''oignon rouge. Cuisez jusqu''à ce que la croûte soit dorée.', 1),
    ('Délice du petit déjeuner', 'Une pizza avec bacon, œufs et épinards', 13.99, 'Étalez la sauce tomate sur la pâte, ajoutez du fromage mozzarella, du bacon, des œufs et des épinards. Cuisez jusqu''à ce que la croûte soit dorée et les œufs soient cuits.', 2),
    ('Méditerranéenne', 'Une pizza avec aubergines, feta et olives Kalamata', 15.99, 'Étalez la sauce tomate sur la pâte, ajoutez du fromage mozzarella, des aubergines, de la feta et des olives Kalamata. Cuisez jusqu''à ce que la croûte soit dorée.', 3),
    ('Fumée au saumon', 'Une pizza avec saumon fumé, câpres et aneth', 16.99, 'Étalez la sauce tomate sur la pâte, ajoutez du fromage mozzarella, du saumon fumé, des câpres et de l''aneth. Cuisez jusqu''à ce que la croûte soit dorée.', 4),
    ('Chorizo caliente', 'Une pizza épicée avec chorizo, poivrons rouges et piments jalapeños', 14.99, 'Étalez la sauce tomate sur la pâte, ajoutez du fromage mozzarella, du chorizo, des poivrons rouges et des piments jalapeños. Cuisez jusqu''à ce que la croûte soit dorée.', 2);


-- Insertion dans la table Ingredient
INSERT INTO Ingredient (name, quantity, unit, idPizza) VALUES
    -- Ingrédients pour la pizza végétarienne
    ('Sauce tomate', 1, 'tasse', 1),
    ('Fromage mozzarella', 200, 'grammes', 1),
    ('Champignons', 150, 'grammes', 1),
    ('Poivron rouge', 1, NULL, 1),

    -- Ingrédients pour la pizza à la viande
    ('Sauce tomate', 1, 'tasse', 2),
    ('Fromage mozzarella', 200, 'grammes', 2),
    ('Pepperoni', 100, 'grammes', 2),
    ('Saucisse', 120, 'grammes', 2),

    -- Ingrédients pour la pizza Margherita
    ('Sauce tomate', 1, 'tasse', 3),
    ('Fromage mozzarella', 200, 'grammes', 3),
    ('Tomates', 2, NULL, 3),
    ('Basilic', 10, 'feuilles', 3),

    -- Ingrédients pour la pizza Délice de la mer
    ('Sauce tomate', 1, 'tasse', 4),
    ('Fromage mozzarella', 200, 'grammes', 4),
    ('Crevettes', 150, 'grammes', 4),
    ('Ail', 2, 'gousses', 4),

    -- Ingrédients pour la pizza hawaïenne
    ('Sauce tomate', 1, 'tasse', 5),
    ('Fromage mozzarella', 200, 'grammes', 5),
    ('Jambon', 150, 'grammes', 5),
    ('Ananas', 100, 'grammes', 5),

	-- Ingrédients pour la pizza Végétarienne suprême
    ('Sauce tomate', 1, 'tasse', 6),
    ('Fromage mozzarella', 200, 'grammes', 6),
    ('Champignons', 150, 'grammes', 6),
    ('Olives noires', 50, 'grammes', 6),
    ('Oignon rouge', 1, NULL, 6),

    -- Ingrédients pour la pizza Délice du petit déjeuner
    ('Sauce tomate', 1, 'tasse', 7),
    ('Fromage mozzarella', 200, 'grammes', 7),
    ('Bacon', 100, 'grammes', 7),
    ('Oeufs', 2, NULL, 7),
    ('Épinards', 50, 'grammes', 7),

    -- Ingrédients pour la pizza Végétarienne suprême
    ('Sauce tomate', 1, 'tasse', 8),
    ('Fromage mozzarella', 200, 'grammes', 8),
    ('Aubergines', 150, 'grammes', 8),
    ('Feta', 50, 'grammes', 8),
    ('Olives Kalamata', 50, 'grammes', 8),

    -- Ingrédients pour la pizza Fumée au saumon
    ('Sauce tomate', 1, 'tasse', 9),
    ('Fromage mozzarella', 200, 'grammes', 9),
    ('Saumon fumé', 100, 'grammes', 9),
    ('Câpres', 30, 'grammes', 9),
    ('Aneth', 10, 'grammes', 9),

    -- Ingrédients pour la pizza Chorizo caliente
    ('Sauce tomate', 1, 'tasse', 10),
    ('Fromage mozzarella', 200, 'grammes', 10),
    ('Chorizo', 100, 'grammes', 10),
    ('Poivrons rouges', 1, NULL, 10),
    ('Piments jalapeños', 3, NULL, 10);
