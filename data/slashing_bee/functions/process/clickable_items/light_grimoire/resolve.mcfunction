
scoreboard players set @s Delay_Light_Grimoire 0

playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 1 1
playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 1 2
playsound minecraft:item.trident.return player @a ~ ~ ~ 1

tag @s add Light_Grimoire_Ray

execute positioned ~ ~1.7 ~ run function slashing_bee:process/clickable_items/light_grimoire/ray

tag @s remove Light_Grimoire_Ray
