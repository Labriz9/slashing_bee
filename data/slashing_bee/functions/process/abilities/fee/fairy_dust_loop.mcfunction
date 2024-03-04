
execute at @e[type=bat,tag=Fairy_Dust] run particle end_rod ~ ~ ~ 0 0 0 0 1

execute at @e[type=bat,tag=Fairy_Dust] run tag @e[team=Enemy,distance=..1.5,limit=1,sort=nearest,nbt=!{active_effects:[{id:"minecraft:levitation"}]}] add Fairy_Dust_Touched
effect give @e[tag=Fairy_Dust_Touched] levitation 10 0 false
execute at @e[tag=Fairy_Dust_Touched] run kill @e[type=bat,tag=Fairy_Dust,limit=1,sort=nearest]
tag @e[tag=Fairy_Dust_Touched] remove Fairy_Dust_Touched

scoreboard players add @e[type=bat,tag=Fairy_Dust] LifeTime 1
# 10 sec Lifetime
tp @e[type=bat,tag=Fairy_Dust,scores={LifeTime=100}] ~ ~-100 ~
kill @e[type=bat,tag=Fairy_Dust,scores={LifeTime=100}]

execute if entity @e[type=bat,tag=Fairy_Dust] run schedule function slashing_bee:process/abilities/fee/fairy_dust_loop 2t
