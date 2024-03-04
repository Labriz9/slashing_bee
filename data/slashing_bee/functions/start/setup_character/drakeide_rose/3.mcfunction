
# Passive
execute as @s[tag=Player1] run data modify storage minecraft:setup wings_player1 set from entity @e[tag=Armor1,limit=1] ArmorItems[2]
execute as @s[tag=Player1] run function slashing_bee:start/macro_set_wings with storage minecraft:setup wings_player1
execute as @s[tag=Player2] run data modify storage minecraft:setup wings_player2 set from entity @e[tag=Armor2,limit=1] ArmorItems[2]
execute as @s[tag=Player2] run function slashing_bee:start/macro_set_wings with storage minecraft:setup wings_player2
tag @s add Can_Take_Off
tag @s add Take_Off2
function slashing_bee:process/abilities/a_winged_character/take_off_detect
# Player1
execute as @s[tag=Player1] run bossbar add arcane_charge_player1 {"text":"Charges Arcaniques","color": "light_purple","bold": true}
execute as @s[tag=Player1] run bossbar set arcane_charge_player1 style notched_10
execute as @s[tag=Player1] run bossbar set arcane_charge_player1 color pink
execute as @s[tag=Player1] run bossbar set arcane_charge_player1 max 10
execute as @s[tag=Player1] run bossbar set arcane_charge_player1 visible true
execute as @s[tag=Player1] run bossbar set arcane_charge_player1 players @s
# Player2
execute as @s[tag=Player2] run bossbar add arcane_charge_player2 {"text":"Charges Arcaniques","color": "light_purple","bold": true}
execute as @s[tag=Player2] run bossbar set arcane_charge_player2 style notched_10
execute as @s[tag=Player2] run bossbar set arcane_charge_player2 color pink
execute as @s[tag=Player2] run bossbar set arcane_charge_player2 max 10
execute as @s[tag=Player2] run bossbar set arcane_charge_player2 visible true
execute as @s[tag=Player2] run bossbar set arcane_charge_player2 players @s
tag @s add Adv_player_hurt_entity
tag @s add Arcane_Charge
tag @s add Arcane_Charge2
scoreboard players set @s Arcane_Charge 0
tag @s add More_Money
# Ability
item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'[{"text":"Projection Arcanique","italic":false,"bold":true,"color":"#FEAF00"}]',Lore:['[{"text":"Compétence Légendaire","italic":false,"color":"dark_gray"}]','[{"text":""}]','[{"text":"Description :","italic":false,"color":"white"}]','[{"text":"Dépense toutes les charges arcaniques, pour chaque charge consommée :","italic":false,"color":"white"}]','[{"text":"   lance un projectile magique qui ne confère pas de charge","italic":false,"color":"dark_green"}]']},HideFlags:6,Unbreakable:1b,CustomModelData:705,function:"abilities/drakeide_rose/arcane_projection"}
