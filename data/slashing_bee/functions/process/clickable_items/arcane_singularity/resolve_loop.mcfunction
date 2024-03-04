
execute at @e[type=armor_stand,tag=Arcane_Singularity] run playsound minecraft:entity.wither.shoot player @a ~ ~ ~ 0.25 1.25
execute at @e[type=armor_stand,tag=Arcane_Singularity] run playsound minecraft:entity.firework_rocket.large_blast_far player @a ~ ~ ~ 1
execute at @e[type=armor_stand,tag=Arcane_Singularity] positioned ~ ~1.7 ~ run particle dust 1 0 1 2 ~ ~ ~ 0.2 0.2 0.2 0 5

execute at @e[type=armor_stand,tag=Arcane_Singularity] run function slashing_bee:process/abilities/a_magic_projectile/launch
execute at @e[type=armor_stand,tag=Arcane_Singularity] positioned ~ ~1.7 ~ run tag @e[type=minecraft:armor_stand,tag=Magic_Projectile,limit=1,sort=nearest] add Arcane_Singularity_Projectile

# If Drakéide Rose
execute at @e[type=armor_stand,tag=Arcane_Singularity,tag=Arcane_Charge] positioned ~ ~1.7 ~ run item replace entity @e[type=minecraft:armor_stand,tag=Magic_Projectile,limit=1,sort=nearest] armor.head with pumpkin
execute as @e[type=armor_stand,tag=Arcane_Singularity,tag=Arcane_Charge] at @s positioned ~ ~1.7 ~ run data modify entity @e[type=minecraft:armor_stand,tag=Magic_Projectile,limit=1,sort=nearest] ArmorItems[3].tag.Owner set from entity @s ArmorItems[3].tag.Owner
execute at @e[type=armor_stand,tag=Arcane_Singularity,tag=Arcane_Charge] positioned ~ ~1.7 ~ run tag @e[type=minecraft:armor_stand,tag=Magic_Projectile,limit=1,sort=nearest] add Arcane_Charge

scoreboard players add @e[type=armor_stand,tag=Arcane_Singularity] LifeTime 1
kill @e[type=armor_stand,tag=Arcane_Singularity,scores={LifeTime=20..}]

execute if entity @e[type=armor_stand,tag=Arcane_Singularity] run schedule function slashing_bee:process/clickable_items/arcane_singularity/resolve_loop 3t
