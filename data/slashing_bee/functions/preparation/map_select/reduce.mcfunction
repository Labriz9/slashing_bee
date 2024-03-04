
execute if score map_number Variables matches ..1 run scoreboard players set map_number Variables 3

scoreboard players operation map_number Variables -= 1 Variables

kill @e[tag=Map_Select]
execute positioned 746 68 -319 run function slashing_bee:preparation/map_select/reset
