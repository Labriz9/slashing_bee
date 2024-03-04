
$execute as @e[team=Enemy,distance=..5] run damage @s $(hellish_liberation) magic by @p[tag=Hellish_Liberation] from @p[tag=Hellish_Liberation]
$particle explosion ~ ~1 ~ 5 0.5 5 0 $(hellish_liberation)0
$execute if score $(hellish_liberation) Variables matches 9.. run particle flame ~ ~1 ~ 0.5 0.5 0.5 0.4 $(hellish_liberation)0
