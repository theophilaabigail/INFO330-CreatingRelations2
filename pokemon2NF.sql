-- second normal form

/* create a table that contains almost all the values.
the only one that is missing is the abilities, because they have
a partial dependency on the pokedex_number (as multiple abilities
may be connected to a single pokedex_number). */
CREATE TABLE pokemon2_data
AS SELECT
  pokedex_number,
  name,
  classfication,
  speed,
  capture_rate,
  attack,
  defense,
  sp_attack,
  sp_defense,
  generation,
  is_legendary,
  type1,
  type2,
  height_m,
  weight_kg,
  percentage_male,
  experience_growth,
  hp,
  base_egg_steps,
  base_happiness,
  base_total,
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
FROM pokemon1;

-- delete duplicate rows, so that there is one row per pokemon (801)
DELETE FROM pokemon2_data
WHERE rowid NOT IN (
  SELECT MIN(rowid)
  FROM pokemon2_data
  GROUP BY 
  pokedex_number,
  name,
  classfication,
  speed,
  capture_rate,
  attack,
  defense,
  sp_attack,
  sp_defense,
  generation,
  is_legendary,
  type1,
  type2,
  height_m,
  weight_kg,
  percentage_male,
  experience_growth,
  hp,
  base_egg_steps,
  base_happiness,
  base_total,
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
  );

-- create a table containing pokedex number and abilities.
CREATE TABLE pokemon2_ablities
AS SELECT
  pokedex_number,
  split_ability AS ability
FROM pokemon1;

-- delete duplicate rows
DELETE FROM pokemon2_ablities
WHERE rowid NOT IN (
  SELECT MIN(rowid)
  FROM pokemon2_ablities
  GROUP BY pokedex_number, ability
);