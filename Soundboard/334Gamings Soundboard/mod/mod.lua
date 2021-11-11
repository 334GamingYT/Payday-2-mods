function play(ID)
	if Utils:IsInHeist() then
		if alive(managers.player:player_unit()) or (managers.player:current_state()) == ("bleed_out") then
			managers.player:local_player():sound():say(ID,true,true)
		end
	end
end

function chosen(button)
--//Basic Menu
	if button == "Back >> Main" then soundmenu("MainMenu")
	elseif button == "Basic >>" then soundmenu("BasicMenu")
	elseif button == "Troll >>" then soundmenu("TrollMenu")
	elseif button == "Music >>" then soundmenu("MusicMenu")
	
	elseif button == "Stop all music" then play("Stop_all_music")
	--elseif button == "Stop all music" then play("criminals_ambition")
--//Common Menu
	--Back
	elseif button == "Back >> Basic" then soundmenu("BasicMenu")
	--Need
	elseif button == "I Need >>" then soundmenu("CommonNeed")
	elseif button == "Need Medic bag" then play("g80x_plu")
	elseif button == "Need Ammo bag" then play("g81x_plu")
	--Direction
	elseif button == "Directions >>" then soundmenu("CommonDirection")
	elseif button == "Direction Upstairs" then play("g02")
	elseif button == "Direction Downstairs" then play("g01")
	elseif button == "Left" then play("g03")
	elseif button == "Right" then play("g04")
	elseif button == "Up" then play("g05")
	elseif button == "Down" then play("g06")
	elseif button == "Jump down" then play("g20")
	elseif button == "Stright" then play("g19")
	elseif button == "Inside" then play("g08")
	elseif button == "Hurry" then play("g09")
	elseif button == "Careful" then play("g10")
	elseif button == "Wrong way" then play("g11")
	elseif button == "Right way" then play("g12")
	--Other
	--elseif button == "Others >>" then soundmenu("CommonOther")

	--Spot
	--elseif button == "Spot >>" then soundmenu("CommonOther")

--//Troll
	--Back
	elseif button == "Back >> Troll" then soundmenu("TrollMenu")
	elseif button == "Back >> Enforcer" then soundmenu("TrollEnforcerChoose")
	--Enforcers
	elseif button == "Enforcers >>" then soundmenu("TrollEnforcerChoose")
	elseif button == "Cloaker >>" then soundmenu("TrollEnforcerCloaker")
	elseif button == "Captain >>" then soundmenu("TrollEnforcerCaptain")
	elseif button == "Dozer >>" then soundmenu("TrollEnforcerDozer")
	elseif button == "Medic >>" then soundmenu("TrollEnforcerMedic")
	elseif button == "Shield >>" then soundmenu("TrollEnforcerShield")
	elseif button == "Taser >>" then soundmenu("TrollEnforcerTaser")
	----Cloaker
	elseif button == "[Cloaker]Static" then play("cloaker_presence_loop") --Cloaker/Static
	elseif button == "[Cloaker]Static Stop" then play("cloaker_presence_stop") --Cloaker/Static Stop
	elseif button == "[Cloaker]Taunt 1" then play("cloaker_taunt_during_assault") --Cloaker/During Assault Taunt
	elseif button == "[Cloaker]Taunt 2" then play("cloaker_taunt_after_assault") --Cloaker/After Assault Taunt
	elseif button == "[Cloaker]Charge" then play("cloaker_detect_mono") --Cloaker/Charging
	elseif button == "[Cloaker]Christmas Charge" then play("cloaker_detect_christmas_mono") --Cloaker/Christmas Charging
	----Captain
	elseif button == "[Captain]Spawn Annoucement" then play("cpa_a02_01") --Captain/Spawn Announcement
	elseif button == "[Captain]Retreat" then play("cpw_a04") --Captain/Retreat
	elseif button == "[Captain]Advance" then play("cpw_a05") --Captain/Tactical Advance
	elseif button == "[Captain]Player Spotted" then play("cpw_a01") --Captain/Spot player
	elseif button == "[Captain]Killtaunt" then play("cpw_a02") --Captain/Killtaunt
	----Dozer
	elseif button == "[Dozer]Enterance" then play("bdz_entrance") --Dozer/Enterance
	elseif button == "[Dozer]Elite Enterance" then play("bdz_entrance_elite") --Dozer/Elite Enterance
	elseif button == "[Dozer]Player Spotted" then play("bdz_c01") --Dozer/Spot player
	elseif button == "[Dozer]Killtaunt" then play("bdz_post_kill_taunt") --Dozer/Killtaunt
	elseif button == "[Dozer]Taunt" then play("bdz_g90") --Dozer/Taunt
	elseif button == "[Dozer]Broken Visor" then play("bdz_visor_lost") --Dozer/Broken Visor
	----Medic
	elseif button == "[Medic]Enterance" then play("mdc_entrance") --Medic/Enterance
	elseif button == "[Medic]Taunt" then play("mdc_g90") --Medic/Taunt
	elseif button == "[Medic]Heal" then play("mdc_heal") --Medic/Heal Enforcers
	----Shield
	elseif button == "[Shield]Shield Knock" then play("shield_identification") --Shield/Knock
	----Taser
	elseif button == "[Taser]Enterance" then play("tsr_entrance") --Taser/Enterance
	elseif button == "[Taser]Elite Enterance" then play("tsr_elite") --Taser/Elite Enterance
	elseif button == "[Taser]Player Spotted" then play("tsr_c01") --Taser/Spot player
	elseif button == "[Taser]Killtaunt" then play("tsr_post_tasing_taunt") --Taser/Killtaunt
	elseif button == "[Taser]Taunt" then play("tsr_g90") --Taser/Taunt
	elseif button == "[Taser]Taser Tased" then play("tsr_tasered") --Taser/Self Tased

