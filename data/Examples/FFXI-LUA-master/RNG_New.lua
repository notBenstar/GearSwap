function get_sets()

	--binds--
send_command('bind !f2 gs equip sets.CP; gs disable back; input /echo <----- CP mantle locked ----->') -- Alt F2 locks CP mantle
send_command('bind ^f2 gs enable back; input /echo <----- CP mantle unlocked ----->') -- Ctrl F2 unlocks CP mantle

send_command('bind !f10 gs c toggle SJ set;')  -- Alt F10 swap subjob for different DW level 0 to 25 to 15
send_command('bind !f9 gs c toggle Melee Weapon set;')  -- Alt F9 swap melee weapon from Melee to Physical range to Magical range
send_command('bind !f8 gs c toggle Range Weapon set;') -- Alt F8 swap range weapon from Gun to Xbow to Bow
send_command('bind !f7 gs c toggle DW set;') -- Alt F7 swap DW 
send_command('bind !f6 gs c status check;') -- Alt F6 return sets status


	--SubJob list--
sets.SJ = {}
sets.SJ.index = {'Other','Ninja','Dancer'}
SJ_ind = 1

	--Weapon Sets--
sets.Weapon_melee = {}
sets.Weapon_melee.index = {'Melee','Prange','Mrange'}
Wm_ind = 1
sets.Weapon_melee.Melee = {
	main="Perun +1",
    sub="Odium",
}
sets.Weapon_melee.Prange = {
	main="Perun +1",
    sub="Perun",
}
sets.Weapon_melee.Mrange = {
	main="Perun +1",
    sub="Malevolence",
}

sets.Weapon_range = {}
sets.Weapon_range.index = {'Gun','XBow','Bow'}
Wr_ind = 1
sets.Weapon_range.Gun = {
    range="Fomalhaut",
    ammo="Chrono Bullet",
}
sets.Weapon_range.XBow = {
    range="Wochowsen",
    ammo=" bolt",
}
sets.Weapon_range.Bow = {
    range={ name="Teller", augments={'Weapon skill damage +2%','DEX+14','Rng.Acc.+29','Rng.Atk.+20','DMG:+11',}},
    ammo="eminent arrow",
}

sets.DW_mode = {}
sets.DW_mode.index = {'DW','notDW'}
DW_mode_ind = 1

sets.DW_mode.DW = {}
sets.DW_mode.notDW = {sub="Nusku Shield",}


	--Idle Sets--	
sets.Idle = {}
sets.Idle.index = {'Standard','DT'}
Idle_ind = 1
sets.Idle.Standard = {
    head={ name="Herculean Helm", augments={'Accuracy+19 Attack+19','Damage taken-3%','AGI+3','Accuracy+2',}},
    body="Herculean Vest",
    hands="Kurys Gloves",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Ahosi Leggings",
    neck="Sanctity Necklace",
    waist="Flume Belt +1",
    left_ear="Infused Earring",
    right_ear="Genmei Earring",
    left_ring="Defending Ring",
    right_ring="Vocane Ring",
    back="Moonbeam Cape",
}
sets.Idle.DT = {
	head={ name="Herculean Helm", augments={'Accuracy+19 Attack+19','Damage taken-3%','AGI+3','Accuracy+2',}},
    body="Herculean Vest",
    hands="Kurys Gloves",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Ahosi Leggings",
    neck="loricate torque +1",
    waist="Flume Belt +1",
    left_ear="Infused Earring",
    right_ear="Genmei Earring",
    left_ring="Defending Ring",
    right_ring="Vocane Ring",
    back="Moonbeam Cape",
}

	--CP mantle set--
sets.CP = {
    back="Mecisto. Mantle"   
}

	--TP Sets--
sets.TP = {}
sets.TP.index = {'Standard', 'MidAccuracy', 'HighAccuracy', 'Hybride'}
TP_ind = 1

