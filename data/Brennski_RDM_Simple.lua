enspells = S {"Enfire", "Enfire II", "Enstone", "Enstone II", "Enaero", "Enaero II", "Enblizzard", "Enblizzard II", "Enthunder", "Enthunder II", "Enwater", "Enwater II"}
gainspells = S {"Gain-STR", "Gain-DEX", "Gain-MND", "Gain-CHR", "Gain-INT", "Gain-AGI", "Gain-VIT"}

function get_sets()
	send_command("bind f10 gs c toggle Idle set")
	send_command("bind f9 gs c toggle TP set")
	send_command("bind ^f9 gs c equip TP set")
	send_command("bind ^f10 gs c equip DT set")

	function file_unload()
		send_command("unbind ^f9")
		send_command("unbind ^f10")
		send_command("unbind ^f11")
		send_command("unbind ^f12")

		send_command("unbind !f9")
		send_command("unbind !f10")
		self_command("unbind !f11")
		send_command("unbind !f12")

		send_command("unbind f9")
		send_command("unbind f10")
		send_command("unbind f11")
		send_command("unbind f12")
	end

	--Idle Sets--
	sets.Idle = {}

	sets.Idle.index = {"Standard", "DT"}
	--1=Standard, 2 =DT --
	Idle_ind = 1

	sets.Idle.Standard = {
		main = "Daybreak",
		sub = "Sacro Bulwark",
		ammo = "Homiliary",
		head = "Vitiation chapeau +1",
		neck = "Bathy Choker +1",
		ear1 = "Eabani Earring",
		ear2 = "Infused Earring",
		body = "Atrophy Tabard +3",
		hands = {name = "Merlinic Dastanas", augments = {"DEX+3", 'Mag. Acc.+16 "Mag.Atk.Bns."+16', '"Refresh"+1'}},
		ring1 = "Defending ring",
		ring2 = "Shneddick Ring",
		waist = "Fucho-no-obi",
		legs = "Nyame Flanchard",
		feet = "Malignance Boots",
		back = "Moonbeam Cape"
	}

	sets.Idle.DT = {
		main="Daybreak",
		sub="Sacro Bulwark",
		ammo="Homiliary",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck={ name="Loricate Torque +1", augments={'Path: A',}},
		waist="Carrier's Sash",
		left_ear="Etiolation Earring",
		right_ear="Infused Earring",
		left_ring="Defending Ring",
		right_ring="Shneddick Ring",
		back="Moonbeam Cape",
	}

	--TP Sets--
	sets.TP = {}

	sets.TP.index = {"Standard", "EnSpell"}
	--1=Standard, 2=EnSpell--

	TP_ind = 1
	sets.TP.Standard = {
    ammo="Coiste Bodhar",
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Malignance Gloves",
    legs="Malignance Tights",
    feet="Malignance Boots",
    neck="Lissome Necklace",
    waist = "Sailfi Belt +1",
    left_ear="Sherida Earring",
    right_ear="Telos Earring",
    left_ring="Hetairoi Ring",
    right_ring="Chirich Ring +1",
    back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dual Wield"+10','Phys. dmg. taken-10%',}},
	}

	sets.TP.EnSpell = {
	ammo="Regal Gem",
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Aya. Manopolas +2",
    legs="Malignance Tights",
    feet="Malignance Boots",
    neck="Duelist's torque +2",
    waist="Orpheus's Sash",
    left_ear="Sherida Earring",
    right_ear="Telos Earring",
    left_ring="Hetairoi Ring",
    right_ring="Chirich Ring +1",
    back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dual Wield"+10','Phys. dmg. taken-10%',}},
	}




	sets.MeleeMode = {}
	sets.MeleeMode.Index = {"NotMelee", "Melee"}
	MeleeMode_ind = 1

	--Nuke Sets---
	sets.Nuke = {}

	sets.Nuke.Standard = {
		main="Bunzi's Rod",
		sub="Ammurapi Shield",
		ammo = "Pemphredo Tathlum",
		neck = "Mizukage-no-Kubikazari",
		ear2 = "Malignance Earring",
		ear1 = "Regal Earring",
		ring1 = "Locus Ring",
		ring2 = "Mujin Band",
		waist = "Sacro Cord",
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','Weapon skill damage +10%',}},
		head={ name="Merlinic Hood", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','Magic burst dmg.+8%','Mag. Acc.+10','"Mag.Atk.Bns."+11',}},
		body={ name="Merlinic Jubbah", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Magic burst dmg.+10%','CHR+4','Mag. Acc.+2','"Mag.Atk.Bns."+13',}},
		hands = "Amalric Gages +1",
		legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','Magic burst dmg.+8%','INT+10','"Mag.Atk.Bns."+2',}},
		feet = {name = "Merlinic Crackows",	augments = {'Mag. Acc.+19 "Mag.Atk.Bns."+19', "Magic burst dmg.+9%", "MND+9", "Mag. Acc.+15"}}
	}

	--Enhancing Sets--
	sets.Enhancing = {}

	sets.Enhancing.Duration = {
		main ="Colada",
		sub = "Ammurapi shield",
		ammo = "Regal Gem",
		head = "Telchine Cap",
		neck = "Duelist's torque +2",
		ear1 = "Andoaa Earring",
		ear2 = "Mimir Earring",
		body = "Vitiation tabard +3",
		hands = "Atrophy Gloves +3",
		ring1 = "Stikini ring +1",
		ring2 = "Sirona's Ring",
		waist = "Embla Sash",
		back = "Ghostfyre Cape",
		legs = "Telchine Braconi",
		feet = "Lethargy Houseaux +1"
	}
			
	sets.Enhancing.Gain = {
		main ="Colada",
		sub = "Ammurapi shield",
		ammo = "Regal Gem",
		head = "Telchine Cap",
		neck = "Duelist's torque +2",
		ear1 = "Andoaa Earring",
		ear2 = "Mimir Earring",
		body = "Vitiation tabard +3",
		hands={ name="Viti. Gloves +3", augments={'Enhancing Magic duration',}},
		ring1 = "Stikini ring +1",
		ring2 = "Sirona's Ring",
		waist = "Embla Sash",
		back = "Ghostfyre Cape",
		legs = "Telchine Braconi",
		feet = "Lethargy Houseaux +1"
	}
	
	sets.Enhancing.SkillUnCapped={	
		main ="Colada",
		sub = "Ammurapi shield",
		ammo="Regal Gem",
		head="Befouled Crown",
		body= "Vitiation tabard +3",
		hands={ name="Vitiation Gloves +3", augments={'Enhancing Magic duration',}},
		legs = "Carmine Cuisses +1",
		feet="Leth. Houseaux +1",
		neck="Incanter's Torque",
		waist="Embla Sash",
		left_ear="Andoaa Earring",
		right_ear="Mimir Earring",
		right_ring="Stikini ring +1",
		left_ring="Defending Ring",
		back = "Ghostfyre Cape",
	}


	--Magic Sets--
	sets.Magic = {}
	
	sets.Magic.EnfeeblePot ={
		main="Daybreak",
		sub = "Ammurapi shield",
		ammo = "Regal Gem",
		head = "Vitiation chapeau +3",
		neck = "Duelist's torque +2",
		ear2 = "Snotra Earring",
		ear1 = "Regal Earring",
		hands = "Kaykaus Cuffs +1",
		body = "Lethargy sayon +1",
		ring1 = "Stikini ring +1",
		ring2 = "Kishar Ring",
		waist = "Obstin. Sash",
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','Weapon skill damage +10%',}},
		legs={ name="Chironic Hose", augments={'Mag. Acc.+30','Haste+1','MND+14','"Mag.Atk.Bns."+9',}},
		feet = "Vitiation Boots +3",
	}
	
	sets.Magic.EnfeebleAcc = {
	    main="Daybreak",
		sub="Ammurapi Shield",
		ammo="Regal Gem",
		head={ name="Viti. Chapeau +3", augments={'Enfeebling Magic duration','Magic Accuracy',}},
		body="Atrophy Tabard +3",
		hands={ name="Kaykaus Cuffs +1", augments={'MP+80','MND+12','Mag. Acc.+20',}},
		legs={ name="Chironic Hose", augments={'Mag. Acc.+30','Haste+1','MND+14','"Mag.Atk.Bns."+9',}},
		feet={ name="Vitiation Boots +3", augments={'Immunobreak Chance',}},
		neck={ name="Dls. Torque +2", augments={'Path: A',}},
		waist="Obstin. Sash",
		left_ear="Regal Earring",
		right_ear="Snotra Earring",
		left_ring="Stikini ring +1",
		right_ring="Metamor. Ring +1",
		back={ name="Aurist's Cape +1", augments={'Path: A',}},
	}
	
	sets.Magic.INTEnfeeblAcc ={
		ammo="Regal Gem",
		head={ name="Viti. Chapeau +3", augments={'Enfeebling Magic duration','Magic Accuracy',}},
		body="Atrophy Tabard +3",
		hands={ name="Kaykaus Cuffs +1", augments={'MP+80','MND+12','Mag. Acc.+20',}},
	    legs={ name="Chironic Hose", augments={'Mag. Acc.+30','"Cure" spellcasting time -10%','INT+14','"Mag.Atk.Bns."+11',}},
		feet={ name="Vitiation Boots +3", augments={'Immunobreak Chance',}},
		neck={ name="Dls. Torque +2", augments={'Path: A',}},
		waist="Obstin. Sash",
		left_ear="Regal Earring",
		right_ear="Snotra Earring",
		left_ring="Stikini ring +1",
		right_ring="Metamor. Ring +1",
		back={ name="Aurist's Cape +1", augments={'Path: A',}},
	}

	sets.Magic.Dispelga = {
	    main="Daybreak",
		sub="Ammurapi Shield",
		ammo="Regal Gem",
		head={ name="Viti. Chapeau +3", augments={'Enfeebling Magic duration','Magic Accuracy',}},
		body="Atrophy Tabard +3",
		hands={ name="Kaykaus Cuffs +1", augments={'MP+80','MND+12','Mag. Acc.+20',}},
		legs={ name="Chironic Hose", augments={'Mag. Acc.+30','Haste+1','MND+14','"Mag.Atk.Bns."+9',}},
		feet={ name="Vitiation Boots +3", augments={'Immunobreak Chance',}},
		neck={ name="Dls. Torque +2", augments={'Path: A',}},
		waist="Obstin. Sash",
		left_ear="Regal Earring",
		right_ear="Snotra Earring",
		left_ring="Stikini ring +1",
		right_ring="Metamor. Ring +1",
		back={ name="Aurist's Cape +1", augments={'Path: A',}},
	}

	sets.Magic.Healing = {
		main="Daybreak",
		sub = "Ammurapi shield",
		ammo="Regal Gem",
		head={ name="Vanya Hood", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
		--body= "Vitiation tabard +3",
		body = "Bunzi's Robe",
		hands ="Kaykaus Cuffs +1",
		legs={ name="Chironic Hose", augments={'Mag. Acc.+30','Haste+1','MND+14','"Mag.Atk.Bns."+9',}},
		feet={ name="Vanya Clogs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
		neck="Incanter's Torque",
		waist="Obstin. Sash",
		left_ear="Regal Earring",
		right_ear="Meili Earring",
		left_ring="Ephedra Ring",
		right_ring="Sirona's Ring",
		back={ name="Aurist's Cape +1", augments={'Path: A',}},
	}

	sets.Magic.Regen = {
		main = "Bolelabunga",
		sub = "Ammurapi shield",
		ammo="Regal Gem",
		head = "Telchine Cap",
		neck = "Duelist's torque +2",
		ear1 = "Regal Earring",
		ear2 = "Snotra Earring",
		body = "Telchine Chasuble",
		hands = "Atrophy Gloves +3",
		ring1 = "Stikini ring +1",
		ring2 = "Kishar Ring",
		waist="Embla Sash",
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','Weapon skill damage +10%',}},
		legs = "Telchine Braconi",
		feet = "Telchine Pigaches"
	}

	sets.Magic.Dark = {
		main="Bunzi's Rod",
		sub="Ammurapi Shield",
		ammo = "Pemphredo Tathlum",
		head = "Pixie Hairpin +1",
		neck = "Incanter's Torque",
		ear2 = "Malignance Earring",
		ear1 = "Regal Earring",
		body = { name = "Merlinic Jubbah", augments = {'Mag. Acc.+23 "Mag.Atk.Bns."+23', "INT+7", "Mag. Acc.+14", '"Mag.Atk.Bns."+14'}},
		hands = "Amalric Gages +1",
		ring1 = "Evanescence Ring",
		ring2 = "Freke Ring",
		waist = "Sacro Cord",
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','Weapon skill damage +10%',}},
		legs = { name = "Merlinic Shalwar",augments = {'Mag. Acc.+23 "Mag.Atk.Bns."+23', "Mag. crit. hit dmg. +1%", "Mag. Acc.+11", '"Mag.Atk.Bns."+13'}},
		feet = "Merlinic Crackows"
	}
	
	sets.Magic.Impact = {   
		main="Bunzi's Rod",
		sub="Ammurapi Shield",
		ammo="Regal Gem",
		body="Twilight Cloak",
		hands="Nyame Gauntlets",
		legs={ name="Chironic Hose", augments={'Mag. Acc.+30','Haste+1','MND+14','"Mag.Atk.Bns."+9',}},
		feet={ name="Vitiation Boots +3", augments={'Immunobreak Chance',}},
		neck="Duelist's torque +2",
		waist="Obstin. Sash",
		left_ear="Malignance Earring",
		right_ear="Snotra Earring",
		left_ring="Stikini ring +1",
		right_ring="Metamor. Ring +1",
		back={ name="Aurist's Cape +1", augments={'Path: A',}},
	}
	
	sets.Magic.Stun = {
		main = "Crocea Mors",
		sub = "Ammurapi shield",
		ammo = "Regal Gem",
		head = "Carmine Mask +1",
		neck = "Voltsurge Torque",
		waist = "Obstin. Sash",
		left_ear = "Etiolation Earring",
		right_ear = "Loquac. Earring",
		left_ring = "Rahab Ring",
		right_ring = "Kishar Ring",
		hands = "Leyline Gloves",
		feet = "Amalric Nails +1",
		body = "Vitiation tabard +3",
		legs = "Psycloth Lappas",
		back={ name="Aurist's Cape +1", augments={'Path: A',}},
	}
	sets.Magic.StunAcc = {
		main = "Crocea Mors",
		sub = "Ammurapi shield",
		ammo = "Regal Gem",
		head={ name="Viti. Chapeau +3", augments={'Enfeebling Magic duration','Magic Accuracy',}},
		neck={ name="Dls. Torque +2", augments={'Path: A',}},
		waist = "Obstin. Sash",
		left_ear="Regal Earring",
		right_ear="Snotra Earring",
		left_ring = "Metamor. Ring +1",
		right_ring = "Kishar Ring",
		hands = "Leyline Gloves",
		feet={ name="Vitiation Boots +3", augments={'Immunobreak Chance',}},
		body = "Vitiation tabard +3",
		legs = "Psycloth Lappas",
		back={ name="Aurist's Cape +1", augments={'Path: A',}},
	}


	sets.Magic.Refresh = {legs = "Lethargy Fuseau", waist = "Gishdubar Sash", body = "Atrophy Tabard +3"}
	
	sets.Magic.Fraztract ={
	    --main={ name="Grioavolr", augments={'Enfb.mag. skill +15','MP+77','Mag. Acc.+24','"Mag.Atk.Bns."+21','Magic Damage +7',}},
		main = "Contemplator +1",
		sub="Mephitis Grip",
		ammo="Regal Gem",
		head={ name="Viti. Chapeau +3", augments={'Enfeebling Magic duration','Magic Accuracy',}},
		body="Lethargy Sayon +1",
		hands="Leth. Gantherots +1",
		legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
		feet={ name="Vitiation Boots +3", augments={'Immunobreak Chance',}},
		neck={ name="Dls. Torque +2", augments={'Path: A',}},
		waist="Obstin. Sash",
		left_ear="Vor Earring",
		right_ear="Snotra Earring",
		left_ring="Stikini ring +1",
		right_ring="Metamor. Ring +1",
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','Weapon skill damage +10%',}},
	}

	--Precast Sets--
	sets.precast = {}

	sets.precast.FC = {}

	sets.precast.FC.Standard = {
		ammo = "Sapience Orb",
		head = "Carmine Mask +1",
		body = "Vitiation tabard +3",
		hands="Leyline Gloves",
		legs = "Psycloth Lappas",
		feet = "Carmine Greaves +1",
		neck = "Voltsurge Torque",
		waist = "Embla Sash",
		left_ear = "Etiolation Earring",
		right_ear = "Loquac. Earring",
		left_ring = "Rahab Ring",
		right_ring = "Kishar Ring",
		back = "Swith Cape"
	}
	
	sets.precast.FC.Dispelga = {
		main = "Daybreak",
		ammo = "Sapience Orb",
		head = "Carmine Mask +1",
		body = "Vitiation tabard +3",
		hands="Leyline Gloves",
		legs = "Psycloth Lappas",
		feet = "Carmine Greaves +1",
		neck = "Voltsurge Torque",
		waist = "Embla Sash",
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
		waist = "Embla Sash",
		back = "Swith Mantle",
		legs = "Telchine Braconi",
		feet = "Telchine Pigaches"
	}
	
	sets.precast.FC.Impact ={
	    ammo="Sapience Orb",
		body="Twilight Cloak",
		hands={ name="Merlinic Dastanas", augments={'"Mag.Atk.Bns."+25','"Fast Cast"+7','Mag. Acc.+13',}},
		legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
		feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
		neck="Voltsurge Torque",
		waist="Embla Sash",
		left_ear="Etiolation Earring",
		right_ear="Loquac. Earring",
		left_ring="Rahab Ring",
		right_ring="Kishar Ring",
		back="Swith Cape",
	}

	--Utility and JA Sets --
	sets.Utility = {}

	sets.Utility.Weather = {waist = "Hachirin-no-obi"}
	-- 56Snapshot 5 Rapid
	sets.Utility.Preshot ={
	    head={ name="Taeon Chapeau", augments={'"Snapshot"+4','"Snapshot"+4',}}, --8
		body={ name="Taeon Tabard", augments={'"Snapshot"+5','"Snapshot"+5',}}, -- 10
		hands={ name="Taeon Gloves", augments={'"Snapshot"+5','"Snapshot"+5',}}, -- 10
		legs={ name="Taeon Tights", augments={'"Snapshot"+4','"Snapshot"+5',}}, -- 9
		feet={ name="Taeon Boots", augments={'"Snapshot"+5','"Snapshot"+4',}}, -- 9
		back={ name="Sucellos's Cape", augments={'"Snapshot"+10',}}, -- 10
		waist="Yemaya Belt", -- 5 Rapid
	}
	
	sets.Utility.RangedAttack = {
	    head={ name="Blistering Sallet +1", augments={'Path: A',}},
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Thereoid Greaves",
		neck={ name="Bathy Choker +1", augments={'Path: A',}},
		waist="Yemaya Belt",
		left_ear="Crep. Earring",
		right_ear="Telos Earring",
		left_ring="Chirich Ring",
		right_ring="Chirich Ring +1",
		back={ name="Sucellos's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}},
	}
	
	sets.Utility.TH = {waist = "Chaac Belt", Hands = "Volte Bracers", legs ="Volte Hose"}

	sets.Utility.DrainAspir = {
		main = "Contemplator +1",
		ammo = "Pemphredo Tathlum",
		sub = "Enki Strap",
		head = "Pixie Hairpin +1",
		neck = "Erra Pendant",
		ear2 = "Malignance Earring",
		ear1 = "Regal Earring",
		body = {name = "Merlinic Jubbah",augments = {'Mag. Acc.+23 "Mag.Atk.Bns."+23', "INT+7", "Mag. Acc.+14", '"Mag.Atk.Bns."+14'}},
		hands = "Amalric Gages +1",
		ring1 = "Evanescence Ring",
		ring2 = "Kishar Ring",
		waist = "Fucho-no-obi",
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','Weapon skill damage +10%',}},
		legs = "Merlinic Shalwar",
		feet = "Merlinic Crackows"
	}

	sets.Utility.Doomed = {waist = "Gishdubar Sash", ring1 = "Eshmun's Ring"}

	sets.JA = {}

	sets.JA.CS = {body = "Vitiation Tabard +3"}

	sets.JA.Sab = {hands = "Lethargy Gantherots +1"}

	sets.JA.Composure = { 
		Feet = "Lethargy Houseaux +1",
		body = "Lethargy Sayon +1",
		legs = "Lethargy Fuseau",
		head = "Lethargy Chappel",
		hands = "Lethargy Gantherots +1"
	}

	--WS Sets--

	sets.WS = {}

	sets.WS.CDC = {
		ammo = "Yetshila",
		head = "Blistering Sallet +1",
		neck = "Fotia gorget",
		right_ear = "Moonshade Earring",
		left_ear = "Sherida Earring",
		body = "Ayanmo Corazza +2",
		hands = "Nyame Gauntlets",
		left_ring ="Hetairoi Ring",
		right_ring = "Ilabrat Ring",
		back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dual Wield"+10','Phys. dmg. taken-10%',}},
		waist = "Fotia belt",
		legs = "Zoar Subligar +1",
		feet = "Thereoid Greaves"
	}

	sets.WS.Savage = {
		ammo = "Crepuscular Pebble",
		head = "Nyame Helm",
		neck = "Rep. Plat. Medal",
		ear1 = "Ishvara Earring",
		ear2 = "Moonshade Earring",
		--body = "Vitiation tabard +3",
		body="Nyame Mail",
		hands = "Nyame Gauntlets",
		ring1 = "Petrov Ring",
		ring2 = "Ilabrat Ring",
		back={ name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
		waist = "Sailfi Belt +1",
		legs="Nyame Flanchard",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
	}
	
	sets.WS.Sang ={
		ammo = "Pemphredo Tathlum",
		head = "Pixie Hairpin +1",
		neck = "Duelist's torque +2",
		ear2 = "Malignance Earring",
		ear1 = "Regal Earring",
		--body = { name = "Merlinic Jubbah", augments = {'Mag. Acc.+23 "Mag.Atk.Bns."+23', "INT+7", "Mag. Acc.+14", '"Mag.Atk.Bns."+14'}},
		body="Nyame Mail",
		hands = "Nyame Gauntlets",
		ring1 = "Evanescence Ring",
		ring2 = "Freke Ring",
		waist = "Orpheus's Sash",
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','Weapon skill damage +10%',}},
		legs="Nyame Flanchard",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		--feet={ name="Chironic Slippers", augments={'Attack+13','"Mag.Atk.Bns."+5','Weapon skill damage +7%','Accuracy+18 Attack+18','Mag. Acc.+15 "Mag.Atk.Bns."+15',}},
	}

	
	sets.WS.Light ={
		ammo = "Pemphredo Tathlum",
		head="Nyame Helm",
		neck = "Duelist's torque +2",
		ear2 = "Malignance Earring",
		ear1 = "Regal Earring",
		--body = { name = "Merlinic Jubbah", augments = {'Mag. Acc.+23 "Mag.Atk.Bns."+23', "INT+7", "Mag. Acc.+14", '"Mag.Atk.Bns."+14'}},
		body="Nyame Mail",
		hands = "Nyame Gauntlets",
		ring1 = "Acumen Ring",
		ring2 = "Freke Ring",
		waist = "Orpheus's Sash",
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','Weapon skill damage +10%',}},
		legs="Nyame Flanchard",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		--feet={ name="Chironic Slippers", augments={'Attack+13','"Mag.Atk.Bns."+5','Weapon skill damage +7%','Accuracy+18 Attack+18','Mag. Acc.+15 "Mag.Atk.Bns."+15',}},
	}
	
	sets.WS.Hybrid ={
	    head="Nyame Helm",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Friomisi Earring",
		right_ear="Ishvara Earring",
		left_ring="Ilabrat Ring",
		right_ring="Freke Ring",
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','Weapon skill damage +10%',}},
	}
	
	sets.WS.EmpyrealArrow ={    
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Sanctity Necklace",
		waist="Yemaya Belt",
		left_ear="Crep. Earring",
		right_ear="Telos Earring",
		left_ring="Ilabrat Ring",
		right_ring="Chirich Ring +1",
		back={ name="Sucellos's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}},
	}
	
end

function precast(spell)
	if spell.action_type == 'Magic' then
		equip(sets.precast.FC.Standard)
		if spell.english == "Regen" or spell.english == "Regen II" or spell.english == "Regen III" or spell.english == "Regen IV" or spell.english == "Regen V" then
		equip(sets.precast.FC.Regen)
		-- send_command("@input /echo Regen FC Set")
		end
		if spell.english == "Impact" then
			equip(sets.precast.FC.Impact)
			-- send_command("@input /echo Impact FC Set")
		end
		if spell.english == "Stun" then
			equip(sets.Magic.Stun)
			if buffactive['Chainspell'] then
				equip(sets.Magic.StunAcc)
			end
		end
		if spell.english == "Dispelga" then
			equip(sets.Precast.Dispelga)
		end
	elseif spell.english == "Chainspell" then
		equip(sets.JA.CS)
		-- send_command("@input /echo Chainspell Set")
	elseif spell.english == "Stun" then
		equip(sets.magic.Stun)
		-- send_command("@input /echo Stun Set")
	elseif spell.english == "Chant du Cygne" or spell.english == "Requiescat" or spell.english == "Vorpal Blade" or spell.english == "Evisceration" then
		equip(sets.WS.CDC)
		-- send_command("@input /echo CDC Set")
	elseif spell.english == "Savage Blade"  or spell.english == "Death Blossom" or spell.english == "Knights of Round" or spell.english == "Black Halo" then
		equip(sets.WS.Savage)
		-- send_command("@input /echo Savage Blade Set")
	elseif spell.english == "Sanguine Blade" then
		if spell.element == world.weather_element and world.weather_intensity == 2 then
			equip(set_combine(sets.WS.Sang, sets.Utility.Weather))
			-- send_command("@input /echo Sanguine Blade Set + Obi")
        else equip(sets.WS.Sang)    
			-- send_command("@input /echo Sanguine Blade Set")
		end
	elseif spell.english == "Seraph Blade" or spell.english == "Red Lotus Blade" or spell.english == "Burning Blade" or spell.english == "Shining Blade" or spell.english == "Black Halo" or spell.english == "Aeolian Edge" then
		equip(sets.WS.Light)
		-- send_command("@input /echo Light/Magic WS Set")
	elseif spell.english == "Arching Arrow" then
		equip(sets.WS.EmpyrealArrow)
	elseif spell.english == "Flaming Arrow" then
		equip(sets.WS.Hybrid)
	elseif spell.english == "Empyreal Arrow" then
		equip(sets.WS.EmpyrealArrow)
	elseif spell.english == "Composure" then
		equip(sets.JA.Composure)
		-- send_command("@input /echo Composure Set")
	elseif spell.type == 'WeaponSkill' then
		equip(sets.WS.Savage)
		send_command ("@input /echo WS Set")
	elseif spell.english == "Ranged" then
		equip(sets.Utility.Preshot)
	end
end

function midcast(spell, act)
	if spell.skill == "Enhancing Magic"  then
		equip(sets.Enhancing.Duration)
		    if buffactive.composure and spell.target.type == 'PLAYER' then
            		equip(set_combine(sets.Enhancing.Duration, sets.JA.Composure))
					-- send_command("@input /echo Enhancing Duration + Composure Set")
            end
	
		if
		spell.english == "Regen" or spell.english == "Regen II" or spell.english == "Regen III" or spell.english == "Regen IV" or
			spell.english == "Regen V"
		then
		equip(sets.Magic.Regen)
		-- send_command("@input /echo Enhancing Duration + Regen Set")
		end
		
		if spell.english == "Refresh" or spell.english == "Refresh II" or spell.english == "Refresh III" then
			equip(set_combine(sets.Enhancing.Duration, sets.Magic.Refresh))
			-- send_command("@input /echo Enhancing Duration + Refresh Set")
		end
		
		if gainspells:contains(spell.name)   then
			equip(sets.Enhancing.Gain)
			-- send_command("@input /echo Enhancing Capped Gain Potency Set")
		end
		
		if spell.english == "Temper" or spell.english == "Temper II" or enspells:contains(spell.english) then
			equip(sets.Enhancing.SkillUnCapped)
			-- send_command("@input /echo Enhancing Uncapped Potency Set")
		end
	end
	
	if spell.skill == "Healing Magic" then
		equip(sets.Magic.Healing)
		-- send_command("@input /echo Healing Set")
	end

	if spell.skill == "Dark Magic" then
		equip(sets.Magic.Dark)
		-- send_command("@input /echo Dark Set")
		if spell.english == "Stun" then
			equip(sets.Magic.Stun)
			-- send_command("@input /echo Stun MidCast Set")
		elseif buffactive['Chainspell'] and spell.english == "Stun" then
				equip(sets.Magic.StunAcc)
				-- send_command("@input /echo Stun Acc Set")
		end		
	end
	
	if spell.skill == "Enfeebling Magic" then
		equip(sets.Magic.EnfeebleAcc)
			if spell.english == "Sleep" or spell.english == "Sleep II" or spell.english == "Sleepga" or spell.english == "Sleepga II" or spell.english == "Break" or spell.english == "Bind" or spell.english == "Dispel" then
				equip(sets.Magic.INTEnfeebleAcc)
				--send_command ("@input /echo INT Enfeeble Acc set")
			end
			if spell.english == "Silence" then
				equip(sets.Magic.EnfeebleAcc)
			end
			if spell.english == "Frazzle III" or spell.english == "Distract III" then
				equip (sets.Magic.Fraztract)
				send_command ("@input /echo Frazzle 3/Distract 3 set")
			end
		if buffactive["Saboteur"] then
			equip(set_combine(sets.Magic.EnfeeblePot, sets.JA.Sab))
			if spell.english == "Sleep" or spell.english == "Sleep II" or spell.english == "Sleepga" or spell.english == "Sleepga II" or spell.english == "Break" or spell.english == "Bind" or spell.english == "Dispel" then
				equip(sets.Magic.INTEnfeebleAcc)
				--send_command ("@input /echo INT Enfeeble Acc set")
			end
			if spell.english == "Silence" then
				equip(sets.Magic.EnfeebleAcc)
			end
			if spell.english == "Frazzle III" or spell.english == "Distract III" then
				equip (sets.Magic.Fraztract)
				send_command ("@input /echo Frazzle 3/Distract 3 set")
			end
		end
		
		if spell.english == "Dispelga" then
			equip(sets.Magic.Dispelga)
		end
	end	

	if spell.skill == "Elemental Magic" then
		equip(sets.Nuke.Standard)
		if spell.element == world.day_element or spell.element == world.weather_element then
			equip(set_combine(equip(sets.Nuke.Standard), sets.Utility.Weather))
		end
		if spell.english == "Aero" then
			equip(set_combine(equip(sets.Nuke.Standard), sets.Utility.TH))
		end
	end

	if spell.english == "Drain" or spell.english == "Drain II" or spell.english == "Aspir II" or spell.english == "Aspir" then
		equip(sets.Utility.DrainAspir)
		-- send_command("@input /echo DarinAspir Set")
	end
	if spell.english == "Impact" then
			equip(sets.Magic.Impact)
			-- send_command("@input /echo Impact Set")
	end
	if spell.english == "Ranged" then
		equip(sets.Utility.RangedAttack)
	end
	
end

function aftercast(spell)
	if player.status == "Engaged" then
		equip(sets.TP[sets.TP.index[TP_ind]])
		-- send_command("@input /echo TP Set")
		if buffactive["doom"] then
			equip(set_combine(sets.TP[sets.TP.index[TP_ind]], sets.Utility.Doomed))
			status_change(player.status)
			-- send_command("@input /echo TP + Doomed Set")
		end
		if buffactive["Terror"] then
			equip(sets.TP.DT)
			status_change(player.status)
			-- send_command("@input /echo TPDT Set")
		end
	else
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
		if buffactive["doom"] then
			equip(set_combine(sets.Idle[sets.Idle.index[Idle_ind]], sets.Utility.Doomed))
			status_change(player.status)
			-- send_command("@input /echo Idle + Doomed Set")
		end
		if buffactive["Terror"] then
			equip(sets.TP.DT)
			status_change(player.status)
			-- send_command("@input /echo TSet")
		end
	end
end

function status_change(new, old)
	if player.status == "Engaged" then
		equip(sets.TP[sets.TP.index[TP_ind]])
		-- send_command("@input /echo TP Set")
		if buffactive["doom"] then
			equip(set_combine(sets.TP[sets.TP.index[TP_ind]], sets.Utility.Doomed))
			status_change(player.status)
			-- send_command("@input /echo TP + Doomed Set")
		end
		if buffactive["Terror"] then
			equip(sets.TP.DT)
			status_change(player.status)
			-- send_command("@input /echo TPDT Set")
		end
	else
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
		if buffactive["doom"] then
			equip(set_combine(sets.Idle[sets.Idle.index[Idle_ind]], sets.Utility.Doomed))
			status_change(player.status)
			-- send_command("@input /echo Idle + Doomed Set")
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
	elseif command == "toggle TP set" then
		TP_ind = TP_ind + 1
		if TP_ind > #sets.TP.index then
			TP_ind = 1
		end
		send_command("@input /echo <----- TP Set changed to " .. sets.TP.index[TP_ind] .. " ---->")
		equip(sets.TP[sets.TP.index[TP_ind]])
	elseif command == "toggle Enfeebling Set" then
		Enfeebling_ind = Enfeebling_ind + 1
		if Enfeebling_ind > #sets.Enfeebling.index then
			Enfeebling_ind = 1
		end
		send_command("@input /echo <----- Enfeebling Set changed to " .. sets.Enfeebling.index[Enfeebling_ind] .. " ---->")
		equip(sets.Enfeebling[sets.Enfeebling.index[Enfeebling_ind]])
	elseif command == "equip TP set" then
		equip(sets.TP[sets.TP.index[TP_ind]])
	elseif command =="equip DT set" then
		equip (sets.Idle.DT)
	elseif command == "equip Idle set" then
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
	end
end

function sub_job_change(new,old)
send_command('wait 2;input /lockstyleset 15')
end

send_command('wait 2;input /lockstyleset 15')