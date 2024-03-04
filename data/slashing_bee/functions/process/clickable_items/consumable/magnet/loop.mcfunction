
execute as @a[scores={Magnet_Time=1..}] at @s run tp @e[type=item,distance=..10] @s
execute at @a[scores={Magnet_Time=1..}] run particle firework ~ ~ ~ 0.5 0.5 0.5 0.1 5
scoreboard players add @a[scores={Magnet_Time=1..}] Magnet_Time 1
scoreboard players set @a[scores={Magnet_Time=70..}] Magnet_Time 0

execute if entity @a[scores={Magnet_Time=1..}] run schedule function slashing_bee:process/clickable_items/consumable/magnet/loop 3t
