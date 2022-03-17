### AT: Bullet
# Check if we hit a player
scoreboard players remove @a[distance=..2] lasertagLives 1
tp @a[distance=..2] @e[tag=lasertagSpawnpoint, sort=random,limit=1, distance=..50]