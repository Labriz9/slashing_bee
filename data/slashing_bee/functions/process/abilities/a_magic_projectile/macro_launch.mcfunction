
summon armor_stand ~ ~ ~ {Marker:1b,Tags:["Magic_Projectile","Setup_Magic_Projectile"],Invisible:1b}

$execute rotated $(magic_projectile_rot1) $(magic_projectile_rot2) as @e[type=armor_stand,tag=Setup_Magic_Projectile] run tp ~ ~1.7 ~
tag @e[type=armor_stand,tag=Setup_Magic_Projectile] remove Setup_Magic_Projectile

schedule function slashing_bee:process/abilities/a_magic_projectile/loop 1t
