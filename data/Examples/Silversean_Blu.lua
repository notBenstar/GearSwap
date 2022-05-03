

function get_sets()


	send_command('bind f9 gs c toggle TP set')
	send_command('bind f10 gs c toggle Idle set')
	send_command('bind f11 gs c toggle CDC set')
	send_command('bind f12 gs c toggle Req set')
	send_command('bind !f12 gs c disable main')
	
	

	
	function file_unload()
      
 
        send_command('unbind ^f9')
        send_command('unbind ^f10')
		send_command('unbind ^f11')
		send_command('unbind ^f12')
       
        send_command('unbind !f9')
        send_command('unbind !f10')
		send_command('unbind !f11')
        send_command('unbind !f12')
 
        send_command('unbind f9')
        send_command('unbind f10')
        send_command('unbind f11')
        send_command('unbind f12')
 
       
 
	end	
	

	--Idle Sets--	
	sets.Idle = {}
	
	sets.Idle.index = {'Town','Standard','DT'}
	Idle_ind = 1			

	sets.Idle.Town = {ammo="Vanir Battery",
						    head="Adhemar bonnet",neck="Asperity necklace", ear1="Steelflash earring", ear2="Bladeborn earring",
					    	body="Adhemar jacket",hands={ name="Herculean Gloves", augments={'Accuracy+25','"Triple Atk."+4','AGI+4','Attack+10',}},ring1="Epona's ring",ring2="Rajas ring",
						    back="Atheling mantle",waist="Windbuffet belt",legs="Carmine cuisses +1",feet="Taeon Boots"}
						  
	sets.Idle.Standard =  {ammo="Impatiens",
		head={ name="Rawhide Mask", augments={'HP+43','Accuracy+12','Evasion+17',}},
		body="Jhakri Robe +1",
		hands="Serpentes Cuffs",
		legs="Carmine Cuisses +1",
		feet="Serpentes Sabots",
		neck="Twilight Torque",
		waist="Flume Belt",
		left_ear="Ethereal Earring",
		right_ear="Loquac. Earring",
		left_ring="Defending Ring",
		right_ring={ name="Dark Ring", augments={'Breath dmg. taken -4%','Phys. dmg. taken -5%',}},
		back="Cheviot Cape"}
						  
	

	
						  
	sets.Idle.DT = {main="Terra's staff",sub="umbra strap",ammo="Ginsen",
			    	head="Ejekamal Mask",neck="Twilight torque", ear1="Ethereal earring", ear2="Eabani earring",
					body="Emet Harness",hands="Buremte gloves",ring1="Defending ring",ring2="Dark ring",
					back="Repulse mantle",waist="Flume belt +1",legs="Carmine Cuisses +1",feet="Hippomenes socks"}
								

							
	
	--TP Sets--
	sets.TP = {}

	sets.TP.index = {'Standard', 'Solo', 'Safe', 'AccuracyLite', 'AccuracyFull', 'AccuracyExtreme', 'DT', 'TH'}
	--1=Standard, 2=Solo, 3=Marches, 4=AccuracyLite, 5=AccuracyFull, 6=DT, 7=TH--
	TP_ind = 1
	
	sets.TP.Standard = {
    main="Tizona",
    sub={ name="Colada", augments={'"Dbl.Atk."+3','DEX+4','Accuracy+10','Attack+2','DMG:+17',}},
    ammo="Ginsen",
    head={ name="Adhemar Bonnet", augments={'DEX+10','AGI+10','Accuracy+15',}},
    body={ name="Adhemar Jacket", augments={'DEX+10','AGI+10','Accuracy+15',}},
    hands={ name="Adhemar Wristbands", augments={'DEX+10','AGI+10','Accuracy+15',}},
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet={ name="Herculean Boots", augments={'Accuracy+27','"Triple Atk."+4',}},
    neck="Lissome Necklace",
    waist="Windbuffet Belt +1",
    left_ear="Brutal Earring",
    right_ear="Suppanomimi",
    left_ring="Epona's Ring",
    right_ring="Petrov Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10',}},
}
						
	sets.TP.Solo = {ammo="Vanir Battery",
					head="Adhemar bonnet",neck="Asperity necklace", ear1="Steelflash earring", ear2="Bladeborn earring",
					body="Qaaxo Harness",hands="Adhemar Wristbands",ring1="Epona's ring",ring2="Rajas ring",
					back="Atheling mantle",waist="Windbuffet belt +1",legs="Samnuha Tights",feet="Herculean Boots"}
					
	sets.TP.Safe = {    ammo="Ginsen",
    head="Adhemar Bonnet",
    body={ name="Adhemar Jacket", augments={'DEX+10','AGI+10','Accuracy+15',}},
    hands={ name="Herculean Gloves", augments={'"Triple Atk."+3','AGI+3','Accuracy+14','Attack+5',}},
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet={ name="Herculean Boots", augments={'Accuracy+27','"Triple Atk."+4',}},
    neck="Asperity Necklace",
    waist="Windbuffet Belt +1",
    left_ear="Brutal Earring",
    right_ear="Suppanomimi",
    left_ring="Epona's Ring",
    right_ring="Petrov Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}},
}
					
	sets.TP.AccuracyLite = {ammo="Ginsen",
    head="Adhemar Bonnet",
    body={ name="Adhemar Jacket", augments={'DEX+10','AGI+10','Accuracy+15',}},
    hands={ name="Herculean Gloves", augments={'"Triple Atk."+3','AGI+3','Accuracy+14','Attack+5',}},
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet={ name="Herculean Boots", augments={'Accuracy+27','"Triple Atk."+4',}},
    neck="Iqabi Necklace",
    waist="Windbuffet Belt +1",
    left_ear="Brutal Earring",
    right_ear="Suppanomimi",
    left_ring="Epona's Ring",
    right_ring="Petrov Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}},
}
	sets.TP.AccuracyFull = {    ammo="Ginsen",
    head={ name="Dampening Tam", augments={'DEX+9','Accuracy+13','Mag. Acc.+14','Quadruple Attack +2',}},
    body={ name="Adhemar Jacket", augments={'DEX+10','AGI+10','Accuracy+15',}},
    hands={ name="Adhemar Wristbands", augments={'DEX+10','AGI+10','Accuracy+15',}},
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet={ name="Herculean Boots", augments={'Accuracy+27','"Triple Atk."+4',}},
    neck="Iqabi Necklace",
    waist="Windbuffet Belt +1",
    left_ear="Steelflash Earring",
    right_ear="Bladeborn Earring",
    left_ring="Epona's Ring",
    right_ring="Rajas Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}},
}
							
	sets.TP.AccuracyExtreme = {
	ammo="Falcon Eye",
    head={ name="Dampening Tam", augments={'DEX+9','Accuracy+13','Mag. Acc.+14','Quadruple Attack +2',}},
    body={ name="Adhemar Jacket", augments={'DEX+10','AGI+10','Accuracy+15',}},
    hands={ name="Adhemar Wristbands", augments={'DEX+10','AGI+10','Accuracy+15',}},
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet={ name="Herculean Boots", augments={'Accuracy+27','"Triple Atk."+4',}},
    neck="Iqabi Necklace",
    waist="Eschan Stone",
    left_ear="Heartseeker Earring",
    right_ear="Dudgeon Earring",
    left_ring="Epona's Ring",
    right_ring="Petrov Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10',}},
}
							
	sets.TP.DT = {ammo="Impatiens",
								head={ name="Herculean Helm", augments={'Accuracy+6','"Triple Atk."+4','DEX+10',}},
								body="Emet Harness",
								hands={ name="Herculean Gloves", augments={'Accuracy+25 Attack+25','STR+8','Accuracy+10',}},
								legs={ name="Herculean Trousers", augments={'Accuracy+15 Attack+15','Crit. hit damage +3%',}},
								feet="Serpentes Sabots",
								neck="Twilight Torque",
								waist="Flume Belt",
								left_ear="Ethereal Earring",
								right_ear="Loquac. Earring",
								left_ring="Defending Ring",
								right_ring={ name="Dark Ring", augments={'Breath dmg. taken -4%','Phys. dmg. taken -5%',}},
								back="Cheviot Cape"}
				  
	sets.TP.TH = {ammo="Ginsen",
						head="Dampening Tam",neck="Asperity necklace", ear1="Brutal earring", ear2="Suppanomimi",
						body="Qaaxo Harness",hands={ name="Herculean Gloves", augments={'AGI+1','Spell interruption rate down -9%','"Treasure Hunter"+2','Mag. Acc.+1 "Mag.Atk.Bns."+1',}},ring1="Epona's ring",ring2="Rajas ring",
						back="Letalis mantle",waist="Chaac Belt",legs="Samnuha tights",feet={ name="Herculean Boots", augments={'STR+4','Rng.Atk.+20','"Treasure Hunter"+1',}}}
						 
	
	
	
	
	
	--Weaponskill Sets--
	sets.WS = {}
	
	sets.Requiescat = {}
	
	sets.Requiescat.index = {'Attack','Accuracy'}
	Requiescat_ind = 1
	
	sets.Requiescat.Attack = {
    ammo="Hydrocera",
    head="Jhakri Coronal +1",
    body="Jhakri Robe +1",
    hands="Jhakri Cuffs +1",
    legs="Jhakri Slops +1",
    feet="Jhakri Pigaches +1",
    neck="Sanctity Necklace",
    waist="Luminary Sash",
    left_ear="Friomisi Earring",
    right_ear="Lempo Earring",
    left_ring="Perception Ring",
    right_ring="Persis Ring",
    back={ name="Cornflower Cape", augments={'MP+28','DEX+2','Accuracy+5','Blue Magic skill +9',}},
}
								  
	sets.Requiescat.Accuracy = {ammo="Honed Tathlum",
						     head="Dampening Tam",neck="Fotia gorget",ear1="Moonshade earring",ear2="Brutal earring",
						 	  body="Adhemar jacket",hands="Adhemar Wristbands",ring1="Epona's ring",ring2="Beeline ring",
						   	  back="Letalis Cape",waist="Fotia Belt",legs="Samnuha tights",feet="Thereoid greaves"}
							 
	sets.ChantDuCygne = {}
	
	sets.ChantDuCygne.index = {'Attack','Accuracy'}
	ChantDuCygne_ind = 1
	
	sets.ChantDuCygne.Attack = { ammo="Falcon Eye",
    head={ name="Adhemar Bonnet", augments={'DEX+10','AGI+10','Accuracy+15',}},
    body="Abnoba Kaftan",
    hands={ name="Herculean Gloves", augments={'Rng.Acc.+1','Crit. hit damage +4%','Attack+4',}},
    legs={ name="Herculean Trousers", augments={'Crit. hit damage +5%','DEX+6','Attack+6',}},
    feet="Thereoid Greaves",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Brutal Earring",
    right_ear="Bladeborn Earring",
    left_ring="Hetairoi Ring",
    right_ring="Begrudging Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Crit.hit rate+10',}},
}
							   
	sets.ChantDuCygne.Accuracy = {ammo="Ginsen",
		head="Adhemar Bonnet", 
		body="Abnoba Kaftan",
		legs={ name="Herculean Trousers", augments={'Attack+5','"Triple Atk."+4','AGI+9','Accuracy+15',}},
		feet="Thereoid Greaves",
		neck="Iqabi Necklace",
		waist="Windbuffet Belt +1",
		left_ear="Heartseeker Earring",
		right_ear="Dudgeon Earring",
		left_ring="Rajas Ring",
		right_ring="Epona's Ring",
		back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Crit.hit rate+10',}},}
							   
	sets.WS.SanguineBlade = {}
	
	sets.WS.SanguineBlade =   {
    main="Tizona",
    sub={ name="Colada", augments={'"Dbl.Atk."+3','DEX+4','Accuracy+10','Attack+2','DMG:+17',}},
    ammo="Ghastly Tathlum +1",
    head="Pixie Hairpin +1",
    body="Jhakri Robe +1",
    hands="Jhakri Cuffs +1",
    legs="Jhakri Slops +1",
    feet="Jhakri Pigaches +1",
    neck="Eddy Necklace",
    waist="Eschan Stone",
    left_ear="Friomisi Earring",
    right_ear="Lempo Earring",
    left_ring="Acumen Ring",
    right_ring="Archon Ring",
    back="Seshaw Cape",
}
		
	sets.WS.CircleBlade = {}		
			
	sets.WS.CircleBlade = {ammo="Cheruski needle",
						   head="Dampening Tam",neck="Iqabi Necklace",ear1="Moonshade earring",ear2="Brutal earring",
						   body="Abnoba Kaftan",hands="Adhemar Wristbands",ring1="Epona's ring",ring2="Rajas ring",
						   back="Bleating Mantle",waist="Fotia Belt",legs="Samnuha tights",feet="Thereoid greaves",
						  }
						   
	sets.WS.Expiacion = {}		
			
	sets.WS.Expiacion = {   head={ name="Herculean Helm", augments={'Accuracy+5 Attack+5','Weapon skill damage +4%','STR+9','Attack+13',}},
    body={ name="Herculean Vest", augments={'Attack+15','Weapon skill damage +5%',}},
    hands="Jhakri Cuffs +1",
    legs={ name="Herculean Trousers", augments={'Accuracy+9 Attack+9','Weapon skill damage +5%','Accuracy+4',}},
    feet={ name="Herculean Boots", augments={'Attack+4','Weapon skill damage +5%','VIT+2','Accuracy+4',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Brutal Earring",
    right_ear="Ishvara Earring",
    left_ring="Petrov Ring",
    right_ring="Rajas Ring",
    back={ name="Rosmerta's Cape", augments={'STR+13','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
}
						 
	sets.Realmrazer = {}
	
	sets.Realmrazer.index = {'Attack','Accuracy'}
	Realmrazer_ind = 1
	
	sets.Realmrazer.Attack = {ammo="Jukukik feather",
						        head="Adhemar bonnet",neck="Fotia gorget",ear1="Brutal earring",ear2="Moonshade earring",
							    body="Abnoba Kaftan",hands={ name="Herculean Gloves", augments={'Accuracy+25','"Triple Atk."+4','AGI+4','Attack+10',}},ring1="Epona's ring",ring2="Rajas ring",
							    back="Rancorous mantle",waist="Fotia belt",legs="Herculean Trousers",feet="Thereoid greaves"}
							  
	sets.Realmrazer.Accuracy = {ammo="Honed tathlum",
						        head="Whirlpool mask",neck="Fotia gorget",ear1="Bladeborn earring",ear2="Steelflash earring",
							    body="Adhemar jacket",hands="Luh. Bazubands +1",ring1="Levia. ring",ring2="Aquasoul ring",
							    back="Letalis mantle",waist="Fotia Belt",legs="Telchine braconi",feet="Assim. charuqs +1"}
							
	sets.WS.FlashNova = {}
	
	sets.WS.FlashNova = {ammo="Erlene's Notebook",
						 head="Hagondes Hat +1",neck="Sanctity necklace",ear1="Hecate's earring",ear2="Friomisi earring",
						 body="Samnuha coat",hands="Helios Gloves",ring1="Acumen ring",ring2="Shiva ring +1",
						 back="Cornflower cape",waist="Fotia Belt",legs="Hagondes Pants +1",feet="Hashishin basmak +1"}
						             
	sets.WS.SavageBlade = {
    ammo="Ginsen",
    head={ name="Herculean Helm", augments={'Accuracy+5 Attack+5','Weapon skill damage +4%','STR+9','Attack+13',}},
    body={ name="Herculean Vest", augments={'Attack+15','Weapon skill damage +5%',}},
    hands="Jhakri Cuffs +1",
    legs={ name="Herculean Trousers", augments={'Accuracy+9 Attack+9','Weapon skill damage +5%','Accuracy+4',}},
    feet={ name="Herculean Boots", augments={'Attack+4','Weapon skill damage +5%','VIT+2','Accuracy+4',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Brutal Earring",
    right_ear="Ishvara Earring",
    left_ring="Petrov Ring",
    right_ring="Rajas Ring",
    back={ name="Rosmerta's Cape", augments={'STR+13','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
}
	
	sets.WS.SavageBlade = {
    ammo="Ginsen",
    head={ name="Herculean Helm", augments={'Accuracy+5 Attack+5','Weapon skill damage +4%','STR+9','Attack+13',}},
    body={ name="Herculean Vest", augments={'Attack+15','Weapon skill damage +5%',}},
    hands="Jhakri Cuffs +1",
    legs={ name="Herculean Trousers", augments={'Accuracy+9 Attack+9','Weapon skill damage +5%','Accuracy+4',}},
    feet={ name="Herculean Boots", augments={'Attack+4','Weapon skill damage +5%','VIT+2','Accuracy+4',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Brutal Earring",
    right_ear="Ishvara Earring",
    left_ring="Petrov Ring",
    right_ring="Rajas Ring",
    back={ name="Rosmerta's Cape", augments={'STR+13','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
}
								 
							 
								
								
								
								
	--Blue Magic Sets--
	sets.BlueMagic = {}
	
	sets.BlueMagic.STR = {ammo="Mavi tathlum",
							head="Helios Band",neck="Orunmila's torque",ear1="Loquac. earring",
							body="Emet Harness +1",hands="Leyline gloves",ring1="Vocane ring",ring2="dark ring",
							back="Cornflower cape",waist="Chuq'aba belt",legs="Samnuha tights",feet="taeon Gaiters"}
						  
	sets.BlueMagic.STRDEX = {main="Claidheamh Soluis",ammo="Mavi tathlum",
							head="Dampening Tam",neck="Orunmila's torque",ear1="Loquac. earring",
							body="Samnuha Coat",hands="Leyline gloves",ring1="Rajas ring",ring2="Ramuh ring",
							back="Atheling Mantle",waist="Chaac belt",legs="Samnuha tights",feet="Taeon Gaiters"}
							
	sets.BlueMagic.STRVIT = {ammo="Mavi tathlum",
							head="Ejekamal Mask",neck="Orunmila's torque",ear1="Loquac. earring",
							body="Samnuha coat",hands="Leyline gloves",ring1="Vocane ring",ring2="dark ring",
							back="Cornflower cape",waist="Chuq'aba belt",legs="Samnuha tights",feet="Taeon boots"}
							 
	sets.BlueMagic.STRMND = {ammo="Mavi tathlum",
							head="Dampening Tam",neck="Orunmila's torque",ear1="Loquac. earring",
							body="Samnuha Coat",hands="Leyline gloves",ring1="Vocane ring",ring2="dark ring",
							back="Cornflower cape",waist="Chuq'aba belt",legs="Taeon tights",feet="Taeon boots"}
								
	sets.BlueMagic.AGI = {ammo="Mavi tathlum",
							head="Helios Band",neck="Orunmila's torque",ear1="Loquac. earring",
							body="Emet Harness +1",hands="Leyline gloves",ring1="Vocane ring",ring2="dark ring",
							back="Cornflower cape",waist="chaac belt",legs="Samnuha tights",feet="Taeon boots"}
						  
	sets.BlueMagic.INT = {
    main="Tizona",
    sub={ name="Nibiru Cudgel", augments={'Accuracy+15','Mag. Acc.+15','"Fast Cast"+3',}},
    ammo="Hydrocera",
    head="Jhakri Coronal +1",
    body="Jhakri Robe +1",
    hands="Jhakri Cuffs +1",
    legs="Jhakri Slops +1",
    feet="Jhakri Pigaches +1",
    neck="Sanctity Necklace",
    waist="Luminary Sash",
    left_ear="Friomisi Earring",
    right_ear="Lempo Earring",
    left_ring="Stikini Ring",
    right_ring="Stikini Ring",
    back={ name="Cornflower Cape", augments={'MP+28','DEX+2','Accuracy+5','Blue Magic skill +9',}},
}
						  
	sets.BlueMagic.SUB = {
    main="Tizona",
    sub={ name="Nibiru Cudgel", augments={'Accuracy+15','Mag. Acc.+15','"Fast Cast"+3',}},
    ammo="Hydrocera",
    head="Jhakri Coronal +1",
    body="Jhakri Robe +1",
    hands="Jhakri Cuffs +1",
    legs="Jhakri Slops +1",
    feet="Jhakri Pigaches +1",
    neck="Sanctity Necklace",
    waist="Luminary Sash",
    left_ear="Friomisi Earring",
    right_ear="Lempo Earring",
    left_ring="Stikini Ring",
    right_ring="Stikini Ring",
    back={ name="Cornflower Cape", augments={'MP+28','DEX+2','Accuracy+5','Blue Magic skill +9',}},
}
											  
	sets.BlueMagic.Cures = {
    main="Tamaxchi",
    sub="Bolelabunga",
    ammo="Ginsen",
    head={ name="Taeon Chapeau", augments={'Evasion+25','"Cure" potency +5%','Crit. hit damage +1%',}},
    body="Chelona Blazer",
    hands={ name="Telchine Gloves", augments={'"Cure" potency +4%','"Regen" potency+3',}},
    legs={ name="Taeon Tights", augments={'Accuracy+17','"Cure" potency +2%','Weapon skill damage +2%',}},
    feet={ name="Medium's Sabots", augments={'MP+40','MND+6','"Conserve MP"+5','"Cure" potency +3%',}},
    neck="Incanter's Torque",
    waist="Chuq'aba Belt",
    left_ear="Beatific Earring",
    right_ear="Divine Earring",
    left_ring="Kunaji Ring",
    right_ring="Lebeche Ring",
    back="Solemnity Cape",
}
							
	sets.BlueMagic.SelfCures = {
    ammo="Ginsen",
    head={ name="Taeon Chapeau", augments={'Evasion+25','"Cure" potency +5%','Crit. hit damage +1%',}},
    body="Chelona Blazer",
    hands={ name="Telchine Gloves", augments={'"Cure" potency +4%','"Regen" potency+3',}},
    legs={ name="Taeon Tights", augments={'Accuracy+17','"Cure" potency +2%','Weapon skill damage +2%',}},
    feet={ name="Medium's Sabots", augments={'MP+40','MND+6','"Conserve MP"+5','"Cure" potency +3%',}},
    neck="Incanter's Torque",
    waist="Chuq'aba Belt",
    left_ear="Beatific Earring",
    right_ear="Divine Earring",
    left_ring="Kunaji Ring",
    right_ring="Lebeche Ring",
    back="Solemnity Cape",
}
							
	sets.BlueMagic.Stun = {
    main="Tizona",
    sub={ name="Nibiru Cudgel", augments={'Accuracy+15','Mag. Acc.+15','"Fast Cast"+3',}},
    ammo="Hydrocera",
    head="Jhakri Coronal +1",
    body="Jhakri Robe +1",
    hands="Jhakri Cuffs +1",
    legs="Jhakri Slops +1",
    feet="Jhakri Pigaches +1",
    neck="Sanctity Necklace",
    waist="Luminary Sash",
    left_ear="Friomisi Earring",
    right_ear="Lempo Earring",
    left_ring="Stikini Ring",
    right_ring="Stikini Ring",
    back={ name="Cornflower Cape", augments={'MP+28','DEX+2','Accuracy+5','Blue Magic skill +9',}},
}
						   
	sets.BlueMagic.HeavyStrike = {ammo="Mavi tathlum",
						          head="Whirlpool mask",neck="iqabi necklace",ear1="Flame pearl",ear2="Flame pearl",
						          body="Luhlaza jubbah +1",hands="Leyline gloves",ring1="Spiral ring",ring2="Rajas ring",
						          back="Letalis mantle",waist="Hurch'lan sash",legs="Taeon tights",feet="Assim. charuqs +1"}
								  
	sets.BlueMagic.ChargedWhisker = {main="Nibiru Cudgel",sub="Nibiru Cudgel",ammo="Erlene's notebook",
						  head="Herculean helm",neck="Sanctity necklace",ear1="Hecate's earring",ear2="Friomisi earring",
						  body="Samnuha coat",hands="Leyline gloves",ring1="Fenrir ring",ring2="Acumen ring",
						  back="Cornflower cape",waist="Yamabuki-no-obi",legs="Gyve trousers",feet="Hashi. basmak +1"} 
	
	sets.BlueMagic.WhiteWind = {main="Nibiru Cudgel", sub="Nibiru Cudgel",ammo="Mavi tathlum",
								head="Luh. Keffiyeh +1",neck="Cuamiz collar",ear1="Upsurge Earring",ear2="Cassie earring",
								body="Aetosaur jerkin",hands="Weath. cuffs +1",ring1="Bomb queen ring",ring2="Meridian ring",
								back="Oretania's cape",waist="Gold mog. belt",legs="Taeon Tights",feet="Llwyd's clogs"}
									 
	sets.BlueMagic.MagicAccuracy = {
    main="Tizona",
    sub="Mimesis",
    ammo="Hydrocera",
    head="Jhakri Coronal +1",
    body="Jhakri Robe +1",
    hands="Jhakri Cuffs +1",
    legs="Jhakri Slops +1",
    feet="Jhakri Pigaches +1",
    neck="Sanctity Necklace",
    waist="Luminary Sash",
    left_ear="Friomisi Earring",
    right_ear="Lempo Earring",
    left_ring="Stikini Ring",
    right_ring="Stikini Ring",
    back={ name="Cornflower Cape", augments={'MP+28','DEX+2','Accuracy+5','Blue Magic skill +9',}},
}

	sets.BlueMagic.TenebralCrush = {
    main="Tizona",
    sub={ name="Mimesis", augments={'Accuracy+50','Mag. Acc.+50','Magic damage+80',}},
    ammo="Ghastly Tathlum +1",
    head="Pixie Hairpin +1",
    body={ name="Amalric Doublet", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
    hands="Jhakri Cuffs +1",
    legs="Jhakri Slops +1",
    feet="Jhakri Pigaches +1",
    neck="Sanctity Necklace",
    waist="Eschan Stone",
    left_ear="Moldavite Earring",
    right_ear="Hecate's Earring",
    left_ring="Archon Ring",
    right_ring="Fenrir Ring",
    back="Seshaw Cape",
}
	
	sets.BlueMagic.SearingTempest =  {
    main="Tizona",
    sub={ name="Nibiru Cudgel", augments={'Accuracy+15','Mag. Acc.+15','"Fast Cast"+3',}},
    ammo="Hydrocera",
    head="Jhakri Coronal +1",
    body="Jhakri Robe +1",
    hands="Jhakri Cuffs +1",
    legs="Jhakri Slops +1",
    feet="Jhakri Pigaches +1",
    neck="Sanctity Necklace",
    waist="Luminary Sash",
    left_ear="Friomisi Earring",
    right_ear="Lempo Earring",
    left_ring="Stikini Ring",
    right_ring="Stikini Ring",
    back={ name="Cornflower Cape", augments={'MP+28','DEX+2','Accuracy+5','Blue Magic skill +9',}},
}
	
	sets.BlueMagic.AnvilLightning =  {
    main="Tizona",
    sub={ name="Nibiru Cudgel", augments={'Accuracy+15','Mag. Acc.+15','"Fast Cast"+3',}},
    ammo="Hydrocera",
    head="Jhakri Coronal +1",
    body="Jhakri Robe +1",
    hands="Jhakri Cuffs +1",
    legs="Jhakri Slops +1",
    feet="Jhakri Pigaches +1",
    neck="Sanctity Necklace",
    waist="Luminary Sash",
    left_ear="Friomisi Earring",
    right_ear="Lempo Earring",
    left_ring="Stikini Ring",
    right_ring="Stikini Ring",
    back={ name="Cornflower Cape", augments={'MP+28','DEX+2','Accuracy+5','Blue Magic skill +9',}},
}
	
	sets.BlueMagic.SilentStorm =  {
    main="Tizona",
    sub={ name="Nibiru Cudgel", augments={'Accuracy+15','Mag. Acc.+15','"Fast Cast"+3',}},
    ammo="Hydrocera",
    head="Jhakri Coronal +1",
    body="Jhakri Robe +1",
    hands="Jhakri Cuffs +1",
    legs="Jhakri Slops +1",
    feet="Jhakri Pigaches +1",
    neck="Sanctity Necklace",
    waist="Luminary Sash",
    left_ear="Friomisi Earring",
    right_ear="Lempo Earring",
    left_ring="Stikini Ring",
    right_ring="Stikini Ring",
    back={ name="Cornflower Cape", augments={'MP+28','DEX+2','Accuracy+5','Blue Magic skill +9',}},
}
	
	sets.BlueMagic.SheepSong = {
    main="Tizona",
    sub={ name="Nibiru Cudgel", augments={'Accuracy+15','Mag. Acc.+15','"Fast Cast"+3',}},
    ammo="Hydrocera",
    head="Jhakri Coronal +1",
    body="Jhakri Robe +1",
    hands="Jhakri Cuffs +1",
    legs="Jhakri Slops +1",
    feet="Jhakri Pigaches +1",
    neck="Sanctity Necklace",
    waist="Luminary Sash",
    left_ear="Friomisi Earring",
    right_ear="Lempo Earring",
    left_ring="Stikini Ring",
    right_ring="Stikini Ring",
    back={ name="Cornflower Cape", augments={'MP+28','DEX+2','Accuracy+5','Blue Magic skill +9',}},
}
	
	sets.BlueMagic.SpectralFloe =  {
    main="Tizona",
    sub={ name="Nibiru Cudgel", augments={'Accuracy+15','Mag. Acc.+15','"Fast Cast"+3',}},
    ammo="Hydrocera",
    head="Jhakri Coronal +1",
    body="Jhakri Robe +1",
    hands="Jhakri Cuffs +1",
    legs="Jhakri Slops +1",
    feet="Jhakri Pigaches +1",
    neck="Sanctity Necklace",
    waist="Luminary Sash",
    left_ear="Friomisi Earring",
    right_ear="Lempo Earring",
    left_ring="Stikini Ring",
    right_ring="Stikini Ring",
    back={ name="Cornflower Cape", augments={'MP+28','DEX+2','Accuracy+5','Blue Magic skill +9',}},
}
	
	sets.BlueMagic.Entomb =  {
    main="Tizona",
    sub={ name="Nibiru Cudgel", augments={'Accuracy+15','Mag. Acc.+15','"Fast Cast"+3',}},
    ammo="Hydrocera",
    head="Jhakri Coronal +1",
    body="Jhakri Robe +1",
    hands="Jhakri Cuffs +1",
    legs="Jhakri Slops +1",
    feet="Jhakri Pigaches +1",
    neck="Sanctity Necklace",
    waist="Luminary Sash",
    left_ear="Friomisi Earring",
    right_ear="Lempo Earring",
    left_ring="Stikini Ring",
    right_ring="Stikini Ring",
    back={ name="Cornflower Cape", augments={'MP+28','DEX+2','Accuracy+5','Blue Magic skill +9',}},
}
	
	sets.BlueMagic.BlindingFulgor = {
    main="Tizona",
    sub={ name="Nibiru Cudgel", augments={'Accuracy+15','Mag. Acc.+15','"Fast Cast"+3',}},
    ammo="Hydrocera",
    head="Jhakri Coronal +1",
    body="Jhakri Robe +1",
    hands="Jhakri Cuffs +1",
    legs="Jhakri Slops +1",
    feet="Jhakri Pigaches +1",
    neck="Sanctity Necklace",
    waist="Luminary Sash",
    left_ear="Friomisi Earring",
    right_ear="Lempo Earring",
    left_ring="Stikini Ring",
    right_ring="Stikini Ring",
    back={ name="Cornflower Cape", augments={'MP+28','DEX+2','Accuracy+5','Blue Magic skill +9',}},
}
	
	
									 
	sets.BlueMagic.Skill = {
    ammo="Impatiens",
    head="Mirage Keffiyeh",
    body={ name="Luhlaza Jubbah", augments={'Enhances "Enchainment" effect',}},
    hands="Rawhide Gloves",
    legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
    feet={ name="Telchine Pigaches", augments={'Mag. Evasion+18','"Fast Cast"+3','Enh. Mag. eff. dur. +9',}},
    neck="Incanter's Torque",
    waist="Witful Belt",
    left_ear="Beatific Earring",
    right_ear="Loquac. Earring",
    left_ring="Stikini Ring",
    right_ring="Stikini Ring",
    back={ name="Cornflower Cape", augments={'MP+28','DEX+2','Accuracy+5','Blue Magic skill +9',}},
}
							
	sets.BlueMagic.SkillRecast = {
    ammo="Impatiens",
    head="Mirage Keffiyeh",
    body={ name="Luhlaza Jubbah", augments={'Enhances "Enchainment" effect',}},
    hands="Rawhide Gloves",
    legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
    feet={ name="Telchine Pigaches", augments={'Mag. Evasion+18','"Fast Cast"+3','Enh. Mag. eff. dur. +9',}},
    neck="Incanter's Torque",
    waist="Witful Belt",
    left_ear="Beatific Earring",
    right_ear="Loquac. Earring",
    left_ring="Stikini Ring",
    right_ring="Stikini Ring",
    back={ name="Cornflower Cape", augments={'MP+28','DEX+2','Accuracy+5','Blue Magic skill +9',}},
}
								  
								  
								  
								  
						
						
	--Utility Sets--
	sets.Utility = {}

							
	sets.Utility.Weather = {}
	
	
	
	
	
	--Job Ability Sets--
	
	sets.JA = {}
	
	sets.JA.ChainAffinity = {Head="Hashishin kavuk", feet="Assim. charuqs +1"}
	
	sets.JA.BurstAffinity = {main="Gabaxorea",sub="Gabaxorea",ammo="Hasty Pinion +1",
						  head="Helios band",neck="Sanctity necklace",ear1="Hecate's earring",ear2="Friomisi earring",
						  body="Samnuha coat",hands="helios gloves",ring1="mujin band",ring2="Acumen ring",
						  back="Twilight cape",waist="Hachirin-No-Obi",legs="Gyve trousers",feet="Hashi. Basmak +1"}
	
	sets.JA.Efflux = {legs="Hashishin Tayt"}
	
	sets.JA.AzureLore = {hands="Luh. bazubands"}
	
	sets.JA.Diffusion = {feet="Luhlaza Charuqs"}
								
								
			
			
			
			
	--Precast Sets--
	sets.precast = {}
	
	sets.precast.FC = {
    ammo="Impatiens",
    head={ name="Herculean Helm", augments={'"Mag.Atk.Bns."+25','"Fast Cast"+3',}},
    body={ name="Luhlaza Jubbah", augments={'Enhances "Enchainment" effect',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+14','Mag. Acc.+13','"Mag.Atk.Bns."+13','"Fast Cast"+2',}},
    legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
    feet="Carmine Greaves",
    neck="Voltsurge Torque",
    waist="Witful Belt",
    left_ear="Brutal Earring",
    right_ear="Loquac. Earring",
    left_ring="Defending Ring",
    right_ring="Lebeche Ring",
    back={ name="Rosmerta's Cape", augments={'"Fast Cast"+10',}},
}
	
	sets.precast.FC.Standard = {
    ammo="Impatiens",
    head={ name="Herculean Helm", augments={'"Mag.Atk.Bns."+25','"Fast Cast"+3',}},
    body={ name="Luhlaza Jubbah", augments={'Enhances "Enchainment" effect',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+14','Mag. Acc.+13','"Mag.Atk.Bns."+13','"Fast Cast"+2',}},
    legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
    feet="Carmine Greaves",
    neck="Voltsurge Torque",
    waist="Witful Belt",
    left_ear="Brutal Earring",
    right_ear="Loquac. Earring",
    left_ring="Defending Ring",
    right_ring="Lebeche Ring",
    back={ name="Rosmerta's Cape", augments={'"Fast Cast"+10',}},
}
		
		
	sets.precast.FC.Blue = {
    ammo="Impatiens",
    head={ name="Herculean Helm", augments={'"Mag.Atk.Bns."+25','"Fast Cast"+3',}},
    body={ name="Luhlaza Jubbah", augments={'Enhances "Enchainment" effect',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+14','Mag. Acc.+13','"Mag.Atk.Bns."+13','"Fast Cast"+2',}},
    legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
    feet="Carmine Greaves",
    neck="Voltsurge Torque",
    waist="Witful Belt",
    left_ear="Brutal Earring",
    right_ear="Loquac. Earring",
    left_ring="Defending Ring",
    right_ring="Lebeche Ring",
    back={ name="Rosmerta's Cape", augments={'"Fast Cast"+10',}},
}

end








function precast(spell)
	if spell.action_type == 'Magic' then
		equip(sets.precast.FC.Standard)
				
		if spell.skill == 'Blue Magic' then
		equip(sets.precast.FC.Blue)
		end
	end
	
	if spell.english == 'Azure Lore' then
		equip(sets.JA.AzureLore)
	end
	
	if spell.english == 'Requiescat' or spell.english == 'Savage Blade' then
		equip(sets.Requiescat[sets.Requiescat.index[Requiescat_ind]])
	end
	
	if spell.english == 'Chant du Cygne' then
		equip(sets.ChantDuCygne[sets.ChantDuCygne.index[ChantDuCygne_ind]])
	end
	
	if spell.english == 'Circle Blade' then
		equip(sets.WS.CircleBlade)
	end
	
	if spell.english == 'Savage Blade' then
		equip(sets.WS.SavageBlade)
	end
		
	if spell.english == 'Expiacion' then
		equip(sets.WS.Expiacion)
	end
	
	if spell.english == 'Sanguine Blade' then
		equip(sets.WS.SanguineBlade)
	end
	
	if spell.english == 'Box Step' then
		equip(sets.Utility.Steps)
	end
	
	if spell.english == 'Realmrazer' then
		equip(sets.Realmrazer[sets.Realmrazer.index[Realmrazer_ind]])
	end
	
	if spell.english == 'Flash Nova' then
		equip(sets.WS.FlashNova)
	end
end
	
function midcast(spell,act)
	if spell.english == 'Vertical Cleave' or spell.english == 'Death Scissors' or spell.english == 'Empty Thrash' or spell.english == 'Dimensional Death' or spell.english == 'Quadrastrike' or spell.english == 'Bloodrake' then
		equip(sets.BlueMagic.STR)
		if buffactive['Chain Affinity'] then
			equip(sets.JA.ChainAffinity)
		end
		if buffactive['Efflux'] then
			equip(sets.JA.Efflux)
		end
	end
		
	if spell.english == 'Disseverment' or spell.english == 'Hysteric Barrage' or spell.english == 'Frenetic Rip' or spell.english == 'Seedspray' or spell.english == 'Vanity Dive' or spell.english == 'Goblin Rush' or spell.english == 'Paralyzing Triad' or spell.english == 'Thrashing Assault' or spell.english== 'Sinker Drill' then
		equip(sets.BlueMagic.STRDEX)
		if buffactive['Chain Affinity'] then
			equip(sets.JA.ChainAffinity)
		end
		if buffactive['Efflux'] then
			equip(sets.JA.Efflux)
		end
	end
	
	if spell.english == 'Quad. Continuum' or spell.english == 'Delta Thrust' or spell.english == 'Cannonball' or spell.english == 'Glutinous Dart' then
		equip(sets.BlueMagic.STRVIT)
		if buffactive['Chain Affinity'] then
			equip(sets.JA.ChainAffinity)
		end
		if buffactive['Efflux'] then
			equip(sets.JA.Efflux)
		end
	end
	
	if spell.english == 'Whirl of Rage' then
		equip(sets.BlueMagic.STRMND)
		if buffactive['Chain Affinity'] then
			equip(sets.JA.ChainAffinity)
		end
		if buffactive['Efflux'] then
			equip(sets.JA.Efflux)
		end
	end
	
	if spell.english == 'Benthic Typhoon' or spell.english == 'Final Sting' or spell.english == 'Spiral Spin' then
		equip(sets.BlueMagic.AGI)
		if buffactive['Chain Affinity'] then
			equip(sets.JA.ChainAffinity)
		end
		if buffactive['Efflux'] then
			equip(sets.JA.Efflux)
		end
	end
	
	if spell.english == 'Gates of Hades' or spell.english == 'Leafstorm' or spell.english == 'Firespit' or spell.english == 'Acrid Stream' or spell.english == 'Regurgitation' or spell.english == 'Corrosive Ooze' or spell.english == 'Thermal Pulse' or spell.english == 'Magic Hammer' or spell.english == 'Evryone. Grudge' or spell.english == 'Water Bomb' or spell.english == 'Dark Orb' or spell.english == 'Thunderbolt' or spell.english == 'Tem. Upheaval' or spell.english == 'Embalming Earth' or spell.english == 'Foul Waters' or spell.english == 'Rending Deluge' or spell.english == 'Droning Whirlwind' then
		equip(sets.BlueMagic.INT)
		if spell.element == world.day_element or spell.element == world.weather_element then
			equip(sets.Utility.Weather)
		end
		if buffactive['Burst Affinity'] then
			equip(sets.JA.BurstAffinity)
		end

	end
	
	if spell.english == 'Subduction' or spell.english == 'Scouring Spate' or spell.english == 'Searing Tempest' or spell.english == 'Entomb' or spell.english == 'Tenebral Crush' or spell.english == 'Blinding Fulgor' or spell.english == 'Spectral Floe' or spell.english == 'Anvil Lightning' or spell.english == 'Magic Hammer' or spell.english == 'Silent Storm' or spell.english == 'Water Bomb' or spell.english == 'Rail cannon' or spell.english == 'Cursed Sphere' or spell.english == 'Molting Plumage' or spell.english == 'Wind Breath' or spell.english == 'Tem. Upheaval ' then
		equip(sets.BlueMagic.SUB)
		if buffactive['Burst Affinity'] then
			equip(sets.JA.BurstAffinity)
			end
		if spell.element == world.day_element or spell.element == world.weather_element then
			equip(sets.Utility.Weather)
		end
	end
	
	if spell.english == 'Magic Fruit' or spell.english == 'Plenilune Embrace' or spell.english == 'Wild Carrot' or spell.english == 'Pollen' or spell.english == 'Cure III' or spell.english == 'Cure IV' then
		equip(sets.BlueMagic.Cures)
			if spell.target.name == player.name and string.find(spell.english, 'Magic Fruit') or string.find(spell.english, 'Plenilune Embrace') or string.find(spell.english, 'Wild Carrot') or string.find(spell.english, 'Cure III') or string.find(spell.english, 'Cure IV') then
				equip(sets.BlueMagic.SelfCures)
			end
	end
	
	if spell.english == 'White Wind' then
		equip(sets.BlueMagic.WhiteWind)
	end
	
	if spell.english == 'Head Butt' or spell.english == 'Sudden Lunge' or spell.english == 'Blitzstrahl' then
		equip(sets.BlueMagic.Stun)
	end
	
	if spell.english == 'Heavy Strike' then
		equip(sets.BlueMagic.HeavyStrike)
	end
	
	if spell.english == 'Charged Whisker' then
		equip(sets.BlueMagic.ChargedWhisker)
		if buffactive['Burst Affinity'] then
			equip(sets.JA.BurstAffinity)
		end
	end
	
	if spell.english == 'Frightful Roar' or spell.english == 'Sandspray' or spell.english == 'Infrasonics' or spell.english == 'Barbed Crescent' or spell.english == 'Tourbillion' or spell.english == 'Cimicine Discharge' or spell.english == 'Sub-zero smash' or spell.english == 'Filamented Hold' or spell.english == 'Mind Blast' or spell.english == 'Sandspin' or spell.english == 'Hecatomb Wave' or spell.english == 'Cold Wave' or spell.english == 'Terror Touch' or spell.english == 'Blank Gaze' or spell.english == 'Geist Wall' or spell.english== 'Dream Flower' then
		equip(sets.BlueMagic.MagicAccuracy)
	end
	
	if spell.english == 'MP Drainkiss' or spell.english == 'Digest' or spell.english == 'Blood Saber' or spell.english == 'Blood Drain' or spell.english == 'Osmosis' or spell.english == 'Occultation' or spell.english == 'Magic Barrier' or spell.english == 'Diamondhide' or spell.english == 'Metallic Body' or spell.english == 'Retinal Glare' or spell.english == 'Barrier Tusk' or spell.english == 'Cocoon' or spell.english == 'Battery Charge' or spell.english == 'Memento Mori' or spell.english == 'Osmosis' or spell.english == 'Reactor cool' or spell.english == 'Magic Barrier' then
		equip(sets.BlueMagic.SkillRecast)
		if buffactive['Diffusion'] then
			equip(sets.JA.Diffusion)
		end
	end
	
	if spell.english == 'Cocoon' or spell.english == 'Harden Shell' or spell.english == 'Animating Wail' or spell.english == 'Battery Charge' or spell.english == 'Nat. Meditation' or spell.english == 'Carcharian Verve' or spell.english == 'O. Counterstance' or spell.english == 'Barrier Tusk' or spell.english == 'Saline Coat' or spell.english == 'Regeneration' or spell.english == 'Erratic Flutter' or spell.english == 'Carcharian Verve' then
		equip(sets.BlueMagic.SkillRecast)
		if buffactive['Diffusion'] then
			equip(sets.JA.Diffusion)
		end
	end
end

function aftercast(spell)
	if player.status == 'Engaged' then
		equip(sets.TP[sets.TP.index[TP_ind]])
	else
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
	end
	
	if spell.action_type == 'Weaponskill' then
		add_to_chat(158,'TP Return: ['..tostring(player.tp)..']')
	end
end

function status_change(new,old)
	if new == 'Engaged' then
		equip(sets.TP[sets.TP.index[TP_ind]])
	else
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
	end
end


function self_command(command)
	if command == 'toggle TP set' then
		TP_ind = TP_ind +1
		if TP_ind > #sets.TP.index then TP_ind = 1 end
		send_command('@input /echo <----- TP Set changed to '..sets.TP.index[TP_ind]..' ----->')
		equip(sets.TP[sets.TP.index[TP_ind]])
	elseif command == 'toggle Idle set' then
		Idle_ind = Idle_ind +1
		if Idle_ind > #sets.Idle.index then Idle_ind = 1 end
		send_command('@input /echo <----- Idle Set changed to '..sets.Idle.index[Idle_ind]..' ----->')
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
	elseif command == 'toggle Req set' then
		Requiescat_ind = Requiescat_ind +1
		if Requiescat_ind > #sets.Requiescat.index then Requiescat_ind = 1 end
		send_command('@input /echo <----- Requiescat Set changed to '..sets.Requiescat.index[Requiescat_ind]..' ----->')
	elseif command == 'toggle CDC set' then
		ChantDuCygne_ind = ChantDuCygne_ind +1
		if ChantDuCygne_ind > #sets.ChantDuCygne.index then ChantDuCygne_ind = 1 end
		send_command('@input /echo <----- Chant du Cygne Set changed to '..sets.ChantDuCygne.index[ChantDuCygne_ind]..' ----->')
	elseif command == 'toggle Rea set' then
		Realmrazer_ind = Realmrazer_ind +1
		if Realmrazer_ind > #sets.Realmrazer.index then Realmrazer_ind = 1 end
		send_command('@input /echo <----- Realmrazer Set changed to '..sets.Realmrazer.index[Realmrazer_ind]..' ----->')
	elseif command == 'equip TP set' then
		equip(sets.TP[sets.TP.index[TP_ind]])
	elseif command == 'equip Idle set' then
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
	end
end




organizer_items = {

	cape="Mecisto. Mantle",
	club="Gabaxorea",
	Sushi="Sole Sushi +1",
	staff="Pluto's Staff",
	body="Chelona Blazer",
	legs="Menhit Slacks",
	belt="Austerity Belt",
	head="Orvail Corona +1",
	head="Nibiru Cudgel",
	head="Buramenk'ah",
}
