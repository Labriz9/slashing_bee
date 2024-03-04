
effect give @a[tag=Flee1,scores={Flee=1..}] speed 2 2 false
effect give @a[tag=Flee2,scores={Flee=1..}] speed 2 3 false
effect give @a[tag=Flee3,scores={Flee=1..}] speed 2 4 false
scoreboard players set @a Flee 0

execute if entity @a[tag=Flee] run schedule function slashing_bee:process/abilities/lutin/flee_detect 2t
