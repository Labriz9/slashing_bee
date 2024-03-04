
$execute if score 5 Variables matches ..$(level) run return 0
$execute if score @s Xp_Earned < xp_needed_level_$(level) Variables run return 0
$function slashing_bee:level_up/macro_$(character) {level:$(level)}

# Affichage
$scoreboard players set @s Variables $(level)
scoreboard players add @s Variables 1
$execute as @s[tag=Character1] run tellraw @a ["",{"text":"[Level Up]","color":"green"},{"text":" "},{"selector":"@a[tag=Player1]"},{"text":" est passé "},{"text":"$(character)","color":"yellow"},{"text":" niveau "},{"score":{"name":"@s","objective":"Variables"},"color":"yellow"},{"text":" !"}]
execute as @s[tag=Character1] run execute as @a[tag=Player1] at @s run playsound minecraft:entity.player.levelup player @s
$execute as @s[tag=Character2] run tellraw @a ["",{"text":"[Level Up]","color":"green"},{"text":" "},{"selector":"@a[tag=Player2]"},{"text":" est passé "},{"text":"$(character)","color":"yellow"},{"text":" niveau "},{"score":{"name":"@s","objective":"Variables"},"color":"yellow"},{"text":" !"}]
execute as @s[tag=Character2] run execute as @a[tag=Player2] at @s run playsound minecraft:entity.player.levelup player @s