sets.TP.Standard = {}
sets.TP.Standard.index = {'Other','Ninja','Dancer'}
sets.TP.Standard.Other = {
			head="Adhemar Bonnet", 
			neck="Lissome necklace", 
			ear1="Sherida Earring", 
			ear2="Telos Earring",
			body="Herculean Vest",
			hands="Adhemar Wristbands",
			ring1="Chirich Ring",
			ring2="Epona's Ring",
			back="Grounded Mantle",
			waist="Kentarch Belt +1",
			legs="Samnuha Tights",
			feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}}
}
sets.TP.Standard.Ninja = {
			head="Adhemar Bonnet", 
			neck="Lissome necklace", 
			ear1="Sherida Earring", 
			ear2="Telos Earring",
			body="Adhemar Jacket",
			hands="Adhemar Wristbands",
			ring1="Chirich Ring",
			ring2="Epona's Ring",
			back="Grounded Mantle",
			waist="Kentarch Belt +1",
			legs="Carmine Cuisses +1",
			feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}}
}
sets.TP.Standard.Dancer = {
			head="Adhemar Bonnet", 
			neck="Lissome necklace", 
			ear1="Suppanomimi", 
			ear2="Telos Earring",
			body="Adhemar Jacket",
			hands="Adhemar Wristbands",
			ring1="Chirich Ring",
			ring2="Epona's Ring",
			back="Grounded Mantle",
			waist="Kentarch Belt +1",
			legs="Carmine Cuisses +1",
			feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}}
}

sets.TP.MidAccuracy = {}
sets.TP.MidAccuracy.index = {'Other','Ninja','Dancer'}
sets.TP.MidAccuracy.Other = {
			head="Adhemar Bonnet", 
			neck="Lissome necklace", 
			ear1="Cessance Earring", 
			ear2="Telos Earring",
			body="Herculean Vest",
			hands="Adhemar Wristbands",
			ring1="Chirich Ring",
			ring2="Epona's Ring",
			back="Grounded Mantle",
			waist="Kentarch Belt +1",
			legs="Samnuha Tights",
			feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}}
}
sets.TP.MidAccuracy.Ninja = {
			head="Adhemar Bonnet", 
			neck="Lissome necklace", 
			ear1="Cessance Earring", 
			ear2="Telos Earring",
			body="Adhemar Jacket",
			hands="Adhemar Wristbands",
			ring1="Chirich Ring",
			ring2="Epona's Ring",
			back="Grounded Mantle",
			waist="Kentarch Belt +1",
			legs="Carmine Cuisses +1",
			feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}}
}
sets.TP.MidAccuracy.Dancer = {
			head="Adhemar Bonnet", 
			neck="Lissome necklace", 
			ear1="Suppanomimi", 
			ear2="Telos Earring",
			body="Adhemar Jacket",
			hands="Adhemar Wristbands",
			ring1="Chirich Ring",
			ring2="Epona's Ring",
			back="Grounded Mantle",
			waist="Kentarch Belt +1",
			legs="Carmine Cuisses +1",
			feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}}
}

sets.TP.HighAccuracy = {}
sets.TP.HighAccuracy.index = {'Other','Ninja','Dancer'}
sets.TP.HighAccuracy.Other = {
			head="Carmine Mask +1", 
			neck="Lissome necklace", 
			ear1="Cessance Earring", 
			ear2="Telos Earring",
			body="Herculean Vest",
			hands="Adhemar Wristbands",
			ring1="Chirich Ring",
			ring2="Cacoethic Ring",
			back="Grounded Mantle",
			waist="Kentarch Belt +1",
			legs="Samnuha Tights",
			feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}}
}
sets.TP.HighAccuracy.Ninja = {	
			head="Carmine Mask +1", 
			neck="Lissome necklace", 
			ear1="Cessance Earring", 
			ear2="Telos Earring",
			body="Adhemar Jacket",
			hands="Adhemar Wristbands",
			ring1="Chirich Ring",
			ring2="Cacoethic Ring",
			back="Grounded Mantle",
			waist="Kentarch Belt +1",
			legs="Carmine Cuisses +1",
			feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}}
}
sets.TP.HighAccuracy.Dancer = {
    head="Carmine Mask +1", 
			neck="Lissome necklace", 
			ear1="Suppanomimi", 
			ear2="Telos Earring",
			body="Adhemar Jacket",
			hands="Adhemar Wristbands",
			ring1="Chirich Ring",
			ring2="Cacoethic Ring",
			back="Grounded Mantle",
			waist="Kentarch Belt +1",
			legs="Carmine Cuisses +1",
			feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}}
}

