#by 007d83QQ


fill 911 55 859 1009 56 957 air
fill 911 57 859 1009 58 957 air
fill 911 59 859 1009 60 957 air
fill 911 61 859 1009 62 957 air
fill 911 63 859 1009 64 957 air
fill 911 65 859 1009 66 957 air
fill 911 67 859 1009 68 957 air
fill 911 69 859 1009 70 957 air
fill 911 71 859 1009 72 957 air
fill 911 73 859 1009 74 957 air
fill 911 75 859 1009 76 957 air
fill 911 77 859 1009 78 957 air
fill 911 79 859 1009 80 957 air
fill 911 81 859 1009 82 957 air
fill 911 83 859 1009 84 957 air
fill 911 85 859 1009 86 957 air
fill 911 87 859 1009 88 957 air
fill 911 89 859 1009 90 957 air

fill 911 55 859 1009 55 957 end_stone
fill 911 58 859 1009 58 957 end_stone
fill 911 61 859 1009 61 957 end_stone
fill 911 64 859 1009 64 957 end_stone
fill 911 67 859 1009 67 957 end_stone
fill 911 70 859 1009 70 957 end_stone
fill 911 73 859 1009 73 957 end_stone
fill 911 76 859 1009 76 957 end_stone
fill 911 79 859 1009 79 957 end_stone
fill 911 82 859 1009 82 957 end_stone
fill 911 85 859 1009 85 957 end_stone
fill 911 88 859 1009 88 957 end_stone

#armor_stand_seperation

summon armor_stand 950 65 900 {Tags:[exp_end_pos1,exp_end_ran],Glowing:1,Small:1,NoGravity:1}
summon armor_stand 950 65 900 {Tags:[exp_end_pos1,exp_end_ran],Glowing:1,Small:1,NoGravity:1}
summon armor_stand 950 65 900 {Tags:[exp_end_pos1,exp_end_ran],Glowing:1,Small:1,NoGravity:1}
summon armor_stand 950 65 900 {Tags:[exp_end_pos1,exp_end_ran],Glowing:1,Small:1,NoGravity:1}
summon armor_stand 950 65 900 {Tags:[exp_end_pos1,exp_end_ran],Glowing:1,Small:1,NoGravity:1}
spreadplayers 960 908 10 40 under 87 false @e[tag=exp_end_pos1]

summon marker 950 65 900 {Tags:[exp_end_ran0,exp_end_rand]}
summon marker 950 65 900 {Tags:[exp_end_ran1,exp_end_rand]}
summon marker 950 65 900 {Tags:[exp_end_ran2,exp_end_rand]}
summon marker 950 65 900 {Tags:[exp_end_ran3,exp_end_rand]}
summon marker 950 65 900 {Tags:[exp_end_ran4,exp_end_rand]}
summon marker 950 65 900 {Tags:[exp_end_ran5,exp_end_rand]}
summon marker 950 65 900 {Tags:[exp_end_ran6,exp_end_rand]}
summon marker 950 65 900 {Tags:[exp_end_ran7,exp_end_rand]}
summon marker 950 65 900 {Tags:[exp_end_ran8,exp_end_rand]}
summon marker 950 65 900 {Tags:[exp_end_ran9,exp_end_rand]}
summon marker 950 65 900 {Tags:[exp_end_ran10,exp_end_rand]}

