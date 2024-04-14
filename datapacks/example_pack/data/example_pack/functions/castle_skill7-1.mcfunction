#by 007d83QQ
execute as @a[scores={skill_7=1},team=pr_red] at @s run summon minecraft:marker ^ ^ ^30 {Tags:[prred_ice]} 
execute as @a[scores={skill_7=1},team=pr_blue] at @s run summon minecraft:marker ^ ^ ^30 {Tags:[prblue_ice]}


#summon redice
execute if entity @a[scores={skill_7=1},team=pr_red] run execute at @e[type=marker,tag=prred_ice] run summon minecraft:marker ~ ~ ~ {Tags:[red_ice]}
execute if entity @a[scores={skill_7=1},team=pr_red] run execute at @e[type=marker,tag=prred_ice] run summon minecraft:marker ~ ~ ~ {Tags:[red_ice]}
execute if entity @a[scores={skill_7=1},team=pr_red] run execute at @e[type=marker,tag=prred_ice] run summon minecraft:marker ~ ~ ~ {Tags:[red_ice]}
execute if entity @a[scores={skill_7=1},team=pr_red] run execute at @e[type=marker,tag=prred_ice] run summon minecraft:marker ~ ~ ~ {Tags:[red_ice]}
execute if entity @a[scores={skill_7=1},team=pr_red] run execute at @e[type=marker,tag=prred_ice] run summon minecraft:marker ~ ~ ~ {Tags:[red_ice]}
execute if entity @a[scores={skill_7=1},team=pr_red] run execute at @e[type=marker,tag=prred_ice] run summon minecraft:marker ~ ~ ~ {Tags:[red_ice]}
execute if entity @a[scores={skill_7=1},team=pr_red] run execute at @e[type=marker,tag=prred_ice] run summon minecraft:marker ~ ~ ~ {Tags:[red_ice]}
execute if entity @a[scores={skill_7=1},team=pr_red] run execute at @e[type=marker,tag=prred_ice] run summon minecraft:marker ~ ~ ~ {Tags:[red_ice]}
execute if entity @a[scores={skill_7=1},team=pr_red] run execute at @e[type=marker,tag=prred_ice] run summon minecraft:marker ~ ~ ~ {Tags:[red_ice]}
execute if entity @a[scores={skill_7=1},team=pr_red] run execute at @e[type=marker,tag=prred_ice] run summon minecraft:marker ~ ~ ~ {Tags:[red_ice]}
execute if entity @a[scores={skill_7=1},team=pr_red] run execute as @e[tag=prred_ice,type=marker] at @s run spreadplayers ~ ~ 1 7 false @e[tag=red_ice,type=marker]
execute if entity @a[scores={skill_7=1},team=pr_red] run execute as @e[type=marker,tag=red_ice] at @s run tp @s ~ 30 ~


#summon blueice
execute if entity @a[scores={skill_7=1},team=pr_blue] run execute at @e[type=marker,tag=prblue_ice] run summon minecraft:marker ~ ~ ~ {Tags:[blue_ice]}
execute if entity @a[scores={skill_7=1},team=pr_blue] run execute at @e[type=marker,tag=prblue_ice] run summon minecraft:marker ~ ~ ~ {Tags:[blue_ice]}
execute if entity @a[scores={skill_7=1},team=pr_blue] run execute at @e[type=marker,tag=prblue_ice] run summon minecraft:marker ~ ~ ~ {Tags:[blue_ice]}
execute if entity @a[scores={skill_7=1},team=pr_blue] run execute at @e[type=marker,tag=prblue_ice] run summon minecraft:marker ~ ~ ~ {Tags:[blue_ice]}
execute if entity @a[scores={skill_7=1},team=pr_blue] run execute at @e[type=marker,tag=prblue_ice] run summon minecraft:marker ~ ~ ~ {Tags:[blue_ice]}
execute if entity @a[scores={skill_7=1},team=pr_blue] run execute at @e[type=marker,tag=prblue_ice] run summon minecraft:marker ~ ~ ~ {Tags:[blue_ice]}
execute if entity @a[scores={skill_7=1},team=pr_blue] run execute at @e[type=marker,tag=prblue_ice] run summon minecraft:marker ~ ~ ~ {Tags:[blue_ice]}
execute if entity @a[scores={skill_7=1},team=pr_blue] run execute at @e[type=marker,tag=prblue_ice] run summon minecraft:marker ~ ~ ~ {Tags:[blue_ice]}
execute if entity @a[scores={skill_7=1},team=pr_blue] run execute at @e[type=marker,tag=prblue_ice] run summon minecraft:marker ~ ~ ~ {Tags:[blue_ice]}
execute if entity @a[scores={skill_7=1},team=pr_blue] run execute at @e[type=marker,tag=prblue_ice] run summon minecraft:marker ~ ~ ~ {Tags:[blue_ice]}
execute if entity @a[scores={skill_7=1},team=pr_blue] run execute as @e[tag=prblue_ice,type=marker] at @s run spreadplayers ~ ~ 1 7 false @e[tag=blue_ice,type=marker]
execute if entity @a[scores={skill_7=1},team=pr_blue] run execute as @e[type=marker,tag=blue_ice] at @s run tp @s ~ 30 ~

