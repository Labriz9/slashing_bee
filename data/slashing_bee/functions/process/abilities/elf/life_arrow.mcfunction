
scoreboard players set @s Life_Arrow_Bow 0
scoreboard players set @s Life_Arrow_Crossbow 0

# 10 sec recharge (+1.25s bow recharge)
scoreboard players set @s Reload_Life_Arrow 10 
scoreboard players operation @s Reload_Life_Arrow += time Variables
schedule function slashing_bee:process/abilities/elf/life_arrow_reload 1s
