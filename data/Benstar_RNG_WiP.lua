function get_sets()
	--binds-- (Fix These, they sorta suck)
	send_command("bind !f2 gs equip sets.CP; gs disable back; input /echo <----- CP mantle locked ----->") -- Alt F2 locks CP mantle
	send_command("bind ^f2 gs enable back; input /echo <----- CP mantle unlocked ----->") -- Ctrl F2 unlocks CP mantle

	send_command("bind !f10 gs c toggle SJ set;") -- Alt F10 swap subjob for different DW level 0 to 25 to 15
	send_command("bind !f9 gs c toggle Melee Weapon set;") -- Alt F9 swap melee weapon from Melee to Physical range to Magical range
	send_command("bind !f8 gs c toggle Range Weapon set;") -- Alt F8 swap range weapon from Gun to Xbow to Bow
	send_command("bind !f7 gs c toggle DW set;") -- Alt F7 swap DW
	send_command("bind !f6 gs c status check;") -- Alt F6 return sets status
	send_command("bind !f5 gs equip sets.Idle.DT;")


	--Idle Sets--
	sets.Idle = {}
	sets.Idle.index = {"Standard", "DT"}
	Idle_ind = 1
	sets.Idle.Standard = {
		head="Malignance Chapeau", 			--6%
		body="Nyame Mail", 					--9%
		hands="Malignance Gloves", 			--5%
		legs="Nyame flanchard", 			--8%
		feet="Nyame sollerets", 			--7%
		neck="Bathy choker +1"
		waist="Flume Belt +1",
		left_ear="Infused Earring",
		right_ear="Etiolation Earring",
		left_ring="Defending Ring",			--10%
		right_ring="Shneddick Ring",
		back="Solemnity Cape"				--4%
										----------
										--   49%
	}
	sets.Idle.DT = {
		--Add Idle DT Set
		head="Malignance Chapeau", 			--6%
		body="Nyame Mail", 					--9%
		hands="Malignance Gloves", 			--5%
		legs="Nyame flanchard", 			--8%
		feet="Nyame sollerets", 			--7%
		neck = "Loricate Torque +1",		--6%
		waist="Flume Belt +1",
		left_ear="Infused Earring",
		right_ear="Etiolation Earring",
		left_ring="Defending Ring",			--10%
		right_ring="Shneddick Ring",
		back="Solemnity Cape"				--4%
										----------
										--   55%

	}

	--CP mantle set--
	sets.CP = {
		back = "Mecisto. Mantle"
	}

	-- START TP SETS--
	sets.TP = {}
	sets.TP.index = {"Standard", "HighAccuracy", "HybridDT"}
	TP_ind = 1

	sets.TP.Standard = {
	
	
	}
	
	sets.TP.HighAccuracy = {
	
	
	}
	
	sets.TP.HybridDT = {
	
	
	}


	-- START RANGED TP SETS --
	sets.Ranged = {}
	sets.Ranged.index = {"Standard", "HighAccuracy"}
	sets.Ranged.Standard = {
		
	}
	sets.Ranged.HighAccuracy = {
		
	}


	--Weaponskill Sets--
	sets.WS = {}
	sets.WS.index = {"Attack"}--, "Accuracy"}
	WS_ind = 1
	
	sets.Ruinator = {}
	sets.OtherAxe = {}
	sets.Rampage = {}
	sets.Evisceration = {}
	sets.SavageBlade = {
		head="Orion Beret +2",
		body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
		hands="Meg. Gloves +2",
		legs={ name="Arc. Braccae +3", augments={'Enhances "Eagle Eye Shot" effect',}},
		feet="Nyame Sollerets",
		neck={ name="Scout's Gorget +1", augments={'Path: A',}},
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Rufescent Ring",
		right_ring="Apate Ring",
		back={ name="Belenus's Cape", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
	}
	
	sets.RangedWS = {}
	sets.RangedWS.Trueflight = {
		body={ name="Cohort Cloak +1", augments={'Path: A',}},
		hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
		legs={ name="Arc. Braccae +3", augments={'Enhances "Eagle Eye Shot" effect',}},
		feet={ name="Herculean Boots", augments={'Mag. Acc.+19 "Mag.Atk.Bns."+19','INT+9','Mag. Acc.+12','"Mag.Atk.Bns."+10',}},
		neck={ name="Scout's Gorget +1", augments={'Path: A',}},
		waist="Orpheus's Sash",
		left_ear="Friomisi Earring",
		right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		left_ring="Dingir Ring",
		right_ring="Arvina Ringlet +1",
		back={ name="Belenus's Cape", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
	}
	sets.RangedWS.Wildfire = {
		
	}
	sets.RangedWS.LastStand = {
		
	}


	sets.AeolianEdge = {}
	sets.AeolianEdge = {

	}

	--Job Ability Sets--
	sets.JA = {}
	sets.JA.EES = {legs = "Arcadian Braccae +3"}
	sets.JA.Scavange = {feet = "Orion Socks +1"}
	sets.JA.SBind = {hands = "Orion Bracers +1"}
	sets.JA.Camo = {body = "Orion Jerkin +1"}
	sets.JA.SShot = {legs = "Orion Braccae +1"}
	
	sets.JA.Barrage = {
		ear1 = "Sherida Earring",
		head = "Meghanada Visor +2",
		neck = "Sanctity Necklace",
		ear2 = "Telos Earring",
		body = "Nisroch Jerkin",
		hands = "Orion Bracers +1",
		ring1 = "Apate Ring",
		ring2 = "Cacoethic Ring",
		waist = "Yemaya Belt",
		back = "Belenus's Cape",
		legs = "Pursuer's Pants",
		feet = "Meg. Jam +1"
	}
	sets.JA.VShot = {body = "Amini Caban +1"}
	sets.JA.BShot = {hands = "Amini glovelettes +1"}

	--Other special gear--
	sets.obi = {
		waist = "Hachirin-no-Obi"
	}

	sets.lightnuke = {
		left_ring = "Weatherspoon Ring"
	}

	--Precast Sets--
	sets.snapshot = {
		head="Orion Beret +2",
		body="Amini Caban +1",
		hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
		legs={ name="Adhemar Kecks", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
		feet="Meg. Jam. +2",
		waist="Impulse Belt",
		back={ name="Belenus's Cape", augments={'"Snapshot"+10',}}
	}

	--send_command('input /macro book 1;wait .1;input /macro set 1')
end

function precast(spell)
	if spell.english == "Ranged" then
		equip(sets.snapshot)
	elseif spell.type == "WeaponSkill" then
		if player.tp >= 1000 then
			if
				spell.english == "Last Stand" or spell.english == "Coronach" or spell.english == "Wildfire" or
					spell.english == "Trueflight" or
					spell.english == "Detonator" or
					spell.english == "Heavy Shot" or
					spell.english == "Slug Shot" or
					spell.english == "Sniper Shot" or
					spell.english == "Split Shot" or
					spell.english == "Hot Shot" or
					spell.english == "Jishun's Radiance" or
					spell.english == "Refulgent Arrow" or
					spell.english == "Empyreal Arrow" or
					spell.english == "Arching Arrow" or
					spell.english == "Sidewinder" or
					spell.english == "Dulling Arrow" or
					spell.english == "Piercing Arrow" or
					spell.english == "Flaming Arrow"
			 then
				if spell.target.distance <= 21.5 then
					if spell.english == "Trueflight" then
						equip(set_combine(sets.MagicGun[sets.WS.index[WS_ind]], sets.lightnuke))
						if world.day_element == "Light" or world.weather_element == "Light" then
							equip(set_combine(sets.obi, sets.lightnuke))
						end
					elseif spell.english == "Wildfire" or spell.english == "Hot Shot" or spell.english == "Flaming Arrow" then
						equip(sets.MagicGun[sets.WS.index[WS_ind]])
						if world.day_element == "Fire" or world.weather_element == "Fire" then
							equip(sets.obi)
						end
					elseif
						spell.english == "Last Stand" or spell.english == "Detonator" or spell.english == "Slug Shot" or
							spell.english == "Sniper Shot" or
							spell.english == "Split Shot" or
							spell.english == "Coronach"
					 then
						equip(sets.RangedWS[sets.WS.index[WS_ind]])
					elseif spell.english == "Jishun's Radiance" or spell.english == "Heavy Shot" or spell.english == "Arching Arrow" then
						equip(sets.RangedWScrit[sets.WS.index[WS_ind]])
					end
				else
					cancel_spell()
					windower.add_to_chat(121, "Canceled " .. spell.name .. " " .. spell.target.name .. " is Too Far")
				end
			elseif spell.target.distance <= 5.5 then
				if spell.english == "Blast Shot" or spell.english == "Blast Arrow" or spell.english == "Numbing Shot" then
					equip(sets.RangedWS[sets.WS.index[WS_ind]])
				elseif spell.english == "Ruinator" then
					equip(sets.Ruinator[sets.WS.index[WS_ind]])
				elseif spell.english == "Rampage" then
					equip(sets.Rampage[sets.WS.index[WS_ind]])
				elseif spell.english == "Aeolian Edge" then
					equip(sets.AeolianEdge)
					if world.day_element == "Wind" or world.weather_element == "Wind" then
						equip(sets.obi)
					end
				elseif spell.english == "Evisceration" then
					equip(sets.Evisceration[sets.WS.index[WS_ind]])
				elseif
					spell.english == "Bora Axe" or spell.english == "Decimation" or spell.english == "Avalanche" or
						spell.english == "Gale Axe" or
						spell.english == "Smash Axe" or
						spell.english == "Raging Axe"
				 then
					equip(sets.OtherAxe[sets.WS.index[WS_ind]])
				elseif spell.type == "WeaponSkill" then
					equip(sets.OtherWS[sets.WS.index[WS_ind]])
				end
			else
				cancel_spell()
				windower.add_to_chat(121, "Canceled " .. spell.name .. " " .. spell.target.name .. " is Too Far")
			end
		end
	elseif spell.english == "Scavange" then
		equip(sets.JA.Scavange)
	elseif spell.english == "Eagle Eye Shot" then
		equip(set_combine(sets.Ranged[sets.Ranged.index[WS_ind]], sets.JA.EES))
	elseif spell.english == "Shadowbind" then
		equip(sets.JA.SBind)
	elseif spell.english == "Camouflage" then
		equip(sets.JA.Camo)
	elseif spell.english == "Sharpshot" then
		equip(sets.JA.SShot)
	elseif spell.english == "Bounty Shot" then
		equip(sets.JA.BShot)
	end
end

function midcast(spell, act)
	if spell.english == "Ranged" then
		equip(sets.Ranged[sets.Ranged.index[WS_ind]])
		if buffactive["Velocity Shot"] then
			equip(sets.JA.VShot)
		end
		if buffactive["Barrage"] then
			equip(sets.JA.Barrage)
		end
	end
end

function aftercast(spell)
	if player.status == "Engaged" then
		equip(
			set_combine(
				sets.TP[sets.TP.index[TP_ind]][sets.SJ.index[SJ_ind]],
				sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]],
				sets.Weapon_range[sets.Weapon_range.index[Wr_ind]],
				sets.DW_mode[sets.DW_mode.index[DW_mode_ind]]
			)
		)
	else
		equip(
			set_combine(
				sets.Idle[sets.Idle.index[Idle_ind]],
				sets.Weapon_range[sets.Weapon_range.index[Wr_ind]],
				sets.DW_mode[sets.DW_mode.index[DW_mode_ind]]
			)
		)
	end
end

function status_change(new, old)
	if new == "Engaged" then
		equip(
			set_combine(
				sets.TP[sets.TP.index[TP_ind]][sets.SJ.index[SJ_ind]],
				sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]],
				sets.Weapon_range[sets.Weapon_range.index[Wr_ind]],
				sets.DW_mode[sets.DW_mode.index[DW_mode_ind]]
			)
		)
	else
		equip(
			set_combine(
				sets.Idle[sets.Idle.index[Idle_ind]],
				sets.Weapon_range[sets.Weapon_range.index[Wr_ind]],
				sets.DW_mode[sets.DW_mode.index[DW_mode_ind]]
			)
		)
	end
