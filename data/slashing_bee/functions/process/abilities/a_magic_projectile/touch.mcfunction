
# Arcane Singularity
execute if entity @s[tag=Arcane_Singularity_Projectile] if entity @e[team=Enemy,tag=Magic_Projectile_Touched,distance=..0.75,limit=1,sort=nearest,scores={Mob_Health=..2}] run function slashing_bee:process/clickable_items/arcane_singularity/touch

damage @e[team=Enemy,tag=Magic_Projectile_Touched,distance=..0.75,limit=1,sort=nearest] 2 minecraft:magic
tag @e[team=Enemy,tag=Magic_Projectile_Touched,distance=..0.75,limit=1,sort=nearest] remove Magic_Projectile_Touched

# Pink Drakeide
execute if entity @s[tag=Arcane_Charge] run function slashing_bee:process/abilities/drakeide_rose/macro_add_arcane_charge with entity @s ArmorItems[3].tag

kill @s
