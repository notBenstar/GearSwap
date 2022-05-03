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
		main = "Bolelabunga",
		sub = "Genmei Shield",
		ammo = "Homiliary",
		head = "Befouled Crown",
		body = "Jhakri Robe +2",
		hands = {
			name = "Chironic Gloves",
			augments = {"Magic burst dmg.+1%", "DEX+2", "Damage taken-4%", "Accuracy+6 Attack+6", 'Mag. Acc.+7 "Mag.Atk.Bns."+7'}
		},
		legs = "Assid. Pants +1",
		feet = "Aya. Gambieras +1",
		neck = "Sanctity Necklace",
		waist = "Fucho-no-Obi",
		left_ear = "Lifestorm Earring",
		right_ear = "Hearty Earring",
		left_ring = "Defending Ring",
		right_ring = "Shneddick Ring",
		back = "Solemnity Cape"
	}

	sets.Idle.DT = {
		main = "Bolelabunga",
		sub = "Genmei Shield",
		ammo = "Homiliary",
		head = "Befouled Crown",
		body = "Jhakri Robe +2",
		hands = {
			name = "Chironic Gloves",
			augments = {"Magic burst dmg.+1%", "DEX+2", "Damage taken-4%", "Accuracy+6 Attack+6", 'Mag. Acc.+7 "Mag.Atk.Bns."+7'}
		},
		legs = "Assid. Pants +1",
		feet = "Aya. Gambieras +1",
		neck = "Sanctity Necklace",
		waist = "Fucho-no-Obi",
		left_ear = "Lifestorm Earring",
		right_ear = "Hearty Earring",
		left_ring = "Defending Ring",
		right_ring = "Shneddick Ring",
		back = "Solemnity Cape"
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
		main = {name = "Malevolence", augments = {"INT+10", "Mag. Acc.+10", '"Mag.Atk.Bns."+10', '"Fast Cast"+5'}},
		sub = "Ammurapi Shield",
		ammo = "Hydrocera",
		head = {
			name = "Merlinic Hood",
			augments = {'Mag. Acc.+17 "Mag.Atk.Bns."+17', "Magic burst dmg.+9%", "CHR+6", "Mag. Acc.+14"}
		},
		body = "Jhakri Robe +2",
		hands = {name = "Amalric Gages", augments = {"INT+10", "Mag. Acc.+15", '"Mag.Atk.Bns."+15'}},
		legs = {
			name = "Merlinic Shalwar",
			augments = {'Mag. Acc.+25 "Mag.Atk.Bns."+25', '"Occult Acumen"+1', "CHR+9", "Mag. Acc.+15", '"Mag.Atk.Bns."+10'}
		},
		feet = {name = "Merlinic Crackows", augments = {'Mag. Acc.+20 "Mag.Atk.Bns."+20', "Magic burst dmg.+7%", "CHR+8"}},
		neck = "Sanctity Necklace",
		waist = "Refoccilation Stone",
		left_ear = "Barkarole Earring",
		right_ear = "Regal Earring",
		left_ring = "Locus Ring",
		right_ring = "Mujin Band"
	}

	sets.Nuke.MagicBurst = {
		main = {name = "Malevolence", augments = {"INT+10", "Mag. Acc.+10", '"Mag.Atk.Bns."+10', '"Fast Cast"+5'}},
		sub = "Ammurapi Shield",
		ammo = "Hydrocera",
		head = {
			name = "Merlinic Hood",
			augments = {'Mag. Acc.+17 "Mag.Atk.Bns."+17', "Magic burst dmg.+9%", "CHR+6", "Mag. Acc.+14"}
		},
		body = "Jhakri Robe +2",
		hands = {name = "Amalric Gages", augments = {"INT+10", "Mag. Acc.+15", '"Mag.Atk.Bns."+15'}},
		legs = {
			name = "Merlinic Shalwar",
			augments = {'Mag. Acc.+25 "Mag.Atk.Bns."+25', '"Occult Acumen"+1', "CHR+9", "Mag. Acc.+15", '"Mag.Atk.Bns."+10'}
		},
		feet = {name = "Merlinic Crackows", augments = {'Mag. Acc.+20 "Mag.Atk.Bns."+20', "Magic burst dmg.+7%", "CHR+8"}},
		neck = "Sanctity Necklace",
		waist = "Refoccilation Stone",
		left_ear = "Barkarole Earring",
		right_ear = "Regal Earring",
		left_ring = "Locus Ring",
		right_ring = "Mujin Band"
	}

	--Enhancing Sets--
	sets.Enhancing = {}

	sets.Enhancing.index = {"Normal", "Storms"}
	--1=Normal, 2=Storms--
	Enhancing_ind = 1

	sets.Enhancing.Normal = {
		main = "Gada",
		sub = "Ammurapi Shield",
		ammo = "Homiliary",
		head = {name = "Telchine Cap", augments = {"Enh. Mag. eff. dur. +9"}},
		body = {name = "Telchine Chas.", augments = {"Enh. Mag. eff. dur. +7"}},
		hands = {name = "Telchine Gloves", augments = {"Enh. Mag. eff. dur. +5"}},
		legs = {name = "Telchine Braconi", augments = {"Enh. Mag. eff. dur. +9"}},
		feet = {name = "Telchine Pigaches", augments = {"Enh. Mag. eff. dur. +9"}},
		back = "Sucellos's Cape",
		neck = "Incanter's Torque",
		waist = "Cascade Belt",
		left_ear = "Andoaa Earring",
		right_ear = "Regal Earring",
		left_ring = "Sangoma Ring",
		right_ring = "Kishar Ring"
	}

	sets.Enhancing.Storms = {
		main = "Gada",
		sub = "Ammurapi Shield",
		ammo = "Homiliary",
		head = {name = "Telchine Cap", augments = {"Enh. Mag. eff. dur. +9"}},
		body = {name = "Telchine Chas.", augments = {"Enh. Mag. eff. dur. +7"}},
		hands = {name = "Telchine Gloves", augments = {"Enh. Mag. eff. dur. +5"}},
		legs = {name = "Telchine Braconi", augments = {"Enh. Mag. eff. dur. +9"}},
		feet = {name = "Telchine Pigaches", augments = {"Enh. Mag. eff. dur. +9"}},
		back = "Sucellos's Cape",
		neck = "Incanter's Torque",
		waist = "Cascade Belt",
		left_ear = "Andoaa Earring",
		right_ear = "Regal Earring",
		left_ring = "Sangoma Ring",
		right_ring = "Kishar Ring"
	}

	--Magic Sets--
	sets.Magic = {}

	sets.Magic.Enfeebling = {
		main = "Malevolence",
		sub = "Ammurapi Shield",
		ammo = "Hydrocera",
		head = "Befouled Crown",
		body = "Shango Robe",
		hands = "Lurid Mitts",
		legs = "Chironic Hose",
		feet = "Medium's Sabots",
		neck = "Incanter's Torque",
		waist = "Ovate Rope",
		left_ear = "Barkarole Earring",
		right_ear = "Regal Earring",
		left_ring = "Perception Ring",
		right_ring = "Kishar Ring",
		back = "Sucellos's Cape"
	}

	sets.Magic.Healing = {
		main = "Vadose Rod",
		sub = "Ammurapi Shield",
		ammo = "Esper Stone",
		head = {
			name = "Vanya Hood",
			augments = {"Healing magic skill +20", '"Cure" spellcasting time -7%', "Magic dmg. taken -3"}
		},
		body = {name = "Kaykaus Bliaut", augments = {"MP+60", '"Cure" potency +5%', '"Conserve MP"+6'}},
		hands = {name = "Telchine Gloves", augments = {"Enh. Mag. eff. dur. +5"}},
		legs = "Chironic Hose",
		feet = {name = "Kaykaus Boots", augments = {"Mag. Acc.+15", '"Cure" potency +5%', '"Fast Cast"+3'}},
		neck = "Nodens Gorget",
		waist = "Cascade Belt",
		left_ear = "Mendi. Earring",
		right_ear = "Regal Earring",
		left_ring = "Lebeche Ring",
		right_ring = "Sirona's Ring",
		back = "Solemnity Cape"
	}

	sets.Magic.Regen = {
		main = "Bolelabunga",
		sub = "Ammurapi Shield",
		ammo = "Savant's Treatise",
		head = {name = "Telchine Cap", augments = {"Enh. Mag. eff. dur. +9"}},
		body = {name = "Telchine Chas.", augments = {"Enh. Mag. eff. dur. +7"}},
		hands = {name = "Telchine Gloves", augments = {"Enh. Mag. eff. dur. +5"}},
		legs = {name = "Telchine Braconi", augments = {"Enh. Mag. eff. dur. +9"}},
		feet = {name = "Telchine Pigaches", augments = {"Enh. Mag. eff. dur. +9"}},
		neck = "Incanter's Torque ",
		ear1 = "Regal Earring",
		ear2 = "Regal Earring",
		ring1 = "Stikini Ring",
		ring2 = "Kishar Ring",
		waist = "Luminary Sash",
		back = "Bookworms's Cape"
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
		ring2 = "Shiva Ring",
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
		head = "Nahtirah Hat",
		body = "Shango Robe",
		hands = {name = "Merlinic Dastanas", augments = {'"Mag.Atk.Bns."+24', '"Fast Cast"+5', "CHR+6", "Mag. Acc.+5"}},
		legs = "Psycloth Lappas",
		feet = "Regal Pumps +1",
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
