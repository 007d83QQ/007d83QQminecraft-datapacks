#by007d83QQ
#exp main function

fill 911 55 859 1010 57 958 air
fill 911 58 859 1010 60 958 air
fill 911 61 859 1010 63 958 air
fill 911 64 859 1010 66 958 air
fill 911 67 859 1010 69 958 air
fill 911 70 859 1010 72 958 air
fill 911 73 859 1010 75 958 air
fill 911 76 859 1010 78 958 air
fill 911 79 859 1010 81 958 air
fill 911 82 859 1010 84 958 air
fill 911 85 859 1010 87 958 air
fill 911 88 859 1010 90 958 air
fill 911 91 859 1010 93 958 air
fill 1010 55 958 1010 99 858 air
fill 1010 55 958 910 99 958 air
fill 910 99 858 1010 55 858 air
fill 910 99 858 910 55 958 air





scoreboard objectives add expd dummy
scoreboard players set x expd 911
scoreboard players set y expd 859
summon minecraft:armor_stand 911 55 859 {Tags:[ex_area1,ex_area2]}
execute at @e[tag=ex_area1] run summon minecraft:armor_stand 911 55 859 {Tags:[ex_area1,ex_area2]}
execute at @e[tag=ex_area1] run summon minecraft:armor_stand 911 55 859 {Tags:[ex_area1,ex_area2]}
execute at @e[tag=ex_area1] run summon minecraft:armor_stand 911 55 859 {Tags:[ex_area1,ex_area2]}
execute at @e[tag=ex_area1] run summon minecraft:armor_stand 911 55 859 {Tags:[ex_area1,ex_area2]}
execute at @e[tag=ex_area1] run summon minecraft:armor_stand 911 55 859 {Tags:[ex_area1,ex_area2]}
execute at @e[tag=ex_area1] run summon minecraft:armor_stand 911 55 859 {Tags:[ex_area1,ex_area2]}
execute at @e[tag=ex_area1] run summon minecraft:armor_stand 911 55 859 {Tags:[ex_area1,ex_area2]}
kill @e[tag=ex_area1,limit=7]
scoreboard players set count expd 121
scoreboard players operation count1 expd = count expd
scoreboard players set area expd 0
function example_pack:exp/exp_return



#area high low
scoreboard players set @e[tag=ex_area1,sort=random,limit=1] expd 8
tag @e[scores={expd=8},type=armor_stand] add ex_area4
scoreboard players set count1 expd 1
summon minecraft:marker 911 55 859 {Tags:[exp_ch1,exp_ch]}
summon minecraft:marker 911 55 859 {Tags:[exp_ch2,exp_ch]}
summon minecraft:marker 911 55 859 {Tags:[exp_ch3,exp_ch]}
function example_pack:exp/exp_return
function example_pack:exp/exp_fill
kill @e[tag=exp_ch]



#mountain
execute as @e[tag=ex_area1,scores={expd=9..},sort=random,limit=1] at @s run summon minecraft:marker ~ ~9 ~ {Tags:[ex_mo1,ex_mo3]}
execute as @e[tag=ex_area1,scores={expd=9..},sort=random,limit=1] at @s run summon minecraft:marker ~ ~9 ~ {Tags:[ex_mo1,ex_mo3]}
scoreboard players set count expd 13
scoreboard players set count1 expd 13
function example_pack:exp/exp_return
execute as @e[tag=ex_mo4] at @s run tp @s ~ ~8 ~

execute at @e[tag=ex_mo4] run fill ~1 ~ ~1 ~-1 ~ ~-1 stone
execute at @e[tag=ex_mo4] run fill ~2 ~-1 ~2 ~-2 ~-2 ~-2 stone
execute at @e[tag=ex_mo4] run fill ~3 ~-3 ~3 ~-3 ~-4 ~-3 stone
execute at @e[tag=ex_mo4] run fill ~5 ~-5 ~5 ~-5 ~-7 ~-5 stone
execute at @e[tag=ex_mo4] run fill ~-7 56 ~7 ~7 ~-8 ~-7 stone
execute as @e[tag=ex_mo4] at @s run function example_pack:exp/exp_fill2
fill 911 56 858 1010 87 853 air
fill 910 56 858 904 87 953 air
fill 1017 56 858 1010 87 953 air
fill 912 56 966 1010 87 958 air



