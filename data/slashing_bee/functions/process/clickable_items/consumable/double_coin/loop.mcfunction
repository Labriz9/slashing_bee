
execute at @a[tag=Double_Coin] run particle dust 1 0.7 0 1 ~ ~1 ~ 0.2 0.5 0.2 0 10
scoreboard players add @a[tag=Double_Coin] Double_Coin_Time 1
tag @a[scores={Double_Coin_Time=16..}] remove Double_Coin
scoreboard players set @a[scores={Double_Coin_Time=16..}] Double_Coin_Time 0

execute if entity @a[tag=Double_Coin] run schedule function slashing_bee:process/clickable_items/consumable/double_coin/loop 1s
