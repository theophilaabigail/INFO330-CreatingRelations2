-- inserts Huskichu pokemon
INSERT INTO pokemon3_stats (pokedex_number, attack, defense, sp_attack, sp_defense, speed)
VALUES (802, 150, 70, 185, 150, 140);

INSERT INTO pokemon3_data (pokedex_number, base_total, base_happiness, base_egg_steps, weight_kg, height_m, hp, experience_growth, capture_rate, generation, is_legendary, name)
VALUES (802, 700, 50, 30720, 1.0, 0.1, 104, 1004199, 30, 1, 1, "Huskichu");

INSERT INTO pokemon3_types (pokedex_number, type1)
VALUES (802, "mascot");

INSERT INTO pokemon3_classification (pokedex_number, classfication)
VALUES (802, "Mascot Pokémon");

INSERT INTO pokemon3_against_types (type1, type2, against_bug, against_dark, against_dragon, against_electric, against_fairy, against_fight, against_fire, against_flying, against_ghost, against_grass, against_ground, against_ice, against_normal, against_poison, against_psychic, against_rock, against_steel, against_water)
VALUES ("mascot", "", 2, 2, 1, 0.5, 2, 0.5, 1, 1, 2, 1, 1, 1, 1, 1, 0.5, 1, 1, 1);

INSERT INTO pokemon3_abilities (pokedex_number, ability)
VALUES (802, "Super Luck");

-- inserts Cougarite pokemon
INSERT INTO pokemon3_stats (pokedex_number, attack, defense, sp_attack, sp_defense, speed)
VALUES (803, 0, 30, 0, 100, 10);

INSERT INTO pokemon3_data (pokedex_number, base_total, base_happiness, base_egg_steps, weight_kg, height_m, hp, experience_growth, capture_rate, generation, is_legendary, name)
VALUES (803, 500, 70, 20390, 10.0, 1.0, 196, 1004955, 30, 1, 1, "Cougarite");

INSERT INTO pokemon3_types (pokedex_number, type1)
VALUES (803, "mascot");

INSERT INTO pokemon3_classification (pokedex_number, classfication)
VALUES (803, "Mascot Pokémon");

INSERT INTO pokemon3_against_types (type1, type2, against_bug, against_dark, against_dragon, against_electric, against_fairy, against_fight, against_fire, against_flying, against_ghost, against_grass, against_ground, against_ice, against_normal, against_poison, against_psychic, against_rock, against_steel, against_water)
VALUES ("mascot", "", 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5);

INSERT INTO pokemon3_abilities (pokedex_number, ability)
VALUES (803, "Slow Attack");