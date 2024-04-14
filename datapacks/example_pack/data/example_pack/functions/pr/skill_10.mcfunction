#by 007d83QQ


scoreboard players add @a[scores={skill_10=1..},team=pr_red] skill_10 1
scoreboard players add @a[scores={skill_10=1..},team=pr_blue] skill_10 1
clear @a[scores={skill_10=2},team=pr_red] parrot_spawn_egg
clear @a[scores={skill_10=2},team=pr_blue] parrot_spawn_egg


give @a[scores={skill_10=450},team=pr_blue] parrot_spawn_egg{EntityTag:{id:"minecraft:silverfish",Tags:["skill_10_b1"]},NoAI:1,display:{Name:'{"text":"強壯豬人召喚","italic": "false"}'},CanPlaceOn:["minecraft:cut_sandstone","minecraft:polished_blackstone_bricks"]}
give @a[scores={skill_10=450},team=pr_blue] parrot_spawn_egg{EntityTag:{id:"minecraft:silverfish",Tags:["skill_10_b2"]},NoAI:1,display:{Name:'{"text":"豬人大隊召喚","italic": "false"}'},CanPlaceOn:["minecraft:cut_sandstone","minecraft:polished_blackstone_bricks"]}
give @a[scores={skill_10=450},team=pr_red] parrot_spawn_egg{EntityTag:{id:"minecraft:silverfish",Tags:["skill_10_r1"]},NoAI:1,display:{Name:'{"text":"強壯豬人召喚","italic": "false"}'},CanPlaceOn:["minecraft:cut_sandstone","minecraft:polished_blackstone_bricks"]}
give @a[scores={skill_10=450},team=pr_red] parrot_spawn_egg{EntityTag:{id:"minecraft:silverfish",Tags:["skill_10_r2"]},NoAI:1,display:{Name:'{"text":"豬人大隊召喚","italic": "false"}'},CanPlaceOn:["minecraft:cut_sandstone","minecraft:polished_blackstone_bricks"]}


scoreboard players reset @a[scores={skill_10=450},team=pr_red] skill_10
scoreboard players reset @a[scores={skill_10=450},team=pr_blue] skill_10




#2

execute at @e[type=silverfish,tag=skill_10_b1] run summon zombified_piglin ~ ~ ~ {Tags:["skill_10_b"],HandItems:[{id:"netherite_axe",Count:1}],Attributes:[{Name:"generic.max_health",Base:50d}],CustomName:'{"text":"藍色強壯豬人","color":"blue"}',CustomNameVisible:1,Health:50.0f}
execute at @e[type=silverfish,tag=skill_10_b2] run summon zombified_piglin ~ ~ ~ {Tags:["skill_10_b"],Attributes:[{Name:"generic.max_health",Base:15d}],CustomName:'{"text":"藍色豬人軍隊","color":"blue"}',CustomNameVisible:1,Health:15.0f}
execute at @e[type=silverfish,tag=skill_10_b2] run summon zombified_piglin ~ ~ ~ {Tags:["skill_10_b"],Attributes:[{Name:"generic.max_health",Base:15d}],CustomName:'{"text":"藍色豬人軍隊","color":"blue"}',CustomNameVisible:1,Health:15.0f}
execute at @e[type=silverfish,tag=skill_10_b2] run summon zombified_piglin ~ ~ ~ {Tags:["skill_10_b"],Attributes:[{Name:"generic.max_health",Base:15d}],CustomName:'{"text":"藍色豬人軍隊","color":"blue"}',CustomNameVisible:1,Health:15.0f}
kill @e[type=silverfish,tag=skill_10_b1]
kill @e[type=silverfish,tag=skill_10_b2]
execute as @e[tag=skill_10_b] run data modify entity @s AngerTime set value 10000
execute as @e[tag=skill_10_b] run data modify entity @s AngryAt set from entity @a[sort=nearest,limit=1,team=pr_red] UUID
team join pr_blue @e[tag=skill_10_b]



execute at @e[type=silverfish,tag=skill_10_r1] run summon zombified_piglin ~ ~ ~ {Tags:["skill_10_r"],HandItems:[{id:"netherite_axe",Count:1}],Attributes:[{Name:"generic.max_health",Base:50d}],CustomName:'{"text":"紅色強壯豬人","color":"red"}',CustomNameVisible:1,Health:50.0f}
execute at @e[type=silverfish,tag=skill_10_r2] run summon zombified_piglin ~ ~ ~ {Tags:["skill_10_r"],Attributes:[{Name:"generic.max_health",Base:15d}],CustomName:'{"text":"紅色豬人軍隊","color":"red"}',CustomNameVisible:1,Health:15.0f}
execute at @e[type=silverfish,tag=skill_10_r2] run summon zombified_piglin ~ ~ ~ {Tags:["skill_10_r"],Attributes:[{Name:"generic.max_health",Base:15d}],CustomName:'{"text":"紅色豬人軍隊","color":"red"}',CustomNameVisible:1,Health:15.0f}
execute at @e[type=silverfish,tag=skill_10_r2] run summon zombified_piglin ~ ~ ~ {Tags:["skill_10_r"],Attributes:[{Name:"generic.max_health",Base:15d}],CustomName:'{"text":"紅色豬人軍隊","color":"red"}',CustomNameVisible:1,Health:15.0f}
kill @e[type=silverfish,tag=skill_10_r1]
kill @e[type=silverfish,tag=skill_10_r2]
execute as @e[tag=skill_10_r] run data modify entity @s AngerTime set value 10000
execute as @e[tag=skill_10_r] run data modify entity @s AngryAt set from entity @a[sort=nearest,limit=1,team=pr_blue] UUID
team join pr_red @e[tag=skill_10_r]