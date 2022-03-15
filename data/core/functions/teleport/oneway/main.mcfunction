## Static particles
execute as @e[type=minecraft:armor_stand, tag=tp] at @s if entity @a[distance=..20] run tp @s ~ ~ ~ ~25 ~
execute as @e[type=minecraft:armor_stand, tag=tp] at @s run particle portal ^1 ^ ^-.2 0 0 0 0.1 30 force
execute as @e[type=minecraft:armor_stand, tag=tp] at @s run particle minecraft:end_rod ~ ~1 ~ 0 0.5 0 0 1 force
execute as @e[type=minecraft:armor_stand, tag=tp] at @s run particle minecraft:totem_of_undying ^1 ^ ^-.25 0 0 0 0 10 force


## Teleportation
# Update timer
execute as @e[tag=tpPlayer] run scoreboard players add @s tp 1

# TP particles 
execute as @a[scores={tp=4}] at @s run particle minecraft:portal ~ ~ ~ 0 0 0 1 1000
execute as @a[scores={tp=40}] at @e[tag=tp] run particle minecraft:reverse_portal ~ ~ ~ 0 0 0 1 1000

# Teleport
execute as @a[scores={tp=40}] at @e[tag=tp] run tp @s ~ ~ ~

# Cleanup
execute as @a[scores={tp=41..}] at @s run kill @e[tag=tp,distance=..3]
execute as @a[scores={tp=41..}] run tag @s remove tpPlayer
execute as @a[scores={tp=41..}] run scoreboard players set @s tp 0