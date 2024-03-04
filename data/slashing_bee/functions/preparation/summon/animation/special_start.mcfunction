
schedule clear slashing_bee:preparation/summon/chest/empty_chest_detect

summon armor_stand 755 71 -406 {Tags:["Summon"],Invisible:1b,Marker:1b}

# Sound
scoreboard players set summon_sound Variables 0
playsound minecraft:block.note_block.chime ambient @a ~ ~ ~ 1 0.9

scoreboard players set i_animation Variables 0
scoreboard players set stop_common_particles Variables 0
function slashing_bee:preparation/summon/animation/loop
 
