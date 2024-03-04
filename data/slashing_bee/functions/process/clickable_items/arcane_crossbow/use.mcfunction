
execute if score @s Energy matches ..49 run return 1 
scoreboard players remove @s Energy 50

playsound minecraft:entity.arrow.shoot player @a ~ ~ ~


execute anchored eyes run summon minecraft:arrow ^ ^ ^0.1 {Tags:["Arcane_Crossbow"]}
data modify entity @e[type=arrow,tag=Arcane_Crossbow,limit=1] Owner set from entity @s UUID
data merge entity @e[type=arrow,tag=Arcane_Crossbow,limit=1] {ShotFromCrossbow:1b, damage:3.3d}

# x axis motion of the arrow
execute store result score in nnmath_trig run data get entity @s Rotation[0] -100
function nnmath:trig/sin_bs/exe
execute store result score x_arcane_crossbow Variables run scoreboard players get out nnmath_trig

execute store result score in nnmath_trig run data get entity @s Rotation[1] 100
function nnmath:trig/cos_bs/exe
scoreboard players operation x_arcane_crossbow Variables *= out nnmath_trig
execute store result entity @e[type=minecraft:arrow,limit=1,tag=Arcane_Crossbow] Motion[0] double 0.00000003 run scoreboard players get x_arcane_crossbow Variables


# y axis motion of the arrow
execute store result score in nnmath_trig run data get entity @s Rotation[1] -100
function nnmath:trig/sin_bs/exe
execute store result entity @e[type=minecraft:arrow,limit=1,tag=Arcane_Crossbow] Motion[1] double 0.0003 run scoreboard players get out nnmath_trig


# z axis motion of the arrow
execute store result score in nnmath_trig run data get entity @s Rotation[0] -100
function nnmath:trig/cos_bs/exe
execute store result score z_arcane_crossbow Variables run scoreboard players get out nnmath_trig

execute store result score in nnmath_trig run data get entity @s Rotation[1] 100
function nnmath:trig/cos_bs/exe
scoreboard players operation z_arcane_crossbow Variables *= out nnmath_trig
execute store result entity @e[type=minecraft:arrow,limit=1,tag=Arcane_Crossbow] Motion[2] double 0.00000003 run scoreboard players get z_arcane_crossbow Variables


tag @e[type=arrow] remove Arcane_Crossbow