sets.TP.Hybride = {}
sets.TP.Hybride.index = {'Other','Ninja','Dancer'}
sets.TP.Hybride.Other = {
			head={ name="Herculean Helm", augments={'Accuracy+19 Attack+19','Damage taken-3%','AGI+3','Accuracy+2',}}, 
			neck="Lissome necklace", 
			ear1="Cessance Earring", 
			ear2="Telos Earring",
			body="Herculean Vest",
			hands="Kurys Gloves",
			ring1="Defending Ring",
			ring2="Vocane Ring",
			back="Moonbeam Cape",
			waist="Kentarch Belt +1",
			legs="Samnuha Tights",
			feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}}
}
sets.TP.Hybride.Ninja = {
    head={ name="Herculean Helm", augments={'Accuracy+19 Attack+19','Damage taken-3%','AGI+3','Accuracy+2',}}, 
			neck="Lissome necklace", 
			ear1="Cessance Earring", 
			ear2="Telos Earring",
			body="Adhemar Jacket",
			hands="Kurys Gloves",
			ring1="Defending Ring",
			ring2="Vocane Ring",
			back="Moonbeam Cape",
			waist="Kentarch Belt +1",
			legs="Carmine Cuisses +1",
			feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}}
}
sets.TP.Hybride.Dancer = {
			head={ name="Herculean Helm", augments={'Accuracy+19 Attack+19','Damage taken-3%','AGI+3','Accuracy+2',}}, 
			neck="Lissome necklace", 
			ear1="Suppanomimi", 
			ear2="Telos Earring",
			body="Adhemar Jacket",
			hands="Kurys Gloves",
			ring1="Defending Ring",
			ring2="Vocane Ring",
			back="Moonbeam Cape",
			waist="Kentarch Belt +1",
			legs="Carmine Cuisses +1",
			feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}}
}