#icing
execute if entity @a[scores={skill_7=1},team=pr_blue] run execute at @e[type=marker,tag=blue_ice] run summon minecraft:arrow ~ ~ ~ {ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647}],Tags:[skill_blueice]}
execute if entity @a[scores={skill_7=1},team=pr_red] run execute at @e[type=marker,tag=red_ice] run summon minecraft:arrow ~ ~ ~ {ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647}],Tags:[skill_redice]}
execute if entity @a[scores={skill_7=1},team=pr_blue] run execute at @e[tag=blue_ice] run summon falling_block ~ 30 ~ {BlockState:{Name:"minecraft:packed_ice"},Time:1,HurtEntities:1,FallDistance:100}
execute if entity @a[scores={skill_7=1},team=pr_red] run execute at @e[tag=red_ice] run summon falling_block ~ 30 ~ {BlockState:{Name:"minecraft:packed_ice"},Time:1,HurtEntities:1,FallDistance:100}
scoreboard players add @a[scores={skill_7=1..}] skill_7 1

#still icing
execute if entity @a[scores={skill_7=20},team=pr_red] run execute as @e[tag=prred_ice,type=marker] at @s run spreadplayers ~ ~ 1 7 false @e[tag=red_ice,type=marker]
execute if entity @a[scores={skill_7=20},team=pr_red] run execute as @e[type=marker,tag=red_ice] at @s run tp @s ~ 30 ~
execute if entity @a[scores={skill_7=20},team=pr_red] run execute at @e[tag=red_ice] run summon falling_block ~ 30 ~ {BlockState:{Name:"minecraft:packed_ice"},Time:1,HurtEntities:1,FallDistance:100}
execute if entity @a[scores={skill_7=20},team=pr_red] run execute at @e[type=marker,tag=red_ice] run summon minecraft:arrow ~ ~ ~ {ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647}],Tags:[skill_redice]}
execute if entity @a[scores={skill_7=20},team=pr_blue] run execute as @e[tag=prblue_ice,type=marker] at @s run spreadplayers ~ ~ 1 7 false @e[tag=blue_ice,type=marker]
execute if entity @a[scores={skill_7=20},team=pr_blue] run execute as @e[type=marker,tag=blue_ice] at @s run tp @s ~ 30 ~
execute if entity @a[scores={skill_7=20},team=pr_blue] run execute at @e[tag=blue_ice] run summon falling_block ~ 30 ~ {BlockState:{Name:"minecraft:packed_ice"},Time:1,HurtEntities:1,FallDistance:100}
execute if entity @a[scores={skill_7=20},team=pr_blue] run execute at @e[type=marker,tag=blue_ice] run summon minecraft:arrow ~ ~ ~ {ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647}],Tags:[skill_blueice]}
execute if entity @a[scores={skill_7=40},team=pr_red] run execute as @e[tag=prred_ice,type=marker] at @s run spreadplayers ~ ~ 1 7 false @e[tag=red_ice,type=marker]
execute if entity @a[scores={skill_7=40},team=pr_red] run execute as @e[type=marker,tag=red_ice] at @s run tp @s ~ 30 ~
execute if entity @a[scores={skill_7=40},team=pr_red] run execute at @e[tag=red_ice] run summon falling_block ~ 30 ~ {BlockState:{Name:"minecraft:packed_ice"},Time:1,HurtEntities:1,FallDistance:100}
execute if entity @a[scores={skill_7=40},team=pr_red] run execute at @e[type=marker,tag=red_ice] run summon minecraft:arrow ~ ~ ~ {ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647}],Tags:[skill_redice]}
execute if entity @a[scores={skill_7=40},team=pr_blue] run execute as @e[tag=prblue_ice,type=marker] at @s run spreadplayers ~ ~ 1 7 false @e[tag=blue_ice,type=marker]
execute if entity @a[scores={skill_7=40},team=pr_blue] run execute as @e[type=marker,tag=blue_ice] at @s run tp @s ~ 30 ~
execute if entity @a[scores={skill_7=40},team=pr_blue] run execute at @e[tag=blue_ice] run summon falling_block ~ 30 ~ {BlockState:{Name:"minecraft:packed_ice"},Time:1,HurtEntities:1,FallDistance:100}
execute if entity @a[scores={skill_7=40},team=pr_blue] run execute at @e[type=marker,tag=blue_ice] run summon minecraft:arrow ~ ~ ~ {ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647}],Tags:[skill_blueice]}
execute if entity @a[scores={skill_7=60},team=pr_red] run execute as @e[tag=prred_ice,type=marker] at @s run spreadplayers ~ ~ 1 7 false @e[tag=red_ice,type=marker]
execute if entity @a[scores={skill_7=60},team=pr_red] run execute as @e[type=marker,tag=red_ice] at @s run tp @s ~ 30 ~
execute if entity @a[scores={skill_7=60},team=pr_red] run execute at @e[tag=red_ice] run summon falling_block ~ 30 ~ {BlockState:{Name:"minecraft:packed_ice"},Time:1,HurtEntities:1,FallDistance:100}
execute if entity @a[scores={skill_7=60},team=pr_red] run execute at @e[type=marker,tag=red_ice] run summon minecraft:arrow ~ ~ ~ {ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647}],Tags:[skill_redice]}
execute if entity @a[scores={skill_7=60},team=pr_blue] run execute as @e[tag=prblue_ice,type=marker] at @s run spreadplayers ~ ~ 1 7 false @e[tag=blue_ice,type=marker]
execute if entity @a[scores={skill_7=60},team=pr_blue] run execute as @e[type=marker,tag=blue_ice] at @s run tp @s ~ 30 ~
execute if entity @a[scores={skill_7=60},team=pr_blue] run execute at @e[tag=blue_ice] run summon falling_block ~ 30 ~ {BlockState:{Name:"minecraft:packed_ice"},Time:1,HurtEntities:1,FallDistance:100}
execute if entity @a[scores={skill_7=60},team=pr_blue] run execute at @e[type=marker,tag=blue_ice] run summon minecraft:arrow ~ ~ ~ {ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647}],Tags:[skill_blueice]}
execute if entity @a[scores={skill_7=80},team=pr_red] run execute as @e[tag=prred_ice,type=marker] at @s run spreadplayers ~ ~ 1 7 false @e[tag=red_ice,type=marker]
execute if entity @a[scores={skill_7=80},team=pr_red] run execute as @e[type=marker,tag=red_ice] at @s run tp @s ~ 30 ~
execute if entity @a[scores={skill_7=80},team=pr_red] run execute at @e[tag=red_ice] run summon falling_block ~ 30 ~ {BlockState:{Name:"minecraft:packed_ice"},Time:1,HurtEntities:1,FallDistance:100}
execute if entity @a[scores={skill_7=80},team=pr_red] run execute at @e[type=marker,tag=red_ice] run summon minecraft:arrow ~ ~ ~ {ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647}],Tags:[skill_redice]}
execute if entity @a[scores={skill_7=80},team=pr_blue] run execute as @e[tag=prblue_ice,type=marker] at @s run spreadplayers ~ ~ 1 7 false @e[tag=blue_ice,type=marker]
execute if entity @a[scores={skill_7=80},team=pr_blue] run execute as @e[type=marker,tag=blue_ice] at @s run tp @s ~ 30 ~
execute if entity @a[scores={skill_7=80},team=pr_blue] run execute at @e[tag=blue_ice] run summon falling_block ~ 30 ~ {BlockState:{Name:"minecraft:packed_ice"},Time:1,HurtEntities:1,FallDistance:100}
execute if entity @a[scores={skill_7=80},team=pr_blue] run execute at @e[type=marker,tag=blue_ice] run summon minecraft:arrow ~ ~ ~ {ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647}],Tags:[skill_blueice]}
execute if entity @a[scores={skill_7=100},team=pr_red] run execute as @e[tag=prred_ice,type=marker] at @s run spreadplayers ~ ~ 1 7 false @e[tag=red_ice,type=marker]
execute if entity @a[scores={skill_7=100},team=pr_red] run execute as @e[type=marker,tag=red_ice] at @s run tp @s ~ 30 ~
execute if entity @a[scores={skill_7=100},team=pr_red] run execute at @e[tag=red_ice] run summon falling_block ~ 30 ~ {BlockState:{Name:"minecraft:packed_ice"},Time:1,HurtEntities:1,FallDistance:100}
execute if entity @a[scores={skill_7=100},team=pr_red] run execute at @e[type=marker,tag=red_ice] run summon minecraft:arrow ~ ~ ~ {ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647}],Tags:[skill_redice]}
execute if entity @a[scores={skill_7=100},team=pr_blue] run execute as @e[tag=prblue_ice,type=marker] at @s run spreadplayers ~ ~ 1 7 false @e[tag=blue_ice,type=marker]
execute if entity @a[scores={skill_7=100},team=pr_blue] run execute as @e[type=marker,tag=blue_ice] at @s run tp @s ~ 30 ~
execute if entity @a[scores={skill_7=100},team=pr_blue] run execute at @e[tag=blue_ice] run summon falling_block ~ 30 ~ {BlockState:{Name:"minecraft:packed_ice"},Time:1,HurtEntities:1,FallDistance:100}
execute if entity @a[scores={skill_7=100},team=pr_blue] run execute at @e[type=marker,tag=blue_ice] run summon minecraft:arrow ~ ~ ~ {ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647}],Tags:[skill_blueice]}
execute if entity @a[scores={skill_7=120},team=pr_red] run execute as @e[tag=prred_ice,type=marker] at @s run spreadplayers ~ ~ 1 7 false @e[tag=red_ice,type=marker]
execute if entity @a[scores={skill_7=120},team=pr_red] run execute as @e[type=marker,tag=red_ice] at @s run tp @s ~ 30 ~
execute if entity @a[scores={skill_7=120},team=pr_red] run execute at @e[tag=red_ice] run summon falling_block ~ 30 ~ {BlockState:{Name:"minecraft:packed_ice"},Time:1,HurtEntities:1,FallDistance:100}
execute if entity @a[scores={skill_7=120},team=pr_red] run execute at @e[type=marker,tag=red_ice] run summon minecraft:arrow ~ ~ ~ {ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647}],Tags:[skill_redice]}
execute if entity @a[scores={skill_7=120},team=pr_blue] run execute as @e[tag=prblue_ice,type=marker] at @s run spreadplayers ~ ~ 1 7 false @e[tag=blue_ice,type=marker]
execute if entity @a[scores={skill_7=120},team=pr_blue] run execute as @e[type=marker,tag=blue_ice] at @s run tp @s ~ 30 ~
execute if entity @a[scores={skill_7=120},team=pr_blue] run execute at @e[tag=blue_ice] run summon falling_block ~ 30 ~ {BlockState:{Name:"minecraft:packed_ice"},Time:1,HurtEntities:1,FallDistance:100}
execute if entity @a[scores={skill_7=120},team=pr_blue] run execute at @e[type=marker,tag=blue_ice] run summon minecraft:arrow ~ ~ ~ {ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647}],Tags:[skill_blueice]}
execute if entity @a[scores={skill_7=140},team=pr_red] run execute as @e[tag=prred_ice,type=marker] at @s run spreadplayers ~ ~ 1 7 false @e[tag=red_ice,type=marker]
execute if entity @a[scores={skill_7=140},team=pr_red] run execute as @e[type=marker,tag=red_ice] at @s run tp @s ~ 30 ~
execute if entity @a[scores={skill_7=140},team=pr_red] run execute at @e[tag=red_ice] run summon falling_block ~ 30 ~ {BlockState:{Name:"minecraft:packed_ice"},Time:1,HurtEntities:1,FallDistance:100}
execute if entity @a[scores={skill_7=140},team=pr_red] run execute at @e[type=marker,tag=red_ice] run summon minecraft:arrow ~ ~ ~ {ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647}],Tags:[skill_redice]}
execute if entity @a[scores={skill_7=140},team=pr_blue] run execute as @e[tag=prblue_ice,type=marker] at @s run spreadplayers ~ ~ 1 7 false @e[tag=blue_ice,type=marker]
execute if entity @a[scores={skill_7=140},team=pr_blue] run execute as @e[type=marker,tag=blue_ice] at @s run tp @s ~ 30 ~
execute if entity @a[scores={skill_7=140},team=pr_blue] run execute at @e[tag=blue_ice] run summon falling_block ~ 30 ~ {BlockState:{Name:"minecraft:packed_ice"},Time:1,HurtEntities:1,FallDistance:100}
execute if entity @a[scores={skill_7=140},team=pr_blue] run execute at @e[type=marker,tag=blue_ice] run summon minecraft:arrow ~ ~ ~ {ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647}],Tags:[skill_blueice]}
execute if entity @a[scores={skill_7=160},team=pr_red] run execute as @e[tag=prred_ice,type=marker] at @s run spreadplayers ~ ~ 1 7 false @e[tag=red_ice,type=marker]
execute if entity @a[scores={skill_7=160},team=pr_red] run execute as @e[type=marker,tag=red_ice] at @s run tp @s ~ 30 ~
execute if entity @a[scores={skill_7=160},team=pr_red] run execute at @e[tag=red_ice] run summon falling_block ~ 30 ~ {BlockState:{Name:"minecraft:packed_ice"},Time:1,HurtEntities:1,FallDistance:100}
execute if entity @a[scores={skill_7=160},team=pr_red] run execute at @e[type=marker,tag=red_ice] run summon minecraft:arrow ~ ~ ~ {ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647}],Tags:[skill_redice]}
execute if entity @a[scores={skill_7=160},team=pr_blue] run execute as @e[tag=prblue_ice,type=marker] at @s run spreadplayers ~ ~ 1 7 false @e[tag=blue_ice,type=marker]
execute if entity @a[scores={skill_7=160},team=pr_blue] run execute as @e[type=marker,tag=blue_ice] at @s run tp @s ~ 30 ~
execute if entity @a[scores={skill_7=160},team=pr_blue] run execute at @e[tag=blue_ice] run summon falling_block ~ 30 ~ {BlockState:{Name:"minecraft:packed_ice"},Time:1,HurtEntities:1,FallDistance:100}
execute if entity @a[scores={skill_7=160},team=pr_blue] run execute at @e[type=marker,tag=blue_ice] run summon minecraft:arrow ~ ~ ~ {ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647}],Tags:[skill_blueice]}


