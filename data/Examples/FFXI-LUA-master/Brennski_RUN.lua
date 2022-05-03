--To toggle gearsets:
--Main command: //gs c toggle x set       where x = set name variable. Variables are as follows: --
--Idle sets: Idle, TP sets: TP--
--Resolution sets: Res, Requiescat sets: Req--

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

	--Idle Sets--
	sets.Idle = {}

	sets.Idle.index = {"Standard", "DT", "Cleave"}

	Idle_ind = 1

	sets.Idle.Standard = {
		ammo = "Homiliary",
		head = {
			name = "Herculean Helm",
			augments = {"Pet: CHR+2", 'Potency of "Cure" effect received+3%', '"Refresh"+2', 'Mag. Acc.+1 "Mag.Atk.Bns."+1'}
		},
		neck = "Sanctity Necklace",
		right_ear = "Genmei earring",
		left_ear = "Infused Earring",
		body = "Runeist's Coat +3",
		hands = "Regal Gauntlets",
		ring1 = "Defending ring",
		right_ring = "Vocane Ring",
		back = {name = "Ogma's cape", augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Mag. Evasion+10", "Enmity+10"}},
		waist = "Fucho-no-obi",
		legs = "Carmine Cuisses +1",
		feet = {name = "Herculean Boots", augments = {"CHR+6", "STR+14", '"Refresh"+1', 'Mag. Acc.+14 "Mag.Atk.Bns."+14'}}
	}

	sets.Idle.DT = {
		ammo = "Staunch Tathlum",
		head = {name = "Herculean Helm", augments = {"Accuracy+19 Attack+19", "Damage taken-3%", "AGI+3", "Accuracy+2"}},
		neck = "Futhark Torque +1",
		left_ear = "Odnowa Earring +1",
		right_ear = "Hearty Earring",
		body = "Ashera Harness",
		hands = "Regal Gauntlets",
		ring1 = "Defending ring",
		right_ring = "Vocane Ring",
		back = {name = "Ogma's cape", augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Mag. Evasion+10", "Enmity+10"}},
		waist = "Flume Belt +1",
		legs = "Eri. Leg Guards +1",
		feet = "Erilaz Greaves +1"
	}

	sets.Idle.Cleave = {
		ammo = "Staunch Tathlum",
		head = {name = "Herculean Helm", augments = {"Accuracy+19 Attack+19", "Damage taken-3%", "AGI+3", "Accuracy+2"}},
		neck = "Futhark Torque +1",
		left_ear = "Odnowa Earring +1",
		right_ear = "Etiolation Earring",
		body = "Ashera Harness",
		hands = "Regal Gauntlets",
		ring1 = "Defending ring",
		right_ring = "Vocane Ring",
		back = {name = "Ogma's cape", augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Mag. Evasion+10", "Enmity+10"}},
		waist = "Flume Belt +1",
		legs = "Carmine Cuisses +1",
		feet = "Erilaz Greaves +1"
	}

	--Weapons--

	sets.Weapons = {}

	sets.Weapons.Index = {"Lionheart", "Aettir", "Epeolatry", "Sword"}
	Weapons_ind = 1

	sets.Weapons.Lionheart = {main = "Lionheart", sub = "Utu Grip"}

	sets.Weapons.Aettir = {
		main = {name = "Aettir", augments = {"Accuracy+70", "Mag. Evasion+50", "System: 2 ID: 114 Val: 9"}},
		sub = "Refined Grip +1"
	}

	sets.Weapons.Epeolatry = {main = "Epeolatry", sub = "Utu Grip"}

	sets.Weapons.Sword = {main = "Reikiko"}

	--TP Sets--
	sets.TP = {}

	sets.TP.index = {"Standard", "TankTP", "MDTank", "HPB", "StatusResist"}
	--1=Standard,2=DT, 3=MDTtank, 4=HPB, 5=StatusResist--
	TP_ind = 1
	sets.TP.Standard = {
		ammo = "Yamarang",
		head = "Adhemar Bonnet +1",
		neck = "Lissome necklace",
		left_ear = "Telos Earring",
		right_ear = "Sherida earring",
		-- body="Adhemar Jacket +1",
		body = "Ashera Harness",
		hands = {name = "Adhemar Wrist. +1", augments = {"STR+12", "DEX+12", "Attack+20"}},
		left_ring = "Epona's Ring",
		right_ring = "Niqmaddu Ring",
		back = {
			name = "Ogma's cape",
			augments = {"STR+20", "Accuracy+20 Attack+20", "STR+10", '"Dbl.Atk."+10', "Phys. dmg. taken-10%"}
		},
		waist = "Ioskeha belt +1",
		legs = "Samnuha Tights",
		feet = {name = "Herculean Boots", augments = {"Accuracy+20 Attack+20", '"Triple Atk."+4'}}
	}

	sets.TP.TankTP = {
		ammo = "Yamarang",
		head = "Adhemar Bonnet +1",
		neck = "Lissome necklace",
		left_ear = "Telos Earring",
		right_ear = "Sherida earring",
		body = "Ashera Harness",
		hands = {name = "Adhemar Wrist. +1", augments = {"STR+12", "DEX+12", "Attack+20"}},
		left_ring = "Epona's Ring",
		right_ring = "Niqmaddu Ring",
		back = {
			name = "Ogma's cape",
			augments = {"STR+20", "Accuracy+20 Attack+20", "STR+10", '"Dbl.Atk."+10', "Phys. dmg. taken-10%"}
		},
		waist = "Ioskeha belt +1",
		legs = "Meghanada Chausses +2",
		feet = "Turms Leggings +1"
	}

	sets.TP.MDTank = {
		ammo = "Staunch Tathlum",
		head = {name = "Herculean Helm", augments = {"Accuracy+19 Attack+19", "Damage taken-3%", "AGI+3", "Accuracy+2"}},
		body = "Ashera Harness",
		--hands="Regal Gauntlets",
		hands = "Runeist's Mitons +3",
		legs = "Eri. Leg Guards +1",
		feet = "Turms Leggings +1",
		neck = "Futhark Torque +1",
		waist = "Flume Belt +1",
		left_ear = "Odnowa Earring +1",
		right_ear = "Etiolation Earring",
		left_ring = "Defending Ring",
		right_ring = "Vocane Ring",
		back = {name = "Ogma's cape", augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Mag. Evasion+10", "Enmity+10"}}
	}
	sets.TP.HPB = {
		ammo = "Staunch Tathlum",
		head = "Erilaz galea +1",
		body = "Ashera Harness",
		hands = "Regal Gauntlets",
		legs = "Eri. Leg Guards +1",
		feet = "Turms Leggings +1",
		neck = "Futhark Torque +1",
		waist = "Flume Belt +1",
		left_ear = "Odnowa Earring +1",
		right_ear = "Odnowa Earring",
		left_ring = "Defending Ring",
		right_ring = "Vocane Ring",
		back = "Moonbeam Cape"
	}

	sets.TP.StatusResist = {
		ammo = "Staunch Tathlum",
		head = {name = "Herculean Helm", augments = {"Accuracy+19 Attack+19", "Damage taken-3%", "AGI+3", "Accuracy+2"}},
		body = "Ashera Harness",
		Hands = "Volte Bracers",
		legs = "Rune. Trousers +3",
		feet = "Erilaz Greaves +1",
		neck = "Futhark Torque +1",
		waist = "Engraved Belt",
		right_ear = "Hearty Earring",
		left_ear = "Odnowa Earring +1",
		left_ring = "Vocane Ring",
		right_ring = "Defending Ring",
		back = {name = "Ogma's cape", augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Mag. Evasion+10", "Enmity+10"}}
	}

	--Weaponskill Sets--
	sets.WS = {}

	sets.Resolution = {}

	sets.Resolution.index = {"Attack"}
	Resolution_ind = 1

	sets.Resolution.Attack = {
		ammo = "Seeth. Bomblet +1",
		head = "Adhemar Bonnet +1",
		body = "Adhemar Jacket +1",
		hands = {name = "Adhemar Wrist. +1", augments = {"STR+12", "DEX+12", "Attack+20"}},
		legs = "Samnuha Tights",
		feet = "Lustra. Leggings +1",
		neck = "Fotia Gorget",
		waist = "Fotia Belt",
		left_ear = {name = "Moonshade Earring", augments = {"Accuracy+4", "TP Bonus +25"}},
		right_ear = "Sherida Earring",
		right_ring = "Niqmaddu Ring",
		left_ring = "Regal Ring",
		back = {
			name = "Ogma's cape",
			augments = {"STR+20", "Accuracy+20 Attack+20", "STR+10", '"Dbl.Atk."+10', "Phys. dmg. taken-10%"}
		}
	}

	sets.Dimidiation = {}

	sets.Dimidiation.index = {"Attack"}
	Dimidiation_ind = 1

	sets.Dimidiation.Attack = {
		ammo = "Knobkierrie",
		head = {name = "Herculean Helm", augments = {"Accuracy+24 Attack+24", "Weapon skill damage +5%", "DEX+4"}},
		body = {name = "Herculean Vest", augments = {"Accuracy+21 Attack+21", "Weapon skill damage +4%", "DEX+4", "Attack+5"}},
		hands = "Meg. Gloves +2",
		legs = {
			name = "Herculean Trousers",
			augments = {"Accuracy+12 Attack+12", "Weapon skill damage +3%", "DEX+9", "Accuracy+13"}
		},
		feet = {
			name = "Herculean Boots",
			augments = {"Accuracy+22 Attack+22", "Weapon skill damage +4%", "STR+3", "Attack+8"}
		},
		neck = "Caro Necklace",
		waist = "Grunfeld Rope",
		left_ear = "Ishvara Earring",
		right_ear = {name = "Moonshade Earring", augments = {"Accuracy+4", "TP Bonus +25"}},
		left_ring = "Regal Ring",
		right_ring = "Ilabrat Ring",
		back = {name = "Ogma's cape", augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", "Weapon skill damage +10%"}}
	}

	sets.Requiescat = {}

	sets.Requiescat.index = {"Attack"}
	Requiescat_ind = 1

	sets.Requiescat.Attack = {
		ammo = "Seeth. Bomblet +1",
		head = "Adhemar Bonnet +1",
		neck = "Fotia gorget",
		right_ear = "Brutal earring",
		left_ear = "Moonshade earring",
		body = "Adhemar Jacket +1",
		hands = {name = "Adhemar Wrist. +1", augments = {"STR+12", "DEX+12", "Attack+20"}},
		right_ring = "Niqmaddu Ring",
		left_ring = "Regal ring",
		back = {
			name = "Ogma's cape",
			augments = {"STR+20", "Accuracy+20 Attack+20", "STR+10", '"Dbl.Atk."+10', "Phys. dmg. taken-10%"}
		},
		waist = "Fotia belt",
		legs = "Samnuha Tights",
		feet = {name = "Herculean Boots", augments = {"Accuracy+20 Attack+20", '"Triple Atk."+4'}}
	}

	sets.FellCleave = {}

	sets.FellCleave.index = {"Attack"}
	FellCleave_ind = 1

	sets.FellCleave.Attack = {
		ammo = "Seeth. Bomblet +1",
		head = "Adhemar Bonnet +1",
		body = "Adhemar Jacket +1",
		hands = {name = "Adhemar Wrist. +1", augments = {"STR+12", "DEX+12", "Attack+20"}},
		legs = "Samnuha Tights",
		feet = "Lustra. Leggings +1",
		neck = "Fotia Gorget",
		waist = "Fotia Belt",
		left_ear = {name = "Moonshade Earring", augments = {"Accuracy+4", "TP Bonus +25"}},
		right_ear = "Telos Earring",
		right_ring = "Niqmaddu Ring",
		left_ring = "Regal ring",
		back = {
			name = "Ogma's cape",
			augments = {"STR+20", "Accuracy+20 Attack+20", "STR+10", '"Dbl.Atk."+10', "Phys. dmg. taken-10%"}
		}
	}

	sets.SavageBlade = {}

	sets.SavageBlade.index = {"Attack"}
	SavageBlade_ind = 1

	sets.SavageBlade.Attack = {
		ammo = "Knobkierrie",
		head = {name = "Herculean Helm", augments = {"Accuracy+24 Attack+24", "Weapon skill damage +5%", "DEX+4"}},
		neck = "Caro Necklace",
		right_ear = "Ishvara Earring",
		left_ear = "Moonshade Earring",
		body = {name = "Herculean Vest", augments = {"Accuracy+21 Attack+21", "Weapon skill damage +4%", "DEX+4", "Attack+5"}},
		hands = "Meg. Gloves +2",
		right_ring = "Niqmaddu Ring",
		left_ring = "Regal Ring",
		back = {name = "Ogma's cape", augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", "Weapon skill damage +10%"}},
		waist = "Grunfeld Rope",
		legs = {
			name = "Herculean Trousers",
			augments = {"Accuracy+12 Attack+12", "Weapon skill damage +3%", "DEX+9", "Accuracy+13"}
		},
		feet = {
			name = "Herculean Boots",
			augments = {"Accuracy+22 Attack+22", "Weapon skill damage +4%", "STR+3", "Attack+8"}
		}
	}

	--Utility Sets--
	sets.Utility = {}

	sets.Utility.Phalanx = {
		ammo = "Sapience Orb",
		Head ="Fu. Bandeau +2",
		neck = "Incanter's Torque",
		left_ear = "Andoaa Earring",
		right_ear = "Genmei earring",
		body={ name="Taeon Tabard", augments={'"Conserve MP"+5','Phalanx +3',}},
		hands = "Regal Gauntlets",
		waist = "Olympus Sash",
		ring1 = "Stikini Ring",
		right_ring = "Supershear Ring",
		legs = {name = "Futhark Trousers +1", augments = {'Enhances "Inspire" effect'}},
		feet = {
			name = "Herculean Boots",
			augments = {
				"Magic burst dmg.+6%",
				'"Fast Cast"+1',
				"Phalanx +4",
				"Accuracy+14 Attack+14",
				'Mag. Acc.+16 "Mag.Atk.Bns."+16'
			}
		},
		back = "Evasionist's cape"
	}

	sets.Utility.Regen = {
		head = "Rune. Bandeau +2",
		neck = "Incanter's Torque",
		right_ear = "Genmei earring",
		left_ear = "Augment. earring",
		body = {name = "Futhark Coat +1", augments = {'Enhances "Elemental Sforzo" effect'}},
		hands = "Runeist's Mitons +3",
		ring1 = "Rahab ring",
		right_ring = "Supershear Ring",
		back = "Moonbeam Cape",
		waist = "Flume Belt +1",
		legs = "Futhark Trousers +1",
		feet = "Erilaz Greaves +1"
	}

	sets.Utility.SID = {
		ammo = "Staunch Tathlum",
		head = "Herculean Helm",
		neck = "Incanter's Torque",
		right_ear = "Genmei earring",
		left_ear = "Odnowa Earring +1",
		body = "Emet Harness +1",
		hands = "Herculean Gloves",
		ring1 = "Evanescence Ring",
		right_ring = "Supershear Ring",
		back = "Evasionist's cape",
		waist = "Flume Belt +1",
		legs = "Carmine Cuisses +1",
		feet = "Erilaz Greaves +1"
	}

	sets.Utility.Enmity = {
		ammo = "Sapience Orb",
		head = "Halitus Helm",
		neck = "Unmoving Collar +1",
		right_ear = "Friomisi Earring",
		left_ear = "Odnowa Earring +1",
		body = "Emet harness +1",
		hands = "Kurys Gloves",
		waist = "Trance belt",
		ring1 = "Supershear Ring",
		right_ring = "Petrov Ring",
		legs = "Erilaz Leg Guards +1",
		feet = "Ahosi Leggings",
		back = {name = "Ogma's cape", augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Mag. Evasion+10", "Enmity+10"}}
	}

	sets.Utility.Enhancing = {
		ammo = "Sapience Orb",
		head = "Erilaz Galea +1",
		neck = "Incanter's Torque",
		right_ear = "Andoaa Earring",
		right_ear = "Genmei earring",
		body = "Emet harness +1",
		hands = "Regal Gauntlets",
		waist = "Olympus Sash",
		ring1 = "Stikini Ring",
		right_ring = "Supershear Ring",
		legs = "Futhark Trousers +1",
		feet = "Erilaz Greaves +1",
		back = {name = "Ogma's cape", augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Mag. Evasion+10", "Enmity+10"}}
	}

	sets.Utility.EnhancingSkill = {
		ammo = "Sapience Orb",
		head = "Erilaz Galea +1",
		body = "Emet Harness +1",
		hands = "Runeist's Mitons +3",
		legs = {name = "Carmine Cuisses +1", augments = {"Accuracy+20", "Attack+12", '"Dual Wield"+6'}},
		feet = "Erilaz Greaves +1",
		neck = "Incanter's Torque",
		waist = "Olympus Sash",
		left_ear = "Genmei Earring",
		right_ear = "Andoaa Earring",
		left_ring = "Stikini Ring",
		right_ring = "Supershear Ring",
		back = {name = "Ogma's cape", augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Mag. Evasion+10", "Enmity+10"}}
	}

	sets.Utility.Refresh = {
		ammo = "Sapience Orb",
		head = "Erilaz Galea +1",
		neck = "Incanter's Torque",
		right_ear = "Andoaa Earring",
		right_ear = "Genmei earring",
		body = "Emet harness +1",
		hands = "Regal Gauntlets",
		waist = "Gishdubar Sash",
		ring1 = "Stikini Ring",
		right_ring = "Supershear Ring",
		legs = {name = "Futhark Trousers +1", augments = {'Enhances "Inspire" effect'}},
		feet = "Erilaz Greaves +1",
		back = {name = "Ogma's cape", augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Mag. Evasion+10", "Enmity+10"}}
	}

	sets.Utility.Doomed = {waist = "Gishdubar Sash", ring1 = "Saida Ring"}

	--Job Ability Sets--
	sets.JA = {}
	sets.JA.VP = {legs = "Rune. Trousers +3", ring1 = "Stikini Ring", neck = "Incanter's Torque", head = "Erilaz Galea +1"}

	sets.JA.Leiment = {body = {name = "Futhark Coat +1", augments = {'Enhances "Elemental Sforzo" effect'}}}

	sets.JA.Embolen = {back = "Evasionist's cape"}

	sets.JA.Lunge = {
		ammo = "Seeth. Bomblet +1",
		head = {
			name = "Herculean Helm",
			augments = {'Mag. Acc.+20 "Mag.Atk.Bns."+20', '"Dbl.Atk."+2', "Mag. Acc.+12", '"Mag.Atk.Bns."+4'}
		},
		neck = "Sanctity Necklace",
		right_ear = "Friomisi earring",
		left_ear = "Odnowa Earring +1",
		body = "Samnuha Coat",
		hands = "Carmine Finger Gauntlets +1",
		ring1 = "Acumen Ring",
		right_ring = "Supershear Ring",
		waist = "Eschan Stone",
		back = "Evasionist's cape",
		legs = {
			name = "Herculean Trousers",
			augments = {'Mag. Acc.+16 "Mag.Atk.Bns."+16', "Weapon skill damage +2%", "Mag. Acc.+14", '"Mag.Atk.Bns."+13'}
		},
		feet = {
			name = "Herculean Boots",
			augments = {'"Mag.Atk.Bns."+27', "Weapon skill damage +4%", "Quadruple Attack +1", 'Mag. Acc.+14 "Mag.Atk.Bns."+14'}
		}
	}

	sets.JA.Vallation = {
		body = "Runeist's Coat +3",
		back = {name = "Ogma's cape", augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Mag. Evasion+10", "Enmity+10"}},
		legs = {name = "Futhark Trousers +1", augments = {'Enhances "Inspire" effect'}}
	}

	sets.JA.Battuta = {Head ="Fu. Bandeau +2", hands = "Turms Mittens"}

	sets.JA.BattutaActive = {hands = "Turms Mittens"}

	sets.JA.Gambit = {hands = "Runeist's Mitons +3", waist = "Chaac Belt"}

	sets.JA.Pflug = {feet = "Runeist's Boots +3"}

	sets.JA.Rayke = {
		feet = {name = "Futhark Boots", augments = {'Enhances "Rayke" effect'}},
		waist = "Chaac Belt",
		Hands = "Volte Bracers"
	}

	sets.JA.Steps = {
		ammo = "Staunch Tathlum",
		head = {name = "Herculean Helm", augments = {"Accuracy+19 Attack+19", "Damage taken-3%", "AGI+3", "Accuracy+2"}},
		body = "Ashera Harness",
		hands = "Runeist's Mitons +3",
		legs = "Rune. Trousers +3",
		feet = "Ahosi Leggings",
		neck = "Futhark Torque +1",
		waist = "Flume Belt +1",
		left_ear = "Odnowa Earring +1",
		right_ear = "Hearty Earring",
		left_ring = "Defending Ring",
		right_ring = "Vocane Ring",
		back = {name = "Ogma's cape", augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Mag. Evasion+10", "Enmity+10"}}
	}

	--Precast Sets--
	sets.precast = {}

	sets.precast.FC = {}

	sets.precast.FC.Standard = {
		ammo = "Sapience Orb",
		head = "Carmine Mask +1",
		neck = "Voltsurge Torque",
		right_ear = "Loquac. Earring",
		left_ear = "Etiolation Earring",
		body = "Adhemar Jacket",
		hands = "Regal Gauntlets",
		waist = "Flume Belt +1",
		left_ring = "Defending Ring",
		right_ring = "Vocane Ring",
		legs = "Aya. Cosciales +2",
		feet = "Carmine Greaves +1",
		back = {name = "Ogma's cape", augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Mag. Evasion+10", "Enmity+10"}}
	}

	sets.precast.FC.Enhancing = {
		ammo = "Sapience Orb",
		head = "Carmine Mask +1",
		neck = "Voltsurge Torque",
		right_ear = "Loquac. Earring",
		left_ear = "Etiolation Earring",
		body = "Adhemar Jacket",
		hands = "Regal Gauntlets",
		waist = "Flume Belt +1",
		left_ring = "Defending Ring",
		right_ring = "Vocane Ring",
		legs = {name = "Futhark Trousers +1", augments = {'Enhances "Inspire" effect'}},
		feet = "Carmine Greaves +1",
		back = {name = "Ogma's cape", augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Mag. Evasion+10", "Enmity+10"}}
	}

	sets.precast.FC.Enmity = {
		ammo = "Sapience Orb",
		head = "Carmine Mask +1",
		neck = "Unmoving Collar +1",
		right_ear = "Loquac. Earring",
		left_ear = "Etiolation Earring",
		body = "Adhemar Jacket",
		hands = "Regal Gauntlets",
		waist = "Flume Belt +1",
		left_ring = "Defending Ring",
		right_ring = "Vocane Ring",
		legs = "Aya. Cosciales +2",
		feet = "Carmine Greaves +1",
		back = {name = "Ogma's cape", augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Mag. Evasion+10", "Enmity+10"}}
	}
end

function precast(spell)
	if spell.type == "Magic" then
		equip(sets.precast.FC.Standard)
	elseif spell.skill == "Enhancing Magic" then
		equip(sets.precast.FC.Enhancing)
	elseif spell.skill == "Ninjutsu" then
		equip(sets.precast.FC.Standard)
	elseif spell.english == "Vivacious Pulse" then
		equip(set_combine(sets.Utility.Enmity, sets.JA.VP))
	elseif spell.english == "Lunge" or spell.english == "Swipe" or spell.english == "Herculean Slash" then
		equip(sets.JA.Lunge)
	elseif spell.english == "Vallation" or spell.english == "Valiance" then
		equip(set_combine(sets.Utility.Enmity, sets.JA.Vallation))
	elseif
		spell.english == "Flash" or spell.skill == "Enfeebling Magic" or spell.english == "Foil" or
			spell.skill == "Dark Magic" or
			spell.skill == "Blue Magic"
	 then
		equip(sets.precast.FC.Enmity)
	elseif
		spell.english == "Tellus" or spell.english == "Lux" or spell.english == "Gelus" or spell.english == "Tenebrae" or
			spell.english == "Sulpor" or
			spell.english == "Ignis" or
			spell.english == "Unda" or
			spell.english == "Flabra" or
			spell.english == "Weapon Bash" or
			spell.english == "Last Resort" or
			spell.english == "Souleater"
	 then
		equip(sets.Utility.Enmity)
	elseif spell.english == "Battuta" then
		equip(set_combine(sets.Utility.Enmity, sets.JA.Battuta))
	elseif spell.english == "Leiment" or spell.english == "Elemental Sforzo" then
		equip(set_combine(sets.Utility.Enmity, sets.JA.Leiment))
	elseif spell.english == "Pflug" then
		equip(set_combine(sets.Utility.Enmity, sets.JA.Pflug))
	elseif spell.english == "Gambit" then
		send_command('timers delete "Gambit"')
		send_command(
			'timers create "Gambit" 96 down;wait 60;input /party Gambit [WEARING OFF IN 30 SEC.];wait 30;input /party Gambit [OFF];timers delete "Gambit"'
		)
		equip(set_combine(sets.Utility.Enmity, sets.JA.Gambit))
	elseif spell.english == "Rayke" then
		send_command('timers delete "Rayke"')
		send_command(
			'timers create "Rayke" 34 down;wait 19;input /party Rayke [WEARING OFF IN 15 SEC.];wait 15;input /party Rayke [OFF];timers delete "Rayke"'
		)
		equip(set_combine(sets.Utility.Enmity, sets.JA.Rayke))
	elseif spell.english == "Resolution" or spell.english == "Shockwave" then
		equip(sets.Resolution[sets.Resolution.index[Resolution_ind]])
	elseif spell.english == "Dimidiation" then
		equip(sets.Dimidiation[sets.Dimidiation.index[Dimidiation_ind]])
	elseif spell.english == "Requiescat" then
		equip(sets.Requiescat[sets.Requiescat.index[Requiescat_ind]])
	elseif spell.english == "Fell Cleave" then
		equip(sets.FellCleave[sets.FellCleave.index[FellCleave_ind]])
	elseif spell.english == "Savage Blade" or spell.english == "Ground Strike" then
		equip(sets.SavageBlade[sets.SavageBlade.index[SavageBlade_ind]])
	elseif spell.type == "WeaponSkill" then
		equip(sets.SavageBlade[sets.SavageBlade.index[SavageBlade_ind]])
	elseif spell.english == "Box Step" or spell.english == "Quickstep" or spell.english == "Stutter Step" then
		equip(sets.JA.Steps)
	end
end

function midcast(spell, act)
	if spell.skill == "Enhancing Magic" then
		equip(sets.Utility.Enhancing)
		if buffactive["Embolden"] then
			equip(set_combine(sets.Utility.Enhancing, sets.JA.Embolen))
		end
	elseif string.find(spell.name, "Bar") or spell.name == "Temper" then
		equip(sets.Utility.EnhancingSkill)
	elseif spell.english == "Stoneskin" then
		equip(sets.Utility.SID)
		if buffactive["Stoneskin"] then
			send_command("@wait 0.7; input //cancel Stoneskin; input /echo Refreshing Stoneskin.")
		end
	elseif spell.english == "Refresh" then
		equip(sets.Utility.Refresh)
	elseif spell.english == "Phalanx" then
		equip(sets.Utility.Phalanx)
	elseif
		spell.english == "Regen" or spell.english == "Regen II" or spell.english == "Regen III" or spell.english == "Regen IV"
	 then
		equip(sets.Utility.Regen)
	elseif spell.english == "Utsusemi: Ichi" then
		equip(sets.Utility.SID)
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
	elseif spell.english == "Utsusemi: Ni" then
		equip(sets.Utility.SID)
	elseif
		spell.english == "Flash" or spell.english == "Crusade" or spell.english == "Foil" or spell.skill == "Blue Magic" or
			spell.skill == "Enfeebling Magic" or
			spell.skill == "Dark Magic"
	 then
		equip(sets.Utility.Enmity)
	end
end

function aftercast(spell)
	if player.status == "Engaged" then
		equip(sets.TP[sets.TP.index[TP_ind]])
		if buffactive["battuta"] then
			equip(set_combine(sets.TP[sets.TP.index[TP_ind]], sets.JA.BattutaActive))
		end
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
	elseif new == "Idle" then
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
		if buffactive["terror"] or buffactive["stun"] or (buffactive["sleep"] or buffactive["lullaby"]) then
			equip(sets.TP.DT)
		end
	end
end

function buff_change(buff, gain)
	if (buff == "terror" or buff == "stun" or (buff == "sleep" or buff == "lullaby")) then
		if gain then
			if player.status == "Engaged" then
				equip(sets.TP.DT)
			elseif player.status == "Idle" then
				equip(sets.TP.DT)
			end
		else
			if player.status == "Engaged" then
				equip(sets.TP[sets.TP.index[TP_ind]])
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
				equip(sets.TP[sets.TP.index[TP_ind]])
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
		equip(sets.TP[sets.TP.index[TP_ind]])
	elseif command == "toggle Idle set" then
		Idle_ind = Idle_ind + 1
		if Idle_ind > #sets.Idle.index then
			Idle_ind = 1
		end
		send_command("@input /echo <----- Idle Set changed to " .. sets.Idle.index[Idle_ind] .. " ----->")
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
	elseif command == "toggle Weapons" then
		Weapons_ind = Weapons_ind + 1
		if Weapons_ind > #sets.Weapons.Index then
			Weapons_ind = 1
		end
		send_command("@input /echo <----- Weapons Set changed to " .. sets.Weapons.Index[Weapons_ind] .. " ----->")
		equip(sets.Weapons[sets.Weapons.Index[Weapons_ind]])
	elseif command == "toggle Res set" then
		Resolution_ind = Resolution_ind + 1
		if Resolution_ind > #sets.Resolution.index then
			Resolution_ind = 1
		end
		send_command("@input /echo <----- Resolution set changed to " .. sets.Resolution.index[Resolution_ind] .. " ----->")
	elseif command == "toggle Req set" then
		Requiescat_ind = Requiescat_ind + 1
		if Requiescat_ind > #sets.Requiescat.index then
			Requiescat_ind = 1
		end
		send_command("@input /echo <----- Requiescat Set changed to " .. sets.Requiescat.index[Requiescat_ind] .. " ----->")
	elseif command == "equip TP set" then
		equip(sets.TP[sets.TP.index[TP_ind]])
	elseif command == "equip Idle set" then
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
	end
end
