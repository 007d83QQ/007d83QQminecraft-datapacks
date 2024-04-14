#by007d83QQ
#exp 地形高低分配


execute as @e[tag=ex_area4] at @s run tag @e[tag=ex_area1,distance=..10,tag=!ex_area4,tag=!ex_area6] add ex_area5
tag @e[tag=ex_area4] add ex_area6
execute as @e[tag=ex_area5] at @s run scoreboard players operation @s expd = @e[tag=ex_area4,sort=nearest,limit=1,distance=..9] expd 
tag @e[tag=exp_ch,sort=random,limit=1] add expd_ch
tag @e[tag=ex_area5,sort=random,limit=1] add ex_area7
execute if entity @e[tag=exp_ch1,tag=expd_ch] run scoreboard players add @e[tag=ex_area7] expd 1
execute if entity @e[tag=exp_ch3,tag=expd_ch] run scoreboard players remove @e[tag=ex_area7] expd 1
tag @e[tag=exp_ch] remove expd_ch
tag @e[tag=ex_area7] add ex_area4
tag @e[tag=ex_area7] remove ex_area5
tag @e[tag=ex_area7] remove ex_area7

tag @e[tag=exp_ch,sort=random,limit=1] add expd_ch
tag @e[tag=ex_area5,sort=random,limit=1] add ex_area7
execute if entity @e[tag=exp_ch1,tag=expd_ch] run scoreboard players add @e[tag=ex_area7] expd 1
execute if entity @e[tag=exp_ch3,tag=expd_ch] run scoreboard players remove @e[tag=ex_area7] expd 1
tag @e[tag=exp_ch] remove expd_ch
tag @e[tag=ex_area7] add ex_area4
tag @e[tag=ex_area7] remove ex_area5
tag @e[tag=ex_area7] remove ex_area7

tag @e[tag=exp_ch,sort=random,limit=1] add expd_ch
tag @e[tag=ex_area5,sort=random,limit=1] add ex_area7
execute if entity @e[tag=exp_ch1,tag=expd_ch] run scoreboard players add @e[tag=ex_area7] expd 1
execute if entity @e[tag=exp_ch3,tag=expd_ch] run scoreboard players remove @e[tag=ex_area7] expd 1
tag @e[tag=exp_ch] remove expd_ch
tag @e[tag=ex_area7] add ex_area4
tag @e[tag=ex_area7] remove ex_area5
tag @e[tag=ex_area7] remove ex_area7

tag @e[tag=exp_ch,sort=random,limit=1] add expd_ch
tag @e[tag=ex_area5,sort=random,limit=1] add ex_area7
execute if entity @e[tag=exp_ch1,tag=expd_ch] run scoreboard players add @e[tag=ex_area7] expd 1
execute if entity @e[tag=exp_ch3,tag=expd_ch] run scoreboard players remove @e[tag=ex_area7] expd 1
tag @e[tag=exp_ch] remove expd_ch
tag @e[tag=ex_area7] add ex_area4
tag @e[tag=ex_area7] remove ex_area5
tag @e[tag=ex_area7] remove ex_area7

tag @e[tag=ex_area6] remove ex_area4
execute if entity @e[tag=ex_area1,tag=!ex_area4,tag=!ex_area6] run function example_pack:exp/exp_return