end

function self_command(command)
	if command == "toggle TP set" then
		TP_ind = TP_ind + 1
		if TP_ind > #sets.TP.index then
			TP_ind = 1
		end
		send_command("@input /echo <----- TP Set changed to " .. sets.TP.index[TP_ind] .. " ----->")
		if TP_ind > 1 then
			WS_ind = 2
		else
			WS_ind = 1
		end
		send_command("@input /echo <----- WS set changed to " .. sets.WS.index[WS_ind] .. " ----->")
		send_command("@input /echo <----- SJ Set changed to " .. sets.SJ.index[SJ_ind] .. " ----->")
		equip(
			set_combine(
				sets.TP[sets.TP.index[TP_ind]][sets.SJ.index[SJ_ind]],
				sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]],
				sets.Weapon_range[sets.Weapon_range.index[Wr_ind]],
				sets.DW_mode[sets.DW_mode.index[DW_mode_ind]]
			)
		)
	elseif command == "toggle SJ set" then
		SJ_ind = SJ_ind + 1
		if SJ_ind > #sets.SJ.index then
			SJ_ind = 1
		end
		send_command("@input /echo <----- TP Set changed to " .. sets.TP.index[TP_ind] .. " ----->")
		send_command("@input /echo <----- WS set changed to " .. sets.WS.index[WS_ind] .. " ----->")
		send_command("@input /echo <----- SJ Set changed to " .. sets.SJ.index[SJ_ind] .. " ----->")
		equip(
			set_combine(
				sets.TP[sets.TP.index[TP_ind]][sets.SJ.index[SJ_ind]],
				sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]],
				sets.Weapon_range[sets.Weapon_range.index[Wr_ind]],
				sets.DW_mode[sets.DW_mode.index[DW_mode_ind]]
			)
		)
	elseif command == "toggle Melee Weapon set" then
		Wm_ind = Wm_ind + 1
		if Wm_ind > #sets.Weapon_melee.index then
			Wm_ind = 1
		end
		send_command("@input /echo <----- Melee weapon changed to " .. sets.Weapon_melee.index[Wm_ind] .. " ----->")
		send_command("@input /echo <----- Range weapon changed to " .. sets.Weapon_range.index[Wr_ind] .. " ----->")
		equip(
			set_combine(
				sets.TP[sets.TP.index[TP_ind]][sets.SJ.index[SJ_ind]],
				sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]],
				sets.Weapon_range[sets.Weapon_range.index[Wr_ind]],
				sets.DW_mode[sets.DW_mode.index[DW_mode_ind]]
			)
		)
	elseif command == "toggle Range Weapon set" then
		Wr_ind = Wr_ind + 1
		if Wr_ind > #sets.Weapon_range.index then
			Wr_ind = 1
		end
		send_command("@input /echo <----- Melee weapon changed to " .. sets.Weapon_melee.index[Wm_ind] .. " ----->")
		send_command("@input /echo <----- Range weapon changed to " .. sets.Weapon_range.index[Wr_ind] .. " ----->")
		equip(
			set_combine(
				sets.TP[sets.TP.index[TP_ind]][sets.SJ.index[SJ_ind]],
				sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]],
				sets.Weapon_range[sets.Weapon_range.index[Wr_ind]],
				sets.DW_mode[sets.DW_mode.index[DW_mode_ind]]
			)
		)
	elseif command == "toggle DW set" then
		DW_mode_ind = DW_mode_ind + 1
		if DW_mode_ind > #sets.DW_mode.index then
			DW_mode_ind = 1
		end
		send_command("@input /echo <----- DW status changed to " .. sets.DW_mode.index[DW_mode_ind] .. " ----->")
		equip(
			set_combine(
				sets.TP[sets.TP.index[TP_ind]][sets.SJ.index[SJ_ind]],
				sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]],
				sets.Weapon_range[sets.Weapon_range.index[Wr_ind]],
				sets.DW_mode[sets.DW_mode.index[DW_mode_ind]]
			)
		)
	elseif command == "toggle idle set" then
		Idle_ind = Idle_ind + 1
		if Idle_ind > #sets.Idle.index then
			Idle_ind = 1
		end
		send_command("@input /echo <----- Idle Set changed to " .. sets.Idle.index[Idle_ind] .. " ----->")
		equip(
			set_combine(
				sets.Idle[sets.Idle.index[Idle_ind]],
				sets.Weapon_range[sets.Weapon_range.index[Wr_ind]],
				sets.DW_mode[sets.DW_mode.index[DW_mode_ind]]
			)
		)
	elseif command == "toggle pdt set" then
		equip(set.PDT)
		send_command("@input /echo <----- PDT set Equipped ----->")
	elseif command == "toggle mdt set" then
		equip(set.MDT)
		send_command("@input /echo <----- MDT set Equipped ----->")
	elseif command == "status check" then
		send_command("@input /echo <----- Melee weapon changed to " .. sets.Weapon_melee.index[Wm_ind] .. " ----->")
		send_command("@input /echo <----- Range weapon changed to " .. sets.Weapon_range.index[Wr_ind] .. " ----->")
		send_command("@input /echo <----- SJ Set changed to " .. sets.SJ.index[SJ_ind] .. " ----->")
		send_command("@input /echo <----- TP Set changed to " .. sets.TP.index[TP_ind] .. " ----->")
		send_command("@input /echo <----- WS set changed to " .. sets.WS.index[WS_ind] .. " ----->")
	end
end
