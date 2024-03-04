
scoreboard players set @s Potion 0

# 10 sec recharge
scoreboard players set @s Reload_Potion 10
scoreboard players operation @s Reload_Potion += time Variables
schedule function slashing_bee:process/abilities/sorciere/potion_reload 1s
