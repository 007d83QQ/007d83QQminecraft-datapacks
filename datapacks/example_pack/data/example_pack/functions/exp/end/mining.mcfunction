#007d83QQ


execute as @e[tag=exp_end_mine] at @s run execute store result score @s exp_end_rx run data get entity @s Rotation[0]
execute as @e[tag=exp_end_mine] at @s run execute store result score @s exp_end_ry run data get entity @s Rotation[1]

tag @e[tag=exp_end_r,sort=random,limit=1] add exp_end_r0
execute as @e[tag=exp_end_mine] at @s run execute if entity @e[tag=exp_end_r0,tag=exp_end_r2] run scoreboard players add @s exp_end_rx 23
execute as @e[tag=exp_end_mine] at @s run execute if entity @e[tag=exp_end_r0,tag=exp_end_r3] run scoreboard players remove @s exp_end_rx 23
tag @e remove exp_end_r0
tag @e[tag=exp_end_r,sort=random,limit=1] add exp_end_r0
execute as @e[tag=exp_end_mine] at @s run execute if entity @e[tag=exp_end_r0,tag=exp_end_r2] run scoreboard players add @s exp_end_ry 12
execute as @e[tag=exp_end_mine] at @s run execute if entity @e[tag=exp_end_r0,tag=exp_end_r3] run scoreboard players remove @s exp_end_ry 12
tag @e remove exp_end_r0

execute as @e[tag=exp_end_mine] at @s run execute store result entity @s Rotation[0] float 1 run scoreboard players get @s exp_end_rx
execute as @e[tag=exp_end_mine] at @s run execute store result entity @s Rotation[1] float 1 run scoreboard players get @s exp_end_ry

execute as @e[tag=exp_end_mine] at @s run tp @s ^ ^ ^2
execute as @e[tag=exp_end_mine,x=912,dx=98,y=56,dy=33,z=860,dz=96] at @s run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air

execute as @e[tag=exp_end_mine] at @s run scoreboard players remove @s exp_end_times 1
execute as @e[tag=exp_end_mine] at @s run execute unless score @s exp_end_times matches ..0 run function example_pack:exp/end/mining
execute as @e[tag=exp_end_mine] at @s run execute if score @s exp_end_times matches ..0 run kill @s