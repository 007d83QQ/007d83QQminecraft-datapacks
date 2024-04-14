#by 007d83QQ
clear @a[scores={ar_PVP=1..}]
spawnpoint @a[scores={ar_PVP=3..}] 8 10 8
title @s[scores={cross_dead=1..}] title {"text":"戰敗","color":"red","bold":"true"}
execute as @a[scores={ar_PVP=3..}] if score @s cross_dead matches 0 run title @s title {"text":"勝利","color":"gold","bold":"true"}
execute as @s run kill @e[type=arrow,distance=..150]
effect clear @a[scores={ar_PVP=3..}]
tp @a[scores={ar_PVP=3..}] 8 10 8
scoreboard players reset @a ar_PVP