--//Music
	elseif button == "[Heist]Nightclub Music" then play("diegetic_club_music")
	elseif button == "[Heist][Unused]Nightclub Music" then play("diegetic_club_rock_music")
	elseif button == "[Heist]Shadow Raid" then play("kosugi_music")
	elseif button == "[Track]Alesso" then play("alesso_payday")
	elseif button == "[Track]I Will Give You My All" then play("pth_i_will_give_you_my_all")
	elseif button == "[Track][XMas]A Heist Not Attempted Before" then play("xmas13_a_heist_not_attempted_before")
	elseif button == "[Track][XMas]A Heist Not Attempted Before Instrumental" then play("xmas13_a_heist_not_attempted_before_instrumental")
	elseif button == "[Track][XMas]A Merry Payday Christmas" then play("xmas13_a_merry_payday_christmas")
	elseif button == "[Track][XMas]A Merry Payday Christmas Instrumental" then play("xmas13_a_merry_payday_christmas_instrumental")
	elseif button == "Alarm" then play("xmas13_a_merry_payday_christmas_instrumental")

	end
end

function soundmenu(chosenmenuoption)
	_G.DansVoiceTitle = "Dans Sound Menu"

--//Main Menu
	local optionmenu = {
		"Basic >>",
		"Troll >>",
		"Music >>",
		"Stop all music",
		"Exit"
	}

--//Common
	local commonoptionmenu = {
		"I Need >>",
		"Directions >>",
		"Tasks >>",
		"Spot >>",
		"Others >>",
		"Back >> Main",
		"Exit"
	}
	--Common Other
	local commonothermenu = {
		"FUCK!",
		"SHIT!",
		"Help I'm dying",
		"Back >> Basic",
		"Exit"
	}
	--Common Need
	local commonneedmenu = {
		"Need Medic bag",
		"Need Ammo bag",
		"Back >> Basic",
		"Exit"
	}
	--Common Direction
	local commondirectionmenu = {
		"Upstairs",
		"Downstairs",
		"Left",
		"Right",
		"Up",
		"Jump down",
		"Down",
		"Stright",
		"Inside",
		"Hurry",
		"Time to go",
		"Careful",
		"Wrong way",
		"Right way",
		"Back >> Basic",
		"Exit"
	}

	--Common Spot
	local commonspotmenu = {
		"Dozer",
		"Shield",
		"Taser",
		"Cloaker",
		"Sniper",
		"Medic",
		"Back >> Basic",
		"Exit"
		
	}

