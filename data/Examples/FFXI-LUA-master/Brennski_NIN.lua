function get_sets()
	--binds--
	send_command("bind !f2 gs equip sets.CP; gs disable back; input /echo <----- CP mantle locked ----->") -- Alt F2 locks CP mantle
	send_command("bind ^f2 gs enable back; input /echo <----- CP mantle unlocked ----->") -- Ctrl F2 unlocks CP mantle

	send_command("bind !f10 gs c toggle Haste set;") -- Alt F10 swap DW for different Haste level 0 to 25 to 15
	send_command("bind !f8 gs c toggle Melee Weapon set;") -- Alt F9 swap melee weapon from Melee to Physical range to Magical range
	send_command("bind !f9 gs c toggle TP set;") -- Alt F8 swap TP Sets
	send_command("bind !f7 gs c toggle pdt set;") -- Alt F7 swap to DT
	send_command("bind !f6 gs c status check;") -- Alt F6 return sets status

	--SubJob list--
	sets.Haste = {}
	sets.Haste.index = {"Low", "Mid", "High"}
	Haste_ind = 1

	--Weapon Sets--
	sets.Weapon_melee = {}
	sets.Weapon_melee.index = {"Melee", "Prange", "Mrange"}
	Wm_ind = 1
	sets.Weapon_melee.Melee = {}
	sets.Weapon_melee.Prange = {}
	sets.Weapon_melee.Mrange = {}
	
	sets.Utility ={}
	sets.Utility.Doomed = {waist = "Gishdubar Sash", ring1 = "Saida Ring"}
	--Idle Sets--
	sets.Idle = {}
	sets.Idle.index = {"Standard", "DT"}
	Idle_ind = 1
	sets.Idle.Standard = {
		head = "Rao kabuto",
		body = "Hizamaru haramaki +1",
		hands = "Rao kote",
		legs = "Mummu Kecks +2",
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
		head = {name = "Herculean Helm", augments = {"Accuracy+19 Attack+19", "Damage taken-3%", "AGI+3", "Accuracy+2"}},
		body = "Ashera Harness",
		hands = "Kurys Gloves",
		legs = "Mummu Kecks +2",
		feet = "Amm Greaves",
		neck = "loricate torque +1",
		waist = "Flume Belt +1",
		left_ear = "Infused Earring",
		right_ear = "Genmei Earring",
		left_ring = "Defending Ring",
		right_ring = "Vocane Ring",
		back = "Moonbeam Cape"
	}

	--CP mantle set--
	sets.CP = {
		back = "Mecisto. Mantle"
	}

	--TP Sets--
	sets.TP = {}
	sets.TP.index = {"Standard", "MidAccuracy", "HighAccuracy", "Hybrid"}
	TP_ind = 1

	sets.TP.Standard = {}
	sets.TP.Standard.index = {"Low", "Mid", "High"}
	sets.TP.Standard.Low = {
		head = "Ryuo somen",
		neck = "Lissome necklace",
		left_ear = "Telos Earring",
		right_ear = "Suppanomimi",
		body = "Ashera Harness",
		hands = "Floral gauntlets",
		left_ring = "Epona's Ring",
		right_ring = "Ilabrat Ring",
		back = "Andartia's Mantle",
		waist = "Windbuffet Belt +1",
		legs = "Samnuha Tights",
		feet = "Hiza. Sune-Ate +1"
	}
	sets.TP.Standard.Mid = {
		head = "Ryuo somen",
		neck = "Lissome necklace",
		left_ear = "Telos Earring",
		right_ear = "Suppanomimi",
		body = "Ashera Harness",
		hands = {name = "Adhemar Wrist. +1", augments = {"STR+12", "DEX+12", "Attack+20"}},
		left_ring = "Epona's Ring",
		right_ring = "Ilabrat Ring",
		back = "Andartia's Mantle",
		waist = "Windbuffet Belt +1",
		legs = "Samnuha Tights",
		feet = {name = "Herculean Boots", augments = {"Accuracy+20 Attack+20", '"Triple Atk."+4'}}
	}
	sets.TP.Standard.High = {
		head = "Ken. Jinpachi",
		neck = "Moonbeam Nodowa",
		left_ear = "Telos Earring",
		right_ear = "Cessance earring",
		--body="Ashera Harness",
		body = "Ken. Samue",
		hands = {name = "Adhemar Wrist. +1", augments = {"STR+12", "DEX+12", "Attack+20"}},
		left_ring = "Epona's Ring",
		right_ring = "Ilabrat Ring",
		back = "Andartia's Mantle",
		waist = "Windbuffet Belt +1",
		legs = "Samnuha Tights",
		feet = {name = "Herculean Boots", augments = {"Accuracy+20 Attack+20", '"Triple Atk."+4'}}
	}

	sets.TP.MidAccuracy = {}
	sets.TP.MidAccuracy.index = {"Low", "Mid", "High"}
	sets.TP.MidAccuracy.Low = {
		head = "Ryuo somen",
		neck = "Moonbeam Nodowa",
		left_ear = "Telos Earring",
		right_ear = "Suppanomimi",
		body = "Ashera Harness",
		hands = "Floral gauntlets",
		left_ring = "Regal Ring",
		right_ring = "Ilabrat Ring",
		back = "Andartia's Mantle",
		waist = "Kentarch belt +1",
		legs = "Samnuha Tights",
		feet = "Hiza. Sune-Ate +1"
	}
	sets.TP.MidAccuracy.Mid = {
		head = "Ryuo somen",
		neck = "Moonbeam Nodowa",
		left_ear = "Telos Earring",
		right_ear = "Suppanomimi",
		body = "Ashera Harness",
		hands = {name = "Adhemar Wrist. +1", augments = {"STR+12", "DEX+12", "Attack+20"}},
		left_ring = "Regal Ring",
		right_ring = "Ilabrat Ring",
		back = "Andartia's Mantle",
		waist = "Kentarch belt +1",
		legs = "Samnuha Tights",
		feet = {name = "Herculean Boots", augments = {"Accuracy+20 Attack+20", '"Triple Atk."+4'}}
	}
	sets.TP.MidAccuracy.High = {
		head = "Ken. Jinpachi",
		neck = "Moonbeam Nodowa",
		left_ear = "Telos Earring",
		right_ear = "Cessance earring",
		body = "Ashera Harness",
		hands = {name = "Adhemar Wrist. +1", augments = {"STR+12", "DEX+12", "Attack+20"}},
		left_ring = "Regal Ring",
		right_ring = "Ilabrat Ring",
		back = "Andartia's Mantle",
		waist = "Kentarch belt +1",
		legs = "Samnuha Tights",
		feet = {name = "Herculean Boots", augments = {"Accuracy+20 Attack+20", '"Triple Atk."+4'}}
	}

	sets.TP.HighAccuracy = {}
	sets.TP.HighAccuracy.index = {"Low", "Mid", "High"}
	sets.TP.HighAccuracy.Low = {
		head = "Ryuo somen",
		neck = "Moonbeam Nodowa",
		left_ear = "Telos Earring",
		right_ear = "Suppanomimi",
		body = "Ashera Harness",
		hands = "Floral gauntlets",
		left_ring = "Regal Ring",
		right_ring = "Ilabrat Ring",
		back = "Andartia's Mantle",
		waist = "Kentarch belt +1",
		legs = "Samnuha Tights",
		feet = "Hiza. Sune-Ate +1"
	}
	sets.TP.HighAccuracy.Mid = {
		head = "Ryuo somen",
		neck = "Moonbeam Nodowa",
		left_ear = "Telos Earring",
		right_ear = "Suppanomimi",
		body = "Ashera Harness",
		hands = {name = "Adhemar Wrist. +1", augments = {"STR+12", "DEX+12", "Attack+20"}},
		left_ring = "Regal Ring",
		right_ring = "Ilabrat Ring",
		back = "Andartia's Mantle",
		waist = "Kentarch belt +1",
		legs = "Samnuha Tights",
		feet = {name = "Herculean Boots", augments = {"Accuracy+20 Attack+20", '"Triple Atk."+4'}}
	}
	sets.TP.HighAccuracy.High = {
		head = "Ken. Jinpachi",
		neck = "Moonbeam Nodowa",
		left_ear = "Telos Earring",
		right_ear = "Dignitary's earring",
		body = "Ashera Harness",
		hands = {name = "Adhemar Wrist. +1", augments = {"STR+12", "DEX+12", "Attack+20"}},
		left_ring = "Regal Ring",
		right_ring = "Ilabrat Ring",
		back = "Andartia's Mantle",
		waist = "Kentarch belt +1",
		legs = "Hiza. Hizayoroi +2",
		feet = {name = "Herculean Boots", augments = {"Accuracy+20 Attack+20", '"Triple Atk."+4'}}
	}

	sets.TP.Hybrid = {}
	sets.TP.Hybrid.index = {"Low", "Mid", "High"}
	sets.TP.Hybrid.Low = {
		head = "Ryuo somen",
		neck = "~Loricate Torque +1",
		left_ear = "Telos Earring",
		right_ear = "Suppanomimi",
		body = "Ashera Harness",
		hands = "Floral gauntlets",
		left_ring = "Defending Ring",
		right_ring = "Vocane Ring",
		back = "Andartia's Mantle",
		waist = "Windbuffet Belt +1",
		legs = "Mummu Kecks +2",
		feet = "Hiza. Sune-Ate +1"
	}
	sets.TP.Hybrid.Mid = {
		head = {name = "Herculean Helm", augments = {"Accuracy+19 Attack+19", "Damage taken-3%", "AGI+3", "Accuracy+2"}},
		neck = "Loricate Torque +1",
		left_ear = "Telos Earring",
		right_ear = "Suppanomimi",
		body = "Ashera Harness",
		hands = "Floral Gauntlets",
		left_ring = "Defending Ring",
		right_ring = "Ilabrat Ring",
		back = "Andartia's Mantle",
		waist = "Windbuffet Belt +1",
		legs = "Mummu Kecks +2",
		feet = "Ahosi Leggings"
	}
	sets.TP.Hybrid.High = {
		head = {name = "Herculean Helm", augments = {"Accuracy+19 Attack+19", "Damage taken-3%", "AGI+3", "Accuracy+2"}},
		neck = "Loricate Torque +1",
		left_ear = "Telos Earring",
		right_ear = "Cessance earring",
		body = "Ashera Harness",
		hands = "Kurys Gloves",
		left_ring = "Defending Ring",
		right_ring = "Ilabrat Ring",
		back = "Andartia's Mantle",
		waist = "Windbuffet Belt +1",
		legs = "Mummu Kecks +2",
		feet = "Ahosi Leggings"
	}
	--Defence Sets--
	set.PDT = {
		head = {name = "Herculean Helm", augments = {"Accuracy+19 Attack+19", "Damage taken-3%", "AGI+3", "Accuracy+2"}},
		body = "Ashera Harness",
		hands = "Kurys Gloves",
		legs = "Mummu Kecks +2",
		feet = "Amm Greaves",
		neck = "loricate torque +1",
		waist = "Flume Belt +1",
		left_ear = "Infused Earring",
		right_ear = "Genmei Earring",
		left_ring = "Defending Ring",
		right_ring = "Vocane Ring",
		back = "Moonbeam Cape"
	}
	set.MDT = {
		head = {name = "Herculean Helm", augments = {"Accuracy+19 Attack+19", "Damage taken-3%", "AGI+3", "Accuracy+2"}},
		body = "Ashera Harness",
		hands = "Kurys Gloves",
		legs = "Mummu Kecks +2",
		feet = "Amm Greaves",
		neck = "loricate torque +1",
		waist = "Flume Belt +1",
		left_ear = "Infused Earring",
		right_ear = "Genmei Earring",
		left_ring = "Defending Ring",
		right_ring = "Vocane Ring",
		back = "Moonbeam Cape"
	}
	--Weaponskill Sets--
	sets.WS = {}
	sets.WS.index = {"Attack", "Accuracy"}
	WS_ind = 1

	sets.MultiHit = {}
	sets.MultiHit.Attack = {
		head = "Adhemar Bonnet +1",
		body = "Adhemar Jacket +1",
		hands = {name = "Adhemar Wrist. +1", augments = {"STR+12", "DEX+12", "Attack+20"}},
		legs = "Samnuha tights",
		feet = {name = "Herculean Boots", augments = {"Accuracy+20 Attack+20", '"Triple Atk."+4'}},
		waist = "Fotia Belt",
		neck = "Fotia Gorget",
		right_ear = "Moonshade Earring",
		left_ear = "Telos Earring",
		right_ring = "Regal Ring",
		left_ring = "Epona's Ring",
		back = "Andartia's Mantle"
	}
	sets.MultiHit.Accuracy = {
		head = "Ken. Jinpachi",
		body = "Adhemar Jacket +1",
		hands = {name = "Adhemar Wrist. +1", augments = {"STR+12", "DEX+12", "Attack+20"}},
		legs = "Samnuha tights",
		feet = {name = "Herculean Boots", augments = {"Accuracy+20 Attack+20", '"Triple Atk."+4'}},
		waist = "Fotia Belt",
		neck = "Fotia Gorget",
		right_ear = "Moonshade Earring",
		left_ear = "Telos Earring",
		right_ring = "Regal Ring",
		left_ring = "Epona's Ring",
		back = "Andartia's Mantle"
	}

	sets.OneHit = {}
	sets.OneHit.Attack = {
		head = {name = "Herculean Helm", augments = {"Accuracy+24 Attack+24", "Weapon skill damage +5%", "DEX+4"}},
		body = {name = "Herculean Vest", augments = {"Accuracy+21 Attack+21", "Weapon skill damage +4%", "DEX+4", "Attack+5"}},
		hands = {name = "Herculean Gloves", augments = {"Accuracy+21 Attack+21", '"Triple Atk."+2', "STR+11", "Accuracy+9"}},
		legs = "Hiza. Hizayoroi +2",
		feet = {
			name = "Herculean Boots",
			augments = {"Accuracy+22 Attack+22", "Weapon skill damage +4%", "STR+3", "Attack+8"}
		},
		neck = "Caro Necklace",
		waist = "Grunfeld Rope",
		left_ear = "Ishvara Earring",
		right_ear = {name = "Moonshade Earring", augments = {"Accuracy+4", "TP Bonus +25"}},
		right_ring = "Regal Ring",
		right_ring = "Ilabrat Ring",
		back = "Yokaze Mantle"
	}
	sets.OneHit.Accuracy = {
		head = {name = "Herculean Helm", augments = {"Accuracy+24 Attack+24", "Weapon skill damage +5%", "DEX+4"}},
		body = {name = "Herculean Vest", augments = {"Accuracy+21 Attack+21", "Weapon skill damage +4%", "DEX+4", "Attack+5"}},
		hands = {name = "Herculean Gloves", augments = {"Accuracy+21 Attack+21", '"Triple Atk."+2', "STR+11", "Accuracy+9"}},
		legs = "Hiza. Hizayoroi +2",
		feet = {
			name = "Herculean Boots",
			augments = {"Accuracy+22 Attack+22", "Weapon skill damage +4%", "STR+3", "Attack+8"}
		},
		neck = "Caro Necklace",
		waist = "Grunfeld Rope",
		left_ear = "Ishvara Earring",
		right_ear = {name = "Moonshade Earring", augments = {"Accuracy+4", "TP Bonus +25"}},
		right_ring = "Regal Ring",
		right_ring = "Ilabrat Ring",
		back = "Yokaze Mantle"
	}

	sets.OtherWS = {}
	sets.OtherWS.Attack = {
		head = {name = "Herculean Helm", augments = {"Accuracy+24 Attack+24", "Weapon skill damage +5%", "DEX+4"}},
		body = "Adhemar Jacket +1",
		hands = {name = "Herculean Gloves", augments = {"Accuracy+21 Attack+21", '"Triple Atk."+2', "STR+11", "Accuracy+9"}},
		legs = "Hiza. Hizayoroi +2",
		feet = {name = "Herculean Boots", augments = {"Accuracy+20 Attack+20", '"Triple Atk."+4'}},
		neck = "Caro Necklace",
		waist = "Grunfeld Rope",
		right_ear = "Moonshade Earring",
		left_ear = "Telos Earring",
		left_ring = "Ilabrat Ring",
		right_ring = "Regal Ring",
		back = "Andartia's Mantle"
	}
	sets.OtherWS.Accuracy = {
		head = {name = "Herculean Helm", augments = {"Accuracy+24 Attack+24", "Weapon skill damage +5%", "DEX+4"}},
		body = "Adhemar Jacket +1",
		hands = {name = "Herculean Gloves", augments = {"Accuracy+21 Attack+21", '"Triple Atk."+2', "STR+11", "Accuracy+9"}},
		legs = "Hiza. Hizayoroi +2",
		feet = {name = "Herculean Boots", augments = {"Accuracy+20 Attack+20", '"Triple Atk."+4'}},
		neck = "Caro Necklace",
		waist = "Grunfeld Rope",
		right_ear = "Moonshade Earring",
		left_ear = "Telos Earring",
		left_ring = "Ilabrat Ring",
		right_ring = "Regal Ring",
		back = "Andartia's Mantle"
	}

	sets.AeolianEdge = {}
	sets.AeolianEdge = {
		head = {
			name = "Herculean Helm",
			augments = {'Mag. Acc.+20 "Mag.Atk.Bns."+20', '"Dbl.Atk."+2', "Mag. Acc.+12", '"Mag.Atk.Bns."+4'}
		},
		neck = "Sanctity Necklace",
		ear2 = "Friomisi earring",
		ear1 = "Moonshade Earring",
		body = "Samnuha Coat",
		hands = "Leyline",
		ring1 = "Acumen Ring",
		ring2 = "Dingir Ring",
		waist = "Eschan Stone",
		back = "Yokaze Mantle",
		legs = "Hiza. Hizayoroi +2",
		feet = {
			name = "Herculean Boots",
			augments = {'"Mag.Atk.Bns."+27', "Weapon skill damage +4%", "Quadruple Attack +1", 'Mag. Acc.+14 "Mag.Atk.Bns."+14'}
		}
	}

	--Job Ability Sets--
	sets.JA = {}

	--Magic Sets---

	sets.Magic = {}

	sets.Magic.Self = {
		head = {name = "Herculean Helm", augments = {"Accuracy+19 Attack+19", "Damage taken-3%", "AGI+3", "Accuracy+2"}},
		body = "Ashera Harness",
		hands = "Leyline Gloves",
		legs = {
			name = "Herculean Trousers",
			augments = {'Mag. Acc.+16 "Mag.Atk.Bns."+16', "Weapon skill damage +2%", "Mag. Acc.+14", '"Mag.Atk.Bns."+13'}
		},
		neck = "Voltsurge Torque",
		waist = "Flume Belt +1",
		left_ear = "Etiolation Earring",
		right_ear = "Loquac. Earring",
		right_ring = "Kishar Ring",
		left_ring = "Defending Ring",
		feet = "Hattori Kyahan",
		back = "Andartia's Mantle"
	}

	sets.Magic.Nuke = {
		head = {
			name = "Herculean Helm",
			augments = {'Mag. Acc.+20 "Mag.Atk.Bns."+20', '"Dbl.Atk."+2', "Mag. Acc.+12", '"Mag.Atk.Bns."+4'}
		},
		neck = "Sanctity Necklace",
		ear2 = "Friomisi earring",
		ear1 = "Dignitary's Earring",
		body = "Samnuha Coat",
		hands = "Leyline Gloves",
		ring1 = "Dingir Ring",
		ring2 = "Acumen Ring",
		waist = "Eschan Stone",
		back = "Izdubar Mantle",
		legs = {
			name = "Herculean Trousers",
			augments = {'Mag. Acc.+16 "Mag.Atk.Bns."+16', "Weapon skill damage +2%", "Mag. Acc.+14", '"Mag.Atk.Bns."+13'}
		},
		feet = {
			name = "Herculean Boots",
			augments = {'"Mag.Atk.Bns."+27', "Weapon skill damage +4%", "Quadruple Attack +1", 'Mag. Acc.+14 "Mag.Atk.Bns."+14'}
		}
	}

	sets.Magic.Debuff = {}
	--Low special gear--
	sets.obi = {
		waist = "Hachirin-no-Obi"
	}

	sets.lightnuke = {
		left_ring = "Weatherspoon Ring"
	}

	--Precast Sets--
	sets.snapshot = {
		head = "Amini Gapette", -- 7
		body = "Oshosi Vest", -- 7
		hands = "Carmine Finger Gauntlets +1", --8
		back = "Lutian Cape", -- 2
		legs = "Adhemar Kecks",
		waist = "Impulse Belt", -- 2
		feet = "Meg. Jam. +2" -- 8
	}
	sets.precast = {}
	sets.precast.FC = {
		--ammo="Staunch Tathlum",
		head = {name = "Herculean Helm", augments = {"Accuracy+19 Attack+19", "Damage taken-3%", "AGI+3", "Accuracy+2"}},
		body = "Adhemar Jacket",
		hands = "Leyline Gloves",
		legs = {name = "Herculean Trousers", augments = {"Mag. Acc.+21", '"Fast Cast"+5', "CHR+3"}},
		feet = "Herculean Boots",
		neck = "Voltsurge Torque",
		waist = "Flume Belt +1",
		left_ear = "Etiolation Earring",
		right_ear = "Loquac. Earring",
		left_ring = "Rahab Ring",
		right_ring = "Kishar Ring",
		back = "Mujin Mantle"
	}
