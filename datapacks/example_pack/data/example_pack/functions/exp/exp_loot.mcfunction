#by007d83QQ
#exp 地形區塊分配


summon minecraft:marker ~ ~ ~ {Tags:[ex_chest]}
execute at @e[tag=ex_chest] run summon minecraft:marker ~ ~ ~ {Tags:[ex_chest]}
execute at @e[tag=ex_chest] run summon minecraft:marker ~ ~ ~ {Tags:[ex_chest]}
spreadplayers 960 909 20 45 under 90 false @e[tag=ex_chest]
execute at @e[tag=ex_chest] run setblock ~ ~ ~ minecraft:chest
execute as @e[tag=ex_chest] at @s run loot insert ~ ~ ~ loot minecraft:chests/bastion_treasure
kill @e[tag=ex_chest]





