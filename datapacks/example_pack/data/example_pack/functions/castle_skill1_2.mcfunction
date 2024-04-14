#by 007d83QQ


#record&appereance
execute as @e[team=pr_red] at @s run execute store result score @s pr_fire run data get entity @s Fire
execute as @e[team=pr_blue] at @s run execute store result score @s pr_fire run data get entity @s Fire
execute as @a[team=pr_blue] at @s if score @s pr_fire matches 0.. run scoreboard players operation kred skill_sp += @s pr_fire
execute as @a[team=pr_red] at @s if score @s pr_fire matches 0.. run scoreboard players operation kblue skill_sp += @s pr_fire
execute if score kblue skill_sp matches 50000.. run scoreboard players set kblue skill_sp 50000
execute if score kred skill_sp matches 50000.. run scoreboard players set kred skill_sp 50000
scoreboard players operation nred skill_sp = kred skill_sp
scoreboard players operation nblue skill_sp = kblue skill_sp
scoreboard players operation nred skill_sp /= n20 skill_sp
scoreboard players operation nblue skill_sp /= n20 skill_sp
title @a[scores={pr=1},team=pr_red] actionbar ["",{"text":"火焰值已集滿","color":"red","bold":"true"},{"score":{"name":"nred","objective":"skill_sp"},"color":"gold","bold":"true"},{"text":"%","color":"gold","bold":"true"}]
title @a[scores={pr=1},team=pr_blue] actionbar ["",{"text":"火焰值已集滿","color":"red","bold":"true"},{"score":{"name":"nblue","objective":"skill_sp"},"color":"gold","bold":"true"},{"text":"%","color":"gold","bold":"true"}]
execute if score kred skill_sp matches 50000 run execute at @a[team=pr_red,scores={pr=1}] run particle minecraft:lava ~ ~ ~ 1 1 1 1 3
execute if score kblue skill_sp matches 50000 run execute at @a[team=pr_blue,scores={pr=1}] run particle minecraft:lava ~ ~ ~ 1 1 1 1 3


