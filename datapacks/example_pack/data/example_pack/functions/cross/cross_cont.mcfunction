#by 007d83QQ


scoreboard players add timer0 cross_dead 1
scoreboard players add timer2 cross_dead 1
execute if score timer0 cross_dead matches 600.. run scoreboard players add timer1 cross_dead 1 
item replace entity @a[team=cross_blue] container.8 with minecraft:arrow 64
item replace entity @a[team=cross_red] container.8 with minecraft:arrow 64
execute as @e[type=#minecraft:arrows,nbt={PierceLevel:101b}] run data merge entity @s {damage:100.0d,Piercelevel:0b}
execute if score timer0 cross_dead matches 1 run tellraw @a[distance=..200] {"text":"三十秒後開始縮圈","bold":"true","color":"gold"}
execute if score timer0 cross_dead matches 600 run scoreboard players set timer1 cross_dead 0
execute if score timer0 cross_dead matches 600 run tellraw @a[distance=..200] {"text":"開始縮圈","bold":"true","color":"gold"}
execute if score timer1 cross_dead matches 80 as @e[tag=cross_border1,type=marker] at @s run tp @s ~-1 ~ ~
execute if score timer1 cross_dead matches 80 as @e[tag=cross_border1,type=marker] at @s run fill ~ 129 4 ~ 0 134 glass
execute if score timer1 cross_dead matches 80 as @e[tag=cross_border2,type=marker] at @s run tp @s ~1 ~ ~
execute if score timer1 cross_dead matches 80 as @e[tag=cross_border2,type=marker] at @s run fill ~ 129 4 ~ 0 134 glass
execute if score timer1 cross_dead matches 80 as @e[tag=cross_border3,type=marker] at @s run tp @s ~ ~-1 ~
execute if score timer1 cross_dead matches 80 as @e[tag=cross_border3,type=marker] at @s run fill 1640 ~ 4 1504 ~ 134 glass
execute if score timer1 cross_dead matches 80 as @e[tag=cross_border4,type=marker] at @s run tp @s ~ ~1 ~
execute if score timer1 cross_dead matches 80 as @e[tag=cross_border4,type=marker] at @s run fill 1640 ~ 4 1504 ~ 134 glass
execute if score timer1 cross_dead matches 80 as @e[tag=cross_border5,type=marker] at @s run tp @s ~ ~ ~-1
execute if score timer1 cross_dead matches 80 as @e[tag=cross_border5,type=marker] at @s run fill 1640 129 ~ 1504 0 ~ glass
execute if score timer1 cross_dead matches 80 as @e[tag=cross_border5,type=marker] at @s run tp @s ~ ~ ~1
execute if score timer1 cross_dead matches 80 as @e[tag=cross_border5,type=marker] at @s run fill 1640 129 ~ 1504 0 ~ glass
execute if score timer1 cross_dead matches 80 run scoreboard players set timer1 cross_dead 0
execute if score timer2 cross_dead matches 40.. run give @a[distance=..200] firework_rocket{Fireworks:{Flight:3}}
execute if score timer2 cross_dead matches 40 run scoreboard players set timer2 cross_dead 0
execute if score timer2 cross_dead matches 80 run scoreboard players set timer2 cross_dead 0
gamemode spectator @a[scores={cross_dead=1..},distance=..200]
execute as @a[distance=..200] at @s if block ~ ~ ~ glass run effect give @s wither 1 1
execute unless entity @a[scores={cross_dead=0},gamemode=!spectator,team=cross_red] run function example_pack:cross/cross_end
execute unless entity @a[scores={cross_dead=0},gamemode=!spectator,team=cross_blue] run function example_pack:cross/cross_end

