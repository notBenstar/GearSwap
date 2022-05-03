function get_sets()
	send_command("bind f9 gs c toggle Nuke set")
	send_command("bind f10 gs c toggle Idle set")
	send_command("bind f11 gs c toggle Enhancing set")

	function file_unload()
		send_command("unbind ^f9")
		send_command("unbind ^f10")
		send_command("unbind ^f11")

		send_command("unbind !f9")
		send_command("unbind !f10")
		self_command("unbind !f11")

		send_command("unbind f9")
		send_command("unbind f10")
		send_command("unbind f11")
	end

	--Idle Sets--
	sets.Idle = {}

	sets.Idle.index = {"Standard", "DT"}
	--1=Standard, 2 =DT --
	Idle_ind = 1

	sets.Idle.Standard = {
		main = "Akademos",
		sub = "Enki Strap",
		ammo = "Homiliary",
		head = "Hike Khat",
		neck = "Loricate Torque +1",
		ear1 = "Genmei Earring",
		ear2 = "Infused Earring",
		body = "Jhakri Robe +2",
		hands = {name = "Merlinic Dastanas", augments = {"DEX+3", 'Mag. Acc.+16 "Mag.Atk.Bns."+16', '"Refresh"+1'}},
		ring1 = "Defending ring",
		ring2 = "Vocane Ring",
		waist = "Fucho-no-obi",
		legs = "Assiduity Pants +1",
		feet = "Chironic Slippers",
		back = "Moonbeam Cape"
	}

	sets.Idle.DT = {
		main = "Akademos",
		sub = "Enki Strap",
		ammo = "Hagneia stone",
		head = "Hike Khat",
		neck = "Loricate Torque +1",
		ear1 = "Etiolation Earring",
		ear2 = "Infused Earring",
		body = "Vrikodara Jupon",
		hands = {name = "Merlinic Dastanas", augments = {"DEX+3", 'Mag. Acc.+16 "Mag.Atk.Bns."+16', '"Refresh"+1'}},
		ring1 = "Vocane Ring",
		ring2 = "Defending ring",
		waist = "Fucho-no-obi",
		legs = "Assiduity Pants +1",
		feet = "Chironic Slippers",
		back = "Moonbeam Cape"
	}

	--TP Sets--
	sets.TP = {}

	sets.TP.index = {"Standard"}
	--1=Standard--

	TP_ind = 1
	sets.TP.Standard = {
		main = "Akademos",
		sub = "Enki Strap",
		ammo = "Homiliary",
		head = "Hike Khat",
		neck = "Sanctity Necklace",
		ear1 = "Genmei Earring",
		ear2 = "Infused Earring",
		body = "Vrikodara Jupon",
		hands = {name = "Merlinic Dastanas", augments = {"DEX+3", 'Mag. Acc.+16 "Mag.Atk.Bns."+16', '"Refresh"+1'}},
		ring1 = "Defending ring",
		ring2 = "Vocane Ring",
		waist = "Fucho-no-obi",
		legs = "Assiduity Pants",
		feet = "Chironic Slippers",
		back = "Moonbeam Cape"
	}

	--WS Sets--

	sets.WS = {}

	sets.WS.Myrkr = {
		ammo = "Strobilus",
		head = "Pixie Hairpin +1",
		neck = "Sanctity Necklace",
		ear2 = "Etiolation Earring",
		ear1 = "Barkarole Earring",
		body = "Amalric Doublet",
		hands = "Amalric Gages +1",
		ring1 = "Mephitas's Ring",
		ring2 = "Rahab Ring",
		waist = "Refoccilation Stone",
		back = "Bane Cape",
		legs = "Amalric Slops",
		feet = "Amalric Nails"
	}

	--Nuke Sets---
	sets.Nuke = {}

	sets.Nuke.index = {"Standard", "MagicBurst"}
	--1=Standard, 2= Magic Burst'--
	Nuke_ind = 1

	sets.Nuke.Standard = {
		main = "Akademos",
		sub = "Enki Strap",
		ammo = "Pemphredo Tathlum",
		head = {
			name = "Merlinic Hood",
			augments = {'Mag. Acc.+18 "Mag.Atk.Bns."+18', "Magic burst mdg.+7%", "CHR+7", "Mag. Acc.+12"}
		},
		neck = "Sanctity Necklace",
		ear2 = "Friomisi earring",
		ear1 = "Barkarole Earring",
		body = {
			name = "Merlinic Jubbah",
			augments = {'Mag. Acc.+23 "Mag.Atk.Bns."+23', "INT+7", "Mag. Acc.+14", '"Mag.Atk.Bns."+14'}
		},
		hands = "Jhakri Cuffs +2",
		ring1 = "Shiva Ring",
		ring2 = "Acumen Ring",
		waist = "Refoccilation Stone",
		back = "Lugh's Cape",
		legs = {
			name = "Merlinic Shalwar",
			augments = {'Mag. Acc.+23 "Mag.Atk.Bns."+23', "Mag. crit. hit dmg. +1%", "Mag. Acc.+11", '"Mag.Atk.Bns."+13'}
		},
		feet = {
			name = "Merlinic Crackows",
			augments = {'Mag. Acc.+20 "Mag.Atk.Bns."+20', '"Fast Cast"+3', "INT+10", '"Mag.Atk.Bns."+1'}
		}
	}

	sets.Nuke.MagicBurst = {
		main = {name = "Akademos", augments = {"INT+15", '"Mag.Atk.Bns."+15', "Mag. Acc.+15"}},
		sub = "Enki Strap",
		ammo = "Pemphredo Tathlum",
		head = {
			name = "Merlinic Hood",
			augments = {'Mag. Acc.+18 "Mag.Atk.Bns."+18', "Magic burst dmg.+7%", "CHR+7", "Mag. Acc.+12"}
		},
		body = {
			name = "Merlinic Jubbah",
			augments = {'Mag. Acc.+23 "Mag.Atk.Bns."+23', "INT+7", "Mag. Acc.+14", '"Mag.Atk.Bns."+14'}
		},
		hands = {name = "Amalric Gages", augments = {"INT+10", "Mag. Acc.+15", '"Mag.Atk.Bns."+15'}},
		legs = {
			name = "Merlinic Shalwar",
			augments = {'Mag. Acc.+12 "Mag.Atk.Bns."+12', "Magic burst dmg.+8%", "MND+5", '"Mag.Atk.Bns."+12'}
		},
		feet = {name = "Merlinic Crackows", augments = {"Magic burst dmg.+8%", "Mag. Acc.+13", '"Mag.Atk.Bns."+12'}},
		neck = "Mizu. Kubikazari",
		waist = "Refoccilation Stone",
		left_ear = "Barkaro. Earring",
		right_ear = "Friomisi Earring",
		left_ring = "Locus Ring",
		right_ring = "Mujin Band",
		back = {name = "Lugh's Cape", augments = {"INT+20", "Mag. Acc+20 /Mag. Dmg.+20", '"Mag.Atk.Bns."+10'}}
	}

	--Enhancing Sets--
	sets.Enhancing = {}

	sets.Enhancing.index = {"Normal", "Storms"}
	--1=Normal, 2=Storms--
	Enhancing_ind = 1

	sets.Enhancing.Normal = {
		main = "Oranyan",
		sub = "Enki Strap",
		ammo = "Savant's Treatise",
		head = "Telchine Cap",
		neck = "Incanter's Torque",
		ear1 = "Andoaa Earring",
		ear2 = "Regal Earring",
		body = "Telchine Chasuble",
		hands = "Kaykaus Cuffs",
		ring1 = "Stikini Ring",
		ring2 = "Sirona's Ring",
		waist = "Olympus Sash",
		back = "Fi follet cape +1",
		legs = "Telchine Braconi",
		feet = "Telchine Pigaches"
	}

	sets.Enhancing.Storms = {
		main = "Oranyan",
		sub = "Enki Strap",
		ammo = "Savant's Treatise",
		head = "Telchine Cap",
		neck = "Incanter's Torque",
		ear1 = "Andoaa Earring",
		ear2 = "Regal Earring",
		body = "Telchine Chasuble",
		hands = "Kaykaus Cuffs",
		ring1 = "Stikini Ring",
		ring2 = "Sirona's Ring",
		waist = "Olympus Sash",
		back = "Fi follet cape +1",
		legs = "Telchine Braconi",
		feet = "Pedagogy loafers"
	}

	--Magic Sets--
	sets.Magic = {}

	sets.Magic.Enfeebling = {
		main = "Grioavolr",
		sub = "Enki Strap",
		ammo = "Pemphredo Tathlum",
		head = "Merlinic Hood",
		neck = "Imbodla Necklace",
		ear2 = "Dignitary's Earring",
		ear1 = "Barkarole Earring",
		body = {
			name = "Merlinic Jubbah",
			augments = {'Mag. Acc.+23 "Mag.Atk.Bns."+23', "INT+7", "Mag. Acc.+14", '"Mag.Atk.Bns."+14'}
		},
		hands = "Kaykaus Cuffs",
		ring1 = "Stikini Ring",
		ring2 = "Kishar Ring",
		waist = "Luminary Sash",
		back = "Lugh's Cape",
		legs = "Chironic Hose",
		feet = "Skaoi Boots"
	}

	sets.Magic.Healing = {
		sub = "Enki Strap",
		ammo = "Kalboron Stone",
		head = "Vanya Hood",
		neck = "Incanter's Torque",
		ear1 = "Regal Earring",
		ear2 = "Medni. Earring",
		body = "Vrikodara Jupon",
		hands = "Kaykaus Cuffs",
		ring1 = "Ephedra Ring",
		ring2 = "Sirona's Ring",
		waist = "Luminary Sash",
		back = "Solemnity Cape",
		legs = "Chironic Hose",
		feet = "Vanya Clogs"
	}

	sets.Magic.Regen = {
		ammo = "Savant's Treatise",
		head = "Arbatel Bonnet",
		neck = "Incanter's Torque ",
		ear1 = "Regal Earring",
		ear2 = "Regal Earring",
		body = "Telchine Chasuble",
		hands = "Kaykaus Cuffs",
		ring1 = "Stikini Ring",
		ring2 = "Kishar Ring",
		waist = "Luminary Sash",
		back = "Bookworms's Cape",
		legs = "Telchine Braconi",
		feet = "Telchine Pigaches"
	}

	sets.Magic.Dark = {
		ammo = "Pemphredo Tathlum",
		head = "Pixie Hairpin +1",
		neck = "Incanter's Torque",
		ear2 = "Friomisi earring",
		ear1 = "Barkarole Earring",
		body = {
			name = "Merlinic Jubbah",
			augments = {'Mag. Acc.+23 "Mag.Atk.Bns."+23', "INT+7", "Mag. Acc.+14", '"Mag.Atk.Bns."+14'}
		},
		hands = "Jhakri Cuffs +2",
		ring1 = "Evanescence Ring",
		ring2 = "Archon Ring",
		waist = "Refoccilation Stone",
		back = "Lugh's Cape",
		legs = {
			name = "Merlinic Shalwar",
			augments = {'Mag. Acc.+23 "Mag.Atk.Bns."+23', "Mag. crit. hit dmg. +1%", "Mag. Acc.+11", '"Mag.Atk.Bns."+13'}
		},
		feet = "Merlinic Crackows"
	}

	sets.Magic.Stun = {
		ammo = "Pemphredo Tathlum",
		head = {name = "Merlinic Hood", augments = {'"Fast Cast"+5', "Mag. Acc.+10"}},
		neck = "Voltsurge Torque",
		waist = "Luminary Sash",
		left_ear = "Etiolation Earring",
		right_ear = "Loquac. Earring",
		left_ring = "Rahab Ring",
		right_ring = "Kishar Ring",
		feet = {
			name = "Merlinic Crackows",
			augments = {'Mag. Acc.+20 "Mag.Atk.Bns."+20', '"Fast Cast"+3', "INT+10", '"Mag.Atk.Bns."+1'}
		},
		body = {
			name = "Merlinic Jubbah",
			augments = {"Accuracy+6", '"Fast Cast"+6', "MND+8", "Mag. Acc.+15", '"Mag.Atk.Bns."+5'}
		},
		legs = "Psycloth Lappas",
		back = "Lugh's Cape"
	}

	--Precast Sets--
	sets.precast = {}

	sets.precast.FC = {}

	sets.precast.FC.Standard = {
		ammo = "Sapience Orb",
		head = {name = "Merlinic Hood", augments = {'"Fast Cast"+5', "Mag. Acc.+10"}},
		body = {
			name = "Merlinic Jubbah",
			augments = {"Accuracy+6", '"Fast Cast"+6', "MND+8", "Mag. Acc.+15", '"Mag.Atk.Bns."+5'}
		},
		hands = {name = "Merlinic Dastanas", augments = {'"Mag.Atk.Bns."+25', '"Fast Cast"+7', "Mag. Acc.+13"}},
		legs = "Psycloth Lappas",
		feet = {name = "Merlinic Crackows", augments = {'"Fast Cast"+6', '"Mag.Atk.Bns."+12'}},
		neck = "Voltsurge Torque",
		waist = "Witful Belt",
		left_ear = "Etiolation Earring",
		right_ear = "Loquac. Earring",
		left_ring = "Rahab Ring",
		right_ring = "Kishar Ring",
		back = "Swith Cape"
	}

	sets.precast.FC.Regen = {
		ammo = "Sapience Orb",
		head = "Telchine Cap",
		neck = "Voltsurge Torque",
		right_ear = "Loquac. Earring",
		left_ear = "Etiolation Earring",
		body = "Telchine Chasuble",
		hands = "Telchine Gloves",
		left_ring = "Rahab Ring",
		right_ring = "Kishar Ring",
		waist = "Witful Belt",
		back = "Lugh's Cape",
		legs = "Telchine Braconi",
		feet = "Telchine Pigaches"
	}

	sets.precast.FC.Storms = {
		ammo = "Sapience Orb",
		head = "Telchine Cap",
		neck = "Voltsurge Torque",
		right_ear = "Loquac. Earring",
		left_ear = "Etiolation Earring",
		body = "Telchine Chasuble",
		hands = "Telchine Gloves",
		left_ring = "Rahab Ring",
		right_ring = "Kishar Ring",
		waist = "Witful Belt",
		back = "Swith Cape",
		legs = "Telchine Braconi",
		feet = "Telchine Pigaches"
	}
	--Utility and JA Sets --
	sets.Utility = {}

	sets.Utility.Weather = {waist = "Hachirin-no-obi"}

	sets.Utility.Klima = {feet = "Arbatel Loafers +1"}

	sets.Utility.DrainAspir = {
		ammo = "Pemphredo Tathlum",
		head = "Pixie Hairpin +1",
		neck = "Sanctity Necklace",
		ear2 = "Friomisi earring",
		ear1 = "Barkarole Earring",
		body = {
			name = "Merlinic Jubbah",
			augments = {'Mag. Acc.+23 "Mag.Atk.Bns."+23', "INT+7", "Mag. Acc.+14", '"Mag.Atk.Bns."+14'}
		},
		hands = "Jhakri Cuffs +2",
		ring1 = "Evanescence Ring",
		ring2 = "Shiva Ring",
		waist = "Fucho-no-obi",
		back = "Lugh's Cape",
		legs = {
			name = "Merlinic Shalwar",
			augments = {'Mag. Acc.+23 "Mag.Atk.Bns."+23', "Mag. crit. hit dmg. +1%", "Mag. Acc.+11", '"Mag.Atk.Bns."+13'}
		},
		feet = "Merlinic Crackows"
	}

	sets.Utility.Tabula = {legs = "Argute Pants +2"}

	sets.Utility.Perpetuance = {hands = "Arbatel Bracers +1"}

	sets.Utility.Doomed = {waist = "Gishdubar Sash", ring1 = "Saida Ring"}

	--WS Sets--

	sets.WS = {}
