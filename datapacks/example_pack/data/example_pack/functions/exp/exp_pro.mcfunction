#by007d83QQ
#exp 地形區塊分配






scoreboard players add time expd 1
execute if score time expd matches 1 run scoreboard players set time1 expd 600
scoreboard players remove time1 expd 1
execute if score time expd matches ..9000 run effect give @a[tag=exp_player] minecraft:saturation 3 10
execute store result bossbar exp_pro value run scoreboard players get time1 expd
execute store result bossbar exp_player value run execute if entity @a[tag=exp_player,gamemode=survival]
execute store result score exp_player expd run execute if entity @a[tag=exp_player,gamemode=survival]
execute if score time expd matches 600 run title @a[tag=exp_player] title {"text":"遊戲正式開始","bold":"true","color":"red"}
execute if score time expd matches 600 run effect clear @a[tag=exp_player] invisibility
execute if score time expd matches 600 run effect clear @a[tag=exp_player] speed
execute if score time expd matches 600 run effect clear @a[tag=exp_player] jump_boost
execute if score time expd matches 600 run effect give @a[tag=exp_player] speed 9999 0
execute if score time expd matches 600 run give @a[tag=exp_player] minecraft:crossbow{display:{Lore:['{"color":"gray","text":"強力爆炸","italic":"gray"}'],Name:'{"text":"普丁的核彈","italic":"false"}'},Enchantments:[{id:"piercing",lvl:102},{id:"quick_charge",lvl:3}],HideFlags:5,Unbreakable:1}
execute if score time expd matches 600 run scoreboard players set time1 expd 6000
execute if score time expd matches 600 run bossbar set exp_pro max 6000
execute if score time expd matches 600 run bossbar set exp_pro name {"text":"普通轟炸者時間:5分鐘","color":"gold","bold":"true"}
execute if score time expd matches 1200 run give @a[tag=exp_player] glass{display:{Name:'{"text":"屏障生成器","italic": false}'}}
execute if score time expd matches 2400 run give @a[tag=exp_player] glass{display:{Name:'{"text":"屏障生成器","italic": false}'}}
execute if score time expd matches 3600 run give @a[tag=exp_player] glass{display:{Name:'{"text":"屏障生成器","italic": false}'}}
execute if score time expd matches 4800 run give @a[tag=exp_player] glass{display:{Name:'{"text":"屏障生成器","italic": false}'}}
execute if score time expd matches 6000 run give @a[tag=exp_player] glass{display:{Name:'{"text":"屏障生成器","italic": false}'}}
execute if score time expd matches 6600 run title @a[tag=exp_player] subtitle {"text":"小心，你的位置已暴露","color":"red","bold":"true"}
execute if score time expd matches 6600 run title @a[tag=exp_player] title {"text":"發光!","color":"gold","bold":"true"}
execute if score time expd matches 6600 run bossbar set exp_pro name {"text":"發光時間:2分鐘","color":"gold","bold":"true"}
execute if score time expd matches 6600 run effect give @a[tag=exp_player] glowing 9999
execute if score time expd matches 6600 run bossbar set exp_pro max 2400
execute if score time expd matches 6600 run scoreboard players set time1 expd 2400
execute if score time expd matches 7200 run give @a[tag=exp_player] glass{display:{Name:'{"text":"屏障生成器","italic": false}'}}
execute if score time expd matches 8400 run give @a[tag=exp_player] glass{display:{Name:'{"text":"屏障生成器","italic": false}'}}



execute if score time expd matches 9000 run title @a[tag=exp_player] title {"text":"不再回血!","color":"gold","bold":"true"}
execute if score time expd matches 9000 run bossbar set exp_pro name {"text":"飢餓+發光","color":"gold","bold":"true"}
execute if score time expd matches 9000 run scoreboard players set time1 expd 99999


gamemode spectator @a[tag=exp_player,scores={cross_dead=1..}]

execute if score exp_player expd matches ..1 run title @a[tag=exp_player] title ["",{"text":"獲勝者是"},{"selector":"@a[tag=exp_player,gamemode=survival]","color":"gold","bold":"true"}]
execute if score exp_player expd matches ..1 run tellraw @a[tag=exp_player] ["",{"text":"獲勝者是"},{"selector":"@a[tag=exp_player,gamemode=survival]","color":"gold","bold":"true"}]
execute if score exp_player expd matches ..1 run tp @a[tag=exp_player] 8 10 8

execute if score exp_player expd matches ..1 run bossbar remove exp_pro
execute if score exp_player expd matches ..1 run bossbar remove exp_player
execute if score exp_player expd matches ..1 run effect clear @a[tag=exp_player]
execute if score exp_player expd matches ..1 run setblock 977 35 921 air
execute if score exp_player expd matches ..1 run spawnpoint @a[tag=exp_player] 8 10 8
execute if score exp_player expd matches ..1 run tag @a[tag=exp_player] remove exp_player