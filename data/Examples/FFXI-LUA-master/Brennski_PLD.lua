function get_sets()
	send_command("bind f9 gs c toggle TP set")
	send_command("bind f10 gs c toggle Idle set")

	function file_unload()
		send_command("unbind ^f9")
		send_command("unbind ^f10")

		send_command("unbind !f9")
		send_command("unbind !f10")

		send_command("unbind f9")
		send_command("unbind f10")
	end

	--Idle Sets--
	sets.Idle = {}

	sets.Idle.index = {"Standard", "DT", "Cleave"}
	Idle_ind = 1

	sets.Idle.Standard = {
		ammo = "Homiliary",
		head = {
			name = "Valorous Mask",
			augments = {"INT+6", '"Dbl.Atk."+1', '"Treasure Hunter"+1', "Accuracy+6 Attack+6", 'Mag. Acc.+16 "Mag.Atk.Bns."+16'}
		},
		neck = "Coatl Gorget +1",
		ear1 = "Odnowa Earring +1",
		ear2 = "Infused Earring",
		body = "Reverence Surcoat +3",
		hands = "Regal Gauntlets",
		ring1 = "Defending ring",
		ring2 = "Vocane Ring",
		waist = "Fucho-no-obi",
		legs = "Carmine Cuisses +1",
		feet = "Souveran Schuhs +1",
		back = "Moonbeam Cape"
	}

	sets.Idle.DT = {
		ammo = "Staunch Tathlum",
		head = "Souveran Schaller",
		neck = "Loricate Torque +1",
		ear1 = "Odnowa Earring +1",
		ear2 = "Thureous Earring",
		body = "Reverence Surcoat +3",
		hands = "Regal Gauntlets",
		ring1 = "Defending ring",
		ring2 = "Vocane Ring",
		back = "Moonbeam Cape",
		waist = "Flume Belt +1",
		legs = "Souveran Diechlings +1",
		feet = "Souveran Schuhs +1"
	}

	sets.Idle.Cleave = {
		ammo = "Staunch Tathlum",
		head = "Souveran Schaller",
		neck = "Loricate Torque +1",
		ear1 = "Odnowa Earring +1",
		ear2 = "Thureous Earring",
		body = "Reverence Surcoat +3",
		hands = "Souveran Handschuhs",
		ring1 = "Defending ring",
		ring2 = "Vocane Ring",
		back = "Moonbeam Cape",
		waist = "Flume Belt +1",
		feet = "Souveran Schuhs +1",
		legs = "Carmine Cuisses +1"
	}
	--TP Sets--
	sets.TP = {}

	sets.TP.index = {"Tank", "Standard", "DW"}
	--1=Tank ,2 = Standard, 3= DW--

	TP_ind = 1
	sets.TP.Tank = {
		ammo = "Staunch Tathlum",
		head = "Souveran Schaller",
		neck = "Loricate Torque +1",
		ear1 = "Odnowa Earring +1",
		ear2 = "Etiolation Earring",
		body = "Reverence Surcoat +3",
		hands = "Regal Gauntlets",
		ring1 = "Defending ring",
		ring2 = "Vocane Ring",
		back = "Moonbeam Cape",
		waist = "Flume Belt +1",
		legs = "Souveran Diechlings +1",
		feet = "Souveran Schuhs +1"
	}

	sets.TP.Standard = {
		ammo = "Ginsen",
		head = "Flam. Zucchetto +2",
		body = "Emicho Haubert +1",
		hands = "Emicho Gauntlets +1",
		legs = {name = "Odyssean Cuisses", augments = {"Accuracy+16 Attack+16", '"Store TP"+7', "DEX+2", "Attack+8"}},
		feet = "Flam. Gambieras +2",
		neck = "Lissome Necklace",
		waist = "Kentarch Belt +1",
		left_ear = "Telos Earring",
		right_ear = "Cessance Earring",
		left_ring = "Petrov Ring",
		right_ring = "Chirich Ring",
		back = "Grounded Mantle"
	}
	sets.TP.DW = {
		ammo = "Ginsen",
		head = "Flam. Zucchetto +2",
		body = {name = "Valorous Mail", augments = {"Accuracy+20 Attack+20", '"Store TP"+8', "Accuracy+12", "Attack+8"}},
		hands = "Flam. Manopolas +2",
		legs = "Carmine Cuisses +1",
		feet = {name = "Valorous Greaves", augments = {"Accuracy+25 Attack+25", '"Dbl.Atk."+4', "CHR+8", "Attack+6"}},
		neck = "Lissome Necklace",
		waist = "Kentarch Belt +1",
		left_ear = "Telos Earring",
		right_ear = "Cessance Earring",
		left_ring = "Petrov Ring",
		right_ring = "Chirich Ring",
		back = "Grounded Mantle"
	}

	--Weaponskill Sets--
	sets.WS = {}

	sets.Requiescat = {}

	sets.Requiescat.index = {"Attack"}
	Requiescat_ind = 1

	sets.Requiescat.Attack = {
		head = "Carmine Mask +1",
		neck = "Fotia Gorget",
		ear2 = "Moondshade earring",
		ear1 = "Telos Earring",
		body = "Sulevia's Plate. +2",
		hands = "Sulev. Gauntlets +2",
		ring2 = "Regal Ring",
		ring1 = "Petrov Ring",
		waist = "Fotia Belt",
		back = "Grounded Mantle",
		legs = "Carmine Cuisses +1",
		feet = "Carmine Greaves +1"
	}

	sets.SavageBlade = {}

	sets.SavageBlade.index = {"Attack"}
	SavageBlade_ind = 1

	sets.SavageBlade.Attack = {
		ammo = "Floestone",
		head = {name = "Valorous Mask", augments = {"Accuracy+18", "Weapon skill damage +3%", "STR+4", "Attack+11"}},
		neck = "Caro Necklace",
		ear1 = "Ishvara Earring",
		ear2 = "Moonshade Earring",
		body = {name = "Valorous Mail", augments = {"Accuracy+25", "Weapon skill damage +4%", "DEX+8", "Attack+5"}},
		hands = {
			name = "Valorous Mitts",
			augments = {"Accuracy+17 Attack+17", "Weapon skill damage +3%", "VIT+9", "Accuracy+3", "Attack+12"}
		},
		ring1 = "Niqmaddu Ring",
		ring2 = "Regal Ring",
		back = {name = "Cichol's Mantle", augments = {"VIT+20", "Accuracy+20 Attack+20", "Weapon skill damage +10%"}},
		waist = "Grunfeld Rope",
		legs = {name = "Valor. Hose", augments = {"Attack+27", "Weapon skill damage +5%", "DEX+8", "Accuracy+15"}},
		feet = "Sulevia's Leggings +2"
	}

	sets.ChantDuCygne = {}

	sets.ChantDuCygne.index = {"Attack"}
	ChantDuCygne_ind = 1

	sets.ChantDuCygne.Attack = {
		ammo = "Jukukik Feather",
		head = "Flam. Zucchetto +2",
		neck = "Fotia gorget",
		ear1 = "Telos Earring",
		ear2 = "Moonshade Earring",
		body = "Sulevia's Plate. +2",
		hands = "Flam. Manopolas +2",
		ring2 = "Rajas ring",
		ring1 = "Petrov Ring",
		back = "Grounded Mantle",
		waist = "Fotia Belt",
		legs = "Sulevia's Cuisses +2",
		feet = "Thereoid Greaves"
	}

	sets.WS.SanguineBlade = {}

	sets.WS.SanguineBlade = {
		ammo = "Ombre Tathlum",
		head = "Helios Band",
		neck = "Sanctity Necklace",
		rear = "Friomisi earring",
		ear1 = "Novio Earring",
		body = "Founder's Breastplate",
		hands = "Amalric Gages +1",
		ring1 = "Acumen Ring",
		ring2 = "Fenrir Ring",
		waist = "Eschan Stone",
		back = "Grounded Mantle",
		legs = "Hagondes Pants",
		feet = "Weatherspoon souliers +1"
	}

	sets.WS.Atonement = {
		ammo = "Floestone",
		head = "Sulevia's Mask +2",
		neck = "Asperity necklace",
		ear1 = "Brutal Earring",
		ear2 = "Cessance Earring",
		body = "Souveran Cuirass",
		hands = "Valorous Mitts",
		ring1 = "Petrov Ring",
		ring2 = "Rajas Ring",
		back = "Weard Mantle",
		waist = "windbuffet belt +1",
		legs = "Sulevia's Cuisses +2",
		feet = "Souveran Schuhs +1"
	}

	--Magic Sets--
	sets.Magic = {}

	sets.Magic.Divine = {neck = "Incanter's Torque", ring1 = "Stikini Ring"}

	sets.Magic.Phalanx = {
		ear2 = "Andoaa Earring",
		waist = "Olympus Sash",
		ammo = "Sapience Orb",
		ear2 = "Andoaa Earring",
		back = "Weard Mantle",
		waist = "Olympus Sash",
		ring2 = "Supershear Ring",
		neck = "Incanter's Torque",
		hands = "Regal Gauntlets",
		feet = "Souveran Schuhs +1",
		body = "Shabti Cruissas",
		ring1 = "Stikini Ring",
		legs = "Carmine Cuisses +1",
		head = "Carmine Mask +1"
	}

	sets.Magic.Enhancing = {
		ear2 = "Andoaa Earring",
		waist = "Olympus Sash",
		ammo = "Sapience Orb",
		ear2 = "Andoaa Earring",
		back = "Weard Mantle",
		waist = "Olympus Sash",
		ring2 = "Supershear Ring",
		neck = "Incanter's Torque",
		hands = "Regal Gauntlets",
		feet = "Souveran Schuhs +1",
		body = "Shabti Cruissas",
		ring1 = "Stikini Ring",
		legs = "Carmine Cuisses +1",
		head = "Carmine Mask +1"
	}

	sets.Magic.Reprisal = {
		ammo = "Sapience Orb",
		ear2 = "Andoaa Earring",
		back = "Weard Mantle",
		waist = "Olympus Sash",
		ring2 = "Supershear Ring",
		neck = "Unmoving Collar +1",
		hands = "Regal Gauntlets",
		feet = "Souveran Schuhs +1",
		body = "Reverence Surcoat +3",
		ring1 = "Stikini Ring",
		legs = "Souveran Diechlings +1",
		head = "Souveran Schaller"
	}

	sets.Magic.Flash = {neck = "Incanter's Torque", ring1 = "Stikini Ring"}

	sets.Magic.Healing = {
		neck = "Incanter's Torque",
		ring1 = "Ephedra Ring",
		ring2 = "Sirona's Ring",
		ear1 = "Nourish. Earring",
		back = "Solmenity Cape"
	}

	--Utility Sets--
	sets.Utility = {}

	sets.Utility.Weather = {waist = "Hachirin-no-obi", back = "Twilight Cape"}

	sets.Utility.MB = {
		head = "Helios Band",
		body = "Samnuha Coat",
		ear1 = "Static Earring",
		ring1 = "Locus Ring",
		ring2 = "Mujin Band"
	}

	sets.Utility.Steps = {
		ammo = "Falcon Eye",
		head = "Dampening Tam",
		body = "Adhemar Jacket +1",
		hands = "Rawhide Gloves",
		legs == "Founder's Hose",
		feet = "Odyssean Greaves",
		neck = "Subtlety Spec.",
		waist = "Chaac Belt",
		left_ear = "Heartseeker Earring",
		right_ear = "Steelflash Earring",
		left_ring = "Yacuruna Ring",
		right_ring = "Rajas Ring",
		back = "Grounded Mantle"
	}

	sets.Utility.PDT = {
		head = "Sulevia's Mask +2",
		neck = "Loricate Torque +1",
		ear1 = "Ethereal earring",
		body = "Iuitl vest",
		hands = "Umuthi gloves",
		ring1 = "Dark ring",
		ring2 = "Dark ring",
		back = "Moonbeam Cape",
		waist = "Flume belt",
		legs = "Iuitl Tights +1",
		feet = {name = "Herculean Boots", augments = {"Accuracy+20 Attack+20", '"Triple Atk."+4'}}
	}

	sets.Utility.MDT = {
		head = "Sulevia's Mask +2",
		neck = "Loricate Torque +1",
		body = "Assim. jubbah +1",
		hands = "Umuthi gloves",
		ring1 = "Dark ring",
		ring2 = "Dark ring",
		back = "Moonbeam Cape",
		legs = "Quiahuiz trousers",
		feet = "Luhlaza charuqs"
	}

	sets.Utility.Enmity = {
		ammo = "Sapience Orb",
		ear2 = "Friomisi Earring",
		back = "Weard Mantle",
		waist = "Trance belt",
		ring2 = "Supershear Ring",
		neck = "Unmoving Collar +1",
		hands = "Souveran Handschuhs",
		feet = "Souveran Schuhs +1",
		body = "Reverence Surcoat +3",
		ring1 = "Petrov Ring",
		legs = "Souveran Diechlings +1",
		head = "Souveran Schaller"
	}

	sets.Utility.Doomed = {waist = "Gishdubar Sash", ring1 = "Saida Ring"}

	--Job Ability Sets--

	sets.JA = {}

	sets.JA.ShieldBash = {
		ring1 = "Fenin Ring",
		hands = "Valor Gauntlets",
		waist = "Chaac Belt",
		Head = {
			name = "Valorous Mask",
			augments = {"INT+6", '"Dbl.Atk."+1', '"Treasure Hunter"+1', "Accuracy+6 Attack+6", 'Mag. Acc.+16 "Mag.Atk.Bns."+16'}
		}
	}

	sets.JA.Sentinel = {feet = "Valor Leggings"}

	sets.JA.Cover = {}

	sets.JA.Rampart = {}

	--Precast Sets--
	sets.precast = {}

	sets.precast.FC = {}

	sets.precast.FC.Standard = {
		ammo = "Sapience Orb",
		head = "Carmine Mask +1",
		body = "Reverence Surcoat +3",
		hands = "Souveran Handschuhs",
		legs = {
			name = "Odyssean Cuisses",
			augments = {'Mag. Acc.+15 "Mag.Atk.Bns."+15', '"Fast Cast"+3', "INT+1", "Mag. Acc.+9", '"Mag.Atk.Bns."+3'}
		},
		feet = "Carmine Greaves +1",
		neck = "Voltsurge Torque",
		waist = "Witful Belt",
		left_ear = "Etiolation Earring",
		right_ear = "Loquac. Earring",
		left_ring = "Rahab Ring",
		right_ring = "Kishar Ring",
		back = "Moonbeam Cape"
	}