end

function precast(spell)
	if spell.skill == "Elemental Magic" then
		equip(sets.precast.FC.Standard)
	elseif spell.skill == "Enfeebling Magic" then
		equip(sets.precast.FC.Standard)
	elseif spell.skill == "Enhancing Magic" then
		equip(sets.precast.FC.Standard)
	elseif spell.skill == "Dark Magic" then
		equip(sets.precast.FC.Standard)
	elseif spell.skill == "Healing Magic" then
		equip(sets.precast.FC.Standard)
	elseif
		spell.english == "Regen" or spell.english == "Regen II" or spell.english == "Regen III" or spell.english == "Regen IV" or
			spell.english == "Regen V"
	 then
		equip(sets.precast.FC.Regen)
	elseif spell.english == "Tabula Rasa" then
		equip(sets.Utility.Tabula)
	elseif spell.english == "Stun" then
		equip(sets.Magic.Stun)
	end
end

function midcast(spell, act)
	if spell.skill == "Enhancing Magic" then
		equip(sets.Enhancing[sets.Enhancing.index[Enhancing_ind]])
		if buffactive["Perpetuance"] then
			equip(set_combine(sets.Enhancing[sets.Enhancing.index[Enhancing_ind]], sets.Utility.Perpetuance))
		end
	end
	if spell.english == "Stun" then
		equip(sets.Magic.Stun)
	end
	if spell.skill == "Healing Magic" then
		equip(sets.Magic.Healing)
	end

	if spell.skill == "Dark Magic" then
		equip(sets.Magic.Dark)
	end

	if spell.skill == "Enfeebling Magic" then
		equip(sets.Magic.Enfeebling)
	end

	if spell.skill == "Elemental Magic" then
		equip(sets.Nuke[sets.Nuke.index[Nuke_ind]])

		if spell.element == world.day_element or spell.element == world.weather_element then
			equip(set_combine(sets.Nuke[sets.Nuke.index[Nuke_ind]], sets.Utility.Weather))
			if buffactive["Klimaform"] then
				equip(set_combine(sets.Nuke[sets.Nuke.index[Nuke_ind]], sets.Utility.Weather, sets.Utility.Klima))
			end
		end
	end

	if
		spell.english == "Regen" or spell.english == "Regen II" or spell.english == "Regen III" or spell.english == "Regen IV" or
			spell.english == "Regen V"
	 then
		equip(sets.Magic.Regen)
	end

	if
		spell.english == "Geohelix" or spell.english == "Hydrohelix" or spell.english == "Anemohelix" or
			spell.english == "Pyrohelix" or
			spell.english == "Anemohelix" or
			spell.english == "Ionohelix" or
			spell.english == "Luminohelix" or
			spell.english == "Geohelix II" or
			spell.english == "Hydrohelix II" or
			spell.english == "Anemohelix II" or
			spell.english == "Pyrohelix II" or
			spell.english == "Anemohelix II" or
			spell.english == "Ionohelix II" or
			spell.english == "Luminohelix II"
	 then
		equip(sets.Magic.Helix)
		if spell.element == world.day_element or spell.element == world.weather_element then
			equip(sets.Nuke[sets.Nuke.index[Nuke_ind]])
			if buffactive["Klimaform"] then
				equip(set_combine(sets.Nuke[sets.Nuke.index[Nuke_ind]], sets.Utility.Klima))
			end
		end
	end

	if spell.english == "Noctohelix" or spell.english == "Noctohelix II" or spell.english == "Kastura" then
		equip(sets.Magic.Dark)
		if spell.element == world.day_element or spell.element == world.weather_element then
			equip(set_combine(sets.Magic.Dark, sets.Utility.Weather))
			if buffactive["Klimaform"] then
				equip(set_combine(sets.Magic.Dark, sets.Utility.Weather, sets.Utility.Klima))
			end
		end
	end

	if spell.english == "Drain" or spell.english == "Drain II" or spell.english == "Aspir II" or spell.english == "Aspir" then
		equip(sets.Utility.DrainAspir)
	end
