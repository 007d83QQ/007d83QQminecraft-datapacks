#by 007d83QQ


#redline
execute as @a[scores={skill_1=1..40},team=pr_red] at @s anchored feet run summon minecraft:small_fireball ^ ^ ^2 {Tags:[1_1summon,skill1]} 
execute store result score skill1_1 z_x1 run data get entity @e[tag=1_1summon,limit=1] Pos[0] 1000
execute store result score skill1_1 z_y1 run data get entity @e[tag=1_1summon,limit=1] Pos[1] 1000
execute store result score skill1_1 z_z1 run data get entity @e[tag=1_1summon,limit=1] Pos[2] 1000
execute store result score skill1_1 z_y2 run data get entity @a[scores={skill_1=1..40},limit=1,team=pr_red] Pos[1] 1000
execute store result score skill1_1 z_x2 run data get entity @a[scores={skill_1=1..40},limit=1,team=pr_red] Pos[0] 1000
execute store result score skill1_1 z_z2 run data get entity @a[scores={skill_1=1..40},limit=1,team=pr_red] Pos[2] 1000
scoreboard players operation skill1_1 z_z1 -= skill1_1 z_z2
scoreboard players operation skill1_1 z_y1 -= skill1_1 z_y2
scoreboard players operation skill1_1 z_x1 -= skill1_1 z_x2
execute as @a[scores={skill_1=1..40},team=pr_red] at @s anchored eyes run tp @e[tag=1_1summon] ^ ^ ^1
execute store result entity @e[tag=1_1summon,limit=1] Motion[0] double 0.002 run scoreboard players get skill1_1 z_x1
execute store result entity @e[tag=1_1summon,limit=1] Motion[1] double 0.002 run scoreboard players get skill1_1 z_y1
execute store result entity @e[tag=1_1summon,limit=1] Motion[2] double 0.002 run scoreboard players get skill1_1 z_z1
tag @e[tag=1_1summon] remove 1_1summon
scoreboard players add @a[scores={skill_1=1..},team=pr_red] skill_1 1
give @a[scores={skill_1=288},team=pr_red] minecraft:fire_charge{display:{Name:'["靜婉來講怒火(冷卻14.4秒,Q鍵使用)"]'}}
scoreboard players reset @a[scores={skill_1=288},team=pr_red] skill_1
execute as @a[scores={pr=1},team=pr_red] at @s run kill @e[tag=skill1,distance=60..]


#blueline
execute as @a[scores={skill_1=1..40},team=pr_blue] at @s anchored feet run summon minecraft:small_fireball ^ ^ ^2 {Tags:[1_2summon,skill1_]} 
execute store result score skill1_2 z_x1 run data get entity @e[tag=1_2summon,limit=1] Pos[0] 1000
execute store result score skill1_2 z_y1 run data get entity @e[tag=1_2summon,limit=1] Pos[1] 1000
execute store result score skill1_2 z_z1 run data get entity @e[tag=1_2summon,limit=1] Pos[2] 1000
execute store result score skill1_2 z_y2 run data get entity @a[scores={skill_1=1..40},limit=1,team=pr_blue] Pos[1] 1000
execute store result score skill1_2 z_x2 run data get entity @a[scores={skill_1=1..40},limit=1,team=pr_blue] Pos[0] 1000
execute store result score skill1_2 z_z2 run data get entity @a[scores={skill_1=1..40},limit=1,team=pr_blue] Pos[2] 1000
scoreboard players operation skill1_2 z_z1 -= skill1_2 z_z2
scoreboard players operation skill1_2 z_y1 -= skill1_2 z_y2
scoreboard players operation skill1_2 z_x1 -= skill1_2 z_x2
execute as @a[scores={skill_1=1..40},team=pr_blue] at @s anchored eyes run tp @e[tag=1_2summon] ^ ^ ^1
execute store result entity @e[tag=1_2summon,limit=1] Motion[0] double 0.002 run scoreboard players get skill1_2 z_x1
execute store result entity @e[tag=1_2summon,limit=1] Motion[1] double 0.002 run scoreboard players get skill1_2 z_y1
execute store result entity @e[tag=1_2summon,limit=1] Motion[2] double 0.002 run scoreboard players get skill1_2 z_z1
tag @e[tag=1_2summon] remove 1_2summon
scoreboard players add @a[scores={skill_1=1..},team=pr_blue] skill_1 1
give @a[scores={skill_1=288},team=pr_blue] minecraft:fire_charge{display:{Name:'["靜婉來講怒火(冷卻14.4秒,Q鍵使用)"]'}}
scoreboard players reset @a[scores={skill_1=288},team=pr_blue] skill_1
execute as @a[scores={pr=1},team=pr_blue] at @s run kill @e[tag=skill1_,distance=60..]

