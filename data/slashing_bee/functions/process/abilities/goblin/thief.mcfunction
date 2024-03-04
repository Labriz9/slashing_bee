
# +1 for each gold
scoreboard players add @s[tag=ThiefPlusOne] Money 1

# +1 for 2 gold
scoreboard players add @s[tag=ThiefPlusHalf] ThiefHalf 1
scoreboard players add @s[tag=ThiefPlusHalf,scores={ThiefHalf=2..}] Money 1
scoreboard players remove @s[tag=ThiefPlusHalf,scores={ThiefHalf=2..}] ThiefHalf 2

scoreboard players remove @s Thief 1
