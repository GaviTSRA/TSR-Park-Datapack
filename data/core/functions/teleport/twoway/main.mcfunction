function core:teleport/twoway/particles

## Setup
# Stop the particles if they shouldn't run
execute as @e[tag=tps] at @s unless entity @e[tag=tpPlayer2, distance=..1] run tag @s remove run 
execute as @e[tag=tps] at @s unless entity @e[tag=tpPlayer2, distance=..1] run execute at @e[tag=tps, distance=1..] if score @s tp3 = @e[tag=tps, distance=..1, limit=1] tp3 run tag @e[tag=tps, distance=..1, limit=1] remove run
# Add the tpPlayer2 tag if the player should be tped
execute as @e[tag=tps] at @s run tag @e[distance=..1,type=!armor_stand,tag=!justTped] add tpPlayer2
# Remove the tp cooldown tag
execute as @e[tag=tps] at @s run tag @e[distance=1..2, type=!armor_stand] remove justTped

## Teleportation
# Add to the tp timer of the player that should be tped
execute as @e[tag=tps] at @s if entity @e[tag=tpPlayer2, distance=..1] run scoreboard players add @e[tag=tpPlayer2, distance=..1] tp2 1
# Start the particles of the teleporters
execute as @e[tag=tps] at @s if entity @e[tag=tpPlayer2, distance=..1] run tag @s add run 
execute as @e[tag=tps] at @s if entity @e[tag=tpPlayer2, distance=..1] run execute at @e[tag=tps, distance=1..] if score @s tp3 = @e[tag=tps, distance=..1, limit=1] tp3 run tag @e[tag=tps, distance=..1, limit=1] add run
# Add the tp cooldown tag to the player to tp
execute as @e[tag=tps] at @s if entity @e[tag=tpPlayer2, distance=..1, scores={tp2=20..}] run tag @e[tag=tpPlayer2,  distance=..1] add justTped
# Tp the player
execute as @e[tag=tps] at @s if entity @e[tag=tpPlayer2, distance=..1, scores={tp2=20..}] run execute at @e[tag=tps, distance=1..] if score @s tp3 = @e[tag=tps, distance=..1, limit=1] tp3 run tp @e[tag=tpPlayer2] ~ ~ ~

## Cleanup
# Reset the tp timer scoreboard for the tped player
execute as @e[tag=tps] at @s run scoreboard players set @e[tag=!tpPlayer2, distance=..3] tp2 0
# Remove the tpPlayer2 tag of the tped player
execute as @e[tag=tps] at @s run tag @e[tag=tpPlayer2, distance=..1] remove tpPlayer2
