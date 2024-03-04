
execute if score @s Energy matches ..49 run return 1 
scoreboard players remove @s Energy 50

playsound minecraft:entity.wither.shoot player @a ~ ~ ~ 0.25 1.25

function slashing_bee:process/abilities/a_magic_projectile/launch

# If Drakéide Rose
execute if entity @s[tag=Arcane_Charge] positioned ~ ~1.7 ~ run tag @e[type=minecraft:armor_stand,tag=Magic_Projectile,limit=1,sort=nearest] add Arcane_Charge
execute if entity @s[tag=Arcane_Charge] positioned ~ ~1.7 ~ run item replace entity @e[type=minecraft:armor_stand,tag=Magic_Projectile,limit=1,sort=nearest] armor.head with pumpkin
execute if entity @s[tag=Arcane_Charge] positioned ~ ~1.7 ~ run data modify entity @e[type=minecraft:armor_stand,tag=Magic_Projectile,limit=1,sort=nearest] ArmorItems[3].tag.Owner set from entity @s UUID
