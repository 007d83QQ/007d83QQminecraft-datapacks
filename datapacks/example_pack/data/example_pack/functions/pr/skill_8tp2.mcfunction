#by 007d83QQ

tag @r[tag=tp_pr] add tp_pring
execute at @r[tag=tp_pring] run summon marker ~ ~ ~ {Tags:[tp_prm]}
execute store result entity @e[tag=tp_prm,limit=1] Pos[0] double 1 run scoreboard players get @r[tag=tp_pring] x_pr
execute store result entity @e[tag=tp_prm,limit=1] Pos[2] double 1 run scoreboard players get @r[tag=tp_pring] z_pr
tp @r[tag=tp_pring] @e[tag=tp_prm,limit=1]
tag @a[tag=tp_pring] remove tp_pr
tag @a[tag=tp_pring] remove tp_pring
kill @e[tag=tp_prm]
execute if entity @a[tag=tp_pr] run function example_pack:pr/skill_8tp2