end

function precast(spell)
	if spell.type == "Ranged Attack" then
		equip(sets.snapshot)
	elseif spell.type == "WeaponSkill" then
		if player.tp >= 1000 then
			if
				spell.english == "Evisceration" or spell.english == "Blade: Shun" or spell.english == "Blade: Jin" or
					spell.english == "Blade: Ku"
			 then
				equip(sets.MultiHit[sets.WS.index[WS_ind]])
			elseif
				spell.english == "Blade: Hi" or spell.english == "Blade: Ten" or spell.english == "Blade: Chi" or
					spell.english == "Blade: Kamu" or
					spell.english == "Blade: Yu"
			 then
				equip(sets.OneHit[sets.WS.index[WS_ind]])
			elseif spell.type == "WeaponSkill" then
				equip(sets.OtherWS[sets.WS.index[WS_ind]])
			end
		else
			cancel_spell()
			windower.add_to_chat(121, "Canceled " .. spell.name .. " " .. spell.target.name .. " is Too Far")
		end
	elseif spell.type == "Magic" then
		equip(sets.precast.FC)
	end
end

function midcast(spell, act)
	if
		spell.english == "Utsusemi: Ichi" or spell.english == "Utsusemi: Ni" or spell.english == "Utsusemi: San" or
			spell.english == "Migawari: Ichi" or
			spell.english == "Kakka: Ichi" or
			spell.english == "Yain: Ichi" or
			spell.english == "Ashia: Ichi" or
			spell.english == "Yurin: Ichi" or
			spell.english == "Myoshu: Ichi" or
			spell.english == "Gekka: Ichi"
	 then
		equip(sets.Magic.Self)
	elseif spell.type == "Magic" then
		equip(sets.Maigc.Nuke)
		if spell.element == world.day_element or spell.element == world.weather_element then
			equip(sets.Obi)
		end
	end
