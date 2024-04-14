#by 007d83QQ



#basic setting
execute as @e[type=#minecraft:arrows,nbt={PierceLevel:96b}] run data merge entity @s {damage:1.5d,NoGravity:1}
execute as @e[type=#minecraft:arrows,nbt={PierceLevel:97b}] run data merge entity @s {damage:1.5d,NoGravity:1}
execute as @a[team=pr_blue,scores={pr=8},tag=!skill9r_be2] at @s run kill @e[type=arrow,nbt={PierceLevel:96b},distance=15..]
execute as @a[team=pr_red,scores={pr=8},tag=!skill9b_be2] at @s run kill @e[type=arrow,nbt={PierceLevel:97b},distance=15..]
execute as @a[team=pr_blue,scores={pr=9}] at @s if score @s skill_9 matches 5 run kill @e[type=arrow,nbt={PierceLevel:96b},distance=15..]
execute as @a[team=pr_red,scores={pr=9}] at @s if score @s skill_9 matches 5 run kill @e[type=arrow,nbt={PierceLevel:97b},distance=15..]
item replace entity @a[scores={pr=8}] container.9 with arrow
execute as @a[team=pr_blue,scores={pr=9}] at @s if score @s skill_9 matches 5 run item replace entity @s container.9 with arrow

#start teleporting
execute as @a[team=pr_blue,scores={skill_8=1..}] run scoreboard players add @s skill_8 1
execute as @a[team=pr_red,scores={skill_8=1..}] run scoreboard players add @s skill_8 1
execute if entity @a[team=pr_blue,scores={skill_8=1..280}] run clear @a music_disc_11
execute if entity @a[team=pr_red,scores={skill_8=1..280}] run clear @a music_disc_11 
execute if entity @a[team=pr_blue,scores={skill_8=20}] run tellraw @a[distance=..150] {"text":"三秒後被微分"}
execute if entity @a[team=pr_blue,scores={skill_8=40}] run tellraw @a[distance=..150] {"text":"二秒後被微分"}
execute if entity @a[team=pr_blue,scores={skill_8=60}] run tellraw @a[distance=..150] {"text":"一秒後被微分"}
execute if entity @a[team=pr_red,scores={skill_8=20}] run tellraw @a[distance=..150] {"text":"三秒後被微分"}
execute if entity @a[team=pr_red,scores={skill_8=40}] run tellraw @a[distance=..150] {"text":"二秒後被微分"}
execute if entity @a[team=pr_red,scores={skill_8=60}] run tellraw @a[distance=..150] {"text":"一秒後被微分"}

execute if entity @a[team=pr_blue,scores={skill_8=80}] run scoreboard objectives add x_pr dummy
execute if entity @a[team=pr_blue,scores={skill_8=80}] run scoreboard objectives add z_pr dummy
execute if entity @a[team=pr_red,scores={skill_8=80}] run scoreboard objectives add x_pr dummy
execute if entity @a[team=pr_red,scores={skill_8=80}] run scoreboard objectives add z_pr dummy
execute if entity @a[team=pr_blue,scores={skill_8=80}] as @a[team=pr_blue] run execute store result score @s x_pr run data get entity @s Pos[0] 
execute if entity @a[team=pr_blue,scores={skill_8=80}] as @a[team=pr_red] run execute store result score @s x_pr run data get entity @s Pos[0] 
execute if entity @a[team=pr_red,scores={skill_8=80}] as @a[team=pr_blue] run execute store result score @s x_pr run data get entity @s Pos[0] 
execute if entity @a[team=pr_red,scores={skill_8=80}] as @a[team=pr_red] run execute store result score @s x_pr run data get entity @s Pos[0] 
execute if entity @a[team=pr_blue,scores={skill_8=80}] as @a[team=pr_blue] run execute store result score @s z_pr run data get entity @s Pos[2] 
execute if entity @a[team=pr_blue,scores={skill_8=80}] as @a[team=pr_red] run execute store result score @s z_pr run data get entity @s Pos[2] 
execute if entity @a[team=pr_red,scores={skill_8=80}] as @a[team=pr_blue] run execute store result score @s z_pr run data get entity @s Pos[2] 
execute if entity @a[team=pr_red,scores={skill_8=80}] as @a[team=pr_red] run execute store result score @s z_pr run data get entity @s Pos[2] 

execute if entity @a[team=pr_blue,scores={skill_8=80}] run function example_pack:pr/skill_8struct
execute if entity @a[team=pr_red,scores={skill_8=80}] run function example_pack:pr/skill_8struct

execute if entity @a[team=pr_blue,scores={skill_8=80}] run tag @a[team=pr_blue] add tp_pr
execute if entity @a[team=pr_blue,scores={skill_8=80}] run tag @a[team=pr_red] add tp_pr
execute if entity @a[team=pr_blue,scores={skill_8=80}] run function example_pack:pr/skill_8tp1
execute if entity @a[team=pr_red,scores={skill_8=80}] run tag @a[team=pr_blue] add tp_pr
execute if entity @a[team=pr_red,scores={skill_8=80}] run tag @a[team=pr_red] add tp_pr
execute if entity @a[team=pr_red,scores={skill_8=80}] run function example_pack:pr/skill_8tp1
execute if entity @a[team=pr_blue,scores={skill_8=80}] run effect give @a[team=pr_blue] regeneration 10 1
execute if entity @a[team=pr_red,scores={skill_8=80}] run effect give @a[team=pr_red] regeneration 10 1


#end&cooldown
execute if entity @a[team=pr_blue,scores={skill_8=280}] run tag @a[team=pr_blue] add tp_pr
execute if entity @a[team=pr_blue,scores={skill_8=280}] run tag @a[team=pr_red] add tp_pr
execute if entity @a[team=pr_blue,scores={skill_8=280}] run function example_pack:pr/skill_8tp2
execute if entity @a[team=pr_red,scores={skill_8=280}] run tag @a[team=pr_blue] add tp_pr
execute if entity @a[team=pr_red,scores={skill_8=280}] run tag @a[team=pr_red] add tp_pr
execute if entity @a[team=pr_red,scores={skill_8=280}] run function example_pack:pr/skill_8tp2

execute if entity @a[team=pr_blue,scores={skill_8=280}] run scoreboard objectives remove x_pr
execute if entity @a[team=pr_blue,scores={skill_8=280}] run scoreboard objectives remove z_pr
execute if entity @a[team=pr_red,scores={skill_8=280}] run scoreboard objectives remove x_pr
execute if entity @a[team=pr_red,scores={skill_8=280}] run scoreboard objectives remove z_pr


execute if entity @a[team=pr_blue,scores={skill_8=280}] run fill -1493 38 33 -1495 17 -17 air
execute if entity @a[team=pr_red,scores={skill_8=280}] run fill -1493 38 33 -1495 17 -17 air
execute if entity @a[team=pr_blue,scores={skill_8=280}] run fill -1493 17 5 -1495 17 5 stone_brick_wall
execute if entity @a[team=pr_blue,scores={skill_8=280}] run fill -1493 17 11 -1495 17 11 stone_brick_wall
execute if entity @a[team=pr_red,scores={skill_8=280}] run fill -1493 17 5 -1495 17 5 stone_brick_wall
execute if entity @a[team=pr_red,scores={skill_8=280}] run fill -1493 17 11 -1495 17 11 stone_brick_wall
execute as @a[team=pr_red,scores={pr=8}] if score @s skill_8 matches 0 unless entity @a[scores={skill_8=1..280},distance=..150] run give @s music_disc_11{display:{Name:'{"text":"空間微分(丟出使用,冷卻60秒)","italic":"false","bold":"true"}'}}
execute as @a[team=pr_blue,scores={pr=8}] if score @s skill_8 matches 0 unless entity @a[scores={skill_8=1..280},distance=..150] run give @s music_disc_11{display:{Name:'{"text":"空間微分(丟出使用,冷卻60秒)","italic":"false","bold":"true"}'}}

execute as @a[team=pr_red,scores={skill_8=1480}] run give @s music_disc_11{display:{Name:'{"text":"空間微分(丟出使用,冷卻60秒)","italic":"false","bold":"true"}'}}
execute as @a[team=pr_blue,scores={skill_8=1480}] run give @s music_disc_11{display:{Name:'{"text":"空間微分(丟出使用,冷卻60秒)","italic":"false","bold":"true"}'}}
execute as @a[team=pr_red,scores={skill_8=1480}] run scoreboard players set @s skill_8 0
execute as @a[team=pr_blue,scores={skill_8=1480}] run scoreboard players set @s skill_8 0





