function get_sets()
	send_command("bind f9 gs c toggle TP set")
	send_command("bind f10 gs c toggle Idle set")
	send_command("bind f11 gs c toggle CDC set")
	send_command("bind f12 gs c toggle Req set")
	send_command("bind !f12 gs c toggle Rea set")
	send_command("bind ^` gs c toggle MB set")

	function file_unload()
		send_command("unbind ^f9")
		send_command("unbind ^f10")
		send_command("unbind ^f11")
		send_command("unbind ^f12")
		send_command("unbind ^`")

		send_command("unbind !f9")
		send_command("unbind !f10")
		send_command("unbind !f11")
		send_command("unbind !f12")

		send_command("unbind f9")
		send_command("unbind f10")
		send_command("unbind f11")
		send_command("unbind f12")
	end

	TP_Body = "Emicho Haubert +1"
	WSD_Legs = {name = "Valor. Hose", augments = {"Attack+27", "Weapon skill damage +5%", "DEX+8", "Accuracy+15"}}
	WSD_Hands = {
		name = "Valorous Mitts",
		augments = {"Accuracy+17 Attack+17", "Weapon skill damage +3%", "VIT+9", "Accuracy+3", "Attack+12"}
	}
	WSD_Body = {name = "Valorous Mail", augments = {"Accuracy+25", "Weapon skill damage +4%", "DEX+8", "Attack+5"}}
	WSD_Head = {name = "Valorous Mask", augments = {"Accuracy+18", "Weapon skill damage +3%", "STR+4", "Attack+11"}}
	--Idle Sets--
	sets.Idle = {}

	sets.Idle.index = {"Standard", "DT"}
	Idle_ind = 1

	sets.Idle.Standard = {
		ammo = "Staunch Tathlum",
		head = {
			name = "Valorous Mask",
			augments = {"INT+6", '"Dbl.Atk."+1', '"Treasure Hunter"+1', "Accuracy+6 Attack+6", 'Mag. Acc.+16 "Mag.Atk.Bns."+16'}
		},
		neck = "Sanctity Necklace",
		ear1 = "Genmei earring",
		ear2 = "Infused Earring",
		body = "Tartarus Platemail",
		hands = "Sulev. Gauntlets +2",
		ring1 = "Defending ring",
		ring2 = "Vocane Ring",
		waist = "Flume Belt +1",
		legs = "Carmine Cuisses +1",
		feet = "Sulevia's Leggings +2",
		back = "Moonbeam Cape"
	}

	sets.Idle.DT = {
		ammo = "Staunch Tathlum",
		head = "Sulevia's Mask +2",
		neck = "Loricate Torque +1",
		ear1 = "Genmei Earring",
		ear2 = "Cessance Earring",
		body = "Tartarus Platemail",
		hands = "Sulev. Gauntlets +2",
		ring1 = "Vocane Ring",
		ring2 = "Defending  Ring",
		back = "Moonbeam Cape",
		waist = "Flume belt +1",
		legs = "Sulevia's Cuisses +1",
		feet = "Sulevia's Leggings +2"
	}

	--TP Sets--
	sets.TP = {}

	sets.TP.index = {"Standard", "AccuracyFull", "DT", "DTAccuracy"}
	--1=Standard, 2 =AccuracyFull, 3=DT, 4=DTAccuracy--

	TP_ind = 1
	sets.TP.Standard = {
		ammo = "Ginsen",
		head = "Flam. Zucchetto +2",
		body = TP_Body,
		hands = "Emicho Gauntlets +1",
		legs = {name = "Valor. Hose", augments = {"Accuracy+23 Attack+23", '"Dbl.Atk."+3', "VIT+4", "Attack+5"}},
		feet = "Flam. Gambieras +2",
		neck = "Lissome Necklace",
		waist = "Ioskeha Belt +1",
		left_ear = "Sherida earring",
		right_ear = "Telos Earring",
		left_ring = "Niqmaddu Ring",
		right_ring = "Flamma Ring",
		back = "Brigantia's Mantle"
	}

	sets.TP.AccuracyFull = {
		ammo = "Seeth. Bomblet +1",
		head = {name = "Valorous Mask", augments = {"Accuracy+30", '"Store TP"+4', "AGI+10", "Attack+13"}},
		neck = "Sanctity Necklace",
		ear1 = "Dignitary's Earring",
		ear2 = "Telos Earring",
		body = TP_Body,
		hands = "Emicho Gauntlets +1",
		ring1 = "Cacoethic Ring",
		ring2 = "Flamma Ring",
		back = "Brigantia's Mantle",
		waist = "Ioskeha Belt +1",
		legs = {name = "Valor. Hose", augments = {"Accuracy+23 Attack+23", '"Dbl.Atk."+3', "VIT+4", "Attack+5"}},
		feet = "Flam. Gambieras +2"
	}

	sets.TP.DT = {
		ammo = "Staunch Tathlum",
		head = "Sulevia's Mask +2",
		neck = "Loricate Torque +1",
		left_ear = "Sherida earring",
		right_ear = "Telos Earring",
		body = "Tartarus Platemail",
		hands = "Sulev. Gauntlets +2",
		ring1 = "Vocane Ring",
		ring2 = "Defending Ring",
		back = "Moonbeam Cape",
		waist = "Flume belt +1",
		legs = "Sulevia's Cuisses +2",
		feet = "Sulevia's Leggings +2"
	}

	sets.TP.DTAccuracy = {
		ammo = "Ginsen",
		head = "Sulevia's Mask +2",
		neck = "Lissome Necklace",
		left_ear = "Sherida earring",
		right_ear = "Telos Earring",
		body = "Tartarus Platemail",
		hands = "Sulev. Gauntlets +2",
		ring1 = "Petrov Ring",
		ring2 = "Flamma Ring",
		back = "Brigantia's Mantle",
		waist = "Ioskeha Belt +1",
		legs = "Sulevia's Cuisses +2",
		feet = "Sulevia's Leggings +2"
	}

	--Weaponskill Sets--
	sets.WS = {}

	sets.Stardiver = {}

	sets.Stardiver.Index = {"Attack"}

	Stardiver_ind = 1

	sets.Stardiver.Attack = {
		ammo = "Floestone",
		head = "Flam. Zucchetto +2",
		neck = "Fotia Gorget",
		ear2 = "Moonshade Earring",
		ear1 = "Sherida Earring",
		body = "Emicho Haubert +1",
		hands = "Sulev. Gauntlets +2",
		ring1 = "Niqmaddu Ring",
		ring2 = "Regal Ring",
		back = "Brigantia's Mantle",
		waist = "Fotia Belt",
		legs = "Sulevia's Cuisses +2",
		feet = "Flam. Gambieras +2"
	}

	sets.ImpulseDrive = {}

	sets.ImpulseDrive.Index = {"Attack"}

	ImpulseDrive_ind = 1

	sets.ImpulseDrive.Attack = {
		ammo = "Knobkierrie",
		head = WSD_Head,
		neck = "Fotia Gorget",
		ear1 = "Moonshade Earring",
		ear2 = "Ishvara Earring",
		body = WSD_Body,
		hands = WSD_Hands,
		ring1 = "Regal Ring",
		ring2 = "Niqmaddu Ring",
		back = "Brigantia's Mantle",
		waist = "Grunfeld Rope",
		legs = WSD_Legs,
		feet = "Sulevia's Leggings +2"
	}

	sets.CT = {}

	sets.CT.Index = {"Attack"}

	CT_ind = 1

	sets.CT.Attack = {
		ammo = "Knobkierrie",
		head = WSD_Head,
		neck = "Fotia Gorget",
		ear1 = "Moonshade Earring",
		ear2 = "Ishvara Earring",
		body = WSD_Body,
		hands = WSD_Hands,
		ring1 = "Regal Ring",
		ring2 = "Niqmaddu Ring",
		back = "Brigantia's Mantle",
		waist = "Grunfeld Rope",
		legs = WSD_Legs,
		feet = "Sulevia's Leggings +2"
	}

	sets.Drakesbane = {}

	sets.Drakesbane.Index = {"Attack"}

	Drakesbane = 1

	sets.Drakesbane.Attack = {
		ammo = "Floestone",
		head = "Flam. Zucchetto +2",
		neck = "Caro Necklace",
		ear2 = "Moonshade Earring",
		ear1 = "Sherida Earring",
		body = "Sulevia's Plate. +2",
		hands = WSD_Hands,
		ring1 = "Niqmaddu Ring",
		ring2 = "Regal Ring",
		back = "Brigantia's Mantle",
		waist = "Grunfeld Rope",
		legs = "Sulevia's Cuisses +2",
		feet = "Thereoid Greaves"
	}

	--Ninja Magic Sets--
	sets.NINMagic = {}

	sets.NINMagic.Utsusemi = {
		head = "Dampening Tam",
		neck = "Loricate Torque +1",
		ar1 = "Brutal Earring",
		ear2 = "Cessance Earring",
		body = "Emet harness +1",
		hands = "Sulev. Gauntlets +2",
		ring1 = "Vocane Ring",
		ring2 = "Petrov Ring",
		back = "Moonbeam Cape",
		waist = "Flume belt +1",
		legs = "Herculean Trousers",
		feet = "Valorous Greaves"
	}

	--Utility Sets--
	sets.Utility = {}

	sets.Utility.Weather = {waist = "Hachirin-no-obi", back = "Twilight Cape"}

	sets.Utility.MB = {
		head = "Herculean Helm",
		body = "Amalric Doublet",
		ear1 = "Static Earring",
		ring1 = "Locus Ring",
		ring2 = "Mujin Band"
	}

	sets.Utility.Stoneskin = {
		head = "Haruspex hat",
		neck = "Stone Gorget",
		ear1 = "Loquac. earring",
		ear2 = "Earthcry earring",
		body = "Assim. jubbah +1",
		hands = "Stone Mufflers",
		ring1 = "Rahab ring",
		back = "Swith cape",
		waist = "Siegel sash",
		legs = "Haven hose",
		feet = "Valorous Greaves"
	}

	sets.Utility.Phalanx = {
		head = "Haruspex hat",
		neck = "Colossus's torque",
		ear1 = "Loquac. earring",
		ear2 = "Augment. earring",
		body = "Assim. jubbah +1",
		hands = "Ayao's gages",
		ring1 = "Rahab ring",
		back = "Swith cape",
		waist = "Pythia sash +1",
		legs = "Portent pants",
		feet = "Valorous Greaves"
	}

	sets.Utility.Steps = {
		ammo = "Ginsen",
		head = "Boii Mask +1",
		body = TP_Body,
		hands = "Rawhide Gloves",
		legs == "Odyssean Cuisses",
		feet = "Valorous Greaves",
		neck = "Subtlety Spec.",
		waist = "Chaac Belt",
		left_ear = "Heartseeker Earring",
		right_ear = "Dignitary's Earring",
		left_ring = "Yacuruna Ring",
		right_ring = "Cacoethic Ring",
		back = "Brigantia's Mantle"
	}

	sets.Utility.Doomed = {waist = "Gishdubar Sash", ring1 = "Saida Ring"}

	sets.Utility.Sleeping = {neck = "Opo-Opo Necklace"}
	--Job Ability Sets--

	sets.JA = {}
	sets.JA.Jump = {
		ammo = "Ginsen",
		head = "Sulevia's Mask +2",
		body = TP_Body,
		hands = {name = "Emicho Gauntlets", augments = {"HP+50", "DEX+10", "Accuracy+15"}},
		legs = {name = "Valor. Hose", augments = {"Accuracy+23 Attack+23", '"Dbl.Atk."+3', "VIT+4", "Attack+5"}},
		feet = "Flam. Gambieras +2",
		neck = "Lissome Necklace",
		waist = "Ioskeha Belt +1",
		left_ear = "Cessance Earring",
		right_ear = "Telos Earring",
		left_ring = "Petrov Ring",
		right_ring = "Flamma Ring",
		back = "Brigantia's Mantle"
	}

	sets.JA.Angon = {
		ammo = "Angon",
		ear1 = "Dragoon's Earring",
		hands = "Ptero. Fin. G. +1",
		waist = "Chaac Belt",
		Hands = "Volte Bracers"
	} -- Angon, Relic Hands, and that dumb earring in Mamook if you feel like it
	sets.JA.AncientCircle = {legs = "Vishap Brais +1"} -- Artifact Legs

	sets.JA.SpiritLink = {
		head = "Vishap Armet +1",
		ear1 = "Pratik Earring",
		hands = "Pel. Vambraces +1",
		feet = "Ptero. Greaves +1"
	} -- Spirit Link/Empathy gear go here
	sets.JA.SpiritSurge = {
		neck = "Chanoix's Gorget",
		ear1 = "Anastasi Earring",
		ear2 = "Lancer's Earring",
		body = "Ptero. Mail +1",
		hands = "Despair Fin. Gaunt.",
		back = "Brigantia's Mantle",
		legs = "Vishap Brais +1",
		feet = "Ptero. Greaves +1"
	} -- Relic Body and Wyvern HP go here
	sets.JA.SteadyWing = sets.JA.SpiritSurge -- Wyvern HP
	sets.JA.SteadyWing["Body"] = "Valorous Mail" -- Path D Valorous Mail
	--Precast Sets--
	sets.precast = {}

	sets.precast.FC = {}

	sets.precast.FC.Standard = {
		ammo = "Sapience Orb",
		head = "Herculean Helm",
		body = "Taeon Tabard",
		hands = "Leyline Gloves",
		legs = "Orvail Pants +1",
		feet = "Amalric Nails +1",
		neck = "Voltsurge Torque",
		waist = "Witful Belt",
		left_ear = "Etiolation Earring",
		right_ear = "Loquac. Earring",
		left_ring = "Rahab Ring",
		right_ring = "Kishar Ring",
		back = "Swith Cape"
	}

	sets.Breath = {
		ammo = "Staunch Tathlum",
		head = "Ptero. Armet +1",
		neck = "Lancer's Torque",
		ear1 = "Anastasi Earring",
		ear2 = "Lancer's Earring",
		body = TP_Body,
		hands = "Despair Fin. Gaunt.",
		back = "Brigantia's Mantle",
		waist = "Glassblower's Belt",
		legs = "Vishap Brais +1",
		feet = "Ptero. Greaves +1"
	}
