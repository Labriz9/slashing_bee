#Particles Generated with: Cloud Wolf's Particle Grapher
scoreboard objectives add cw_particleplot dummy
function slashing_bee:process/clickable_items/wind_grimoire/l1/l1_0
scoreboard players add @s cw_particleplot 1
execute if score @s cw_particleplot matches 32.. run scoreboard players set @s cw_particleplot 0