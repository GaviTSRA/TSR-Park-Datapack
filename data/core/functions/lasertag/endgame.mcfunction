execute as @a[scores={lasertagLives=1..}] at @s unless entity @a[scores={lasertagLives=1..}, distance=0.1..50] run tp @s @e[tag=lasertagEndpoint, distance=..50, limit=1, sort=nearest]
execute as @a[scores={lasertagLives=..1}] at @s run tp @s @e[tag=lasertagEndpoint, distance=..50, limit=1, sort=nearest]
execute as @a[scores={lasertagLives=..1}] at @s run scoreboard players reset @s lasertagLives
execute as @a[scores={lasertagLives=1..}] at @s unless entity @a[scores={lasertagLives=1..}, distance=0.1..50] run scoreboard players reset @s lasertagLives