#end
execute if entity @a[scores={skill_7=300},team=pr_blue] run kill @e[type=marker,tag=blue_ice]
execute if entity @a[scores={skill_7=300},team=pr_blue] run kill @e[type=marker,tag=prblue_ice]
execute if entity @a[scores={skill_7=300},team=pr_blue] run execute at @e[type=arrow,tag=skill_blueice] run setblock ~ ~ ~ minecraft:air
execute if entity @a[scores={skill_7=300},team=pr_blue] run execute at @e[type=arrow,tag=skill_blueice] run particle minecraft:snowflake ~ ~ ~ 0.5 0.5 0.5 1 5
execute if entity @a[scores={skill_7=300},team=pr_blue] run kill @e[type=arrow,tag=skill_blueice]
execute if entity @a[scores={skill_7=300},team=pr_red] run kill @e[type=marker,tag=red_ice]
execute if entity @a[scores={skill_7=300},team=pr_red] run kill @e[type=marker,tag=prred_ice]
execute if entity @a[scores={skill_7=300},team=pr_red] run execute at @e[type=arrow,tag=skill_redice] run setblock ~ ~ ~ minecraft:air
execute if entity @a[scores={skill_7=300},team=pr_red] run execute at @e[type=arrow,tag=skill_redice] run particle minecraft:snowflake ~ ~ ~ 0.5 0.5 0.5 1 5
execute if entity @a[scores={skill_7=300},team=pr_red] run kill @e[type=arrow,tag=skill_redice]
execute if entity @a[scores={skill_7=300}] run fill -1448 21 6 -1452 23 10 minecraft:air
execute if entity @a[scores={skill_7=300}] run fill -1536 21 6 -1540 23 10 minecraft:air