end

function aftercast(spell)
	if player.status == "Engaged" then
		equip(
			set_combine(
				sets.TP[sets.TP.index[TP_ind]][sets.Haste.index[Haste_ind]],
				sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]]
			)
		)
	else
		equip(set_combine(sets.Idle[sets.Idle.index[Idle_ind]]))
	end
end

function status_change(new, old)
	if new == "Engaged" then
		equip(
			set_combine(
				sets.TP[sets.TP.index[TP_ind]][sets.Haste.index[Haste_ind]],
				sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]]
			)
		)
	else
		equip(set_combine(sets.Idle[sets.Idle.index[Idle_ind]]))
	end
end

function buff_change(buff, gain)
	if (buff == "terror" or buff == "stun" or (buff == "sleep" or buff == "lullaby")) then
		if gain then
			if player.status == "Engaged" then
				equip(sets.Idle.DT)
			elseif player.status == "Idle" then
				equip(sets.Idle.DT)
			end
		else
			if player.status == "Engaged" then
				equip(
				set_combine(
				sets.TP[sets.TP.index[TP_ind]][sets.Haste.index[Haste_ind]],
				sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]]
			)
		)
			elseif player.status == "Idle" then
				equip(sets.Idle[sets.Idle.index[Idle_ind]])
			end
		end
	end
	if buff == "doom" or buff == "curse" then
		if gain then
			equip(sets.Utility.Doomed)
		else
			if player.status == "Engaged" then
			equip(
				set_combine(
				sets.TP[sets.TP.index[TP_ind]][sets.Haste.index[Haste_ind]],
				sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]]
			)
		)
			elseif player.status == "Idle" then
				equip(sets.Idle[sets.Idle.index[Idle_ind]])
			end
		end
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
		send_command("@input /echo <----- Haste Set changed to " .. sets.Haste.index[Haste_ind] .. " ----->")
		equip(
			set_combine(
				sets.TP[sets.TP.index[TP_ind]][sets.Haste.index[Haste_ind]],
				sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]]
			)
		)
	elseif command == "toggle Haste set" then
		Haste_ind = Haste_ind + 1
		if Haste_ind > #sets.Haste.index then
			Haste_ind = 1
		end
		send_command("@input /echo <----- TP Set changed to " .. sets.TP.index[TP_ind] .. " ----->")
		send_command("@input /echo <----- WS set changed to " .. sets.WS.index[WS_ind] .. " ----->")
		send_command("@input /echo <----- Haste Set changed to " .. sets.Haste.index[Haste_ind] .. " ----->")
		equip(
			set_combine(
				sets.TP[sets.TP.index[TP_ind]][sets.Haste.index[Haste_ind]],
				sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]]
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
				sets.TP[sets.TP.index[TP_ind]][sets.Haste.index[Haste_ind]],
				sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]]
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
				sets.TP[sets.TP.index[TP_ind]][sets.Haste.index[Haste_ind]],
				sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]]
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
				sets.TP[sets.TP.index[TP_ind]][sets.Haste.index[Haste_ind]],
				sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]]
			)
		)
	elseif command == "toggle idle set" then
		Idle_ind = Idle_ind + 1
		if Idle_ind > #sets.Idle.index then
			Idle_ind = 1
		end
		send_command("@input /echo <----- Idle Set changed to " .. sets.Idle.index[Idle_ind] .. " ----->")
		equip(set_combine(sets.Idle[sets.Idle.index[Idle_ind]]))
	elseif command == "toggle pdt set" then
		equip(set.PDT)
		send_command("@input /echo <----- PDT set Equipped ----->")
	elseif command == "toggle mdt set" then
		equip(set.MDT)
		send_command("@input /echo <----- MDT set Equipped ----->")
	elseif command == "status check" then
		send_command("@input /echo <----- Melee weapon changed to " .. sets.Weapon_melee.index[Wm_ind] .. " ----->")
		send_command("@input /echo <----- Range weapon changed to " .. sets.Weapon_range.index[Wr_ind] .. " ----->")
		send_command("@input /echo <----- Haste Set changed to " .. sets.Haste.index[Haste_ind] .. " ----->")
		send_command("@input /echo <----- TP Set changed to " .. sets.TP.index[TP_ind] .. " ----->")
		send_command("@input /echo <----- WS set changed to " .. sets.WS.index[WS_ind] .. " ----->")
	end
end
