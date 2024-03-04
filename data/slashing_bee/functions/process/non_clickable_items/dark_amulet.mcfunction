
execute as @e[team=Enemy,distance=..5,nbt={HurtTime:10s}] store result score @s Mob_Health run data get entity @s Health
execute as @e[team=Enemy,distance=..5,nbt={HurtTime:10s},scores={Mob_Health=..4}] at @s on attacker if data entity @s {Inventory:[{Slot:-106b,tag:{weapon:dark_amulet}}]} run particle dust 0 0 0 2 ~ ~0.9 ~ 0.2 0.9 0.2 0 30
execute as @e[team=Enemy,distance=..5,nbt={HurtTime:10s},scores={Mob_Health=..4}] at @s on attacker if data entity @s {Inventory:[{Slot:-106b,tag:{weapon:dark_amulet}}]} run kill @e[team=Enemy,distance=..0.5,nbt={HurtTime:10s},scores={Mob_Health=..4},limit=1,sort=nearest]
