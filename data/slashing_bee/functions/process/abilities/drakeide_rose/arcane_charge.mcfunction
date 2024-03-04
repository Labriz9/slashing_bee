
execute store result score get_arcane_charge Variables run random value 1..12

# 1/4 chances
execute if entity @s[tag=Arcane_Charge1] if score get_arcane_charge Variables matches ..3 run function slashing_bee:process/abilities/a_magic_projectile/launch
# 1/3 chances
execute if entity @s[tag=Arcane_Charge2] if score get_arcane_charge Variables matches ..4 run function slashing_bee:process/abilities/a_magic_projectile/launch
# 1/2 chances
execute if entity @s[tag=Arcane_Charge3] if score get_arcane_charge Variables matches ..6 run function slashing_bee:process/abilities/a_magic_projectile/launch

execute positioned ~ ~1.7 ~ run execute if entity @e[type=minecraft:armor_stand,tag=Magic_Projectile,limit=1,sort=nearest,distance=..1] run playsound minecraft:entity.wither.shoot player @a ~ ~ ~ 0.25 1.25

execute positioned ~ ~1.7 ~ run tag @e[type=minecraft:armor_stand,tag=Magic_Projectile,limit=1,sort=nearest] add Arcane_Charge
execute positioned ~ ~1.7 ~ run item replace entity @e[type=minecraft:armor_stand,tag=Magic_Projectile,limit=1,sort=nearest] armor.head with pumpkin
execute positioned ~ ~1.7 ~ run data modify entity @e[type=minecraft:armor_stand,tag=Magic_Projectile,limit=1,sort=nearest] ArmorItems[3].tag.Owner set from entity @s UUID