--//Troll
	local trolloptionmenu = {
		"Enforcers >>",
		"Back >> Main",
		"Exit"
	}
	--Troll Enforcers
	local trollenforceroptionmenu = {
		"Captain >>",
		"Cloaker >>",
		"Dozer >>",
		"Medic >>",
		"Shield >>",
		"Taser >>",
		"Back >> Troll",
		"Exit"
		
	}
	--Troll Enforcers Cloaker
	local trollenforcermenucloaker = {
		"[Cloaker]Static",
		"[Cloaker]Static Stop",
		"[Cloaker]Charge",
		"[Cloaker]Christmas Charge",
		"[Cloaker]Taunt 1",
		"[Cloaker]Taunt 2",
		"Back >> Enforcer",
		"Exit"
	}
	--Troll Enforcers Captain
	local trollenforcermenucaptain = {
		"[Captain]Spawn Annoucement",
		"[Captain]Retreat",
		"[Captain]Advance",
		"[Captain]Player Spotted",
		"[Captain]Killtaunt",
		"Back >> Enforcer",
		"Exit"
	}
	--Troll Enforcers Dozer
	local trollenforcermenudozer = {
		"[Dozer]Enterance",
		"[Dozer]Elite Enterance",
		"[Dozer]Player Spotted",
		"[Dozer]Killtaunt",
		"[Dozer]Taunt",
		"[Dozer]Broken Visor",
		"Back >> Enforcer",
		"Exit"
	}
	--Troll Enforcers Medic
	local trollenforcermenumedic = {
		"[Medic]Enterance",
		"[Medic]Taunt",
		"[Medic]Heal",
		"Back >> Enforcer",
		"Exit"
	}
	--Troll Enforcers Shield
	local trollenforcermenushield = {
		"[Shield]Shield Knock",
		"Back >> Enforcer",
		"Exit"
	}
	--Troll Taser
	local trollenforcermenutaser = {
		"[Taser]Enterance",
		"[Taser]Elite Enterance",
		"[Taser]Player Spotted",
		"[Taser]Killtaunt",
		"[Taser]Taunt",
		"[Taser]Taser Tased",
		"Back >> Enforcer",
		"Exit"
	}

--//Music
	local musicmenu = {
		"[Heist]Nightclub Music",
		"[Heist][Unused]Nightclub Music",
		"[Heist]Shadow Raid",
		"[Track]Alesso",
		"[Track]I Will Give You My All",
		"[Track][XMas]A Heist Not Attempted Before",
		"[Track][XMas]A Heist Not Attempted Before Instrumental",
		"[Track][XMas]A Merry Payday Christmas",
		"[Track][XMas]A Merry Payday Christmas Instrumental",
		"Alarm",
		"Back >> Main",
		"Exit"
	}

--//Menu Stuff
	if chosenmenuoption == "MainMenu" then
		_G.DansVoiceMenuOption = {}
		for i=1,#optionmenu do
			DansVoiceMenuOption[i] ={text = optionmenu[i], data = optionmenu[i], callback = chosen}
		end
		menutoggle(1)
	end
	if chosenmenuoption == "BasicMenu" then
		_G.DansVoiceMenuOption = {}
		for i=1,#commonoptionmenu do
			DansVoiceMenuOption[i] ={text = commonoptionmenu[i], data = commonoptionmenu[i], callback = chosen}
		end
		menutoggle(2)
	end
	if chosenmenuoption == "TrollMenu" then
		_G.DansVoiceMenuOption = {}
		for i=1,#trolloptionmenu do
			DansVoiceMenuOption[i] ={text = trolloptionmenu[i], data = trolloptionmenu[i], callback = chosen}
		end
		menutoggle(2)
	end

--//Common Menu
	--Need
	if chosenmenuoption == "CommonNeed" then
		_G.DansVoiceMenuOption = {}
		for i=1,#commonneedmenu do
			DansVoiceMenuOption[i] ={text = commonneedmenu[i], data = commonneedmenu[i], callback = chosen}
		end
		menutoggle(2)
	end
	--Direction
	if chosenmenuoption == "CommonDirection" then
		_G.DansVoiceMenuOption = {}
		for i=1,#commondirectionmenu do
			DansVoiceMenuOption[i] ={text = commondirectionmenu[i], data = commondirectionmenu[i], callback = chosen}
		end
		menutoggle(2)
	end
	--Objective
	if chosenmenuoption == "CommonObjective" then
		_G.DansVoiceMenuOption = {}
		for i=1,#commonobjectivemenu do
			DansVoiceMenuOption[i] ={text = commonobjectivemenu[i], data = commonobjectivemenu[i], callback = chosen}
		end
		menutoggle(2)
	end

	--Other
	if chosenmenuoption == "CommonOther" then
		_G.DansVoiceMenuOption = {}
		for i=1,#commonothermenu do
			DansVoiceMenuOption[i] ={text = commonothermenu[i], data = commonothermenu[i], callback = chosen}
		end
		menutoggle(2)
	end

	--Spot
	if chosenmenuoption == "CommonSpot" then
		_G.DansVoiceMenuOption = {}
		for i=1,#commonspotmenu do
			DansVoiceMenuOption[i] ={text = commonspotmenu[i], data = commonspotmenu[i], callback = chosen}
		end
		menutoggle(2)
	end

