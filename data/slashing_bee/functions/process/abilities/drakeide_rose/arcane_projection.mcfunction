
execute if score @s Energy matches ..299 run return 1 
scoreboard players remove @s Energy 300

playsound minecraft:entity.wither.shoot player @a ~ ~ ~ 0.25 1.25
playsound minecraft:entity.firework_rocket.blast_far ambient @a

execute store result storage variables projectile_number byte 1 run scoreboard players get @s Arcane_Charge
function slashing_bee:process/abilities/a_magic_projectile/macro_launch_n with storage variables
scoreboard players set @s Arcane_Charge 0
execute if entity @s[tag=Player1] run bossbar set arcane_charge_player1 value 0
execute if entity @s[tag=Player2] run bossbar set arcane_charge_player2 value 0