tag @e[sort=random,tag=exp_end_rand,limit=1] add exp_end_op
tag @e[sort=random,tag=exp_end_ran,limit=1] add exp_end_op1
execute if entity @e[tag=exp_end_ran1,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-3 ~
execute if entity @e[tag=exp_end_ran2,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-6 ~
execute if entity @e[tag=exp_end_ran3,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-9 ~
execute if entity @e[tag=exp_end_ran4,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-12 ~
execute if entity @e[tag=exp_end_ran5,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-15 ~
execute if entity @e[tag=exp_end_ran6,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-18 ~
execute if entity @e[tag=exp_end_ran7,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-21 ~
execute if entity @e[tag=exp_end_ran8,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-24 ~
execute if entity @e[tag=exp_end_ran9,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-27 ~
execute if entity @e[tag=exp_end_ran10,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-30 ~
kill @e[tag=exp_end_op]
tag @e[tag=exp_end_op1] remove exp_end_ran
tag @e[tag=exp_end_op1] remove exp_end_op1

tag @e[sort=random,tag=exp_end_rand,limit=1] add exp_end_op
tag @e[sort=random,tag=exp_end_ran,limit=1] add exp_end_op1
execute if entity @e[tag=exp_end_ran1,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-3 ~
execute if entity @e[tag=exp_end_ran2,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-6 ~
execute if entity @e[tag=exp_end_ran3,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-9 ~
execute if entity @e[tag=exp_end_ran4,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-12 ~
execute if entity @e[tag=exp_end_ran5,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-15 ~
execute if entity @e[tag=exp_end_ran6,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-18 ~
execute if entity @e[tag=exp_end_ran7,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-21 ~
execute if entity @e[tag=exp_end_ran8,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-24 ~
execute if entity @e[tag=exp_end_ran9,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-27 ~
execute if entity @e[tag=exp_end_ran10,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-30 ~
kill @e[tag=exp_end_op]
tag @e[tag=exp_end_op1] remove exp_end_ran
tag @e[tag=exp_end_op1] remove exp_end_op1

tag @e[sort=random,tag=exp_end_rand,limit=1] add exp_end_op
tag @e[sort=random,tag=exp_end_ran,limit=1] add exp_end_op1
execute if entity @e[tag=exp_end_ran1,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-3 ~
execute if entity @e[tag=exp_end_ran2,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-6 ~
execute if entity @e[tag=exp_end_ran3,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-9 ~
execute if entity @e[tag=exp_end_ran4,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-12 ~
execute if entity @e[tag=exp_end_ran5,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-15 ~
execute if entity @e[tag=exp_end_ran6,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-18 ~
execute if entity @e[tag=exp_end_ran7,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-21 ~
execute if entity @e[tag=exp_end_ran8,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-24 ~
execute if entity @e[tag=exp_end_ran9,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-27 ~
execute if entity @e[tag=exp_end_ran10,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-30 ~
kill @e[tag=exp_end_op]
tag @e[tag=exp_end_op1] remove exp_end_ran
tag @e[tag=exp_end_op1] remove exp_end_op1

tag @e[sort=random,tag=exp_end_rand,limit=1] add exp_end_op
tag @e[sort=random,tag=exp_end_ran,limit=1] add exp_end_op1
execute if entity @e[tag=exp_end_ran1,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-3 ~
execute if entity @e[tag=exp_end_ran2,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-6 ~
execute if entity @e[tag=exp_end_ran3,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-9 ~
execute if entity @e[tag=exp_end_ran4,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-12 ~
execute if entity @e[tag=exp_end_ran5,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-15 ~
execute if entity @e[tag=exp_end_ran6,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-18 ~
execute if entity @e[tag=exp_end_ran7,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-21 ~
execute if entity @e[tag=exp_end_ran8,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-24 ~
execute if entity @e[tag=exp_end_ran9,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-27 ~
execute if entity @e[tag=exp_end_ran10,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-30 ~
kill @e[tag=exp_end_op]
tag @e[tag=exp_end_op1] remove exp_end_ran
tag @e[tag=exp_end_op1] remove exp_end_op1

tag @e[sort=random,tag=exp_end_rand,limit=1] add exp_end_op
tag @e[sort=random,tag=exp_end_ran,limit=1] add exp_end_op1
execute if entity @e[tag=exp_end_ran1,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-3 ~
execute if entity @e[tag=exp_end_ran2,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-6 ~
execute if entity @e[tag=exp_end_ran3,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-9 ~
execute if entity @e[tag=exp_end_ran4,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-12 ~
execute if entity @e[tag=exp_end_ran5,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-15 ~
execute if entity @e[tag=exp_end_ran6,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-18 ~
execute if entity @e[tag=exp_end_ran7,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-21 ~
execute if entity @e[tag=exp_end_ran8,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-24 ~
execute if entity @e[tag=exp_end_ran9,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-27 ~
execute if entity @e[tag=exp_end_ran10,tag=exp_end_op] run execute as @e[tag=exp_end_op1] at @s run tp @s ~ ~-30 ~
kill @e[tag=exp_end_op]
tag @e[tag=exp_end_op1] remove exp_end_ran
tag @e[tag=exp_end_op1] remove exp_end_op1

kill @e[tag=exp_end_rand]

fill 911 55 859 1009 57 957 end_stone
fill 911 58 859 1009 60 957 end_stone
fill 911 61 859 1009 63 957 end_stone
fill 911 64 859 1009 66 957 end_stone
fill 911 67 859 1009 69 957 end_stone
fill 911 70 859 1009 72 957 end_stone
fill 911 73 859 1009 75 957 end_stone
fill 911 76 859 1009 78 957 end_stone
fill 911 79 859 1009 81 957 end_stone
fill 911 82 859 1009 84 957 end_stone
fill 911 85 859 1009 87 957 end_stone
fill 911 88 859 1009 90 957 end_stone

scoreboard objectives add exp_end_rx dummy
scoreboard objectives add exp_end_ry dummy
scoreboard objectives add exp_end_times dummy

summon marker 960 73 908 {Tags:[exp_end_center]}
execute at @e[tag=exp_end_center,limit=1] run tag @e[tag=exp_end_pos1,sort=nearest,limit=1] add exp_end_posm
kill @e[tag=exp_end_center]
summon armor_stand ~ ~ ~ {Tags:[exp_end_posm,exp_end_randm1],NoGravity:1,Glowing:1}
summon armor_stand ~ ~ ~ {Tags:[exp_end_posm,exp_end_randm2],NoGravity:1,Glowing:1}
summon armor_stand ~ ~ ~ {Tags:[exp_end_posm,exp_end_randm1],NoGravity:1,Glowing:1}
summon armor_stand ~ ~ ~ {Tags:[exp_end_posm,exp_end_randm2],NoGravity:1,Glowing:1}
summon armor_stand ~ ~ ~ {Tags:[exp_end_posm],NoGravity:1,Glowing:1}
summon armor_stand ~ ~ ~ {Tags:[exp_end_posm],NoGravity:1,Glowing:1}
summon armor_stand ~ ~ ~ {Tags:[exp_end_posm],NoGravity:1,Glowing:1}
summon armor_stand ~ ~ ~ {Tags:[exp_end_posm],NoGravity:1,Glowing:1}
summon armor_stand ~ ~ ~ {Tags:[exp_end_posm],NoGravity:1,Glowing:1}
summon armor_stand ~ ~ ~ {Tags:[exp_end_posm,exp_end_randm3],NoGravity:1,Glowing:1}
summon armor_stand ~ ~ ~ {Tags:[exp_end_posm,exp_end_randm4],NoGravity:1,Glowing:1}
execute as @e[tag=exp_end_pos1,tag=exp_end_posm] at @s run spreadplayers ~ ~ 9 20 false @e[tag=exp_end_posm,tag=!exp_end_pos1]
execute as @e[tag=!exp_end_pos1,tag=exp_end_posm] run execute store result entity @s Pos[1] double 1 run data get entity @e[tag=exp_end_pos1,tag=exp_end_posm,limit=1] Pos[1]
execute as @e[tag=exp_end_randm1] at @s run tp @s ~ ~3 ~
execute as @e[tag=exp_end_randm2] at @s run tp @s ~ ~-3 ~
execute as @e[tag=exp_end_randm3] at @s run tp @s ~ ~6 ~
execute as @e[tag=exp_end_randm4] at @s run tp @s ~ ~-6 ~
execute as @e[tag=exp_end_posm] at @s run function example_pack:exp/end/expand
kill @e[tag=exp_end_pos1,tag=!exp_end_posm]
execute at @e[tag=exp_end_posm,sort=random,limit=1] run summon armor_stand ~ ~ ~ {Tags:[exp_end_mine],Rotation:[0.0f,45.0f],NoGravity:1}
execute at @e[tag=exp_end_posm,sort=random,limit=1] run summon armor_stand ~ ~ ~ {Tags:[exp_end_mine],Rotation:[90.0f,45.0f],NoGravity:1}
execute at @e[tag=exp_end_posm,sort=random,limit=1] run summon armor_stand ~ ~ ~ {Tags:[exp_end_mine],Rotation:[180.0f,45.0f],NoGravity:1}
execute at @e[tag=exp_end_posm,sort=random,limit=1] run summon armor_stand ~ ~ ~ {Tags:[exp_end_mine],Rotation:[270.0f,45.0f],NoGravity:1}
execute at @e[tag=exp_end_posm,sort=random,limit=1] run summon armor_stand ~ ~ ~ {Tags:[exp_end_mine],Rotation:[0.0f,-45.0f],NoGravity:1}
execute at @e[tag=exp_end_posm,sort=random,limit=1] run summon armor_stand ~ ~ ~ {Tags:[exp_end_mine],Rotation:[90.0f,-45.0f],NoGravity:1}
execute at @e[tag=exp_end_posm,sort=random,limit=1] run summon armor_stand ~ ~ ~ {Tags:[exp_end_mine],Rotation:[180.0f,-45.0f],NoGravity:1}
execute at @e[tag=exp_end_posm,sort=random,limit=1] run summon armor_stand ~ ~ ~ {Tags:[exp_end_mine],Rotation:[270.0f,-45.0f],NoGravity:1}
execute at @e[tag=exp_end_posm,sort=random,limit=1] run summon armor_stand ~ ~ ~ {Tags:[exp_end_mine],Rotation:[0.0f,0.0f],NoGravity:1}
execute at @e[tag=exp_end_posm,sort=random,limit=1] run summon armor_stand ~ ~ ~ {Tags:[exp_end_mine],Rotation:[90.0f,0.0f],NoGravity:1}
execute at @e[tag=exp_end_posm,sort=random,limit=1] run summon armor_stand ~ ~ ~ {Tags:[exp_end_mine],Rotation:[180.0f,0.0f],NoGravity:1}
execute at @e[tag=exp_end_posm,sort=random,limit=1] run summon armor_stand ~ ~ ~ {Tags:[exp_end_mine],Rotation:[270.0f,0.0f],NoGravity:1}
execute at @e[tag=exp_end_posm,sort=random,limit=1] run summon armor_stand ~ ~ ~ {Tags:[exp_end_mine],Rotation:[0.0f,0.0f],NoGravity:1}
execute at @e[tag=exp_end_posm,sort=random,limit=1] run summon armor_stand ~ ~ ~ {Tags:[exp_end_mine],Rotation:[90.0f,0.0f],NoGravity:1}
execute at @e[tag=exp_end_posm,sort=random,limit=1] run summon armor_stand ~ ~ ~ {Tags:[exp_end_mine],Rotation:[180.0f,0.0f],NoGravity:1}
execute at @e[tag=exp_end_posm,sort=random,limit=1] run summon armor_stand ~ ~ ~ {Tags:[exp_end_mine],Rotation:[270.0f,0.0f],NoGravity:1}

summon marker ~ ~ ~ {Tags:[exp_end_r1,exp_end_r]}
summon marker ~ ~ ~ {Tags:[exp_end_r2,exp_end_r]}
summon marker ~ ~ ~ {Tags:[exp_end_r3,exp_end_r]}

execute as @e[tag=exp_end_mine] run scoreboard players set @s exp_end_times 30

function example_pack:exp/end/mining

kill @e[tag=exp_end_posm]
kill @e[tag=exp_end_mine]
kill @e[tag=exp_end_r]

fill 911 54 859 1010 54 958 bedrock
fill 1010 55 958 1010 99 858 barrier
fill 1010 55 958 910 99 958 barrier
fill 910 99 858 1010 55 858 barrier
fill 910 99 858 910 55 958 barrier
fill 911 91 859 1010 91 958 bedrock

scoreboard objectives remove exp_end_rx
scoreboard objectives remove exp_end_ry
scoreboard objectives remove exp_end_times

