#by007d83QQ
#exp 地形區塊分配


tag @e[tag=ex_area2,sort=random,limit=1] add ex_area3
execute store result entity @e[tag=ex_area3,limit=1] Pos[0] double 1 run scoreboard players get x expd
execute store result entity @e[tag=ex_area3,limit=1] Pos[2] double 1 run scoreboard players get y expd
tag @e[tag=ex_area3] remove ex_area2
tag @e[tag=ex_area3] remove ex_area3
scoreboard players add x expd 9
scoreboard players add area expd 1
execute if score area expd matches 11 run scoreboard players set x expd 911
execute if score area expd matches 11 run scoreboard players add y expd 9
execute if score area expd matches 11 run scoreboard players set area expd 0
scoreboard players remove count expd 1
function example_pack:exp/exp_return



