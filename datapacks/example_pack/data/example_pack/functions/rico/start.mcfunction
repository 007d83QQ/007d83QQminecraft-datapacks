#by 007d83QQ


summon item ^ ^ ^2 {Item:{id:"snowball",Count:1},PickupDelay:-1,Tags:[rico_st],NoGravity:1}
execute store result score rico z_x1 run data get entity @e[tag=rico_st,limit=1] Pos[0] 1000
execute store result score rico z_y1 run data get entity @e[tag=rico_st,limit=1] Pos[1] 1000
execute store result score rico z_z1 run data get entity @e[tag=rico_st,limit=1] Pos[2] 1000
execute store result score rico z_x2 run data get entity @s Pos[0] 1000
execute store result score rico z_y2 run data get entity @s Pos[1] 1000
execute store result score rico z_z2 run data get entity @s Pos[2] 1000
scoreboard players operation rico z_x1 -= rico z_x2
scoreboard players operation rico z_y1 -= rico z_y2
scoreboard players operation rico z_z1 -= rico z_z2
execute store result entity @e[tag=rico_st,limit=1] Motion[0] double 0.001 run scoreboard players get rico z_x1
execute store result entity @e[tag=rico_st,limit=1] Motion[1] double 0.001 run scoreboard players get rico z_y1
execute store result entity @e[tag=rico_st,limit=1] Motion[2] double 0.001 run scoreboard players get rico z_z1
tp @e[tag=rico_st] @s
tag @e[tag=rico_st] add ricoing
execute store result entity @e[tag=rico_st,tag=ricoing,limit=1] Motion[1] double 0.001 run scoreboard players get rico z_y1
tag @e[tag=rico_st] remove rico_st



