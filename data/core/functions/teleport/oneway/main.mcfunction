execute as @e[type=minecraft:armor_stand, tag=tp] at @s run function core:teleport/oneway/particles

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