sets.Ranged = {}
sets.Ranged.index = {'Standard','HighAccuracy'}
sets.Ranged.Standard = {
							head="Meghanada Visor +1",
							neck="Iskur Gorget", 
							ear2="Telos Earring", 
							ear1="Volley Earring",
							body="Adhemar Jacket",
							hands={ name="Adhemar Wristbands", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
							ring1="Apate Ring",
							ring2="Cacoethic Ring", 
							waist ="Yemaya Belt",
							back="Belenus's Cape",   
							legs="Adhemar Kecks",
							feet="Meg. Jam. +1"
}
sets.Ranged.HighAccuracy = {
							head="Meghanada Visor +1",
							neck="Iskur Gorget", 
							ear2="Telos Earring", 
							ear1="Volley Earring",
							body="Adhemar Jacket",
							hands={ name="Adhemar Wristbands", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
							ring1="Apate Ring",
							ring2="Cacoethic Ring", 
							waist ="Yemaya Belt",
							back="Belenus's Cape",   
							legs="Adhemar Kecks",
							feet="Meg. Jam. +1"
}


	--Defence Sets--
set.PDT = {
    head={ name="Herculean Helm", augments={'Accuracy+19 Attack+19','Damage taken-3%','AGI+3','Accuracy+2',}}, 
    body="Meg. Cuirie +1",
    hands="Kurys gloves",
    legs={ name="Herculean Trousers", augments={'"Mag.Atk.Bns."+25','Phys. dmg. taken -5%','INT+6','Mag. Acc.+9',}}, 
    feet="Ahosi Leggings",
    neck="Loricate Torque +1",
    waist="Flume Belt",
    left_ear="Infused Earring",
    right_ear="Genmei Earring",
    left_ring="Vocane Ring",
    right_ring="Defending Ring",
    back="Moonbeam Cape",
}
set.MDT = {
	 head={ name="Herculean Helm", augments={'Accuracy+19 Attack+19','Damage taken-3%','AGI+3','Accuracy+2',}}, 
    body="Meg. Cuirie +1",
    hands="Kurys gloves",
    legs={ name="Herculean Trousers", augments={'"Mag.Atk.Bns."+25','Phys. dmg. taken -5%','INT+6','Mag. Acc.+9',}}, 
    feet="Ahosi Leggings",
    neck="Loricate Torque +1",
    waist="Flume Belt",
    left_ear="Infused Earring",
    right_ear="Genmei Earring",
    left_ring="Vocane Ring",
    right_ring="Defending Ring",
    back="Moonbeam Cape",
}


	--Weaponskill Sets--
sets.WS = {}
sets.WS.index = {'Attack','Accuracy'}
WS_ind = 1
			   
sets.Ruinator = {}		
sets.Ruinator.Attack = {
	head={ name="Adhemar Bonnet", augments={'STR+10','DEX+10','Attack+15',}},
    body={ name="Herculean Vest", augments={'Pet: STR+1','STR+9','Quadruple Attack +2','Accuracy+19 Attack+19','Mag. Acc.+19 "Mag.Atk.Bns."+19',}},
    hands="Meg. Gloves +2",
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet={ name="Rawhide Boots", augments={'DEX+10','STR+7','INT+7',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Telos Earring",
    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
    left_ring="Ifrit Ring +1",
    right_ring="Ifrit Ring +1",
    back={ name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
}
sets.Ruinator.Accuracy = {
	head="Meghanada Visor +1",
    body="Meg. Cuirie +1",
    hands="Meg. Gloves +2",
    legs="Meg. Chausses +1",
    feet="Meg. Jam. +1",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Telos Earring",
    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
    left_ring="Ramuh Ring +1",
    right_ring="Ramuh Ring +1",
    back={ name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
}

sets.OtherAxe = {}		
sets.OtherAxe.Attack = {
	head={ name="Herculean Helm", augments={'Accuracy+18 Attack+18','MND+2','Weapon skill damage +10%',}},
    body={ name="Herculean Vest", augments={'CHR+2','Mag. Acc.+4','Weapon skill damage +6%','Accuracy+9 Attack+9','Mag. Acc.+11 "Mag.Atk.Bns."+11',}},
    hands="Meg. Gloves +1",
    legs={ name="Herculean Trousers", augments={'Accuracy+14','CHR+2','Weapon skill damage +6%','Accuracy+12 Attack+12','Mag. Acc.+11 "Mag.Atk.Bns."+11',}},
    feet={ name="Herculean Boots", augments={'Mag. Acc.+21','Weapon skill damage +4%','INT+9','"Mag.Atk.Bns."+10',}},
    neck="Caro Necklace",
    waist="Chiner's Belt +1",
    left_ear="Telos Earring",
    right_ear="Jupiter's Pearl",
    left_ring="Ifrit Ring +1",
    right_ring="Ifrit Ring +1",
    back={ name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
}
sets.OtherAxe.Accuracy = {
	head={ name="Herculean Helm", augments={'Accuracy+18 Attack+18','MND+2','Weapon skill damage +10%',}},
    body={ name="Adhemar Jacket", augments={'DEX+10','AGI+10','Accuracy+15',}},
    hands="Meg. Gloves +1",
    legs={ name="Herculean Trousers", augments={'Accuracy+14','CHR+2','Weapon skill damage +6%','Accuracy+12 Attack+12','Mag. Acc.+11 "Mag.Atk.Bns."+11',}},
    feet="Meg. Jam. +2",
    neck="Shifting Neck. +1",
    waist="Chiner's Belt +1",
    left_ear="Telos Earring",
    right_ear="Digni. Earring",
    left_ring="Ramuh Ring +1",
    right_ring="Ramuh Ring +1",
    back={ name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
}

sets.Rampage = {}
sets.Rampage.Attack = {
    head={ name="Adhemar Bonnet", augments={'STR+10','DEX+10','Attack+15',}},
    body="Meg. Cuirie +1",
    hands="Mummu Wrists +1",
    legs="Mummu Kecks +1",
    feet="Mummu Gamash. +1",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Telos Earring",
    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
    left_ring="Ifrit Ring +1",
    right_ring="Ifrit Ring +1",
    back={ name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
}			   
sets.Rampage.Accuracy = {
    head="Mummu Bonnet +1",
    body="Meg. Cuirie +1",
    hands="Mummu Wrists +1",
    legs="Mummu Kecks +1",
    feet="Mummu Gamash. +1",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Telos Earring",
    right_ear="Digni. Earring",
    left_ring="Ramuh Ring +1",
    right_ring="Ramuh Ring +1",
    back={ name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
}

sets.Evisceration = {}
sets.Evisceration.Attack = {
    head={ name="Adhemar Bonnet", augments={'STR+10','DEX+10','Attack+15',}},
    body="Meg. Cuirie +1",
    hands="Mummu Wrists +1",
    legs="Mummu Kecks +1",
    feet="Mummu Gamash. +1",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Jupiter's Pearl",
    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
    left_ring="Ramuh Ring +1",
    right_ring="Begrudging Ring",
    back={ name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
}			   
sets.Evisceration.Accuracy = {
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
    body="Mummu Jacket +1",
    hands="Mummu Wrists +1",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Mummu Gamash. +1",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Jupiter's Pearl",
    right_ear="Digni. Earring",
    left_ring="Ramuh Ring +1",
    right_ring="Begrudging Ring",
    back={ name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
}


sets.MagicGun = {}
sets.MagicGun.Attack = {
							head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','"Dbl.Atk."+2','Mag. Acc.+12','"Mag.Atk.Bns."+4',}},
							neck="Sanctity Necklace",  
							ear2="Friomisi earring", 
							ear1="Moonshade Earring",
							body="Samnuha Coat",
							hands="Meg. Gloves +2",   
							ring1="Acumen Ring", 
							ring2 ='Dingir Ring',
							waist ="Eschan Stone",
							back="Belenus's Cape",   
							legs={ name="Herculean Trousers", augments={'"Mag.Atk.Bns."+25','Phys. dmg. taken -5%','INT+6','Mag. Acc.+9',}}, 
							feet={ name="Herculean Boots", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','VIT+10','"Mag.Atk.Bns."+12',}}
}
sets.MagicGun.Accuracy = {
							head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','"Dbl.Atk."+2','Mag. Acc.+12','"Mag.Atk.Bns."+4',}},
							neck="Sanctity Necklace",  
							ear2="Friomisi earring", 
							ear1="Moonshade Earring",
							body="Samnuha Coat",
							hands="Meg. Gloves +2",   
							ring1="Acumen Ring", 
							ring2 ='Dingir Ring',
							waist ="Eschan Stone",
							back="Belenus's Cape",   
							legs={ name="Herculean Trousers", augments={'"Mag.Atk.Bns."+25','Phys. dmg. taken -5%','INT+6','Mag. Acc.+9',}}, 
							feet={ name="Herculean Boots", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','VIT+10','"Mag.Atk.Bns."+12',}}
}

sets.OtherWS = {}		
sets.OtherWS.Attack = {
						head={ name="Herculean Helm", augments={'Accuracy+24 Attack+24','Weapon skill damage +5%','DEX+4',}},
						neck="Fotia gorget",
						ear1="Sherida Earring",
						ear2="Moonshade Earring",
                        body="Adhemar Jacket",
						hands="Meg. Gloves +2",
						ring1="Dingir Ring",
						ring2="Regal Ring",
                        back="Belenus's Cape",
						waist="Fotia Belt",
						legs={ name="Adhemar Kecks", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
						feet="Meg. Jam. +1",
}	
sets.OtherWS.Accuracy = {
						head={ name="Herculean Helm", augments={'Accuracy+24 Attack+24','Weapon skill damage +5%','DEX+4',}},
						neck="Fotia gorget",
						ear1="Sherida Earring",
						ear2="Moonshade Earring",
                        body="Adhemar Jacket",
						hands="Meg. Gloves +2",
						ring1="Dingir Ring",
						ring2="Regal Ring",
                        back="Belenus's Cape",
						waist="Fotia Belt",
						legs={ name="Adhemar Kecks", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
						feet="Meg. Jam. +1",
}

sets.RangedWS = {}		
sets.RangedWS.Attack = {
						head={ name="Herculean Helm", augments={'Accuracy+24 Attack+24','Weapon skill damage +5%','DEX+4',}},
						neck="Fotia gorget",
						ear1="Sherida Earring",
						ear2="Moonshade Earring",
                        body="Adhemar Jacket",
						hands="Meg. Gloves +2",
						ring1="Dingir Ring",
						ring2="Regal Ring",
                        back="Belenus's Cape",
						waist="Fotia Belt",
						legs={ name="Adhemar Kecks", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
						feet="Meg. Jam. +1",
}	
sets.RangedWS.Accuracy = {
						head="Meghanada Visor +1",
						neck="Fotia gorget",
						ear1="Sherida Earring",
						ear2="Moonshade Earring",
                        body="Adhemar Jacket",
						hands="Meg. Gloves +2",
						ring1="Dingir Ring",
						ring2="Regal Ring",
                        back="Belenus's Cape",
						waist="Fotia Belt",
						legs={ name="Adhemar Kecks", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
						feet="Meg. Jam. +1",
}

sets.RangedWScrit = {}		
sets.RangedWScrit.Attack = {
	head={ name="Adhemar Bonnet", augments={'STR+10','DEX+10','Attack+15',}},
    body="Meg. Cuirie +1",
    hands="Mummu Wrists +1",
    legs="Darraigner's Brais",
    feet="Mummu Gamash. +1",
    neck="Combatant's Torque",
    waist="Yemaya Belt",
    left_ear="Telos Earring",
    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
    left_ring="Dingir Ring",
    right_ring="Begrudging Ring",
    back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}},
}	
sets.RangedWScrit.Accuracy = {
	head="Mummu Bonnet +1",
    body="Meg. Cuirie +1",
    hands="Mummu Wrists +1",
    legs="Mummu Kecks +1",
    feet="Mummu Gamash. +1",
    neck="Combatant's Torque",
    waist="Yemaya Belt",
    left_ear="Telos Earring",
    right_ear="Digni. Earring",
    left_ring="Hajduk Ring",
    right_ring="Hajduk Ring",
    back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}},
}

sets.AeolianEdge = {}
sets.AeolianEdge = {
							head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','"Dbl.Atk."+2','Mag. Acc.+12','"Mag.Atk.Bns."+4',}},
							neck="Sanctity Necklace",  
							ear2="Friomisi earring", 
							ear1="Moonshade Earring",
							body="Samnuha Coat",
							hands="Meg. Gloves +2",   
							ring1="Acumen Ring", 
							ring2 ='Dingir Ring',
							waist ="Eschan Stone",
							back="Belenus's Cape",   
							legs={ name="Herculean Trousers", augments={'"Mag.Atk.Bns."+25','Phys. dmg. taken -5%','INT+6','Mag. Acc.+9',}}, 
							feet={ name="Herculean Boots", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','VIT+10','"Mag.Atk.Bns."+12',}}
}

	
	--Job Ability Sets--
sets.JA = {}
sets.JA.EES = {legs="Arcadian Braccae +1",}
sets.JA.Scavange = {feet="Orion Socks +1",}
sets.JA.SBind = {hands="Orion Bracers +1",}
sets.JA.Camo = {body="Orion Jerkin +1",}
sets.JA.SShot = {legs="Orion Braccae +1",}
sets.JA.Barrage = {ear1="Sherida Earring",
        head="Meghanada Visor +1",
	    neck="Sanctity Necklace", 
	    ear2="Telos Earring", 
	    body="Adhemar Jacket",
 	    hands="Orion Bracers +1",
	    ring1="Apate Ring",
	    ring2="Cacoethic Ring", 
 	    waist ="Yemaya Belt",
	    back="Belenus's Cape",   
	    legs="Pursuer's Pants",
	    feet ="Meg. Jam +1"}
sets.JA.VShot = {body="Amini Caban +1",}
sets.JA.BShot = {hands="Amini glovelettes +1",}


	--Other special gear--
sets.obi = {
	waist="Hachirin-no-Obi",
}

sets.lightnuke = {
	left_ring="Weatherspoon Ring",
}

	--Precast Sets--
sets.snapshot = {
	  head="Amini Gapette", -- 7
            body="Amini Caban +1", -- 7
            hands="Carmine Finger Gauntlets", --8
            back="Lutian Cape", -- 2
            legs="Adhemar Kecks",
            waist="Impulse Belt", -- 2
            feet="Meg. Jam. +1" -- 8
}	
	
	--send_command('input /macro book 1;wait .1;input /macro set 1')	

end

function precast(spell)
	if spell.action_type == 'Ranged Attack' then
		equip(sets.snapshot)
	elseif spell.type == 'WeaponSkill' 
		then if player.tp >= 1000 
			then if spell.english == "Last Stand" or spell.english == "Coronach" or spell.english == "Wildfire" or spell.english == "Trueflight" or spell.english == "Detonator" or spell.english == "Heavy Shot" or spell.english == "Slug Shot" or spell.english == "Sniper Shot" or spell.english == "Split Shot" or spell.english == "Hot Shot"
				or spell.english == "Jishun's Radiance" or spell.english == "Refulgent Arrow" or spell.english == "Empyreal Arrow" or spell.english == "Arching Arrow" or spell.english == "Sidewinder" or spell.english == "Dulling Arrow" or spell.english == "Piercing Arrow" or spell.english == "Flaming Arrow"
				then if spell.target.distance <= 21.5 
					then if spell.english == "Trueflight" 
						then equip(set_combine(sets.MagicGun[sets.WS.index[WS_ind]],sets.lightnuke))
						if world.day_element == 'Light' or world.weather_element == 'Light'
							then equip(set_combine(sets.obi,sets.lightnuke))
						end
					elseif spell.english == "Wildfire" or spell.english == "Hot Shot" or spell.english == "Flaming Arrow"
						then equip(sets.MagicGun[sets.WS.index[WS_ind]])
						if world.day_element == 'Fire' or world.weather_element == 'Fire'
							then equip(sets.obi)
						end
					elseif spell.english == "Last Stand" or spell.english == "Detonator" or spell.english == "Slug Shot" or spell.english == "Sniper Shot" or spell.english == "Split Shot" or spell.english == "Coronach"
						then equip(sets.RangedWS[sets.WS.index[WS_ind]])
					elseif spell.english == "Jishun's Radiance" or spell.english == "Heavy Shot" or spell.english == "Arching Arrow"
						then equip(sets.RangedWScrit[sets.WS.index[WS_ind]])
					end
				else cancel_spell(); windower.add_to_chat(121, 'Canceled '..spell.name..' '..spell.target.name..' is Too Far')
				end
			elseif spell.target.distance <= 5.5 
				then if spell.english == "Blast Shot" or spell.english == "Blast Arrow" or spell.english == "Numbing Shot"
					then equip(sets.RangedWS[sets.WS.index[WS_ind]])
				elseif spell.english == 'Ruinator' 
					then equip(sets.Ruinator[sets.WS.index[WS_ind]])
				elseif spell.english == 'Rampage' 
					then equip(sets.Rampage[sets.WS.index[WS_ind]])
				elseif spell.english == 'Aeolian Edge' 
					then equip(sets.AeolianEdge)
					if world.day_element == 'Wind' or world.weather_element == 'Wind'
						then equip(sets.obi)
					end
				elseif spell.english == 'Evisceration' 
					then equip(sets.Evisceration[sets.WS.index[WS_ind]])
				elseif spell.english == 'Bora Axe' or spell.english == 'Decimation' or spell.english == 'Avalanche' or spell.english == 'Gale Axe' or spell.english == 'Smash Axe' or spell.english == 'Raging Axe'
					then equip(sets.OtherAxe[sets.WS.index[WS_ind]])
				elseif spell.action_type == 'Weaponskill' 
					then equip(sets.OtherWS[sets.WS.index[WS_ind]])
				end
			else cancel_spell(); windower.add_to_chat(121, 'Canceled '..spell.name..' '..spell.target.name..' is Too Far')
			end
		end
	elseif spell.english == "Scavange"
		then equip(sets.JA.Scavange)
	elseif spell.english == "Eagle Eye Shot"
		then equip(set_combine(sets.Ranged[sets.Ranged.index[WS_ind]],sets.JA.EES))
	elseif spell.english == "Shadowbind"
		then equip(sets.JA.SBind)
	elseif spell.english == "Camouflage"
		then equip(sets.JA.Camo)
	elseif spell.english == "Sharpshot"
		then equip(sets.JA.SShot)
	elseif spell.english == "Bounty Shot"
		then equip(sets.JA.BShot)
	end
end
	
function midcast(spell,act)
	if spell.action_type == 'Ranged Attack' 
		then equip(sets.Ranged[sets.Ranged.index[WS_ind]])
		if buffactive['Velocity Shot'] 
			then equip(sets.JA.VShot)
		end
		if buffactive['Barrage']
			then equip(sets.JA.Barrage)
		end
	end
end

function aftercast(spell)
	if player.status == 'Engaged' 
		then equip(set_combine(sets.TP[sets.TP.index[TP_ind]][sets.SJ.index[SJ_ind]],sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]],sets.Weapon_range[sets.Weapon_range.index[Wr_ind]],sets.DW_mode[sets.DW_mode.index[DW_mode_ind]]))
	else
		equip(set_combine(sets.Idle[sets.Idle.index[Idle_ind]],sets.Weapon_range[sets.Weapon_range.index[Wr_ind]],sets.DW_mode[sets.DW_mode.index[DW_mode_ind]]))
	end
		
end

function status_change(new,old)
	if new == 'Engaged' 
		then equip(set_combine(sets.TP[sets.TP.index[TP_ind]][sets.SJ.index[SJ_ind]],sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]],sets.Weapon_range[sets.Weapon_range.index[Wr_ind]],sets.DW_mode[sets.DW_mode.index[DW_mode_ind]]))
	else
		equip(set_combine(sets.Idle[sets.Idle.index[Idle_ind]],sets.Weapon_range[sets.Weapon_range.index[Wr_ind]],sets.DW_mode[sets.DW_mode.index[DW_mode_ind]]))
	end
end

function self_command(command)
	if command == 'toggle TP set'
		then TP_ind = TP_ind +1
		if TP_ind > #sets.TP.index 
			then TP_ind = 1 
		end
		send_command('@input /echo <----- TP Set changed to '..sets.TP.index[TP_ind]..' ----->')
		if TP_ind > 1 
			then WS_ind = 2
		else WS_ind = 1 
		end
		send_command('@input /echo <----- WS set changed to '..sets.WS.index[WS_ind]..' ----->')
		send_command('@input /echo <----- SJ Set changed to '..sets.SJ.index[SJ_ind]..' ----->')
		equip(set_combine(sets.TP[sets.TP.index[TP_ind]][sets.SJ.index[SJ_ind]],sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]],sets.Weapon_range[sets.Weapon_range.index[Wr_ind]],sets.DW_mode[sets.DW_mode.index[DW_mode_ind]]))
	elseif command == 'toggle SJ set'
		then SJ_ind = SJ_ind +1
		if SJ_ind > #sets.SJ.index
			then SJ_ind = 1
		end
		send_command('@input /echo <----- TP Set changed to '..sets.TP.index[TP_ind]..' ----->')
		send_command('@input /echo <----- WS set changed to '..sets.WS.index[WS_ind]..' ----->')
		send_command('@input /echo <----- SJ Set changed to '..sets.SJ.index[SJ_ind]..' ----->')
		equip(set_combine(sets.TP[sets.TP.index[TP_ind]][sets.SJ.index[SJ_ind]],sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]],sets.Weapon_range[sets.Weapon_range.index[Wr_ind]],sets.DW_mode[sets.DW_mode.index[DW_mode_ind]]))
	elseif command == 'toggle Melee Weapon set'
		then Wm_ind = Wm_ind +1
		if Wm_ind > #sets.Weapon_melee.index
			then Wm_ind = 1
		end
		send_command('@input /echo <----- Melee weapon changed to '..sets.Weapon_melee.index[Wm_ind]..' ----->')
		send_command('@input /echo <----- Range weapon changed to '..sets.Weapon_range.index[Wr_ind]..' ----->')
		equip(set_combine(sets.TP[sets.TP.index[TP_ind]][sets.SJ.index[SJ_ind]],sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]],sets.Weapon_range[sets.Weapon_range.index[Wr_ind]],sets.DW_mode[sets.DW_mode.index[DW_mode_ind]]))
	elseif command == 'toggle Range Weapon set'
		then Wr_ind = Wr_ind +1
		if Wr_ind > #sets.Weapon_range.index
			then Wr_ind = 1
		end
		send_command('@input /echo <----- Melee weapon changed to '..sets.Weapon_melee.index[Wm_ind]..' ----->')
		send_command('@input /echo <----- Range weapon changed to '..sets.Weapon_range.index[Wr_ind]..' ----->')
		equip(set_combine(sets.TP[sets.TP.index[TP_ind]][sets.SJ.index[SJ_ind]],sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]],sets.Weapon_range[sets.Weapon_range.index[Wr_ind]],sets.DW_mode[sets.DW_mode.index[DW_mode_ind]]))
	elseif command == 'toggle DW set'
		then DW_mode_ind = DW_mode_ind +1
		if DW_mode_ind > #sets.DW_mode.index
			then DW_mode_ind = 1
		end
		send_command('@input /echo <----- DW status changed to '..sets.DW_mode.index[DW_mode_ind]..' ----->')
		equip(set_combine(sets.TP[sets.TP.index[TP_ind]][sets.SJ.index[SJ_ind]],sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]],sets.Weapon_range[sets.Weapon_range.index[Wr_ind]],sets.DW_mode[sets.DW_mode.index[DW_mode_ind]]))
	elseif command == 'toggle idle set' then
		Idle_ind = Idle_ind +1
		if Idle_ind > #sets.Idle.index then Idle_ind = 1 end
		send_command('@input /echo <----- Idle Set changed to '..sets.Idle.index[Idle_ind]..' ----->')
		equip(set_combine(sets.Idle[sets.Idle.index[Idle_ind]],sets.Weapon_range[sets.Weapon_range.index[Wr_ind]],sets.DW_mode[sets.DW_mode.index[DW_mode_ind]]))
	elseif command == 'toggle pdt set' then
		equip(set.PDT)
		send_command('@input /echo <----- PDT set Equipped ----->')
	elseif command == 'toggle mdt set' then
		equip(set.MDT)
		send_command('@input /echo <----- MDT set Equipped ----->')
	elseif command == 'status check' 
		then send_command('@input /echo <----- Melee weapon changed to '..sets.Weapon_melee.index[Wm_ind]..' ----->')
			send_command('@input /echo <----- Range weapon changed to '..sets.Weapon_range.index[Wr_ind]..' ----->')
			send_command('@input /echo <----- SJ Set changed to '..sets.SJ.index[SJ_ind]..' ----->')
			send_command('@input /echo <----- TP Set changed to '..sets.TP.index[TP_ind]..' ----->')
			send_command('@input /echo <----- WS set changed to '..sets.WS.index[WS_ind]..' ----->')
	end
end
