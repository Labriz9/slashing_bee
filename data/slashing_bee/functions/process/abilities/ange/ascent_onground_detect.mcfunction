
effect give @a[tag=Ascent,nbt={OnGround:1b}] strength 3 1 false
tag @a[tag=Ascent,nbt={OnGround:1b}] remove Ascent

execute if entity @a[tag=Ascent] run schedule function slashing_bee:process/abilities/ange/ascent_onground_detect 3t
