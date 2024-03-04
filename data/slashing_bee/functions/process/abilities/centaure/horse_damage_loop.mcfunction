
execute as @e[type=horse,tag=Centaur,nbt=!{HurtTime:0s}] run function slashing_bee:process/abilities/centaure/horse_damage
execute as @a[tag=Centaur,nbt={OnGround:1b}] run ride @s mount @e[type=horse,tag=Centaur,limit=1,sort=nearest]

execute as @e[type=horse,tag=Centaur] run schedule function slashing_bee:process/abilities/centaure/horse_damage_loop 2t