end

function precast(spell)
	if spell.type == "Magic" then
		equip(sets.precast.FC.Standard)
	elseif spell.english == "Stardiver" then
		equip(sets.Stardiver.Attack)
	elseif spell.english == "Impulse Drive" then
		equip(sets.ImpulseDrive.Attack)
	elseif spell.english == "Drakesbane" then
		equip(sets.Drakesbane.Attack)
	elseif spell.english == "Camlann's Torment" then
		equip(sets.CT.Attack)
	elseif spell.english == "Box Step" then
		equip(sets.Utility.Steps)
	elseif spell.name == "Dismiss" and pet.hpp < 100 then
		cancel_spell()
		windower.add_to_chat(50, "  " .. pet.name .. " is below full HP (<pethpp>), cancelling Dismiss!")
	elseif spell.name == "Call Wyvern" then
		if pet.isvalid then
			cancel_spell()
			send_command('input /ja "Spirit Link" <me>')
		else
			equip(sets.JA.SpiritSurge) -- Relic Body goes here; can just use Spirit Surge set if you have it augmented
		end
	elseif spell.name == "Spirit Surge" then
		equip(sets.JA.SpiritSurge)
	elseif spell.name == "Steady Wing" then
		equip(sets.JA.SteadyWing)
	elseif spell.name == "Angon" then
		equip(sets.JA.Angon)
	elseif spell.name == "Ancient Circle" then
		equip(sets.JA.AncientCircle)
	elseif spell.name == "Spirit Link" then
		if pet.isvalid then
			equip(sets.JA.SpiritLink)
		else
			cancel_spell()
			send_command('input /ja "Call Wyvern" <me>')
		end
	elseif string.find(spell.name, "Jump") == "Jump" then
		if not pet.isvalid then
			if spell.name == "Spirit Jump" then
				cancel_spell()
				send_command('input /ja "Jump" <t>')
				return
			elseif spell.name == "Soul Jump" then
				cancel_spell()
				send_command('input /ja "High Jump" <t>')
				return
			end
		end
		equip(sets.JA.Jump)
	elseif spell.type == "WeaponSkill" then
		equip(sets.Drakesbane.Attack)
	end
