
kill @e[team=Enemy,tag=Magic_Projectile_Touched,distance=..0.75,limit=1,sort=nearest,scores={Mob_Health=..20}]

function slashing_bee:process/abilities/a_magic_projectile/macro_launch_n {projectile_number:5}
execute positioned ~ ~1.7 ~ run tag @e[type=minecraft:armor_stand,tag=Magic_Projectile,limit=5,sort=nearest] add Arcane_Singularity_Projectile

# If Drakéide Rose
tag @s[tag=Arcane_Charge] add Arcane_Singularity_UUIDLegacy
execute if entity @s[tag=Arcane_Charge] positioned ~ ~1.7 ~ run item replace entity @e[type=minecraft:armor_stand,tag=Magic_Projectile,limit=5,sort=nearest] armor.head with pumpkin
execute if entity @s[tag=Arcane_Charge] positioned ~ ~1.7 ~ run execute as @e[type=minecraft:armor_stand,tag=Magic_Projectile,limit=5,sort=nearest] run data modify entity @s ArmorItems[3].tag.Owner set from entity @e[type=armor_stand,tag=Arcane_Singularity_UUIDLegacy,limit=1,sort=nearest] ArmorItems[3].tag.Owner
execute if entity @s[tag=Arcane_Charge] positioned ~ ~1.7 ~ run tag @e[type=minecraft:armor_stand,tag=Magic_Projectile,limit=5,sort=nearest] add Arcane_Charge
