function get_sets()
	send_command("bind f9 gs c toggle TP set")
	send_command("bind f10 gs c toggle Idle set")
	send_command("bind f11 gs c toggle Weapons")
	function file_unload()
		send_command("unbind ^f9")
		send_command("unbind ^f10")
		send_command("unbind ^f11")

		send_command("unbind !f9")
		send_command("unbind !f10")
		send_command("unbind !f11")

		send_command("unbind f9")
		send_command("unbind f10")
		send_command("unbind f11")
	end

	--TP_Body = { name="Valorous Mail", augments={'Accuracy+30','"Dbl.Atk."+4','DEX+7',}}
	TP_Body = "Ken. Samue"
	WSD_Legs = {name = "Valor. Hose", augments = {"Attack+27", "Weapon skill damage +5%", "DEX+8", "Accuracy+15"}}
	WSD_Hands = {
		name = "Valorous Mitts",
		augments = {"Accuracy+17 Attack+17", "Weapon skill damage +3%", "VIT+9", "Accuracy+3", "Attack+12"}
	}
	WSD_Body = "Sakonji Domaru +3"
	WSD_Head = {name = "Valorous Mask", augments = {"Accuracy+18", "Weapon skill damage +3%", "STR+4", "Attack+11"}}
	WSD_Feet = {name = "Valorous Greaves", augments = {"Attack+21", "Weapon skill damage +5%"}}

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
		body = "Hizamaru haramaki +1",
		hands = "Kurys Gloves",
		legs = {
			name = "Herculean Trousers",
			augments = {'Mag. Acc.+16 "Mag.Atk.Bns."+16', "Weapon skill damage +2%", "Mag. Acc.+14", '"Mag.Atk.Bns."+13'}
		},
		feet = "Amm Greaves",
		neck = "Sanctity necklace",
		waist = "Flume Belt +1",
		left_ear = "Infused Earring",
		right_ear = "Genmei Earring",
		right_ring = "Vocane Ring",
		left_ring = "Defending Ring",
		back = "Moonbeam Cape"
	}

	sets.Idle.DT = {
		ammo = "Staunch Tathlum",
		head = "Ynglinga Sallet",
		neck = "Loricate Torque +1",
		left_ear = "Infused Earring",
		right_ear = "Genmei Earring",
		body = "Tartarus Platemail",
		hands = "Kurys Gloves",
		right_ring = "Vocane Ring",
		left_ring = "Defending Ring",
		back = "Moonbeam Cape",
		waist = "Flume Belt +1",
		legs = "Ken. Hakama",
		feet = "Amm Greaves"
	}

	--TP Sets--
	sets.TP = {}

	sets.TP.index = {"Standard", "AccuracyMid", "AccuracyFull", "DT", "DTAccuracy"}
	--1=Standard, 2 = AccuracyMid, 3=AccuracyFull, 4=DT, 5=DTAccuracy--

	TP_ind = 1
	sets.TP.Standard = {
		ammo = "Ginsen",
		head = "Flam. Zucchetto +2",
		neck = "Moonbeam Nodowa",
		ear1 = "Cessance Earring",
		ear2 = "Telos Earring",
		body = TP_Body,
		hands = "Wakido Kote +3",
		right_ring = "Niqmaddu Ring",
		left_ring = "Flamma Ring",
		back = "Takaha Mantle",
		waist = "Ioskeha belt +1",
		legs = "Ken. Hakama",
		feet = "Flam. Gambieras +2"
	}

	sets.TP.AccuracyMid = {
		ammo = "Ginsen",
		head = "Flam. Zucchetto +2",
		neck = "Moonbeam Nodowa",
		ear1 = "Cessance Earring",
		ear2 = "Telos Earring",
		body = TP_Body,
		hands = "Wakido Kote +3",
		right_ring = "Niqmaddu Ring",
		left_ring = "Flamma Ring",
		back = "Takaha Mantle",
		waist = "Ioskeha belt +1",
		legs = "Ken. Hakama",
		feet = "Flam. Gambieras +2"
	}

	sets.TP.AccuracyFull = {
		ammo = "Ginsen",
		head = "Flam. Zucchetto +2",
		neck = "Moonbeam Nodowa",
		ear1 = "Dignitary's Earring",
		ear2 = "Telos Earring",
		body = TP_Body,
		hands = "Wakido Kote +3",
		right_ring = "Cacoethic Ring",
		left_ring = "Flamma Ring",
		back = "Takaha Mantle",
		waist = "Ioskeha belt +1",
		legs = "Ken. Hakama",
		feet = "Flam. Gambieras +2"
	}

	sets.TP.DT = {
		ammo = "Staunch Tathlum",
		head = "Ynglinga Sallet",
		neck = "Loricate Torque +1",
		ear1 = "Cessance Earring",
		ear2 = "Telos Earring",
		body = "Tartarus Platemail",
		hands = "Kurys Gloves",
		right_ring = "Vocane Ring",
		left_ring = "Defending Ring",
		back = "Moonbeam Cape",
		waist = "Flume Belt +1",
		legs = "Ken. Hakama",
		feet = "Amm Greaves"
	}

	sets.TP.DTAccuracy = {
		ammo = "Ginsen",
		head = "Ynglinga Sallet",
		neck = "Moonbeam Nodowa",
		ear2 = "Telos Earring",
		ear1 = "Odnowa Earring +1",
		body = "Tartarus Platemail",
		hands = "Wakido Kote +3",
		right_ring = "Niqmaddu Ring",
		left_ring = "Chirich Ring",
		back = "Takaha Mantle",
		waist = "Ioskeha belt +1",
		legs = "Ken. Hakama",
		feet = "Amm Greaves"
	}

	--Weaponskill Sets--
	sets.WS = {}

	sets.OneHit = {}

	sets.OneHit.Attack = {
		ammo = "Knobkierrie",
		head = WSD_Head,
		body = WSD_Body,
		hands = WSD_Hands,
		legs = "Wakido Haidate +3",
		feet = WSD_Feet,
		neck = "Caro Necklace",
		waist = "Grunfeld Rope",
		left_ear = "Ishvara Earring",
		right_ear = {name = "Moonshade Earring", augments = {"Accuracy+4", "TP Bonus +25"}},
		right_ring = "Regal Ring",
		left_ring = "Niqmaddu Ring",
		back = "Smertrios's Mantle"
	}

	sets.MultiHit = {}

	sets.MultiHit.Attack = {
		ammo = "Knobkierrie",
		head = "Flam. Zucchetto +2",
		body = TP_Body,
		hands = WSD_Hands,
		legs = "Ken. Hakama",
		feet = "Flam. Gambieras +2",
		neck = "Caro Necklace",
		waist = "Grunfeld Rope",
		left_ear = "Telos Earring",
		right_ear = {name = "Moonshade Earring", augments = {"Accuracy+4", "TP Bonus +25"}},
		right_ring = "Regal Ring",
		left_ring = "Niqmaddu Ring",
		back = "Smertrios's Mantle"
	}

	sets.HybridWS = {}

	sets.HybridWS.Attack = {
		ammo = "Knobkierrie",
		head = WSD_Head,
		body = WSD_Body,
		hands = WSD_Hands,
		legs = "Wakido Haidate +3",
		feet = "Founder's Greaves",
		neck = "Fotia Gorget",
		waist = "Fotia Belt",
		left_ear = "Friomisi earring",
		right_ear = {name = "Moonshade Earring", augments = {"Accuracy+4", "TP Bonus +25"}},
		right_ring = "Regal Ring",
		left_ring = "Niqmaddu Ring",
		back = "Smertrios's Mantle"
	}

	--Ninja Magic Sets--
	sets.NINMagic = {}

	sets.NINMagic.Utsusemi = {
		head = "Dampening Tam",
		neck = "Loricate Torque +1",
		ear1 = "Brutal Earring",
		ear2 = "Cessance Earring",
		body = "Emet harness +1",
		hands = "Sulev. Gauntlets +2",
		right_ring = "Vocane Ring",
		left_ring = "Petrov Ring",
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
		right_ring = "Locus Ring",
		left_ring = "Mujin Band"
	}

	sets.Utility.Stoneskin = {
		head = "Haruspex hat",
		neck = "Stone Gorget",
		ear1 = "Loquac. earring",
		ear2 = "Earthcry earring",
		body = "Assim. jubbah +1",
		hands = "Stone Mufflers",
		right_ring = "Rahab ring",
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
		right_ring = "Rahab ring",
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
		back = "Takaha Mantle"
	}

	sets.Utility.Doomed = {waist = "Gishdubar Sash", right_ring = "Saida Ring"}

	sets.Utility.Enmity = {
		ammo = "Sapience Orb",
		ear2 = "Friomisi Earring",
		back = "Weard Mantle",
		waist = "Trance belt",
		left_ring = "Supershear Ring",
		neck = "Unmoving Collar +1",
		hands = "Souveran Handschuhs",
		feet = "Souveran Schuhs +1",
		body = "Souveran Cuirass",
		right_ring = "Petrov Ring",
		legs = "Souveran Diechlings +1",
		head = "Souveran Schaller"
	}

	sets.Utility.Sleeping = {neck = "Opo-Opo Necklace"}
	--Job Ability Sets--

	sets.JA = {}

	sets.JA.Meditate = {back = "Smertrios's Mantle"}

	sets.JA.Hasso = {}

	sets.JA.BladeBash = {
		waist = "Chaac Belt",
		Hands = "Volte Bracers",
		head = {
			name = "Valorous Mask",
			augments = {"INT+6", '"Dbl.Atk."+1', '"Treasure Hunter"+1', "Accuracy+6 Attack+6", 'Mag. Acc.+16 "Mag.Atk.Bns."+16'}
		}
	}

	sets.JA.Sekkanoki = {}

	sets.JA.Seigan = {}

	sets.JA.BloodRage = {}

	sets.JA.Tomahawk = {
		ammo = "Throwing Tomahawk",
		feet = "Agoge Calligae",
		waist = "Chaac Belt",
		Hands = "Volte Bracers",
		head = {
			name = "Valorous Mask",
			augments = {"INT+6", '"Dbl.Atk."+1', '"Treasure Hunter"+1', "Accuracy+6 Attack+6", 'Mag. Acc.+16 "Mag.Atk.Bns."+16'}
		}
	}

	sets.JA.Restraint = {}
	--Precast Sets--
	sets.precast = {}

	sets.precast.FC = {}

	sets.precast.FC.Standard = {
		ammo = "Sapience Orb",
		head = "Carmine Mask +1",
		body = "Odyssean Chestplate",
		hands = "Leyline Gloves",
		legs = {
			name = "Odyssean Cuisses",
			augments = {'Mag. Acc.+15 "Mag.Atk.Bns."+15', '"Fast Cast"+3', "INT+1", "Mag. Acc.+9", '"Mag.Atk.Bns."+3'}
		},
		feet = "Odyssean Greaves",
		neck = "Voltsurge Torque",
		waist = "Witful Belt",
		left_ear = "Etiolation Earring",
		right_ear = "Loquac. Earring",
		left_ring = "Rahab Ring",
		right_ring = "Kishar Ring",
		back = "Swith Cape"
	}
