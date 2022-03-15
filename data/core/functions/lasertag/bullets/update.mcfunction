# Check if we have reached the maximum lifetime (SCORE: dummy/lasertagCountt)
execute as @e[tag=lasertagBullet] if score @s lasertagCount >= dummy lasertagCount at @s run particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 0.5 20 force
execute as @e[tag=lasertagBullet] if score @s lasertagCount >= dummy lasertagCount at @s run playsound minecraft:entity.experience_bottle.throw master @a[distance=..25] ~ ~ ~ 10
execute as @e[tag=lasertagBullet] if score @s lasertagCount >= dummy lasertagCount run kill @s

# Move forward
execute as @e[tag=lasertagBullet] at @s run tp @s ^ ^ ^1
execute as @e[tag=lasertagBullet] at @s run scoreboard players add @s lasertagCount 1
execute as @e[tag=lasertagBullet] at @s run particle minecraft:dust 100 100 100 1.5 ~ ~ ~ 0 0 0 0.01 20 force

# Check if we hit a block
execute as @e[tag=lasertagBullet] at @s unless block ~ ~ ~ air run particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 0.5 20 force
execute as @e[tag=lasertagBullet] at @s unless block ~ ~ ~ air run playsound minecraft:entity.experience_bottle.throw master @a[distance=..25] ~ ~ ~ 10
execute as @e[tag=lasertagBullet] at @s unless block ~ ~ ~ air run kill @s

# Check if we hit a player
execute as @e[tag=lasertagBullet] at @s if entity @a[distance=..2] run scoreboard players remove @a[distance=..2] lasertagLives 1
execute as @e[tag=lasertagBullet] at @s if entity @a[distance=..2] run tp @a[distance=..2] @e[tag=lasertagSpawnpoint, sort=random,limit=1, distance=..50]