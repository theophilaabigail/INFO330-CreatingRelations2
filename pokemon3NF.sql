-- third normal form

/* creating a table that contains general pokemon data. all of these
attributes are solely dependent on the pokedex_number. */
CREATE TABLE pokemon3_data
AS SELECT
  pokedex_number,
  name,
  is_legendary,
  generation, 
  capture_rate, 
  experience_growth, 
  hp,
  height_m, 
  weight_kg, 
  percentage_male, 
  base_egg_steps, 
  base_happiness, 
  base_total
FROM pokemon2_data;

/* creating a table that holds the pokedex_number and classification.
classification may be tied to many other attributes, so it may be best
in a separate table. */
CREATE TABLE pokemon3_classification
AS SELECT
  pokedex_number,
  classfication
FROM pokemon2_data;

/* creating a table that holds the types and against_types. against_types
are dependent on the types, and the types are dependent on the 
pokedex_number, meaning there is a transitive dependency between the
pokedx_number and the against_types. this table assists in the separation. */
CREATE TABLE pokemon3_against_types
AS SELECT
  type1,
  type2,
  against_bug,
  against_dark,
  against_dragon,
  against_electric,
  against_fairy,
  against_fight,
  against_fire,
  against_flying,
  against_ghost,
  against_grass,
  against_ground,
  against_ice,
  against_normal,
  against_poison,
  against_psychic,
  against_rock,
  against_steel,
  against_water
FROM pokemon2_data;

/* creating a table that contains the types and pokedex_number. this
paired with the previous table (with the against_types) helps solidify
third normal form by separating the transitive dependency between the 
against_types and the pokedex_number. */
CREATE TABLE pokemon3_types
AS SELECT
  pokedex_number,
  type1,
  type2
FROM pokemon2_data;

/* creating a table that holds various pokemon statistics and the
pokedex_number. */
CREATE TABLE pokemon3_stats
AS SELECT
  pokedex_number,
  attack,
  defense,
  sp_attack,
  sp_defense,
  speed
FROM pokemon2_data;

/* creating a table that holds the pokedex_number and abilities.
this maintains the second normal form. */
CREATE TABLE pokemon3_abilities
AS SELECT
  pokedex_number,
  ability
FROM pokemon2_ablities;

/* removes tables that are not part of the final 
third normal form for the database. */
DROP TABLE pokemon1;

DROP TABLE pokemon2_ablities;

DROP TABLE pokemon2_data;

DROP TABLE pokemon;

DROP TABLE imported_pokemon_data;