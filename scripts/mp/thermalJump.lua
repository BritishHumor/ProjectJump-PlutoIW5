sayAll("Starting Project Jump Gamemode... [0/3]")

-- Prints a nice little message to the chat when called

function sayAll(message)
	local consoleName = "^0[^:THERMAL^0]:^7 "
	util.chatPrint(consoleName .. message)
	util.print(consoleName .. message)
end

-- Checking if inflicted damage was via melee
function isWeaponMelee(player)

    if player.mod == MeansOfDeath.Melee then
        sayAll("^5" .. player.attacker.name .. " ^7has knifed ^:" .. player.ent.name .. "^7!")
        sayAll("^5" .. player.attacker.name .. " ^7now has a score of: ^:" .. player.attacker.score + 50 .. "^7!")
        return true
    end

    if type(player.attacker) ~= nil then

        sayAll("^5" .. player.attacker.name .. " ^7Failed ^:" .. player.ent.name .. "^7...")
        sayAll("^5" .. player.attacker.name .. " ^7will loose ^:50^7 points")
        if (player.attacker.score <= 49) then
            player.attacker.score = 0
        else
            player.attacker.score = player.attacker.score - 50
        end

    end

    return false

end

-- function that is called when a player takes on damage

function onPlayerDamage(player)

    -- if the damage was NOT dealt via melee, no damage shall be taken

    if isWeaponMelee(player) == false then
        --player.damage = 0
    end

    --sayAll("^5" .. player.ent.name .. "^7 took ^:" .. player.damage .. "^7 points of damage!")

end

function addAmmo()

    for player in util.iterPlayers() do
        player:givemaxammo(player:getcurrentweapon())
        player:givemaxammo(player:getCurrentOffHand())
    end

end

function printScore()

    for player in util.iterPlayers() do
        sayAll("^5" .. player.name .. " ^7has a score of: ^:" .. player.score)
    end

end

-- Sets jump height to 800 (duh) so that we can jump heigher, although fall damage is still the same
-- may want to look into falldamage if it starts becoming a problem
gsc.setdvar("jump_height", "39")
sayAll("Juicing up Jump Muscles... [1/3]")
-- Sets gravity lower, default I think is 800, so 200 is not too low but low enough so you fly around
-- which makes the knife fights more interesting in my opinion
gsc.setdvar("g_gravity", "800")
sayAll("Adjusting Earth's Gravity... [2/3]")

-- The Fun bit, adjusts the player's melee range so they can knife enemies and breakable objects (e.g windows)
-- from pretty much anywhere on the map. Interestingly if you hit a wall near a player, the player will hear the
-- knife collision even if the enemy is nowhere near.
gsc.setdvar("player_meleeRange", "10000000")
sayAll("l337 m3le3 h4kz... [3/3]")

callbacks.playerDamage.add(onPlayerDamage)
callbacks.onInterval.add(1,addAmmo)
--callbacks.onInterval.add(5000,printScore)

sayAll("Project Jump Gamemode Loaded, Get Bouncin'!")
