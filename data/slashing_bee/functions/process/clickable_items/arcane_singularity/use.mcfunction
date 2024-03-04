
execute if score @s Energy matches ..400 run return 1 
scoreboard players remove @s Energy 400

particle firework ~ ~1 ~ 0 0 0 0.2 50

summon armor_stand ~ ~ ~ {Tags:["Arcane_Singularity"],Marker:1b,Invisible:1b}

# If Drakéide Rose
execute if entity @s[tag=Arcane_Charge] run tag @e[type=minecraft:armor_stand,tag=Arcane_Singularity,limit=1,sort=nearest] add Arcane_Charge
execute if entity @s[tag=Arcane_Charge] run item replace entity @e[type=minecraft:armor_stand,tag=Arcane_Singularity,limit=1,sort=nearest] armor.head with pumpkin
execute if entity @s[tag=Arcane_Charge] run data modify entity @e[type=minecraft:armor_stand,tag=Arcane_Singularity,limit=1,sort=nearest] ArmorItems[3].tag.Owner set from entity @s UUID


function slashing_bee:process/clickable_items/arcane_singularity/resolve_loop
