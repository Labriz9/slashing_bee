
$summon text_display ~ ~1.7 ~-0.1 {Tags:["$(summon_type)_Summon"],text:'{"text":"[Invocation $(summon_type)e]"}'}
$summon interaction ~ ~1.7 ~-1.4 {Tags:["$(summon_type)_Summon","$(summon_type)_Summon_Start"],height:0.275f,width:2.6f}

$summon text_display ~ ~1.4 ~-0.1 {Tags:["$(summon_type)_Summon","$(summon_type)_Summon_Number"],text:'[{"text":"[-]","color":"red"},{"text":" $(number) ","color":"white"},{"text":"[+]","color":"green"}]'}
$summon interaction ~0.4 ~1.4 ~-0.26 {Tags:["$(summon_type)_Summon","$(summon_type)_Summon_Add"],height:0.275f,width:0.4f}
$summon interaction ~-0.37 ~1.4 ~-0.26 {Tags:["$(summon_type)_Summon","$(summon_type)_Summon_Reduce"],height:0.275f,width:0.4f}

$summon text_display ~ ~1.1 ~-0.1 {Tags:["$(summon_type)_Summon"],text:'[{"text":"Coût : "},{"text":"$(cost)","color":"$(color_cost)"}]'}
