#by 007d83QQ

scoreboard players add @s rico_time 1

execute store result score @s mox1 run data get entity @s Motion[0] 1000
execute store result score @s moy1 run data get entity @s Motion[1] 1000
execute store result score @s moz1 run data get entity @s Motion[2] 1000

scoreboard players operation @s moy2 -= @s moy1
scoreboard players operation @s mox2 -= @s mox1
scoreboard players operation @s moz2 -= @s moz1


execute if score @s mox1 matches -50..50 unless score @s mox2 matches -200..200 if score @s rico_time matches 2.. run execute store result entity @s Motion[0] double -0.001 run scoreboard players get @s mox2
execute if score @s moy1 matches -50..50 unless score @s moy2 matches -200..200 if score @s rico_time matches 2.. run execute store result entity @s Motion[1] double -0.001 run scoreboard players get @s moy2
execute if score @s moz1 matches -50..50 unless score @s moz2 matches -200..200 if score @s rico_time matches 2.. run execute store result entity @s Motion[2] double -0.001 run scoreboard players get @s moz2

execute store result score @s mox2 run data get entity @s Motion[0] 1000
execute store result score @s moy2 run data get entity @s Motion[1] 1000
execute store result score @s moz2 run data get entity @s Motion[2] 1000


