#by007d83QQ
#boss_st


scoreboard players set @a[distance=..50] star_ex 2
execute if score acc star_ex matches 2 run scoreboard players set @r[distance=..50] star_ex 1
execute if score acc star_ex matches 1 run execute as @a[distance=..50] at @s run execute store success score @s star_ex run clear @s minecraft:beetroot{display:{Name:'{"text":"boss信標"}'}} 0
execute if score acc star_ex matches 1 run execute as @a[distance=..50] at @s unless score @s star_ex matches 1 run scoreboard players set @s star_ex 2
clear @a[distance=..50]
team leave @a[scores={star_ex=1},distance=..50]
team join ss @a[scores={star_ex=2}]
effect clear @a[distance=..50]


item replace entity @a[team=ss,distance=..50] armor.chest with minecraft:iron_chestplate{Unbreakable:1}
item replace entity @a[team=ss,distance=..50] armor.feet with minecraft:iron_boots{Unbreakable:1}
item replace entity @a[team=ss,distance=..50] armor.head with minecraft:iron_helmet{Unbreakable:1}
item replace entity @a[team=ss,distance=..50] armor.legs with minecraft:iron_leggings{Unbreakable:1}
item replace entity @a[team=ss,distance=..50] container.0 with minecraft:iron_sword
item replace entity @a[team=ss,distance=..50] weapon.offhand with minecraft:shield{Unbreakable:1}
execute if score attack_ar star_ex matches 1 run give @a[team=ss,distance=..50] bow{Enchantments:[{id:"infinity",lvl:1}],Unbreakable:1}
execute if score attack_ar star_ex matches 1 run give @a[team=ss,distance=..50] arrow
give @a[team=ss] minecraft:iron_axe



item replace entity @a[scores={star_ex=1},distance=..50] armor.chest with minecraft:netherite_chestplate{Unbreakable:1}
item replace entity @a[scores={star_ex=1},distance=..50] armor.feet with minecraft:netherite_boots{Unbreakable:1}
item replace entity @a[scores={star_ex=1},distance=..50] armor.legs with minecraft:netherite_leggings{Unbreakable:1}
item replace entity @a[scores={star_ex=1},distance=..50] armor.head with minecraft:netherite_helmet{Unbreakable:1}
item replace entity @a[scores={star_ex=1},distance=..50] container.1 with minecraft:netherite_sword{Enchantments:[{id:"knockback",lvl:2}]}
item replace entity @a[scores={star_ex=1},distance=..50] weapon.offhand with minecraft:shield{Unbreakable:1}
effect give @a[scores={star_ex=1}] minecraft:health_boost 9999 19
effect give @a[scores={star_ex=1}] minecraft:regeneration 10 10
team join sp @a[scores={star_ex=1},distance=..50]
execute if score boss_speed star_ex matches 3 run effect give @a[scores={star_ex=1}] minecraft:speed 9999 1
execute if score boss_speed star_ex matches 2 run effect give @a[scores={star_ex=1}] minecraft:speed 9999 0
effect give @a[scores={star_ex=1}] minecraft:glowing 9999
item replace entity @a[scores={star_ex=1}] container.8 with bow{Enchantments:[{id:"infinity",lvl:1},{id:"power",lvl:4}],Unbreakable:1}
item replace entity @a[scores={star_ex=1}] container.7 with minecraft:arrow
effect give @a[scores={star_ex=1}] minecraft:strength 9999 2
item replace entity @a[scores={star_ex=1},distance=..50] container.0 with minecraft:netherite_axe



bossbar add bossp "boss_health"
bossbar set bossp players @a[distance=..50]
gamemode adventure @a[distance=..50]
scoreboard players reset @a[distance=..50] cross_dead
spawnpoint @a[team=ss] -1044 30 -998
tp @a[scores={star_ex=1}] -953 30 -998
tp @a[team=ss] -1044 30 -998


scoreboard objectives add boss_time dummy
execute if score 剩餘時間 star_ex matches 1 run scoreboard players set timer boss_time 3000
execute if score 剩餘時間 star_ex matches 2 run scoreboard players set timer boss_time 4000
execute if score 剩餘時間 star_ex matches 3 run scoreboard players set timer boss_time 5000
execute if score 剩餘時間 star_ex matches 4 run scoreboard players set timer boss_time 6000
scoreboard objectives setdisplay sidebar.team.dark_gray boss_time

