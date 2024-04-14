#by 007d83QQ


execute at @a[scores={skill_9=1},team=pr_red] run summon arrow ^ ^ ^2 {Tags:[skill9r,skill9_r],PierceLevel:10b}
execute at @a[scores={skill_9=1},team=pr_blue] run summon arrow ^ ^ ^2 {Tags:[skill9b,skill9_b],PierceLevel:10b}

execute store result score 9blue z_x1 run data get entity @e[tag=skill9_b,limit=1,type=arrow] Pos[0] 1000
execute store result score 9blue z_y1 run data get entity @e[tag=skill9_b,limit=1,type=arrow] Pos[1] 1000
execute store result score 9blue z_z1 run data get entity @e[tag=skill9_b,limit=1,type=arrow] Pos[2] 1000
execute store result score 9red z_x1 run data get entity @e[tag=skill9_r,limit=1,type=arrow] Pos[0] 1000
execute store result score 9red z_y1 run data get entity @e[tag=skill9_r,limit=1,type=arrow] Pos[1] 1000
execute store result score 9red z_z1 run data get entity @e[tag=skill9_r,limit=1,type=arrow] Pos[2] 1000

execute store result score 9blue z_x2 run data get entity @a[scores={skill_9=1},team=pr_blue,limit=1] Pos[0] 1000
execute store result score 9blue z_y2 run data get entity @a[scores={skill_9=1},team=pr_blue,limit=1] Pos[1] 1000
execute store result score 9blue z_z2 run data get entity @a[scores={skill_9=1},team=pr_blue,limit=1] Pos[2] 1000
execute store result score 9red z_x2 run data get entity @a[scores={skill_9=1},team=pr_red,limit=1] Pos[0] 1000
execute store result score 9red z_y2 run data get entity @a[scores={skill_9=1},team=pr_red,limit=1] Pos[1] 1000
execute store result score 9red z_z2 run data get entity @a[scores={skill_9=1},team=pr_red,limit=1] Pos[2] 1000

scoreboard players operation 9blue z_x1 -= 9blue z_x2
scoreboard players operation 9blue z_y1 -= 9blue z_y2
scoreboard players operation 9blue z_z1 -= 9blue z_z2
scoreboard players operation 9red z_x1 -= 9red z_x2
scoreboard players operation 9red z_y1 -= 9red z_y2
scoreboard players operation 9red z_z1 -= 9red z_z2

execute store result entity @e[tag=skill9_b,limit=1,type=arrow] Motion[0] double 0.0005 run scoreboard players get 9blue z_x1
execute store result entity @e[tag=skill9_b,limit=1,type=arrow] Motion[1] double 0.0005 run scoreboard players get 9blue z_y1
execute store result entity @e[tag=skill9_b,limit=1,type=arrow] Motion[2] double 0.0005 run scoreboard players get 9blue z_z1
execute store result entity @e[tag=skill9_r,limit=1,type=arrow] Motion[0] double 0.0005 run scoreboard players get 9red z_x1
execute store result entity @e[tag=skill9_r,limit=1,type=arrow] Motion[1] double 0.0005 run scoreboard players get 9red z_y1
execute store result entity @e[tag=skill9_r,limit=1,type=arrow] Motion[2] double 0.0005 run scoreboard players get 9red z_z1

execute as @e[tag=skill9_r] at @s run tp ~ ~1 ~
execute as @e[tag=skill9_b] at @s run tp ~ ~1 ~

tag @e[tag=skill9_r] remove skill9_r
tag @e[tag=skill9_b] remove skill9_b


scoreboard players add @a[scores={skill_9=1},team=pr_red] skill_9 1
scoreboard players add @a[scores={skill_9=1},team=pr_blue] skill_9 1


#標記
execute at @e[tag=skill9r,nbt={inGround:1b}] run particle explosion ~ ~ ~ 1 0 1 1 10
execute at @e[tag=skill9b,nbt={inGround:1b}] run particle explosion ~ ~ ~ 1 0 1 1 10
execute as @e[tag=skill9r,nbt={inGround:1b}] at @s run tag @a[team=pr_blue,distance=..4,limit=1] add skillr_be
execute as @e[tag=skill9b,nbt={inGround:1b}] at @s run tag @a[team=pr_red,distance=..4,limit=1] add skillb_be
execute at @e[tag=skill9r,nbt={inGround:1b}] run scoreboard players add @a[scores={skill_9=2},team=pr_red] skill_9 1
execute at @e[tag=skill9b,nbt={inGround:1b}] run scoreboard players add @a[scores={skill_9=2},team=pr_blue] skill_9 1
kill @e[tag=skill9r,nbt={inGround:1b}]
kill @e[tag=skill9b,nbt={inGround:1b}]

