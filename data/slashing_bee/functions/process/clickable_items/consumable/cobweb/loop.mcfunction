
execute at @e[type=marker,tag=Cobweb,scores={LifeTime=10..}] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace cobweb
kill @e[type=marker,tag=Cobweb,scores={LifeTime=10..}]
scoreboard players add @e[type=marker,tag=Cobweb] LifeTime 1

execute if entity @e[type=marker,tag=Cobweb] run schedule function slashing_bee:process/clickable_items/consumable/cobweb/loop 1s
