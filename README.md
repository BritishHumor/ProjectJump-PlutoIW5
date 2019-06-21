# Archived Project

This project / repo is no longer being maintained due to Plutonium shutting down, feel free to fork if you want.


# THERMAL - Project Jump

Project Jump was created accidentally on the **26th of January 2018** when the two current owners of Thermal Servers decided to mess around with a few gsc variables in MW3. To be more specific:

 - **g_gravity**
 - **jump_height**
 - **player_meleeRange**
 
These few changes set about a fun little game that we played for hours, before realising how much potential it had.

# What does it do?
Fly like you've never flown before! Stab like you're on several Class-A drugs\*! Project Jump throws conventional weapons out of the window and increases your knife range spectacularily, enabling you to stab people from across the map.

Project Jump adjusts:
* **Gravity** - Reduced to 200 from 800. Makes you fly like you've just downed 12 cans of Red Bull.
* **Jump Height** - Increased to 800. You are now a certified **J u m p y B o i™**.
* **Melee Distance** - Increased to 10,000,000. Yep, 10,000,000. 

\* Thermal Servers, or any other related entities, do not condone or encourage the use of Class A Drugs. 
# Prerequisites
To install Project Jump, you need: 
* A LEGITIMATE copy of Call of Duty: Modern Warfare 3 for Steam.
* An up-to-date copy of Plutonium IW5 (r876) - do NOT use the beta/unstable branch!

# Installation

At the time of writing this Readme (07/02/18), this repo and the project are private whilst the mod is still under development. However, if this is ever opened to testers, the following is an extremely basic tutorial on how to get the gamemode installed.
The Following Tutorial should be applicable for both installation on a dedicated server, and a client:

 1. Download the ProjectJump Master Repo (development is available but not recommended as it may not be stable).
 2. Copy the scripts folder into your MW3 directory on either your server/client. If done correctly your file structure should look something similar to the following: **MW3Location/scripts/mp/*\*files related to Project Jump\****
 3. Load up your game / server and type into the console (for client press the **`** key to open the console): **loadscript thermalJump.lua** 
 4. The gamemode should load and display some information in both console and chat, and if all goes well, the gamemode should now be running.... congrats!

## Thermal Servers
Thermal Servers was created with the intention to draw attention to the [**Plutonium IW5 Project**](http://plutonium.pw). We believe the project deserved some recognition for what it has been able to create and wish to help it expand in the future.
You can find our servers in their server browser. They will be listed with the **[THERMAL]** tag, e.g **[THERMAL] Project Jump**.
For a full in-depth list of our Servers, as well as links to our other projects and donations page (in case you are feeling generous and want to help us keep creating our mods) visit us over at [mw3.liamholmes.co.uk](http://mw3.liamholmes.co.uk/)
## Known Bugs/Issues
Dinxton will probably add a clever little message or joke here eventually, as well as correct my grammatical errors.
### Master Branch

 - **Death by explosion can cause entire server to crash**
	 - **Description**: The title kind of sums it up, any death or damage taken by a non-player entity often causes a crash.
	 - **Cause**: The likely cause for this is the `player.attacker` variable, as any damage/death caused a non player entity (e.g explosive barrel) will not have a this variable so it would reference nil and crash.
	 - **Temp Fix**: Don't die or take damage by something that isn't a player. But in all seriousness this issue should be fixed soon anyway, and if we can't, we'll start disabling features so it doesn't happen.
	 
	 
 - **Penalty Points from non-melee damage don't actually minus 50 points**
	 - **Description**: When a player attempts to damage another player using methods which are non-melee, they are supposed to be punished by having 50 points removed (equivalent to 1 kill). However, although the score is updated as if 50 points have been removed, it is shown that when the player gets another kill and has points added, their score goes back to what it was prior to punishment, +50 points.
	 - **Cause**: The likely cause for this is the `player.ent.score` variable is actually just a display of the score and is not the actual score used by the game.
	 - **Temp Fix**: We don't have one... sorry.
### Development Branch
No Bugs/Issues for this branch exist at the moment.
(not for long, lol)
