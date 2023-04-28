-- creates trainer table

CREATE TABLE trainer (
    trainer_id INTEGER PRIMARY KEY,
    first_name TEXT(80),
    last_name TEXT(80)
);

-- pokemon_team table maintains 3NF
CREATE TABLE pokemon_team (
    trainer_id INTEGER,
    pokemon_name TEXT(80),
    FOREIGN KEY(trainer_id) REFERENCES trainer(trainer_id)
);

-- creates favorite_pokemon_type table
CREATE TABLE favorite_pokemon_type (
    trainer_id INTEGER,
    pokemon_type TEXT(80),
    FOREIGN KEY(trainer_id) REFERENCES trainer(trainer_id)
);

-- inserts data
INSERT INTO trainer (trainer_id, first_name, last_name) VALUES
    (1, 'Abigail', 'Setiawan'),
    (2, 'Steffy', 'Kusma'),
    (3, 'Eugene', 'Alex'),
    (4, 'Steven', 'Wilber');

INSERT INTO pokemon_team (trainer_id, pokemon_name) VALUES
    (1, 'Pikachu'),
    (1, 'Charizard'),
    (1, 'Squirtle'),
    (2, 'Staryu'),
    (2, 'Starmie'),
    (2, 'Psyduck'),
    (3, 'Geodude'),
    (3, 'Onix'),
    (4, 'Zubat');

INSERT INTO favorite_pokemon_type (trainer_id, pokemon_type) VALUES
    (1, 'Electric'),
    (1, 'Flying'),
    (2, 'Water'),
    (3, 'Rock'),
    (4, 'Ground');