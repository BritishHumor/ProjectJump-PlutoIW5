util.print("Starting Floor Is Lava Gamemode...")
util.chatPrint("Starting Floor Is Lava Gamemode...")

-- Prints a nice little message to the chat when called

function sayAll(message)
	local consoleName = "^0[^:THERMAL^0]:^7 "
	util.chatPrint(consoleName .. message)
end

-- Checking if inflicted damage was via melee
function isWeaponMelee(player)

    if player.mod == MeansOfDeath.Melee then
        sayAll("^5" .. player.attacker .. " ^7has knifed ^5" .. player.name .. "^7!")
        return true
    end

    return false

end

-- function that is called when a player takes on damage

function onPlayerDamage(player)

    -- if the damage was NOT dealt via melee, no damage shall be taken

    if isWeaponMelee(player) == false then
        player.damage = 0
    end

end

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

callbacks.onPlayerDamage(onplayerDamage)

util.chatPrint("Floor Is Lava Gamemode Loaded, get Jumping!")
util.print("Floor Is Lava Gamemode Loaded, get Jumping!")
