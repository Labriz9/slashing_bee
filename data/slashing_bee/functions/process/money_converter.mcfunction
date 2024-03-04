
playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 1.30

scoreboard players add @s Money 1
scoreboard players add @s Xp_Earned 1
scoreboard players remove @s Convert_Money 1

# Double Coin
scoreboard players add @s[tag=Double_Coin] Money 1
# Triple Coin
scoreboard players add @s[tag=Triple_Coin] Money 2
