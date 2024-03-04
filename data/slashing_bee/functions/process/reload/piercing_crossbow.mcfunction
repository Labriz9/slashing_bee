
item replace entity @s inventory.0 with arrow
scoreboard players set @s Reload_Piercing_Crossbow 0
tag @s remove Reload

title @s actionbar {"text":"Flèche rechargée !","color":"green"}
playsound entity.experience_orb.pickup player @s
