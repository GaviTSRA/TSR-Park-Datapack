# Send an activation message
tellraw @a {"text": "Loaded TSR Park Datapack", "color": "#00ff00"}

# Used to detect right clicks
scoreboard objectives add rc minecraft.used:minecraft.carrot_on_a_stick
# Used for lasertag bullet live
scoreboard objectives add lasertagCount dummy
# Used for lasertag player lives
scoreboard objectives add lasertagLives dummy
# Usedd for lasertag bullet cooldown
scoreboard objectives add lasertagCooldown dummy
# Used for 1 way teleporters: tp timer
scoreboard objectives add tp dummy  
# Used for 2 way teleporters: tp timer
scoreboard objectives add tp2 dummy 
# Used for 2 way teleporters: tp index
scoreboard objectives add tp3 dummy 

# Reset the lasertag cooldowns
scoreboard players set @a lasertagCooldown 0