end

function aftercast(spell)
	if player.status == "Engaged" then
		equip(sets.TP[sets.TP.index[TP_ind]])
		if buffactive["doom"] or buffactive["curse"] then
			equip(set_combine(sets.TP[sets.TP.index[TP_ind]], sets.Utility.Doomed))
			status_change(player.status)
		end
		if buffactive["Terror"] then
			equip(sets.TP.DT)
			status_change(player.status)
		end
	else
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
		if buffactive["doom"] or buffactive["curse"] then
			equip(set_combine(sets.Idle[sets.Idle.index[Idle_ind]], sets.Utility.Doomed))
			status_change(player.status)
		end
		if buffactive["Terror"] then
			equip(sets.TP.DT)
			status_change(player.status)
		end
	end
end

function status_change(new, old)
	if player.status == "Engaged" then
		equip(sets.TP[sets.TP.index[TP_ind]])
		if buffactive["doom"] or buffactive["curse"] then
			equip(sets.Utility.Doom)
		end
	else
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
		if buffactive["doom"] or buffactive["curse"] then
			equip(sets.Utility.Doom)
		end
	end
end

function self_command(command)
	if command == "toggle Nuke set" then
		Nuke_ind = Nuke_ind + 1
		if Nuke_ind > #sets.Nuke.index then
			Nuke_ind = 1
		end
		send_command("@input /echo <----- Nuke Set changed to " .. sets.Nuke.index[Nuke_ind] .. " ----->")
		equip(sets.Nuke[sets.Nuke.index[Nuke_ind]])
	elseif command == "toggle Idle set" then
		Idle_ind = Idle_ind + 1
		if Idle_ind > #sets.Idle.index then
			Idle_ind = 1
		end
		send_command("@input /echo <----- Idle Set changed to " .. sets.Idle.index[Idle_ind] .. " ----->")
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
	elseif command == "toggle Enhancing set" then
		Enhancing_ind = Enhancing_ind + 1
		if Enhancing_ind > #sets.Enhancing.index then
			Enhancing_ind = 1
		end
		send_command("@input /echo <----- Enhancing Set changed to " .. sets.Enhancing.index[Enhancing_ind] .. " ---->")
		equip(sets.Enhancing[sets.Enhancing.index[Enhancing_ind]])
	elseif command == "equip TP set" then
		equip(sets.TP[sets.TP.index[TP_ind]])
	elseif command == "equip Idle set" then
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
	end
end
