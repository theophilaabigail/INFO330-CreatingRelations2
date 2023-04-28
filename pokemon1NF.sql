-- first normal form
-- terminal code
cd downloads
cd info330
cd creatingrelations2
sqlite3 pokemon.sqlite
.mode csv
.import pokemon.csv imported_pokemon_data

-- creating a new table, but splitting up abilities
CREATE TABLE pokemon AS
SELECT *, abilities, 
  trim(value) AS split_ability
FROM imported_pokemon_data,
  json_each('["' || replace(abilities, ',', '","') || '"]')
WHERE abilities <> '';

-- removing unneccessary characters
update pokemon 
SET split_ability = replace(split_ability,',','' );

update pokemon 
SET split_ability = replace(split_ability,'''','' );

update pokemon 
SET split_ability = replace(split_ability,'[','' );

update pokemon 
SET split_ability = replace(split_ability,']','' );

--creating a new table without the column with grouped abilities
CREATE TABLE pokemon1
AS SELECT
  split_ability,
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
  against_water,
  attack,
  base_egg_steps,
  base_happiness,
  base_total,
  capture_rate,
  classfication,
  defense,
  experience_growth,
  height_m,
  hp,
  name,
  percentage_male,
  pokedex_number,
  sp_attack,
  sp_defense,
  speed,
  type1,
  type2,
  weight_kg,
  generation,
  is_legendary
FROM pokemon;