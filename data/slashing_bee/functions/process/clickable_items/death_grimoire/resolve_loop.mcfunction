
execute at @e[team=Enemy,tag=Death_Grimoire_Touched] run effect give @e[team=Enemy,tag=!Death_Grimoire_Touched,distance=..2,limit=1,sort=nearest] wither 5 1 false
execute at @e[team=Enemy,tag=Death_Grimoire_Touched] at @e[team=Enemy,tag=!Death_Grimoire_Touched,distance=..2,limit=1,sort=nearest] run particle dust 0.5 0 0.5 1 ~ ~1 ~ 0.2 0.5 0.2 0 20
execute at @e[team=Enemy,tag=Death_Grimoire_Touched] run tag @e[team=Enemy,tag=!Death_Grimoire_Touched,distance=..2,limit=1,sort=nearest] add Death_Grimoire_Touched

execute if entity @e[team=Enemy,tag=Death_Grimoire_Touched,nbt={active_effects:[{id:"minecraft:wither",amplifier:1b}]}] run schedule function slashing_bee:process/clickable_items/death_grimoire/resolve_loop 1s

execute unless entity @e[team=Enemy,tag=Death_Grimoire_Touched,nbt={active_effects:[{id:"minecraft:wither",amplifier:1b}]}] run tag @e[team=Enemy,tag=Death_Grimoire_Touched] remove Death_Grimoire_Touched
