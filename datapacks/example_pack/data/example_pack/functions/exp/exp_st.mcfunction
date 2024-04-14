#by007d83QQ
#exp 地形區塊分配




scoreboard players reset @a[distance=..30] cross_dead
clear @a[distance=..30]
gamemode survival @a[distance=..30]
effect give @a[distance=..30] minecraft:resistance 9999 1
effect give @a[distance=..30] minecraft:invisibility 9999
effect give @a[distance=..30] minecraft:speed 9999 3
effect give @a[distance=..30] minecraft:jump_boost 9999 3
bossbar add exp_pro {"text":"逃跑時間:30秒","color":"gold","bold":"true"}
bossbar add exp_player {"text":"剩餘人數","bold":"true","color":"green"}
execute store result bossbar exp_player max run execute if entity @a[distance=..30]
effect give @a[distance=..30] night_vision 99999
bossbar set exp_pro max 600
bossbar set exp_pro color yellow
bossbar set exp_player color blue
scoreboard players set time exp 0
tag @a[distance=..30] add exp_player
bossbar set exp_player players @a[tag=exp_player]
bossbar set exp_pro players @a[tag=exp_player]
spreadplayers 960 908 1 8 under 90 false @a[distance=..30]
spawnpoint @a[tag=exp_player] 960 100 908
scoreboard players set time expd 0
setblock 977 35 921 redstone_block
execute at @a[tag=exp_player] run kill @e[type=item,distance=..50]