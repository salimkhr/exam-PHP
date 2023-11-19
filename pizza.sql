/*drop table Ingredient;
drop table Pizza;
drop table Category;*/

CREATE TABLE Category (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE Pizza (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    recipeText TEXT,
    idCategory INT,
    FOREIGN KEY (idCategory) REFERENCES Category(id)
);

CREATE TABLE Ingredient (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    quantity INT NOT NULL,
    unit VARCHAR(50),
    idPizza INT,
    FOREIGN KEY (idPizza) REFERENCES Pizza(id)
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
      ('Festin de viande', 'Pour les carnivores, une pizza avec pepperoni et saucisse', 14.99, 'Étalez une généreuse couche de sauce tomate sur la pâte à pizza. Disposez soigneusement des tranches de pepperoni et de saucisse sur la sauce. Saupoudrez abondamment de fromage mozzarella râpé. Cuisez au four jusqu''à ce que la croûte soit croustillante et que le fromage fonde en une délicieuse harmonie.', 2),
      ('Margherita', 'Une pizza classique avec des tomates et du basilic', 11.99, 'Créez une base savoureuse en étalant une généreuse portion de sauce tomate sur la pâte à pizza. Disposez des tranches de tomates fraîches de manière équilibrée. Saupoudrez de fromage mozzarella râpé et ajoutez des feuilles de basilic frais pour une touche de fraîcheur. Cuisez jusqu''à ce que la croûte soit dorée.', 3),
      ('Sensation de la mer', 'Une pizza délicieuse avec du thon et de l''ail', 15.99, 'Préparez une symphonie de saveurs marines en étalant la crême bien épaisse sur la pâte. Disposez du thon émietté, des crevettes juteuses et de l''ail haché. Saupoudrez de fromage mozzarella râpé pour une onctuosité parfaite. Cuisez jusqu''à ce que la croûte soit dorée, créant une fusion de délices marins.', 4),
      ('Hawaïenne', 'Une pizza classique avec du jambon et de l''ananas', 13.99, 'Créez une expérience tropicale en étalant la sauce tomate sur la pâte. Disposez généreusement des tranches de jambon et des morceaux d''ananas. Saupoudrez de fromage mozzarella râpé pour une touche de crémeux. Cuisez jusqu''à obtenir une croûte dorée, apportant un goût ensoleillé à chaque bouchée.', 5),
      ('Végétarienne', 'Une pizza végétarienne avec champignons, olives, et oignon rouge', 14.99, 'Construisez une palette de saveurs végétariennes en étalant une sauce tomate sur la pâte. Ajoutez des champignons tranchés, des olives noires, et de l''oignon rouge haché. Saupoudrez de fromage mozzarella râpé pour une texture parfaite. Cuisez jusqu''à obtenir une croûte dorée, créant une symphonie végétarienne.', 1),
      ('Méditerranéenne', 'Une pizza avec aubergines, feta et olives Kalamata', 15.99, 'Voyagez vers la Méditerranée en étalant une sauce tomate sur la pâte. Disposez des aubergines tranchées, de la feta émiettée, et des olives Kalamata. Saupoudrez de fromage mozzarella râpé pour une expérience méditerranéenne authentique. Cuisez jusqu''à obtenir une croûte dorée, capturant les saveurs ensoleillées.', 3),
      ('Fumée au saumon', 'Une pizza avec saumon fumé, câpres et aneth', 16.99, 'Créez une expérience fumée en étalant une sauce tomate sur la pâte. Disposez du saumon fumé, des câpres, et de l''aneth frais haché. Saupoudrez de fromage mozzarella râpé pour une onctuosité parfaite. Cuisez jusqu''à obtenir une croûte dorée, apportant une touche élégante à chaque bouchée.', 4),
      ('Chorizo caliente', 'Une pizza épicée avec chorizo, poivrons rouges et piments jalapeños', 14.99, 'Réveillez vos papilles avec une pizza épicée. Étalez la sauce tomate sur la pâte et ajoutez du chorizo tranché, des poivrons rouges tranchés, et des piments jalapeños. Saupoudrez de fromage mozzarella râpé pour équilibrer le piquant. Cuisez jusqu''à obtenir une croûte dorée, créant une expérience épicée inoubliable.', 2);

-- Insertion dans la table Ingredient
-- Festin de viande
INSERT INTO Ingredient (name, quantity, unit, idPizza) VALUES
    ('Pepperoni', 150, 'grammes', 1),
    ('Saucisse', 100, 'grammes', 1),
    ('Fromage mozzarella râpé', 200, 'grammes', 1),
    ('Sauce tomate', 0.5, 'tasse', 1);

-- Margherita
INSERT INTO Ingredient (name, quantity, unit, idPizza) VALUES
    ('Tomates fraîches', 2, 'unités', 2),
    ('Fromage mozzarella râpé', 200, 'grammes', 2),
    ('Feuilles de basilic frais', 10, 'feuilles', 2),
    ('Sauce tomate', 0.5, 'tasse', 2);

-- Sensation de la mer
INSERT INTO Ingredient (name, quantity, unit, idPizza) VALUES
    ('Thon', 150, 'grammes', 3),
    ('Ail haché', 2, 'gousses', 3),
    ('Fromage mozzarella râpé', 200, 'grammes', 3),
    ('Créme', 0.5, 'tasse', 3);

-- Hawaïenne
INSERT INTO Ingredient (name, quantity, unit, idPizza) VALUES
    ('Jambon', 100, 'grammes', 4),
    ('Ananas', 100, 'grammes', 4),
    ('Fromage mozzarella râpé', 200, 'grammes', 4),
    ('Sauce tomate', 0.5, 'tasse', 4);

-- Végétarienne suprême
INSERT INTO Ingredient (name, quantity, unit, idPizza) VALUES
    ('Champignons tranchés', 100, 'grammes', 5),
    ('Olives noires tranchées', 50, 'grammes', 5),
    ('Oignon rouge haché', 1, 'unité', 5),
    ('Fromage mozzarella râpé', 200, 'grammes', 5);

-- Méditerranéenne
INSERT INTO Ingredient (name, quantity, unit, idPizza) VALUES
    ('Aubergines tranchées', 150, 'grammes', 6),
    ('Feta émiettée', 100, 'grammes', 6),
    ('Olives Kalamata', 50, 'grammes', 6),
    ('Fromage mozzarella râpé', 200, 'grammes', 6);

-- Fumée au saumon
INSERT INTO Ingredient (name, quantity, unit, idPizza) VALUES
    ('Saumon fumé', 100, 'grammes', 7),
    ('Câpres', 2, 'cuillères à soupe', 7),
    ('Aneth frais haché', 1, 'cuillère à soupe', 7),
    ('Fromage mozzarella râpé', 200, 'grammes', 7);

-- Chorizo caliente
INSERT INTO Ingredient (name, quantity, unit, idPizza) VALUES
    ('Chorizo tranché', 100, 'grammes', 8),
    ('Poivrons rouges tranchés', 50, 'grammes', 8),
    ('Piments jalapeños tranchés', 2, 'unités', 8),
    ('Fromage mozzarella râpé', 200, 'grammes', 8);
