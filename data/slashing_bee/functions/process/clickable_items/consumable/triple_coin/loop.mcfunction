
execute at @a[tag=Triple_Coin] run particle dust_color_transition 1 0.7 0 1 1 0.435 0 ~ ~1 ~ 0.2 0.5 0.2 0 20
scoreboard players add @a[tag=Triple_Coin] Triple_Coin_Time 1
tag @a[scores={Triple_Coin_Time=16..}] remove Triple_Coin
scoreboard players set @a[scores={Triple_Coin_Time=16..}] Triple_Coin_Time 0

execute if entity @a[tag=Triple_Coin] run schedule function slashing_bee:process/clickable_items/consumable/triple_coin/loop 1s
