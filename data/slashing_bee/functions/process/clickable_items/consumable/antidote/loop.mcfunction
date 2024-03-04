
execute at @a[scores={Antidote_Time=1..}] run effect clear @a[distance=..10] poison
execute at @a[scores={Antidote_Time=1..}] run effect clear @a[distance=..10] slowness
execute at @a[scores={Antidote_Time=1..}] run effect clear @a[distance=..10] weakness
execute at @a[scores={Antidote_Time=1..}] run effect clear @a[distance=..10] hunger
execute at @a[scores={Antidote_Time=1..}] run effect clear @a[distance=..10] wither
execute at @a[scores={Antidote_Time=1..}] at @a[distance=..10] run particle happy_villager ~ ~1 ~ 0.2 0.5 0.2 0 10
scoreboard players add @a[scores={Antidote_Time=1..}] Antidote_Time 1
scoreboard players set @a[scores={Antidote_Time=16..}] Antidote_Time 0

execute if entity @a[scores={Antidote_Time=1..}] run schedule function slashing_bee:process/clickable_items/consumable/antidote/loop 1s