--//Troll Menu
	--Enforcer
	if chosenmenuoption == "TrollEnforcer" then
		_G.DansVoiceMenuOption = {}
		for i=1,#trollenforcermenu do
			DansVoiceMenuOption[i] ={text = trollenforcermenu[i], data = trollenforcermenu[i], callback = chosen}
		end
		menutoggle(2)
	end

	--Enforcer Choose
	if chosenmenuoption == "TrollEnforcerChoose" then
		_G.DansVoiceMenuOption = {}
		for i=1,#trollenforceroptionmenu do
			DansVoiceMenuOption[i] ={text = trollenforceroptionmenu[i], data = trollenforceroptionmenu[i], callback = chosen}
		end
		menutoggle(2)
	end
	----Cloaker
	if chosenmenuoption == "TrollEnforcerCloaker" then
		_G.DansVoiceMenuOption = {}
		for i=1,#trollenforcermenucloaker do
			DansVoiceMenuOption[i] ={text = trollenforcermenucloaker[i], data = trollenforcermenucloaker[i], callback = chosen}
		end
		menutoggle(2)
	end
	----Captain
	if chosenmenuoption == "TrollEnforcerCaptain" then
		_G.DansVoiceMenuOption = {}
		for i=1,#trollenforcermenucaptain do
			DansVoiceMenuOption[i] ={text = trollenforcermenucaptain[i], data = trollenforcermenucaptain[i], callback = chosen}
		end
		menutoggle(2)
	end
	----Dozer
	if chosenmenuoption == "TrollEnforcerDozer" then
		_G.DansVoiceMenuOption = {}
		for i=1,#trollenforcermenudozer do
			DansVoiceMenuOption[i] ={text = trollenforcermenudozer[i], data = trollenforcermenudozer[i], callback = chosen}
		end
		menutoggle(2)
	end
	----Medic
	if chosenmenuoption == "TrollEnforcerMedic" then
		_G.DansVoiceMenuOption = {}
		for i=1,#trollenforcermenumedic do
			DansVoiceMenuOption[i] ={text = trollenforcermenumedic[i], data = trollenforcermenumedic[i], callback = chosen}
		end
		menutoggle(2)
	end
	----Shield
	if chosenmenuoption == "TrollEnforcerShield" then
		_G.DansVoiceMenuOption = {}
		for i=1,#trollenforcermenushield do
			DansVoiceMenuOption[i] ={text = trollenforcermenushield[i], data = trollenforcermenushield[i], callback = chosen}
		end
		menutoggle(2)
	end
	----Taser
	if chosenmenuoption == "TrollEnforcerTaser" then
		_G.DansVoiceMenuOption = {}
		for i=1,#trollenforcermenutaser do
			DansVoiceMenuOption[i] ={text = trollenforcermenutaser[i], data = trollenforcermenutaser[i], callback = chosen}
		end
		menutoggle(2)
	end

--//Music
		if chosenmenuoption == "MusicMenu" then
		_G.DansVoiceMenuOption = {}
		for i=1,#musicmenu do
			DansVoiceMenuOption[i] ={text = musicmenu[i], data = musicmenu[i], callback = chosen}
		end
		menutoggle(2)
	end

end

--//Troll Menu

function menutoggle(num)
	if num == 1 then 
		_G.DansVoiceMenuMenu = DansVoiceMenuMenu or QuickMenu:new( _G.DansVoiceTitle, "By 334Gaming", _G.DansVoiceMenuOption)
		if DansVoiceMenuMenu.visible then
			DansVoiceMenuMenu:Hide()
		elseif DansVoiceMenuMenu.visible == nil then
			DansVoiceMenuMenu.Hide()
		elseif Utils:IsInHeist() then
			DansVoiceMenuMenu:Show()
		end
	elseif num == 2 then
		_G.DansVoiceMenuMenu = QuickMenu:new( _G.DansVoiceTitle, "By 334Gaming", _G.DansVoiceMenuOption,true)
		DansVoiceMenuMenu = nil
	elseif num == 3 then
		_G.DansVoiceMenuMenu = DansVoiceMenuMenu or QuickMenu:new( _G.DansVoiceTitle, "By 334Gaming", _G.DansVoiceMenuOption)
		soundmenu("Main")
	end
end

soundmenu("MainMenu")