#skill using
execute as @a[team=pr_red,scores={skill_sp=1}] if score kred skill_sp matches 50000 run execute as @e[team=pr_blue,scores={pr_fire=1..}] at @s run summon minecraft:marker ~ ~ ~ {Tags:[prsp_red]}
execute as @a[team=pr_blue,scores={skill_sp=1}] if score kblue skill_sp matches 50000 run execute as @e[team=pr_red,scores={pr_fire=1..}] at @s run summon minecraft:marker ~ ~ ~ {Tags:[prsp_blue]}
execute as @a[team=pr_blue,scores={skill_sp=1}] at @s if score kblue skill_sp matches 50000 run effect give @s minecraft:fire_resistance 10 0
execute as @a[team=pr_red,scores={skill_sp=1}] at @s if score kred skill_sp matches 50000 run effect give @s minecraft:fire_resistance 10 0
execute as @a[team=pr_blue,scores={skill_sp=1}] at @s if score kblue skill_sp matches 50000 run title @s title {"text":"炎炎終擊","color":"red","bold":"true"}
execute as @a[team=pr_red,scores={skill_sp=1}] at @s if score kred skill_sp matches 50000 run title @s title {"text":"炎炎終擊","color":"red","bold":"true"}
execute as @e[type=marker,tag=prsp_red] at @s if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:lava
execute as @e[type=marker,tag=prsp_blue] at @s if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:lava
execute as @e[type=marker,tag=prsp_red] at @s if block ~1 ~ ~ minecraft:air run setblock ~1 ~ ~ minecraft:lava
execute as @e[type=marker,tag=prsp_blue] at @s if block ~1 ~ ~ minecraft:air run setblock ~1 ~ ~ minecraft:lava
execute as @e[type=marker,tag=prsp_red] at @s if block ~ ~ ~1 minecraft:air run setblock ~ ~ ~1 minecraft:lava
execute as @e[type=marker,tag=prsp_blue] at @s if block ~ ~ ~1 minecraft:air run setblock ~ ~ ~1 minecraft:lava
execute as @e[type=marker,tag=prsp_red] at @s if block ~-1 ~ ~ minecraft:air run setblock ~-1 ~ ~ minecraft:lava
execute as @e[type=marker,tag=prsp_blue] at @s if block ~-1 ~ ~ minecraft:air run setblock ~-1 ~ ~ minecraft:lava
execute as @e[type=marker,tag=prsp_red] at @s if block ~ ~ ~-1 minecraft:air run setblock ~ ~ ~-1 minecraft:lava
execute as @e[type=marker,tag=prsp_blue] at @s if block ~ ~ ~-1 minecraft:air run setblock ~ ~ ~-1 minecraft:lava
scoreboard players add @a[team=pr_red,scores={skill_sp=1..}] skill_sp 1
scoreboard players add @a[team=pr_blue,scores={skill_sp=1..}] skill_sp 1
execute if entity @a[team=pr_red,scores={skill_sp=100}] run execute as @e[type=marker,tag=prsp_red] at @s if block ~ ~ ~ minecraft:lava run setblock ~ ~ ~ minecraft:air
execute if entity @a[team=pr_blue,scores={skill_sp=100}] run execute as @e[type=marker,tag=prsp_blue] at @s if block ~ ~ ~ minecraft:lava run setblock ~ ~ ~ minecraft:air
execute if entity @a[team=pr_red,scores={skill_sp=100}] run execute as @e[type=marker,tag=prsp_red] at @s if block ~1 ~ ~ minecraft:lava run setblock ~1 ~ ~ minecraft:air
execute if entity @a[team=pr_blue,scores={skill_sp=100}] run execute as @e[type=marker,tag=prsp_blue] at @s if block ~1 ~ ~ minecraft:lava run setblock ~1 ~ ~ minecraft:air
execute if entity @a[team=pr_red,scores={skill_sp=100}] run execute as @e[type=marker,tag=prsp_red] at @s if block ~ ~ ~1 minecraft:lava run setblock ~ ~ ~1 minecraft:air
execute if entity @a[team=pr_blue,scores={skill_sp=100}] run execute as @e[type=marker,tag=prsp_blue] at @s if block ~ ~ ~1 minecraft:lava run setblock ~ ~ ~1 minecraft:air
execute if entity @a[team=pr_red,scores={skill_sp=100}] run execute as @e[type=marker,tag=prsp_red] at @s if block ~-1 ~ ~ minecraft:lava run setblock ~-1 ~ ~ minecraft:air
execute if entity @a[team=pr_blue,scores={skill_sp=100}] run execute as @e[type=marker,tag=prsp_blue] at @s if block ~-1 ~ ~ minecraft:lava run setblock ~-1 ~ ~ minecraft:air
execute if entity @a[team=pr_red,scores={skill_sp=100}] run execute as @e[type=marker,tag=prsp_red] at @s if block ~ ~ ~-1 minecraft:lava run setblock ~ ~ ~-1 minecraft:air
execute if entity @a[team=pr_blue,scores={skill_sp=100}] run execute as @e[type=marker,tag=prsp_blue] at @s if block ~ ~ ~-1 minecraft:lava run setblock ~ ~ ~-1 minecraft:air
execute if entity @a[team=pr_red,scores={skill_sp=100}] run kill @e[type=marker,tag=prsp_red]
execute if entity @a[team=pr_blue,scores={skill_sp=100}] run kill @e[type=marker,tag=prsp_blue]
execute as @a[team=pr_red,scores={skill_sp=100}] if score kred skill_sp matches 50000 run give @a[team=pr_red,scores={skill_sp=100}] wooden_hoe{AttributeModifiers: [{Slot:"mainhand",AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.4,Operation:0,UUID:[I;1498693494,1027158888,1898994005,860320107]}, {Slot:"mainhand",AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;1498693494,1027158888,1898994005,860320107]}],display:{Name:'["法師魔杖"]'},Unbreakable:1,Enchantments:[{id:"fire_aspect",lvl:2}]}
execute as @a[team=pr_blue,scores={skill_sp=100}] if score kblue skill_sp matches 50000 run give @a[team=pr_blue,scores={skill_sp=100}] wooden_hoe{AttributeModifiers: [{Slot:"mainhand",AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.4,Operation:0,UUID:[I;1498693494,1027158888,1898994005,860320107]}, {Slot:"mainhand",AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;1498693494,1027158888,1898994005,860320107]}],display:{Name:'["法師魔杖"]'},Unbreakable:1,Enchantments:[{id:"fire_aspect",lvl:2}]}
execute as @a[team=pr_red,scores={skill_sp=120}] if score kred skill_sp matches 50000 run scoreboard players reset kred skill_sp
execute as @a[team=pr_blue,scores={skill_sp=120}] if score kblue skill_sp matches 50000 run scoreboard players reset kblue skill_sp


#cooldown
scoreboard players reset @a[team=pr_red,scores={skill_sp=120}] skill_sp
scoreboard players reset @a[team=pr_blue,scores={skill_sp=120}] skill_sp




