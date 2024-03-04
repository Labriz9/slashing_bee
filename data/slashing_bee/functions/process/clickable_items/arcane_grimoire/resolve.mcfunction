
scoreboard players set @s Delay_Arcane_Grimoire 0

playsound minecraft:entity.wither.shoot player @a ~ ~ ~ 0.25 1.25
playsound minecraft:entity.firework_rocket.large_blast_far player @a ~ ~ ~ 1

function slashing_bee:process/abilities/a_magic_projectile/macro_launch_n {projectile_number:10}

# If Drakéide Rose
execute if entity @s[tag=Arcane_Charge] positioned ~ ~1.7 ~ run tag @e[type=minecraft:armor_stand,tag=Magic_Projectile,limit=10,sort=nearest] add Arcane_Charge
execute if entity @s[tag=Arcane_Charge] positioned ~ ~1.7 ~ run item replace entity @e[type=minecraft:armor_stand,tag=Magic_Projectile,limit=10,sort=nearest] armor.head with pumpkin
execute if entity @s[tag=Arcane_Charge] positioned ~ ~1.7 ~ as @e[type=minecraft:armor_stand,tag=Magic_Projectile,limit=10,sort=nearest] run data modify entity @s ArmorItems[3].tag.Owner set from entity @p[tag=Arcane_Charge] UUID
