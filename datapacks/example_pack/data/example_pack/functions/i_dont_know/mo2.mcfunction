tag @e[tag=idom,sort=random,limit=1] add idoo4

execute if entity @e[tag=idoo4,tag=idos11] run execute as @e[tag=idopl2] at @s run tp @s ^ ^ ^4
execute if entity @e[tag=idoo4,tag=idos11] run schedule function example_pack:i_dont_know/mo2 1s

execute if entity @e[tag=idoo4,tag=idos12] run execute as @e[tag=idopl2] at @s run tp @s ^3 ^ ^
execute if entity @e[tag=idoo4,tag=idos12] run schedule function example_pack:i_dont_know/mo2 1s

execute if entity @e[tag=idoo4,tag=idos13] run execute as @e[tag=idopl2] at @s run tp @s ^-3 ^ ^
execute if entity @e[tag=idoo4,tag=idos13] run schedule function example_pack:i_dont_know/mo2 1s

execute if entity @e[tag=idoo4,tag=idos14] run execute as @e[tag=idopl2] at @s facing entity @e[tag=idopl1,limit=1,sort=nearest] eyes run tp ^ ^ ^
execute if entity @e[tag=idoo4,tag=idos14] run schedule function example_pack:i_dont_know/mo2 0.5s

execute if entity @e[tag=idoo4,tag=idos15] run execute as @e[tag=idopl2] at @s facing entity @e[tag=idopl1,limit=1,sort=nearest] feet run tp ^ ^ ^10
execute if entity @e[tag=idoo4,tag=idos15] run schedule function example_pack:i_dont_know/mo2 2s

execute if entity @e[tag=idoo4,tag=idos16] run execute as @e[tag=idopl2] at @s facing entity @e[tag=idopl1,limit=1,sort=nearest] feet run tp ^ ^ ^-5
execute if entity @e[tag=idoo4,tag=idos16] run schedule function example_pack:i_dont_know/mo2 2s

execute if entity @e[tag=idoo4,tag=idos17] run execute store result score ido ab_choose run data get entity @e[tag=idopl2,limit=1] Rotation[0] 100
execute if entity @e[tag=idoo4,tag=idos17] run scoreboard players add ido ab_choose 1500
execute if entity @e[tag=idoo4,tag=idos17] run execute store result entity @e[tag=idopl2,limit=1] Rotation[0] float 0.01 run scoreboard players get ido ab_choose
execute if entity @e[tag=idoo4,tag=idos17] run schedule function example_pack:i_dont_know/mo2 0.5s

execute if entity @e[tag=idoo4,tag=idos18] run execute store result score ido ab_choose run data get entity @e[tag=idopl2,limit=1] Rotation[0] 100
execute if entity @e[tag=idoo4,tag=idos18] run scoreboard players remove ido ab_choose 1500
execute if entity @e[tag=idoo4,tag=idos18] run execute store result entity @e[tag=idopl2,limit=1] Rotation[0] float 0.01 run scoreboard players get ido ab_choose
execute if entity @e[tag=idoo4,tag=idos18] run schedule function example_pack:i_dont_know/mo2 0.5s

execute if entity @e[tag=idoo4,tag=idos19] run execute as @e[tag=idopl2] at @s facing entity @e[tag=idopl1,limit=1,sort=nearest] feet run tp ^ ^ ^10
execute if entity @e[tag=idoo4,tag=idos19] run schedule function example_pack:i_dont_know/mo2 2s

execute if entity @e[tag=idoo4,tag=idos110] run execute as @e[tag=idopl2] at @s facing entity @e[tag=idopl1,limit=1,sort=nearest] eyes run tp ^ ^ ^
execute if entity @e[tag=idoo4,tag=idos110] run schedule function example_pack:i_dont_know/mo2 0.5s

tag @e remove idoo4