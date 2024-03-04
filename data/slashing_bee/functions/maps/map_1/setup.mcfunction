
# forceload add 897 237 597 537 separated in 2 commands bc max 255 chunk can be added at the same time
forceload add 897 237 597 387
forceload add 897 388 597 537

worldborder center 747 387
worldborder set 300

# summon les summon_marker aux endroits de la map
summon marker 805 -2 364 {Tags:["Mob_Summon_Marker"]}
summon marker 735 0 354 {Tags:["Mob_Summon_Marker"]}
summon marker 684 -23 391 {Tags:["Mob_Summon_Marker"]}
summon marker 683 -22 476 {Tags:["Mob_Summon_Marker"]}
summon marker 769 -20 508 {Tags:["Mob_Summon_Marker"]}
summon marker 889 -41 487 {Tags:["Mob_Summon_Marker"]}

spawnpoint @a 745 -23 435
tp @a 745 -23 435

scoreboard players set Vague Ennemis 1
scoreboard players set wave_mob_summoned Variables 0

function slashing_bee:maps/summon_loop
