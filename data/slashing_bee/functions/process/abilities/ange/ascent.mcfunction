
execute if score @s Energy matches ..499 run return 1
execute if entity @s[nbt={OnGround:0b}] run return 2
scoreboard players remove @s Energy 500

tag @s add Ascent

playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 0.1

effect give @s[tag=!Ascent_Up] levitation 1 50 true
effect give @s[tag=Ascent_Up] levitation 1 70 true

schedule function slashing_bee:process/abilities/ange/ascent_clear 5t
schedule function slashing_bee:process/abilities/ange/ascent_onground_detect 5t
