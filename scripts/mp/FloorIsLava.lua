util.print("Starting Floor Is Lava Gamemode...")
util.chatPrint("Starting Floor Is Lava Gamemode...")

-- Sets jump height to 800 (duh) so that we can jump heigher, although fall damage is still the same
-- may want to look into falldamage if it starts becoming a problem
gsc.setdvar("jump_height", "800")
-- Sets gravity lower, default I think is 800, so 200 is not too low but low enough so you fly around
-- which makes the knife fights more interesting in my opinion
gsc.setdvar("g_gravity", "200")
-- The Fun bit, adjusts the player's melee range so they can knife enemies and breakable objects (e.g windows)
-- from pretty much anywhere on the map. Interestingly if you hit a wall near a player, the player will hear the
-- knife collision even if the enemy is nowhere near.
gsc.setdvar("player_meleeRange", "10000000")

util.chatPrint("Floor Is Lava Gamemode Loaded, get Jumping!")
util.print("Floor Is Lava Gamemode Loaded, get Jumping!")
