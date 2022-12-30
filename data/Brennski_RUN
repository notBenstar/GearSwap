--To toggle gearsets:
--Main command: //gs c toggle x set       where x = set name variable. Variables are as follows: --
--Idle sets: Idle, TP sets: TP--
--Resolution sets: Res, Requiescat sets: Req--

function get_sets()
	send_command("bind f9 gs c toggle TP set")
	send_command("bind f10 gs c toggle Idle set")
	send_command("bind f11 gs c toggle Weapons")
	send_command("bind ^f9 gs c equip TP set")
	send_command("bind ^f10 gs c equip DT set")
	send_command("bind f11 gs c equip TP set")
	send_command("bind f12 gs c equip DT set")
	
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
		head = { name = "Herculean Helm",augments = {"Pet: CHR+2", 'Potency of "Cure" effect received+3%', '"Refresh"+2', 'Mag. Acc.+1 "Mag.Atk.Bns."+1'}},
		neck = "Bathy Choker +1",
		right_ear = "Eabani earring",
		left_ear = "Infused Earring",
		body = "Runeist's Coat +3",
		hands = "Regal Gauntlets",
		left_ring = "Shneddick Ring",
		right_ring = "Defending Ring",
		back = {name = "Ogma's cape", augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Mag. Evasion+10", "Enmity+10"}},
		waist = "Fucho-no-obi",
		legs = "Nyame Flanchard",
		feet = {name = "Herculean Boots", augments = {"CHR+6", "STR+14", '"Refresh"+1', 'Mag. Acc.+14 "Mag.Atk.Bns."+14'}}
	}

	sets.Idle.DT = {
		ammo = "Staunch Tathlum +1",
		head="Nyame Helm",
		neck = "Futhark Torque +2",
		left_ear = "Odnowa Earring +1",
		right_ear = "Hearty Earring",
		body = "Nyame Mail",
		hands = "Regal Gauntlets",
		left_ring = "Moonlight ring",
		right_ring = "Defending Ring",
		back = {name = "Ogma's cape", augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Mag. Evasion+10", "Enmity+10"}},
		waist = "Carrier's Sash",
		legs="Nyame Flanchard",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
	}

	sets.Idle.Cleave = {
		ammo = "Staunch Tathlum +1",
		head="Nyame Helm",
		neck = "Futhark Torque +2",
		left_ear = "Odnowa Earring +1",
		right_ear = "Etiolation Earring",
		body = "Nyame Mail",
		hands = "Regal Gauntlets",
		left_ring = "Shneddick Ring",
		right_ring = "Defending Ring",
		back = {name = "Ogma's cape", augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Mag. Evasion+10", "Enmity+10"}},
		waist = "Carrier's Sash",
		legs = "Nyame Flanchard",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
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

	sets.TP.index = {"Standard", "TankTP", "MDTank", "Ongo"}
	--1=Standard,2=DT, 3=MDTtank, 4=Ongo --
	TP_ind = 1
	sets.TP.Standard = {
		ammo = "Yamarang",
		head = "Adhemar Bonnet +1",
		neck = "Lissome necklace",
		left_ear = "Telos Earring",
		right_ear = "Sherida earring",
		body = "Ashera Harness",
		hands = "Adhemar Wristbands +1",
		left_ring = "Epona's Ring",
		right_ring = "Niqmaddu Ring",
		back = { name = "Ogma's cape",augments = {"STR+20", "Accuracy+20 Attack+20", "STR+10", '"Dbl.Atk."+10', "Phys. dmg. taken-10%"}},
		waist = "Ioskeha belt +1",
		legs = "Samnuha Tights",
		Feet = "Nyame Sollerets",
	}

	sets.TP.TankTP = {
		ammo = "Yamarang",
		head="Nyame Helm",
		neck = "Futhark Torque +2",
		left_ear = "Telos Earring",
		right_ear = "Sherida earring",
		body = "Ashera Harness",
		hands = "Adhemar Wristbands +1",
		left_ring = "Moonlight Ring",
		right_ring = "Niqmaddu Ring",
		back = { name = "Ogma's cape",augments = {"STR+20", "Accuracy+20 Attack+20", "STR+10", '"Dbl.Atk."+10', "Phys. dmg. taken-10%"}	},
		waist = "Ioskeha belt +1",
		--legs = "Samnuha Tights",
		legs = "Meghanada Chausses +2",
		feet = "Turms Leggings +1"
	}

	sets.TP.MDTank = {
		ammo = "Staunch Tathlum +1",
		head="Nyame Helm",
		body = "Runeist's Coat +3",
		--hands="Regal Gauntlets",
		hands = "Nyame Gauntlets",
		--legs = "Eri. Leg Guards +1",
		legs = "Nyame Flanchard",
		feet = "Turms Leggings +1",
		neck = "Futhark Torque +2",
		waist = "Carrier's Sash",
		left_ear = "Odnowa Earring +1",
		right_ear = "Etiolation Earring",
		right_ring = "Defending Ring",
		left_ring = "Moonlight Ring",
		back = {name = "Ogma's cape", augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Mag. Evasion+10", "Enmity+10"}}
	}
	
	sets.TP.Ongo = {
	    ammo="Staunch Tathlum +1",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body="Ashera Harness",
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet="Turms Leggings +1",
		neck={ name="Futhark Torque +2", augments={'Path: A',}},
		waist="Carrier's Sash",
		left_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		right_ear="Sherida Earring",
		right_ring="Moonlight Ring",
		left_ring="Moonbeam Ring",
		back={ name="Ogma's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	-- sets.TP.HBP = {
		-- ammo = "Staunch Tathlum +1",
		-- head = "Erilaz galea +1",
		-- body = "Ashera Harness",
		-- hands = "Regal Gauntlets",
		-- legs = "Nyame Flanchard",
		-- feet = "Turms Leggings +1",
		-- neck = "Futhark Torque +2",
		-- waist = "Carrier's Sash",
		-- left_ear = "Odnowa Earring +1",
		-- right_ear = "Odnowa Earring",
		-- left_ring = "Moonlight Ring",
		-- right_ring = "Moonbeam Ring",
		-- back = "Moonbeam Cape"
	-- }
	

	-- sets.TP.StatusResist = {
		-- ammo = "Staunch Tathlum +1",
		-- head = {name = "Herculean Helm", augments = {"Accuracy+19 Attack+19", "Damage taken-3%", "AGI+3", "Accuracy+2"}},
		-- body = "Ashera Harness",
		-- Hands = "Volte Bracers",
		-- legs = "Rune. Trousers +3",
		-- feet = "Erilaz Greaves +1",
		-- neck = "Futhark Torque +2",
		-- waist = "Carrier's Sash",
		-- right_ear = "Hearty Earring",
		-- left_ear = "Odnowa Earring +1",
		-- left_ring = "Moonlight Ring",
		-- right_ring = "Defending Ring",
		-- back = {name = "Ogma's cape", augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Mag. Evasion+10", "Enmity+10"}}
	-- }

	--Weaponskill Sets--
	sets.WS = {}

	sets.Resolution = {}

	sets.Resolution.index = {"Attack"}
	Resolution_ind = 1

	sets.Resolution.Attack = {
		ammo = "Seeth. Bomblet +1",
		head = "Adhemar Bonnet +1",
		body="Ashera Harness",
		hands = "Adhemar Wristbands +1",
		legs = "Samnuha Tights",
		Feet = "Nyame Sollerets",
		neck = "Fotia Gorget",
		waist = "Fotia Belt",
		left_ear = {name = "Moonshade Earring", augments = {"Accuracy+4", "TP Bonus +25"}},
		right_ear = "Sherida Earring",
		right_ring = "Niqmaddu Ring",
		left_ring = "Regal Ring",
		back = { name = "Ogma's cape",augments = {"STR+20", "Accuracy+20 Attack+20", "STR+10", '"Dbl.Atk."+10', "Phys. dmg. taken-10%"}	},
	}

	sets.Dimidiation = {}

	sets.Dimidiation.index = {"Attack"}
	Dimidiation_ind = 1

	sets.Dimidiation.Attack = {
		ammo = "Knobkierrie",
		Head = "Nyame Helm",
		Body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		Legs = "Nyame Flanchard",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck = "Rep. Plat. Medal",
		waist = "Sailfi Belt +1",
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
		body="Ashera Harness",
		hands = "Adhemar Wristbands +1",
		right_ring = "Niqmaddu Ring",
		left_ring = "Regal ring",
		back = { name = "Ogma's cape", augments = {"STR+20", "Accuracy+20 Attack+20", "STR+10", '"Dbl.Atk."+10', "Phys. dmg. taken-10%"}},
		waist = "Fotia belt",
		legs = "Samnuha Tights",
		Feet = "Nyame Sollerets",
	}

	sets.FellCleave = {}

	sets.FellCleave.index = {"Attack"}
	FellCleave_ind = 1

	sets.FellCleave.Attack = {
		ammo = "Seeth. Bomblet +1",
		head = "Adhemar Bonnet +1",
		body="Ashera Harness",
		hands = "Adhemar Wristbands +1",
		legs = "Samnuha Tights",
		Feet = "Nyame Sollerets",
		neck = "Fotia Gorget",
		waist = "Fotia Belt",
		left_ear = {name = "Moonshade Earring", augments = {"Accuracy+4", "TP Bonus +25"}},
		right_ear = "Telos Earring",
		right_ring = "Niqmaddu Ring",
		left_ring = "Regal ring",
		back = { name = "Ogma's cape",augments = {"STR+20", "Accuracy+20 Attack+20", "STR+10", '"Dbl.Atk."+10', "Phys. dmg. taken-10%"}	},
	}

	sets.SavageBlade = {}

	sets.SavageBlade.index = {"Attack"}
	SavageBlade_ind = 1

	sets.SavageBlade.Attack = {
		ammo = "Knobkierrie",
		Head = "Nyame Helm",
		neck = "Rep. Plat. Medal",
		right_ear = "Ishvara Earring",
		left_ear = "Moonshade Earring",
		Body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		right_ring = "Niqmaddu Ring",
		left_ring = "Regal Ring",
		back = {name = "Ogma's cape", augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", "Weapon skill damage +10%"}},
		waist = "Sailfi Belt +1",
		Legs = "Nyame Flanchard",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
	}

	--Utility Sets--
	sets.Utility = {}

	sets.Utility.Phalanx = {
		ammo = "Staunch Tathlum +1",
		Head ="Fu. Bandeau +3",
		neck = "Incanter's Torque",
		left_ear = "Andoaa Earring",
		right_ear = "Mimir Earring",
		body={ name="Taeon Tabard", augments={'"Conserve MP"+5','Phalanx +3',}},
		hands = "Regal Gauntlets",
		waist = "Olympus Sash",
		left_ring = "Stikini ring +1",
		right_ring = "Defending Ring",
		legs = "Futhark Trousers +3",
		feet = {name = "Herculean Boots",augments = {"Magic burst dmg.+6%",'"Fast Cast"+1',"Phalanx +4","Accuracy+14 Attack+14",'Mag. Acc.+16 "Mag.Atk.Bns."+16'}},
		back = "Evasionist's cape"
	}

	sets.Utility.Regen = {
		ammo = "Staunch Tathlum +1",
		head = "Rune. Bandeau +2",
		neck = "Sacro Gorget",
		right_ear = "Eabani earring",
		left_ear = "Augment. earring",
		body = {name = "Futhark Coat +1", augments = {'Enhances "Elemental Sforzo" effect'}},
		hands = "Runeist's Mitons +3",
		left_ring= "Rahab ring",
		right_ring = "Defending Ring",
		back = "Moonbeam Cape",
		waist = "Carrier's Sash",
		legs = "Futhark Trousers +3",
		feet = "Erilaz Greaves +1"
	}

	sets.Utility.SIRD = {
		ammo="Staunch Tathlum +1",
		head="Agwu's Cap",
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Rawhide Gloves", augments={'HP+50','Accuracy+15','Evasion+20',}},
		legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Moonlight Necklace",
		waist="Audumbla Sash",
		left_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		right_ear="Magnetic Earring",
		left_ring="Evanescence Ring",
		right_ring="Defending Ring",
		back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Parrying rate+5%',}},
	}

	sets.Utility.Enmity = {
		ammo = "Staunch Tathlum +1",
		head = "Halitus Helm",
		neck = "Futhark Torque +2",
		right_ear = "Friomisi Earring",
		left_ear = "Odnowa Earring +1",
		body = "Emet harness +1",
		hands = "Kurys Gloves",
		waist = "Trance belt",
		right_ring = "Defending Ring",
		left_ring = "Moonlight Ring",
		legs = "Erilaz Leg Guards +1",
		feet = "Ahosi Leggings",
		back = {name = "Ogma's cape", augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Mag. Evasion+10", "Enmity+10"}}
	}

	sets.Utility.Enhancing = {
		ammo = "Staunch Tathlum +1",
		head = "Erilaz Galea +1",
		neck = "Incanter's Torque",
		right_ear = "Andoaa Earring",
		right_ear = "Mimir Earring",
		body = "Emet harness +1",
		hands = "Regal Gauntlets",
		waist = "Olympus Sash",
		left_ring= "Stikini ring +1",
		right_ring = "Stikini Ring +1",
		legs = "Futhark Trousers +3",
		feet = "Erilaz Greaves +1",
		back = {name = "Ogma's cape", augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Mag. Evasion+10", "Enmity+10"}}
	}

	sets.Utility.EnhancingSkill = {
		ammo = "Staunch Tathlum +1",
		head = "Erilaz Galea +1",
		body = "Emet Harness +1",
		hands = "Runeist's Mitons +3",
		legs = {name = "Carmine Cuisses +1", augments = {"Accuracy+20", "Attack+12", '"Dual Wield"+6'}},
		feet = "Erilaz Greaves +1",
		neck = "Incanter's Torque",
		waist = "Olympus Sash",
		right_ear = "Mimir Earring",
		left_ear = "Andoaa Earring",
		left_ring = "Stikini ring +1",
		right_ring = "Stikini Ring +1",
		back = {name = "Ogma's cape", augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Mag. Evasion+10", "Enmity+10"}}
	}

	sets.Utility.Refresh = {
		ammo = "Staunch Tathlum +1",
		head = "Erilaz Galea +1",
		neck = "Incanter's Torque",
		left_ear = "Andoaa Earring",
		right_ear = "Mimir Earring",
		body = "Emet harness +1",
		hands = "Regal Gauntlets",
		waist = "Gishdubar Sash",
		left_ring= "Stikini ring +1",
		right_ring = "Defending Ring",
		legs = "Futhark Trousers +3",
		feet = "Erilaz Greaves +1",
		back = {name = "Ogma's cape", augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Mag. Evasion+10", "Enmity+10"}}
	}
	
	sets.Utility.FrightfulRoar = {
	    ammo="Pemphredo Tathlum",
		body={ name="Cohort Cloak +1", augments={'Path: A',}},
		hands="Aya. Manopolas +2",
		legs="Aya. Cosciales +2",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		left_ear="Digni. Earring",
		right_ear="Crep. Earring",
		left_ring="Stikini Ring +1",
		right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		back="Izdubar Mantle",
	}

	sets.Utility.Doomed = {waist = "Gishdubar Sash", left_ring= "Eshmun's Ring"}

	--Job Ability Sets--
	sets.JA = {}
	sets.JA.VP = {legs = "Rune. Trousers +3", left_ring= "Stikini ring +1", neck = "Incanter's Torque", head = "Erilaz Galea +1"}

	sets.JA.Liement = {body = {name = "Futhark Coat +1", augments = {'Enhances "Elemental Sforzo" effect'}}}

	sets.JA.Embolen = {back = "Evasionist's cape"}

	sets.JA.Lunge = {
		    ammo="Pemphredo Tathlum",
			head="Nyame Helm",
			body="Nyame Mail",
			hands="Nyame Gauntlets",
			legs="Nyame Flanchard",
			feet="Nyame Sollerets",
			neck="Sanctity Necklace",
			waist="Orpheus's Sash",
			left_ear="Friomisi Earring",
			right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
			left_ring="Acumen Ring",
			right_ring="Dingir Ring",
			back="Izdubar Mantle",
		}

	sets.JA.Battuta = {Head ="Fu. Bandeau +3", hands = "Turms Mittens"}

	sets.JA.BattutaActive = {hands = "Turms Mittens"}

	sets.JA.Gambit = {hands = "Runeist's Mitons +3", waist = "Chaac Belt", Legs ="Volte Hose"}

	sets.JA.Pflug = {feet = "Runeist's Boots +3"}

	sets.JA.Rayke = {
		feet = {name = "Futhark Boots", augments = {'Enhances "Rayke" effect'}},
		waist = "Chaac Belt",
		Hands = "Volte Bracers",
		Legs ="Volte Hose"
	}

	sets.JA.Steps = {
		ammo = "Staunch Tathlum +1",
		head = {name = "Herculean Helm", augments = {"Accuracy+19 Attack+19", "Damage taken-3%", "AGI+3", "Accuracy+2"}},
		body = "Ashera Harness",
		hands = "Runeist's Mitons +3",
		legs = "Rune. Trousers +3",
		feet = "Ahosi Leggings",
		neck = "Futhark Torque +2",
		waist = "Carrier's Sash",
		left_ear = "Odnowa Earring +1",
		right_ear = "Hearty Earring",
		left_ring = "Defending Ring",
		right_ring = "Moonlight Ring",
		back = {name = "Ogma's cape", augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Mag. Evasion+10", "Enmity+10"}}
	}

	--Precast Sets--
	sets.precast = {}

	sets.precast.FC = {}

	sets.precast.FC.Standard = {
		ammo = "Staunch Tathlum +1",
		head = "Carmine Mask +1",
		neck = "Voltsurge Torque",
		right_ear = "Loquac. Earring",
		left_ear = "Etiolation Earring",
		body = "Adhemar Jacket +1",
		hands = "Regal Gauntlets",
		waist = "Carrier's Sash",
		left_ring = "Defending Ring",
		right_ring = "Moonlight Ring",
		legs="Agwu's Slops",
		feet = "Carmine Greaves +1",
		back = {name = "Ogma's cape", augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Mag. Evasion+10", "Enmity+10"}}
	}

	sets.precast.FC.Enhancing = {
		ammo = "Sapience Orb",
		head = "Carmine Mask +1",
		neck = "Voltsurge Torque",
		right_ear = "Loquac. Earring",
		left_ear = "Etiolation Earring",
		body = "Adhemar Jacket +1",
		hands = "Regal Gauntlets",
		waist = "Carrier's Sash",
		left_ring = "Defending Ring",
		right_ring = "Moonlight Ring",
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
		body = "Adhemar Jacket +1",
		hands = "Regal Gauntlets",
		waist = "Carrier's Sash",
		left_ring = "Defending Ring",
		right_ring = "Moonlight Ring",
		legs="Agwu's Slops",
		feet = "Carmine Greaves +1",
		back = {name = "Ogma's cape", augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Mag. Evasion+10", "Enmity+10"}}
	}
end

function precast(spell)
	if spell.action_type =="Magic" then
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
	elseif	spell.english == "Flash" or spell.skill == "Enfeebling Magic" or spell.english == "Foil" or spell.skill == "Dark Magic" or spell.skill == "Blue Magic" then
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
	elseif spell.english == "Liement" or spell.english == "Elemental Sforzo" then
		equip(set_combine(sets.Utility.Enmity, sets.JA.Liement))
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
		if string.find(spell.name, "Bar") or spell.name == "Temper" then
			equip(sets.Utility.EnhancingSkill)
			if buffactive["Embolden"] then
				equip(set_combine(sets.Utility.EnhancingSkill, sets.JA.Embolen))
			end
		end	
		if spell.english == "Stoneskin" then
			equip(sets.Utility.SIRD)
			if buffactive["Stoneskin"] then
				send_command("@wait 0.7; input //cancel Stoneskin; input /echo Refreshing Stoneskin.")
			end
		end
		if spell.english == "Refresh" then
			equip(sets.Utility.Refresh)
		end
		if spell.english == "Phalanx" then
			equip(sets.Utility.Phalanx)
			if buffactive["Embolden"] then
				equip(set_combine(sets.Utility.Phalanx, sets.JA.Embolen))
			end
		end
		if
		spell.english == "Regen" or spell.english == "Regen II" or spell.english == "Regen III" or spell.english == "Regen IV"
		then
			equip(sets.Utility.Regen)
		end
	end
	if spell.english == "Utsusemi: Ichi" then
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
	end
	if spell.english == "Utsusemi: Ni" then
		equip(sets.Utility.SID)
	end
	if spell.english == "Flash" or spell.english == "Crusade" or spell.english == "Foil" or spell.skill == "Enfeebling Magic" or spell.skill == "Dark Magic" then
		equip(sets.Utility.Enmity)
	end
	if spell.skill == "Blue Magic" then
		equip(sets.Utility.SIRD)
		if spell.english == "Frightful Roar" then
			equip(sets.Utility.FrightfulRoar)
		end
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
		if buff == "doom" or buff == "curse" then
			equip(sets.Utility.Doomed)
		end
	elseif new == "Idle" then
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
		if buffactive["terror"] or buffactive["stun"] or (buffactive["sleep"] or buffactive["lullaby"]) then
			equip(sets.TP.DT)
		end
		if buff == "doom" or buff == "curse" then
			equip(sets.Utility.Doomed)
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
	elseif command == "equip TP set" then
		equip(sets.TP[sets.TP.index[TP_ind]])
		send_command("@input /echo  <--- Equipped TP Set ----->")
	elseif command =="equip DT set" then
		equip (sets.TP.MDTank)
		send_command("@input /echo  <--- Equipped DT Set ----->")
	elseif command == "equip Idle set" then
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
	end
end