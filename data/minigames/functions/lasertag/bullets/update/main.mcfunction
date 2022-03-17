### AT: Bullet
# Move forward
tp @s ^ ^ ^1
scoreboard players add @s lasertagCount 1
particle minecraft:dust 100 100 100 1.5 ~ ~ ~ 0 0 0 0.01 20 force

# Update and check the lifetime, then check for collision
execute if score @s lasertagCount >= dummy lasertagCount run function minigames:lasertag/bullets/update/lifetime
execute unless block ~ ~ ~ air run function minigames:lasertag/bullets/update/hit_block
execute if entity @a[distance=..2] run function minigames:lasertag/bullets/update/hit_player