#cooldown
give @a[scores={skill_7=800}] minecraft:ice{display:{Name:'["冰霜領域(冷卻40秒,Q鍵使用)"]'}}
scoreboard players reset @a[scores={skill_7=800}] skill_7

#COUTINUE
execute as @e[type=arrow,tag=skill_blueice] at @s if block ~ ~1 ~ minecraft:fire run setblock ~ ~ ~ minecraft:air
execute as @e[type=arrow,tag=skill_blueice] at @s if block ~1 ~ ~ minecraft:fire run setblock ~ ~ ~ minecraft:air
execute as @e[type=arrow,tag=skill_blueice] at @s if block ~-1 ~ ~ minecraft:fire run setblock ~ ~ ~ minecraft:air
execute as @e[type=arrow,tag=skill_blueice] at @s if block ~ ~ ~1 minecraft:fire run setblock ~ ~ ~ minecraft:air
execute as @e[type=arrow,tag=skill_blueice] at @s if block ~ ~ ~-1 minecraft:fire run setblock ~ ~ ~ minecraft:air
execute as @e[type=arrow,tag=skill_blueice] at @s if block ~ ~-1 ~ minecraft:fire run setblock ~ ~ ~ minecraft:air
execute as @e[type=arrow,tag=skill_redice] at @s if block ~ ~1 ~ minecraft:fire run setblock ~ ~ ~ minecraft:air
execute as @e[type=arrow,tag=skill_redice] at @s if block ~1 ~ ~ minecraft:fire run setblock ~ ~ ~ minecraft:air
execute as @e[type=arrow,tag=skill_redice] at @s if block ~-1 ~ ~ minecraft:fire run setblock ~ ~ ~ minecraft:air
execute as @e[type=arrow,tag=skill_redice] at @s if block ~ ~ ~-1 minecraft:fire run setblock ~ ~ ~ minecraft:air
execute as @e[type=arrow,tag=skill_redice] at @s if block ~ ~ ~1 minecraft:fire run setblock ~ ~ ~ minecraft:air
execute as @e[type=arrow,tag=skill_redice] at @s if block ~ ~-1 ~ minecraft:fire run setblock ~ ~ ~ minecraft:air
execute as @e[type=arrow,tag=skill_blueice] at @s run effect give @a[team=pr_red,distance=..1.5] minecraft:wither 1 1
execute as @e[type=arrow,tag=skill_blueice] at @s run effect give @a[team=pr_red,distance=..1.5] minecraft:jump_boost 1 129
execute as @e[type=arrow,tag=skill_blueice] at @s run effect give @a[team=pr_red,distance=..1.5] minecraft:slowness 2 20
execute as @e[type=arrow,tag=skill_redice] at @s run effect give @a[team=pr_blue,distance=..1.5] minecraft:wither 1 1
execute as @e[type=arrow,tag=skill_redice] at @s run effect give @a[team=pr_blue,distance=..1.5] minecraft:jump_boost 1 129
execute as @e[type=arrow,tag=skill_redice] at @s run effect give @a[team=pr_blue,distance=..1.5] minecraft:slowness 2 20


#精準
execute as @a[team=pr_red,scores={pr=7},nbt={SelectedItem:{id:"minecraft:ice"}}] at @s run tp @e[type=minecraft:marker,tag=skill7_red] ^ ^ ^30
execute as @a[team=pr_blue,scores={pr=7},nbt={SelectedItem:{id:"minecraft:ice"}}] at @s run tp @e[type=minecraft:marker,tag=skill7_blue] ^ ^ ^30
execute as @e[type=marker,tag=skill7_red] at @s run tp @s ~ 30 ~
execute as @e[type=marker,tag=skill7_blue] at @s run tp @s ~ 30 ~
execute at @e[type=marker,tag=skill7_red] if entity @a[nbt={SelectedItem:{id:"minecraft:ice"}},team=pr_red] run particle minecraft:angry_villager ~ ~ ~ 0.1 0.1 0.1 0.1 3
execute at @e[type=marker,tag=skill7_blue] if entity @a[nbt={SelectedItem:{id:"minecraft:ice"}},team=pr_blue] run particle minecraft:soul ~ ~ ~ 0.1 0.1 0.1 0.05 5


