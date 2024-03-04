
# Passive
# Player1
execute as @s[tag=Player1] run bossbar add demonic_fury_level_player1 {"text":"Furie Démoniaque","color": "red","bold": true}
execute as @s[tag=Player1] run bossbar set demonic_fury_level_player1 style notched_12
execute as @s[tag=Player1] run bossbar set demonic_fury_level_player1 color red
execute as @s[tag=Player1] run bossbar set demonic_fury_level_player1 max 4
execute as @s[tag=Player1] run bossbar set demonic_fury_level_player1 visible true
execute as @s[tag=Player1] run bossbar set demonic_fury_level_player1 players @s
# Player2
execute as @s[tag=Player2] run bossbar add demonic_fury_level_player2 {"text":"Furie Démoniaque","color": "red","bold": true}
execute as @s[tag=Player2] run bossbar set demonic_fury_level_player2 style notched_12
execute as @s[tag=Player2] run bossbar set demonic_fury_level_player2 color red
execute as @s[tag=Player2] run bossbar set demonic_fury_level_player2 max 4
execute as @s[tag=Player2] run bossbar set demonic_fury_level_player2 visible true
execute as @s[tag=Player2] run bossbar set demonic_fury_level_player2 players @s
tag @s add Demonic_Fury
tag @s add Demonic_Fury3
scoreboard players set @s Demonic_Fury_Level 0
function slashing_bee:process/abilities/demon/demonic_fury_detect
tag @s add More_Money
# Ability
item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'[{"text":"Libération Infernale","italic":false,"bold":true,"color":"#B517ED"}]',Lore:['[{"text":"Compétence Epic","italic":false,"color":"dark_gray"}]','[{"text":""}]','[{"text":"Description :","italic":false,"color":"white"}]','[{"text":"Crée une explosion qui fait des dégats de zone en fonction de la force accumulée","italic":false,"color":"dark_green"}]']},HideFlags:6,Unbreakable:1b,CustomModelData:704,function:"abilities/demon/hellish_liberation"}
