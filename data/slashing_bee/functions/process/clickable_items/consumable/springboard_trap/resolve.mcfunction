
tag @e[team=Enemy,distance=..5] add Springboard_Trapped
effect give @e[team=Enemy,tag=Springboard_Trapped] levitation 1 50 true
schedule function slashing_bee:process/clickable_items/consumable/springboard_trap/clear 2t
playsound entity.llama.spit player @a
kill @s