#struct
summon minecraft:marker 960 56 909 {Tags:[ex_bu1,ex_bu2]}
summon minecraft:marker 960 56 909 {Tags:[ex_bu1,ex_bu3]}
summon minecraft:marker 960 56 909 {Tags:[ex_bu1,ex_bu4]}
spreadplayers 960 909 40 48 false @e[tag=ex_bu1]
execute at @e[tag=ex_bu2] run summon minecraft:marker ~ ~ ~ {Tags:[ex_bu2,ex_bu1]}
execute at @e[tag=ex_bu2] run summon minecraft:marker ~ ~ ~ {Tags:[ex_bu2,ex_bu1]}
execute at @e[tag=ex_bu2] run summon minecraft:marker ~ ~ ~ {Tags:[ex_bu2,ex_bu1]}
execute at @e[tag=ex_bu2] run summon minecraft:marker ~ ~ ~ {Tags:[ex_bu2,ex_bu1]}
execute at @e[tag=ex_bu2,sort=random,limit=1] run spreadplayers ~ ~ 6 24 false @e[tag=ex_bu2]
execute at @e[tag=ex_bu3] run summon minecraft:marker ~ ~ ~ {Tags:[ex_bu3,ex_bu1]}
execute at @e[tag=ex_bu3] run summon minecraft:marker ~ ~ ~ {Tags:[ex_bu3,ex_bu1]}
execute at @e[tag=ex_bu3] run summon minecraft:marker ~ ~ ~ {Tags:[ex_bu3,ex_bu1]}
execute at @e[tag=ex_bu3,sort=random,limit=1] run spreadplayers ~ ~ 9 30 false @e[tag=ex_bu3]
execute at @e[tag=ex_bu4] run summon minecraft:marker ~ ~ ~ {Tags:[ex_bu4,ex_bu1]}
execute at @e[tag=ex_bu4] run summon minecraft:marker ~ ~ ~ {Tags:[ex_bu4,ex_bu1]}
kill @e[tag=ex_bu4,limit=1]
execute at @e[tag=ex_bu4,sort=random,limit=1] run spreadplayers ~ ~ 12 24 false @e[tag=ex_bu4]
execute at @e[tag=ex_bu2] run setblock ~ ~-3 ~ minecraft:structure_block{mode:LOAD,name:"exp_wood"}
execute at @e[tag=ex_bu3] run setblock ~ ~-3 ~ minecraft:structure_block{mode:LOAD,name:"exp_village"}
execute at @e[tag=ex_bu4] run setblock ~ ~-5 ~ minecraft:structure_block{mode:LOAD,name:"exp_sky"}
execute at @e[tag=ex_bu1] run setblock ~ ~-2 ~ minecraft:redstone_block
execute at @e[tag=ex_bu4] run setblock ~ ~-4 ~ minecraft:redstone_block
execute at @e[tag=ex_bu1] run setblock ~ ~-2 ~ minecraft:air
execute at @e[tag=ex_bu1] run setblock ~ ~-3 ~ minecraft:air
execute at @e[tag=ex_bu4] run setblock ~ ~-4 ~ minecraft:air
execute at @e[tag=ex_bu4] run setblock ~ ~-5 ~ minecraft:air
kill @e[tag=ex_bu1]
fill 911 50 858 1010 87 853 air
fill 910 50 858 904 87 963 air
fill 1017 50 858 1010 87 963 air
fill 912 50 966 1010 87 963 air
fill 911 54 859 1010 54 958 bedrock
fill 1010 55 958 1010 99 858 barrier
fill 1010 55 958 910 99 958 barrier
fill 910 99 858 1010 55 858 barrier
fill 910 99 858 910 55 958 barrier




kill @e[tag=ex_mo4]
kill @e[tag=ex_mo3]


kill @e[tag=ex_area1]
#scoreboard objectives remove expd

