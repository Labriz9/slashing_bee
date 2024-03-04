
scoreboard players set @s Delay_Death_Grimoire 0

effect give @e[team=Enemy,distance=..5,sort=nearest,limit=1] wither 5 1 false
tag @e[team=Enemy,distance=..5,sort=nearest,limit=1] add Death_Grimoire_Touched

schedule function slashing_bee:process/clickable_items/death_grimoire/resolve_loop 1s