end

function precast(spell)
	if spell.action_type == "Magic" then
		equip(sets.precast.FC.Standard)
	end

	if spell.english == "Requiescat" then
		equip(sets.Requiescat[sets.Requiescat.index[Requiescat_ind]])
	end

	if spell.english == "Chant du Cygne" or spell.english == "Resolution" then
		equip(sets.ChantDuCygne[sets.ChantDuCygne.index[ChantDuCygne_ind]])
	end

	if spell.english == "Savage Blade" then
		equip(sets.SavageBlade[sets.SavageBlade.index[SavageBlade_ind]])
	end

	if spell.english == "Sanguine Blade" then
		equip(sets.WS.SanguineBlade)
		if spell.element == world.day_element or spell.element == world.weather_element then
			equip(sets.Utility.Weather)
		end
	end

	if spell.english == "Box Step" then
		equip(sets.Utility.Steps)
	end

	if spell.english == "Shield Bash" then
		equip(set_combine(sets.Utility.Enmity, sets.JA.ShieldBash))
	end

	if spell.english == "Sentinel" then
		equip(set_combine(sets.Utility.Enmity, sets.JA.Sentinel))
	end

	if spell.english == "Ramprt" then
		equip(set_combine(sets.Utility.Enmity, sets.JA.Rampart))
	end

	if spell.english == "Cover" then
		equip(set_combine(sets.Utility.Enmity, sets.JA.Cover))
	end
end

function midcast(spell, act)
	if spell.english == "Flash" then
		equip(set_combine(sets.Utility.Enmity, sets.Magic.Flash))
	end

	if spell.skill == "Enhancing Magic" then
		equip(sets.Magic.Enhancing)
	end

	if spell.skill == "Divine Magic" then
		equip(set_combine(sets.Utility.Enmity, sets.Magic.Divine))
	end

	if spell.skill == "Healing Magic" then
		equip(set_combine(sets.Utility.Enmity, sets.Magic.Healing))
	end

	if spell.english == "Reprisal" then
		equip(sets.Magic.Reprisal)
	end

	if spell.english == "Phalanx" then
		equip(sets.Magic.Phalanx)
	end
	if spell.skill == "Blue Magic" then
		equip(sets.Utility.Enmity)
	end
end

function aftercast(spell)
	if player.status == "Engaged" then
		equip(sets.TP[sets.TP.index[TP_ind]])
		if buffactive["doom"] or buffactive["curse"] then
			equip(sets.Utility.Doomed)
		end
	else
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
		if buffactive["doom"] or buffactive["curse"] then
			equip(sets.Utility.Doomed)
		end
	end
end

function status_change(new, old)
	if new == "Engaged" then
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
