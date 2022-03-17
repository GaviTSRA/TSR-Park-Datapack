### AT: Bullet
# Check if we have reached the maximum lifetime (SCORE: dummy/lasertagCount)
particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 0.5 20 force
playsound minecraft:entity.experience_bottle.throw master @a[distance=..25] ~ ~ ~ 10
kill @s