end

function midcast(spell, act)
	if spell.skill == "Ninjutsu" then
		equip(sets.NINMagic.Nuke)
		if spell.element == world.day_element or spell.element == world.weather_element then
			equip(set_combine(sets.NINMagic.Nuke, sets.Utility.Weather))
		end
	end

	if spell.english == "Utsusemi: Ichi" then
		equip(sets.NINMagic.Utsusemi)
		if buffactive["Copy Image (3)"] then
			send_command("@wait 0.3; input //cancel Copy Image*")
		end
		if buffactive["Copy Image (2)"] then
			send_command("@wait 0.3; input //cancel Copy Image*")
		end
		if buffactive["Copy Image (1)"] then
			send_command("@wait 0.3; input //cancel Copy Image*")
		end
		if buffactive["Copy Image"] then
			send_command("@wait 0.3; input //cancel Copy Image*")
		end
	end

	if spell.english == "Utsusemi: Ni" or spell.english == "Utsusemi: San" then
		equip(sets.NINMagic.Utsusemi)
	end
end

-- Pet Change: Occurs when your Pet is summoned or killed.
function pet_change(pet, gain)
	if gain == false and pet.name then
		-- General announcement for when your Wyvern is killed, Dimissed, or eaten by Spirit Surge
		windower.add_to_chat(50, " *** " .. string.upper(pet.name) .. " IS DEAD YO ***")
	end