#失敗
execute unless entity @a[tag=skillr_be,team=pr_blue] run title @a[team=pr_red,scores={skill_9=3}] actionbar {"text":"盜竊失敗!未偵測到敵人","bold":"true","color":"red"}
execute unless entity @a[tag=skillb_be,team=pr_red] run title @a[team=pr_blue,scores={skill_9=3}] actionbar {"text":"盜竊失敗!未偵測到敵人","bold":"true","color":"red"}
execute unless entity @a[tag=skillr_be,team=pr_blue] run scoreboard players set @a[team=pr_red,scores={skill_9=3}] skill_9 406
execute unless entity @a[tag=skillb_be,team=pr_red] run scoreboard players set @a[team=pr_blue,scores={skill_9=3}] skill_9 406

#成功
execute if entity @a[tag=skillr_be,team=pr_blue] run title @a[team=pr_red,scores={skill_9=3}] actionbar ["",{"text":"盜竊印記已標記上","color":"gold"},{"selector":"@a[tag=skillr_be,team=pr_blue,limit=1]","color":"gold","bold":"true"}]
execute if entity @a[tag=skillb_be,team=pr_red] run title @a[team=pr_blue,scores={skill_9=3}] actionbar ["",{"text":"盜竊印記已標記上","color":"gold"},{"selector":"@a[tag=skillb_be,team=pr_red,limit=1]","color":"gold","bold":"true"}]
execute if entity @a[tag=skillr_be,team=pr_blue] run give @a[team=pr_red,scores={skill_9=3}] tipped_arrow{display:{Name:'{"text":"無情偷走!(丟出使用)","italic":"false"}'}}
execute if entity @a[tag=skillb_be,team=pr_red] run give @a[team=pr_blue,scores={skill_9=3}] tipped_arrow{display:{Name:'{"text":"無情偷走!(丟出使用)","italic":"false"}'}}
execute if entity @a[tag=skillr_be,team=pr_blue] run scoreboard players add @a[team=pr_red,scores={skill_9=3}] skill_9 1
execute if entity @a[tag=skillb_be,team=pr_red] run scoreboard players add @a[team=pr_blue,scores={skill_9=3}] skill_9 1
execute if entity @a[tag=skillr_be,team=pr_blue] run title @a[team=pr_red,scores={skill_9=4}] actionbar ["",{"text":"盜竊印記已標記上","color":"gold"},{"selector":"@a[tag=skillr_be,team=pr_blue,limit=1]","color":"gold","bold":"true"}]
execute if entity @a[tag=skillb_be,team=pr_red] run title @a[team=pr_blue,scores={skill_9=4}] actionbar ["",{"text":"盜竊印記已標記上","color":"gold"},{"selector":"@a[tag=skillb_be,team=pr_red,limit=1]","color":"gold","bold":"true"}]

#偷
execute at @a[team=pr_red,scores={skill_9=5}] run execute as @a[tag=skillr_be,team=pr_blue] run function example_pack:pr/skill_9reds
execute at @a[team=pr_blue,scores={skill_9=5}] run execute as @a[tag=skillb_be,team=pr_red] run function example_pack:pr/skill_9blues
execute as @a[team=pr_red,scores={skill_9=5..}] run scoreboard players add @s skill_9 1
execute as @a[team=pr_blue,scores={skill_9=5..}] run scoreboard players add @s skill_9 1

#還
execute at @a[team=pr_red,scores={skill_9=405}] run execute as @a[tag=skillr_be,team=pr_blue] run function example_pack:pr/skill_9redr
execute at @a[team=pr_blue,scores={skill_9=405}] run execute as @a[tag=skillb_be,team=pr_red] run function example_pack:pr/skill_9bluer

execute as @a[team=pr_red,scores={skill_9=705}] run give @s tipped_arrow{display:{Name:'{"text": "盜竊印記（丟出使用，冷卻15秒）","italic": "false"}'}}
execute as @a[team=pr_blue,scores={skill_9=705}] run give @s tipped_arrow{display:{Name:'{"text": "盜竊印記（丟出使用，冷卻15秒）","italic": "false"}'}}
execute as @a[team=pr_red,scores={skill_9=705}] run scoreboard players reset @s skill_9
execute as @a[team=pr_blue,scores={skill_9=705}] run scoreboard players reset @s skill_9