end

function precast(spell)
	if spell.type == "Magic" then
		equip(sets.precast.FC.Standard)
	elseif spell.english == "Tachi: Fudo" or spell.english == "Tachi: Kasha" or spell.english == "Tachi: Shoha" then
		equip(sets.OneHit.Attack)
	elseif spell.english == "Tachi: Jinpu" then
		equip(sets.HybridWS.Attack)
	elseif spell.english == "Stardiver" or spell.english == "Tachi: Rana" then
		equip(sets.MultiHit.Attack)
	elseif spell.english == "Meditate" then
		equip(set_combine(sets.Utility.Enmity, sets.JA.Meditate))
	elseif spell.english == "Hasso" then
		equip(set_combine(sets.Utility.Enmity, sets.JA.Hasso))
	elseif spell.english == "Blade Bash" then
		equip(set_combine(sets.Utility.Enmity, sets.JA.BladeBash))
	elseif spell.english == "Tomahawk" then
		equip(set_combine(sets.Utility.Enmity, sets.JA.Tomahawk))
	elseif spell.english == "Bloodrage" then
		equip(set_combine(sets.Utility.Enmity, sets.JA.BloodRage))
	elseif spell.english == "Sekkanoki" then
		equip(set_combine(sets.Utility.Enmity, sets.JA.Sekkanoki))
	elseif spell.english == "Provoke" then
		equip(sets.Utility.Enmity)
	elseif spell.english == "Box Step" then
		equip(sets.Utility.Steps)
	elseif spell.type == "Weapon Skill" then
		equip(sets.OneHit.Attack)
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