end

-- Pet Midcast: If GearSwap sees your pet readying a WS, this occurs
function pet_midcast(spell)
	if string.find(spell.name, " Breath") then
		--equip(sets.Breath)
		windower.send_command("wait 1.2;gs c petcast")
	-- Wyvern Breath Delay: 1.25s http://forum.square-enix.com/ffxi/threads/47481
	end
end

function aftercast(spell)
	if player.status == "Engaged" then
		equip(sets.TP[sets.TP.index[TP_ind]])
		if buffactive["doom"] or buffactive["curse"] then
			equip(sets.Utility.Doom)
		end
		if buffactive["terror"] or buffactive["stun"] or buffactive["sleep"] then
			equip(sets.TP.DT)
		end
	else
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
		if buffactive["doom"] or buffactive["curse"] then
			equip(sets.Utility.Doom)
		end
		if buffactive["terror"] or buffactive["stun"] or buffactive["sleep"] then
			equip(sets.TP.DT)
		end
	end
end

function status_change(new, old)
	if player.status == "Engaged" then
		equip(sets.TP[sets.TP.index[TP_ind]])
	else
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
	end
end
function self_command(command)
	if command == "toggle TP set" then
		TP_ind = TP_ind + 1
		if TP_ind > #sets.TP.index then
			TP_ind = 1
		end
		send_command("@input /echo <----- TP Set changed to " .. sets.TP.index[TP_ind] .. " ----->")
		equip(sets.TP[sets.TP.index[TP_ind]])
	elseif command == "toggle Idle set" then
		Idle_ind = Idle_ind + 1
		if Idle_ind > #sets.Idle.index then
			Idle_ind = 1
		end
		send_command("@input /echo <----- Idle Set changed to " .. sets.Idle.index[Idle_ind] .. " ----->")
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
	elseif command == "equip TP set" then
		equip(sets.TP[sets.TP.index[TP_ind]])
	elseif command == "equip Idle set" then
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
	end
end
