execute as @a[tag=lasertagStart] run scoreboard players set @s lasertagLives 20
execute as @a[tag=lasertagStart] run tp @s @e[tag=lasertagSpawnpoint, sort=random, distance=..50, limit=1]
execute as @a[tag=lasertagStart] run tag @s remove lasertagStart