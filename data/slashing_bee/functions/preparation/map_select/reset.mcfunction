
# Conditionnal
execute if score map_number Variables matches 1 run summon text_display ~ ~1.4 ~0.1 {Tags:["Map_Select"],text:'{"text":"Vallée Fleurie","color": "#FF49D0"}',Rotation:[180f,0f]}
execute if score map_number Variables matches 2 run summon text_display ~ ~1.4 ~0.1 {Tags:["Map_Select"],text:'{"text":"Forêt Mystérieuse","color": "#1D7600"}',Rotation:[180f,0f]}

execute if score map_number Variables matches 1 run summon text_display ~ ~1 ~0.1 {Tags:["Map_Select"],text:'{"text":"[Commencer]"}',Rotation:[180f,0f]}
execute if score map_number Variables matches 1 run summon interaction ~ ~1 ~0.95 {Tags:["Map_Select","Map_Select_Start"],height:0.275f,width:1.7f,Rotation:[180f,0f]}

execute if score map_number Variables matches 2 run summon text_display ~ ~1 ~0.1 {Tags:["Map_Select"],text:'{"text":"Bloqué","color": "#6D6D6D"}',Rotation:[180f,0f]}

# General
summon text_display ~ ~1.7 ~0.1 {Tags:["Map_Select"],text:'[{"text":"[<] ","color":"green"},{"text":"Etape ","color":"white"},{"score":{"name":"map_number","objective":"Variables"},"color":"white"},{"text":" [>]","color":"green"}]',Rotation:[180f,0f]}
summon interaction ~0.77 ~1.7 ~0.3 {Tags:["Map_Select","Map_Select_Reduce"],height:0.275f,width:0.4f,Rotation:[180f,0f]}
summon interaction ~-0.8 ~1.7 ~0.3 {Tags:["Map_Select","Map_Select_Add"],height:0.275f,width:0.4f,Rotation:[180f,0f]}
