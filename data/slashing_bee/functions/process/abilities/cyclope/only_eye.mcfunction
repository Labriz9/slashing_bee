
execute store result score get_blind Variables run random value 1..4

execute if score get_blind Variables matches 1 run effect give @s blindness 7 0 true
