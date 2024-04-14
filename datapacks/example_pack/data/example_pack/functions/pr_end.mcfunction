#by 007d83QQ

setblock -1545 14 7 minecraft:air replace
setblock -1443 14 9 air replace
setblock -1503 13 9 air
clear @a[distance=..100]
scoreboard players reset @a[distance=..100] pr
setblock -1502 13 10 air
bossbar remove minecraft:blue_boss
bossbar remove minecraft:red_boss
kill @e[type=minecraft:iron_golem]
spawnpoint @a[distance=..100] 8 10 8
scoreboard players reset @a skill_1
scoreboard players reset @a skill_2
scoreboard players reset @a skill_3
scoreboard players reset @a skill_4
scoreboard players reset @a skill_5
setblock -1505 13 -8 air
setblock -1505 13 -5 air
setblock -1504 13 -1 air
setblock -1506 13 17 air
setblock -1484 13 -11 air
setblock -1483 14 1 air
setblock -1483 14 -1 air
scoreboard players reset @a skill_7
scoreboard players reset @a skill_6
scoreboard players reset @a skill_sp
execute as @e[type=marker,tag=prsp_red] at @s if block ~ ~ ~ minecraft:lava run setblock ~ ~ ~ minecraft:air
execute as @e[type=marker,tag=prsp_blue] at @s if block ~ ~ ~ minecraft:lava run setblock ~ ~ ~ minecraft:air
execute as @e[type=marker,tag=prsp_red] at @s if block ~1 ~ ~ minecraft:lava run setblock ~1 ~ ~ minecraft:air
execute as @e[type=marker,tag=prsp_blue] at @s if block ~1 ~ ~ minecraft:lava run setblock ~1 ~ ~ minecraft:air
execute as @e[type=marker,tag=prsp_red] at @s if block ~ ~ ~1 minecraft:lava run setblock ~ ~ ~1 minecraft:air
execute as @e[type=marker,tag=prsp_blue] at @s if block ~ ~ ~1 minecraft:lava run setblock ~ ~ ~1 minecraft:air
execute as @e[type=marker,tag=prsp_red] at @s if block ~-1 ~ ~ minecraft:lava run setblock ~-1 ~ ~ minecraft:air
execute as @e[type=marker,tag=prsp_blue] at @s if block ~-1 ~ ~ minecraft:lava run setblock ~-1 ~ ~ minecraft:air
execute as @e[type=marker,tag=prsp_red] at @s if block ~ ~ ~-1 minecraft:lava run setblock ~ ~ ~-1 minecraft:air
execute as @e[type=marker,tag=prsp_blue] at @s if block ~ ~ ~-1 minecraft:lava run setblock ~ ~ ~-1 minecraft:air
kill @e[type=marker,tag=prsp_red]
kill @e[type=marker,tag=prsp_blue]
kill @e[type=zombified_piglin]
tp @a[distance=..100] 8 10 8

tag @e remove skillb_be
tag @e remove skill9b_be2
tag @e remove skillr_be2
tag @e remove skill9r_be