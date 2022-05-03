--To toggle gearsets:
--Main command: //gs c toggle x set       where x = set name variable. Variables are as follows: --
--Idle sets: Idle, TP sets: TP--
--Requiescat sets: Req, Chant du Cygne sets: CDC, Expiacion sets: Expi, Savage Blade sets: Savage--
--Realm, FlashNova--

--E.g.   /console gs c toggle CDC set--
--              /console gs c toggle TP set--
--                              Reqi, etc, read at the bottom of the GS in the toggles for the names--
 
--I am sure there is outdated gear in here that I have probably even forgotten to change --
--Just look over it and fit it to your needs--


		send_command('bind f9 gs c toggle TP set')
		send_command('bind f10 gs c toggle CDC set')
		send_command('bind f11 gs c toggle Req set')
		send_command('bind f12 gs c toggle Idle set') 
		send_command('bind ^f9 input /ws "Chant du Cygne" <t>')
		send_command('bind ^f10 input /ws "Expiacion" <t>')
		send_command('bind ^f11 input /ws "Sanguine Blade" <t>')
		send_command('bind ^f12 input /ws "Requiescat" <t>')
		send_command('bind !f12 input /ws "Realmrazer" <t>')
		send_command('bind !f10 gs c toggle Rea set')
		send_command('bind !f11 gs c toggle Expi set') 
	   
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
		

function get_sets()
	
	HerculeanHelm={}
		HerculeanHelm.Nuke={name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Damage taken-1%','INT+1','"Mag.Atk.Bns."+15',}}
		HerculeanHelm.DT={name="Herculean Helm", augments={'Attack+12','Phys. dmg. taken -4%','STR+9','Accuracy+8',}} 
		HerculeanHelm.Refresh={name="Herculean Helm", augments={'"Dbl.Atk."+2','Pet: Accuracy+18 Pet: Rng. Acc.+18','"Refresh"+1',}}
		HerculeanHelm.WSD={name="Herculean Helm", augments={'Accuracy+14','Weapon skill damage +3%','STR+10','Attack+15',}}
		
	HerculeanGloves={}
		HerculeanGloves.WSD={name="Herculean Gloves", augments={'Accuracy+21 Attack+21','Weapon skill damage +4%','Accuracy+9','Attack+10',}}
		--HerculeanGloves.DT={name="Herculean Gloves", augments={'Accuracy+13','Damage taken-3%','AGI+1','Attack+5',}}
		--HerculeanGloves.HighAcc={name="Herculean Gloves", augments={'Accuracy+23 Attack+23','"Triple Atk."+2','DEX+15','Accuracy+11','Attack+13',}}
		HerculeanGloves.Refresh={name="Herculean Gloves", augments={'Magic dmg. taken -1%','Magic burst dmg.+1%','"Refresh"+2','Accuracy+5 Attack+5',}}
		--HerculeanGloves.Crit={name="Herculean Gloves", augments={'Attack+23','Crit. hit damage +4%','DEX+8','Accuracy+11',}}
		
	HerculeanLegs={}
		HerculeanLegs.DT={name="Herculean Trousers", augments={'Accuracy+22','Damage taken-2%','VIT+6',}}
		HerculeanLegs.WSD={name="Herculean Trousers", augments={'Attack+28','Weapon skill damage +3%','STR+10','Accuracy+9',}}

	--TaeonBoots={}
	--	TaeonBoots.RA={name="Taeon Boots", augments={'Rng. Atk.+17','Crit.hit rate +2'}}
	--	HerculeanFeet.Melee={name="Taeon Boots", augments={'STR+6 DEX+6','Accuracy+15 Attack+15','"Triple Atk."+2'}}		
	
	--TelchineFeet={}
	--	TelchineFeet.CP={name="Telchine Pigaches", augments={'"Cure" Potency +4%'}}
	--	TelchineFeet.FC={name="Telchine Pigaches", augments={'"Fast Cast" +3'}}	
	
	HerculeanFeet={}
		HerculeanFeet.Melee={name="Herculean Boots", augments={'Attack+25','MND+4','Quadruple Attack +2','Accuracy+10 Attack+10',}}
		HerculeanFeet.Refresh={name="Herculean Boots", augments={'Mag. Acc.+4','"Dbl.Atk."+1','"Refresh"+2','Mag. Acc.+9 "Mag.Atk.Bns."+9',}}
		--HerculeanFeet.CritDmg={name="Herculean Boots", augments={'Accuracy+28','Crit. hit damage +5%','DEX+9',}}
		HerculeanFeet.WSD={name="Herculean Boots", augments={'Rng.Atk.+15','Weapon skill damage +5%','Accuracy+2','Attack+5',}}
		HerculeanFeet.Nuke={name="Herculean Boots", augments={'Mag. Acc.+19 "Mag.Atk.Bns."+19','INT+9','Mag. Acc.+12','"Mag.Atk.Bns."+10',}}
		
		
	AmbuCapes={}
		AmbuCapes.Crit={name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10',}}
		AmbuCapes.WSD={name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10',}}
		
	sets.Idle = {}
	   
	--Idle Sets--	
	sets.Idle.index = {'Standard','DT'}--, 'Town'}
	Idle_ind = 1			
	
	sets.Idle.Standard = {
		ammo="Staunch Tathlum",
		head={ name="Herculean Helm", augments={'"Dbl.Atk."+1','DEX+1','"Refresh"+2','Accuracy+19 Attack+19','Mag. Acc.+7 "Mag.Atk.Bns."+7',}},
		body="Jhakri Robe +2",
		hands=HerculeanGloves.Refresh,
		legs={ name="Herculean Trousers", augments={'Pet: Attack+10 Pet: Rng.Atk.+10','"Cure" potency +3%','"Refresh"+2','Mag. Acc.+4 "Mag.Atk.Bns."+4',}},
		feet=HerculeanFeet.Refresh,
		neck="Sanctity Necklace",
		waist="Fucho-no-Obi",
		left_ear="Etiolation Earring",
		right_ear="Infused Earring",
		left_ring="Defending Ring",
		right_ring="Shneddick Ring",
		back="Solemnity Cape"
	}
						  
	sets.Idle.DT = {
		ammo="Staunch Tathlum",
		head="Aya. Zucchetto +1",
		body="Ayanmo Corazza +1",
		hands="Aya. Manopolas +1",
		legs="Aya. Cosciales +1",
		feet="Aya. Gambieras +1",
		neck="Twilight Torque",
		waist="Flume Belt +1",
		left_ear="Odnowa Earring +1",
		right_ear="Odnowa Earring",
		left_ring="Defending Ring",
		right_ring="Fortified Ring",
		back="Solemnity Cape"
	}
	
	--TP Sets--
	sets.TP = {}

	sets.TP.index = {'StandardNoTrusts','AccuracyFull'}--, 'Marches', 'AccuracyLite', 'AccuracyMid', 'AccuracyFull', 'DT', 'DTAccuracy', 'DTHighAccuracy', 'MDT'}
	--1=StandardNoTrusts, 2=Marches, 3=AccuracyLite, 4=AccuracyMid, 5=AccuracyFull, 6=DT, 7=DTAccuracy 8=DTHighAccuracy 9=MDT--
	TP_ind = 1
	
	--DW III +1200JP--
	sets.TP.StandardNoTrusts = {
		ammo="Ginsen",
		head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
		hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		feet=HerculeanFeet.Melee,
		neck="Clotharius Torque",
		waist="Sailfi Belt +1",
		left_ear="Telos Earring",
		right_ear="Suppanomimi",
		left_ring="Ilabrat Ring",
		right_ring="Epona's Ring",
		back=AmbuCapes.Crit
		}
		
	sets.TP.AccuracyFull = {
		ammo="Ginsen",
		head={ name="Dampening Tam", augments={'DEX+10','Accuracy+15','Mag. Acc.+15','Quadruple Attack +3',}},
		body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
		hands="Jhakri Cuffs +2",
		legs="Aya. Cosciales +1",
		feet="Aya. Gambieras +1",
		neck="Lissome Necklace",
		waist="Kentarch Belt +1",
		left_ear="Cessance Earring",
		right_ear="Zennaroi Earring",
		right_ring="Cacoethic Ring",
		left_ring="Cacoethic Ring +1",
		back=AmbuCapes.Crit
		}
	
	
	
	
	--Weaponskill Sets-- Cornflower for Requiescat because it saves a spot as it is the ONLY thing I would need to carry Bleating Mantle for...
	sets.WS = {}
	
	sets.Requiescat = {}
	
	sets.Requiescat.index = {'Attack'}--,'Accuracy'}
	Requiescat_ind = 1
	
	sets.Requiescat.Attack = {
		ammo="Hydrocera",
		head={ name="Carmine Mask", augments={'Accuracy+10','DEX+10','MND+15',}},
		body="Ayanmo corraza +1",
		hands="Jhakri Cuffs +2",
		legs="Jhakri Slops +1",
		feet={ name="Carmine Greaves", augments={'Accuracy+10','DEX+10','MND+15',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
		right_ear="Telos Earring",
		left_ring="Epona's Ring",
		right_ring="Rufescent Ring",
		back=AmbuCapes.WSD
	}

							 
	sets.ChantDuCygne = {}
	
	sets.ChantDuCygne.index = {'Attack'}--,'Accuracy','AccuracyHigh'}
	ChantDuCygne_ind = 1
	
	sets.ChantDuCygne.Attack = {
		ammo="Jukukik feather",
		head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		neck="Fotia Gorget", 
		ear2="Moonshade earring", 
		ear1="Odyr Earring",
		body="Abnoba Kaftan",
		hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		ring1="Ilabrat Ring", 
		ring2="Begrudging Ring",
		back=AmbuCapes.Crit,
		waist="Fotia Belt",
		legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		feet=HerculeanFeet.Melee
	}
							   
	sets.Expiacion = {}
	
	sets.Expiacion.index = {'Attack'}--,'Accuracy'}
	Expiacion_ind = 1
	
	sets.Expiacion.Attack = {
		ammo="Ginsen",
		head=HerculeanHelm.WSD,
		body="Jhakri Robe +2",
		hands="Jhakri Cuffs +2",
		legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		feet=HerculeanFeet.WSD,
		neck="Caro Necklace",
		waist="Prosilio Belt",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
		right_ear="Ishvara Earring",
		left_ring="Ilabrat Ring",
		right_ring="Rufescent Ring",
		back=AmbuCapes.WSD
	}
	
	sets.WS.SanguineBlade = {
		ammo="Pemphredo Tathlum",
		head="Pixie Hairpin +1",
		neck="Sanctity Necklace",
		ear1="Friomisi Earring",
		ear2="Hecate's earring",
		body="Samnuha coat",
		hands="Jhakri Cuffs +2",
		ring1="Archon Ring",
		ring2="Arvina ringlet +1",
		back="Cornflower cape",
		waist="Grunfeld Rope",
		legs={ name="Amalric Slops", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
		feet=HerculeanFeet.Nuke,
	}
			
	sets.WS.CircleBlade = {
		ammo="Ginsen",
		head=HerculeanHelm.WSD,
		body="Jhakri Robe +2",
		hands="Jhakri Cuffs +2",
		legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		feet=HerculeanFeet.WSD,
		neck="Caro Necklace",
		waist="Prosilio Belt",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
		right_ear="Ishvara Earring",
		left_ring="Ilabrat Ring",
		right_ring="Rufescent Ring",
		back=AmbuCapes.WSD
   }
	
	sets.SavageBlade = {}
	
	sets.SavageBlade.index = {'Attack'}--,'Accuracy'}
	SavageBlade_ind = 1	

	sets.SavageBlade.Attack ={
		--ammo="Ginsen",
		--head=HerculeanHelm.WSD,
		--body="Jhakri Robe +2",
		--hands="Jhakri Cuffs +2",
		--legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		--feet=HerculeanFeet.WSD,
		--neck="Caro Necklace",
		--waist="Prosilio Belt",
		--left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
		--right_ear="Ishvara Earring",
		--left_ring="Ilabrat Ring",
		--right_ring="Rufescent Ring",
		--back=AmbuCapes.WSD
		ammo="Ginsen",
		head={ name="Herculean Helm", augments={'Accuracy+14','Weapon skill damage +3%','STR+10','Attack+15',}},
		body="Abnoba Kaftan",
		hands="Jhakri Cuffs +2",
		legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		feet={ name="Herculean Boots", augments={'Attack+25','MND+4','Quadruple Attack +2','Accuracy+10 Attack+10',}},
		neck="Caro Necklace",
		waist="Prosilio Belt",
		left_ear="Ishvara Earring",
		right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		left_ring="Rufescent Ring",
		right_ring="Apate Ring",
		back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}}
	}
								
	
	sets.Realmrazer = {}
	
	sets.Realmrazer.index = {'Attack'}--,'Accuracy'}
	Realmrazer_ind = 1	

	sets.Realmrazer.Attack ={
		ammo="Hydrocera",
		head={ name="Carmine Mask", augments={'Accuracy+10','DEX+10','MND+15',}},
		body="Ayanmo corraza +1",
		hands="Jhakri Cuffs +2",
		legs="Jhakri Slops +1",
		feet={ name="Carmine Greaves", augments={'Accuracy+10','DEX+10','MND+15',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
		right_ear="Telos Earring",
		left_ring="Epona's Ring",
		right_ring="Rufescent Ring",
		back=AmbuCapes.WSD
	}
								
				   
	sets.FlashNova = {}			   
				   
	sets.FlashNova.index = {'Attack'}--,'Accuracy'}
	FlashNova_ind = 1	

	sets.FlashNova.Attack ={
		ammo="Hydrocera",
		head={ name="Carmine Mask", augments={'Accuracy+10','DEX+10','MND+15',}},
		body="Ayanmo corraza +1",
		hands="Jhakri Cuffs +2",
		legs="Jhakri Slops +1",
		feet={ name="Carmine Greaves", augments={'Accuracy+10','DEX+10','MND+15',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
		right_ear="Telos Earring",
		left_ring="Epona's Ring",
		right_ring="Rufescent Ring",
		back=AmbuCapes.WSD
   }
									   
	--Blue Magic Sets--
	sets.BlueMagic = {}
	
	sets.BlueMagic.STR = {
		ammo="Floestone",
		head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		neck="Caro Necklace",
		left_ear="Odnowa Earring +1",
		right_ear="Odnowa Earring",
		body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
		hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		ring1="Ifrit Ring +1",
		ring2="Apate Ring",
		back="Cornflower cape",
		waist="Grunfeld Rope",
		legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		feet=HerculeanFeet.Melee
	}
						  
	sets.BlueMagic.STRDEX = set_combine(sets.BlueMagic.STR,{
				 })
							
		sets.BlueMagic.STRVIT = set_combine(sets.BlueMagic.STR,{
				 })
							 
		sets.BlueMagic.STRMND = set_combine(sets.BlueMagic.STR,{
				 })
								
	sets.BlueMagic.AGI = set_combine(sets.BlueMagic.STR,{
				feet="Thereoid Greaves"})
		
	sets.BlueMagic.INT = {
		ammo="Pemphredo Tathlum",
		head=HerculeanHelm.Nuke,
		body={ name="Samnuha Coat", augments={'Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+5','"Dual Wield"+5',}},
		hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
		legs={ name="Amalric Slops", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
		feet=HerculeanFeet.Nuke,
		neck="Incanter's Torque",
		waist="Yamabuki-no-Obi",
		left_ear="Hecate's Earring",
		right_ear="Friomisi Earring",
		left_ring="Shiva Ring",
		right_ring="Shiva Ring",
		back={ name="Cornflower Cape", augments={'MP+17','DEX+3','Accuracy+2','Blue Magic skill +10',}}
	}
				  
	sets.BlueMagic.LightNuke = set_combine(sets.BlueMagic.INT,{
				ring2="Weatherspoon Ring",})
				  
	sets.BlueMagic.DarkNuke = set_combine(sets.BlueMagic.INT,{
				head="Pixie Hairpin +1",
				ring2="Archon Ring",})
						  
	sets.BlueMagic.Cures = {
		ammo="Mavi Tathlum",
		head={ name="Carmine Mask", augments={'Accuracy+10','DEX+10','MND+15',}},
		body="Assim. Jubbah +2",
		hands={ name="Telchine Gloves", augments={'MP+43',}},
		legs="Gyve Trousers",
		feet={ name="Medium's Sabots", augments={'MP+15','MND+3','"Conserve MP"+2',}},
		neck="Incanter's Torque",
		waist="Gishdubar Sash",
		left_ear="Loquac. Earring",
		right_ear="Mendi. Earring",
		left_ring="Defending Ring",
		right_ring="Kunaji Ring",
		back="Solemnity Cape"
	}
	
	sets.BlueMagic.Battery = {
		ammo="Pemphredo Tathlum",
		head="Amalric Coif",
		neck="Incanter's Torque",
		ear1="Suppanomimi",ear2="Etiolation Earring",
		body="Emet Harness +1",
		hands=HerculeanGloves.DT,
		ring1="Dark ring",ring2="Defending Ring",
		back="Umbra Cape",
		waist="Gishdubar Sash",
		legs="Iuitl Tights +1",
		feet="Carmine Greaves"
					}
							
	sets.BlueMagic.Stun = {
		ammo="Pemphredo Tathlum",
		head="Carmine Mask",
		neck="Sanctity Necklace",
		ear1="Zennaroi Earring",ear2="Dignitary's Earring",
		body="Amalric Doublet",
		hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		ring1="Ramuh Ring +1",ring2="Weatherspoon Ring",
		back="Cornflower cape",
		waist="Eschan Stone",
		legs="Hashishin Tayt",
		feet=HerculeanFeet.Melee
	}
						   
	sets.BlueMagic.HeavyStrike = {
		ammo="Falcon Eye",
		head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		neck="Caro Necklace",
		ear1="Zennaroi Earring",ear2="Kuwunga Earring",
		body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
		hands=HerculeanGloves.Crit,
		ring1="Ifrit Ring +1",ring2="Apate Ring",
		back="Rosmerta's Cape",
		waist="Grunfeld Rope",
		legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		feet=HerculeanFeet.Melee
	}
								  
	sets.BlueMagic.ChargedWhisker = {
		ammo="Pemphredo Tathlum",
		head="Amalric Coif",
		neck="Sanctity Necklace",
		ear1="Hecate's earring",ear2="Friomisi earring",
		body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
		hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		ring1="Shiva ring",ring2="Ramuh Ring +1",
		back="Cornflower cape",
		waist="Saline Belt",
		legs="Amalric Slops",
		feet="Hashishin Basmak"
	} 
	
	sets.BlueMagic.WhiteWind = {
		ammo="Pemphredo Tathlum",
		head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		neck="Phalaina Locket",
		ear1="Mendicant's Earring",ear2="Etiolation Earring",
		body="Vrikodara Jupon",
		hands="Telchine Gloves",
		ring1="Kunaji Ring",ring2="Rufescent Ring",
		back="Cornflower Cape",
		waist="Gishdubar Sash",
		legs="Gyve Trousers",
		feet="Medium's Sabots"
	}
									 
	sets.BlueMagic.MagicAccuracy = {
		ammo="Pemphredo Tathlum",
		head="Amalric Coif",
		neck="Sanctity Necklace",
		ear1="Psystorm earring",ear2="Lifestorm earring",
		body="Amalric Doublet",
		hands="Jhakri Cuffs +1",
		ring1="Ramuh Ring +1",ring2="Weatherspoon Ring",
		back="Cornflower cape",
		waist="Olseni Belt",
		legs="Jhakri Slops +1",
		feet="Hashishin Basmak"
	} 
									 
	sets.BlueMagic.Skill = {
		ammo="Pemphredo Tathlum",
		head="Luhlaza Keffiyah",
		neck="Incanter's Torque",
		ear1="Suppanomimi",
		ear2="Etiolation Earring",
		body="Assim. Jubbah +2",
		hands="Rawhide Gloves",
		ring1="Lebeche ring",
		ring2="Weatherspoon Ring",
		back="Cornflower cape",
		waist="Gishdubar Sash",
		legs="Hashishin Tayt",
		feet="Luhlaza charuqs"
	}
					  
	sets.BlueMagic.Enmity = {
		ammo="None",
		head="Rabid Visor", 
		neck="Warder's Charm +1",
		ear1="None",ear2="None",
		body="Emet Harness +1",	
		hands="None",
		ring1="None",ring2="Petrov Ring",	  
		back="Mubvumbamiri mantle",
		waist="None",
		legs="Obatala Subligar",
		Feet="None"
	}	  
								  
								  		
	--Utility Sets--
	--Sets such as Phalanx/Steps are out of date because I don't fucking cast/use that shit!
	
	sets.Utility = {}
	
	sets.Utility.Stoneskin = {
		ammo="Hydrocera",
		head="Carmine Mask",
		neck="Stone Gorget",
		ear1="Loquac. earring",ear2="Earthcry earring",
		body="Assim. Jubbah +2",
		hands="Stone Mufflers",
		ring1="None",ring2="Rufescent Ring",
		back="Swith cape",
		waist="Siegel sash",
		legs="Haven hose",
		feet=HerculeanFeet.DT
	}
							  
	sets.Utility.Phalanx = {
		ammo="Pemphredo Tathlum",
		head="Amalric Coif",
		neck="Colossus's torque",
		ear1="Loquac. earring",ear2="Augment. earring",
		body="Assim. Jubbah +2",
		hands="Assim. bazu. +1",
		ring1="Lebeche ring",ring2="Weatherspoon ring",
		back="Swith cape",
		waist="Pythia sash +1",
		legs="Portent pants",
		feet=HerculeanFeet.DT
	}
							
						  
	sets.Utility.PDT = {
		ammo="Falcon Eye",
		head=HerculeanHelm.DT,
		neck="Loricate Torque +1",
		ear1="Odnowa Earring +1",ear2="Etiolation Earring",
		body="Emet Harness +1",
		hands=HerculeanGloves.DT,
		ring1="Defending ring",ring2="Dark ring",
		back="Umbra Cape",
		waist="Flume belt",
		legs="Iuitl tights +1",
		feet=HerculeanFeet.DT
	}
						
	sets.Utility.MDT = {
		ammo="Floestone",
		head="Dampening Tam",
		neck="Loricate Torque +1",
		ear1="Flashward Earring",ear2="Odnowa Earring +1",
		body="Amalric Doublet",
		hands=HerculeanGloves.DT,
		ring1="Defending ring",ring2="Dark ring",
		back="Mubvumbamiri Mantle",
		waist="Flax Sash",
		legs=HerculeanLegs.DT,
		feet=HerculeanFeet.DT
	}
							
	sets.Enhancing = {
		ammo="Pemphredo Tathlum",
		head="Carmine Mask",
		neck="Incanter's Torque",
		ear1="Suppanomimi",ear2="Etiolation Earring",
		body="Telchine Chasuble",
		ring1="Dark ring",ring2="Defending Ring",
		back="Umbra Cape",
		waist="Gishdubar Sash",
		legs="Carmine Cuisses +1",
		feet="Carmine Greaves"
	}
	
	
	
	--Job Ability Sets--
	
	sets.JA = {}
	
	sets.JA.ChainAffinity = {feet="Assim. charuqs +1"}
	
	sets.JA.BurstAffinity = {feet="Hashishin Basmak"}
	
	sets.JA.Efflux = {legs="Hashishin Tayt"}
	
	sets.JA.AzureLore = {hands="Luhlaza bazubands"}
	
	sets.JA.Diffusion = {ammo="Pemphredo Tathlum", neck="Incanter's Torque", head="Amalric Coif", feet="Luhlaza charuqs", waist="Gishdubar Sash"}
	
	sets.JA.Provoke = set_combine(sets.BlueMagic.Enmity,{})
	
    sets.JA.Warcry = set_combine(sets.BlueMagic.Enmity,{})

								
								
			
			
			
			
	--Precast Sets--
	sets.precast = {}
	
	sets.precast.FC = {}
	
	sets.precast.FC.Standard = {
		ammo="Mavi Tathlum",
		head={ name="Carmine Mask", augments={'Accuracy+10','DEX+10','MND+15',}},
		body={ name="Samnuha Coat", augments={'Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+5','"Dual Wield"+5',}},
		hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
		legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
		feet={ name="Carmine Greaves", augments={'Accuracy+10','DEX+10','MND+15',}},
		neck="Voltsurge Torque",
		waist="Witful Belt",
		left_ear="Loquac. Earring",
		right_ear="Friomisi Earring",
		left_ring="Shiva Ring",
		right_ring="Shiva Ring",
		back={ name="Cornflower Cape", augments={'MP+17','DEX+3','Accuracy+2','Blue Magic skill +10',}}
	}
	
	sets.precast.FC.Blue = {
		ammo="Impatiens",
		head="Carmine Mask",
		neck="Voltsurge Torque",
		ear1="Loquac. Earring",ear2="None",
		body="Hashishin Mintan",
		hands="Leyline Gloves",
		ring1="Prolix Ring",ring2="Weatherspoon Ring",
		back="Perimede Cape",
		waist="Witful Belt",
		legs="Enif Cosciales",
		feet="Carmine Greaves"
	}	
end


function precast(spell)
	if spell.action_type == 'Magic' then
		equip(sets.precast.FC.Standard)
				
		elseif spell.action_type == 'BlueMagic' then
		equip(sets.precast.FC.Blue)
	end
	
	if spell.english == 'Azure Lore' then
		equip(sets.JA.AzureLore)
	end
	
	if spell.english == 'Requiescat' then
		equip(sets.Requiescat[sets.Requiescat.index[Requiescat_ind]])
	end
	
	if spell.english == 'Chant du Cygne' then
		equip(sets.ChantDuCygne[sets.ChantDuCygne.index[ChantDuCygne_ind]])
	end
	
	if spell.english == 'Expiacion' then
		equip(sets.Expiacion[sets.Expiacion.index[Expiacion_ind]])
	end

	if spell.english == 'Savage Blade' then
		equip(sets.Expiacion[sets.Expiacion.index[Expiacion_ind]])
	end
	
	if spell.english == 'Realmrazer' then
		equip(sets.Realmrazer[sets.Realmrazer.index[Realmrazer_ind]])
	end
	
	if spell.english == 'Flash Nova' then
		equip(sets.FlashNova[sets.FlashNova.index[FlashNova_ind]])
	end
	
	if spell.english == 'Circle Blade' then
		equip(sets.WS.CircleBlade)
	end
	
	if spell.english == 'Sanguine Blade' or spell.english == 'Red Lotus Blade' then
		equip(sets.WS.SanguineBlade)
	end
	
	if spell.english == 'Box Step' then
		equip(sets.Utility.Steps)
	end
end
	
function midcast(spell,act)
	if spell.english == 'Vertical Cleave' 	or spell.english == 'Death Scissors' 	or spell.english == 'Empty Thrash' 
	or spell.english == 'Dimensional Death' or spell.english == 'Quadrastrike' 		or spell.english == 'Bloodrake' 
	or spell.english == 'Sweeping Gouge' 	then
		equip(sets.BlueMagic.STR)
		if buffactive['Chain Affinity'] then
			equip(sets.JA.ChainAffinity)
		end
		if buffactive['Efflux'] then
			equip(sets.JA.Efflux)
		end
	end
		
	if spell.english == 'Disseverment' 		or spell.english == 'Hysteric Barrage' 	or spell.english == 'Frenetic Rip' 
	or spell.english == 'Seedspray' 		or spell.english == 'Vanity Dive' 		or spell.english == 'Goblin Rush' 
	or spell.english == 'Paralyzing Triad'	or spell.english == 'Thrashing Assault'  then
		equip(sets.BlueMagic.STRDEX)
		if buffactive['Chain Affinity'] then
			equip(sets.JA.ChainAffinity)
		end
		if buffactive['Efflux'] then
			equip(sets.JA.Efflux)
		end
	end
	
	if spell.english == 'Quad. Continuum' or spell.english == 'Delta Thrust' or spell.english == 'Cannonball' 
	or spell.english == 'Glutinous Dart'  or spell.english == 'Sinker Drill' then
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
	
	if spell.english == 'Gates of Hades' 	or spell.english == 'Leafstorm' 		or spell.english == 'Firespit' 
	or spell.english == 'Acrid Stream' 		or spell.english == 'Regurgitation' 	or spell.english == 'Corrosive Ooze' 	
	or spell.english == 'Thermal Pulse' 	or spell.english == 'Evryone. Grudge' 	or spell.english == 'Water Bomb' 		
	or spell.english == 'Dark Orb' 			or spell.english == 'Thunderbolt' 		or spell.english == 'Tem. Upheaval' 
	or spell.english == 'Embalming Earth' 	or spell.english == 'Foul Waters' 		or spell.english == 'Rending Deluge' 
	or spell.english == 'Droning Whirlwind' or spell.english == 'Subduction' 		or spell.english == 'Polar Roar' 		
	or spell.english == 'Entomb' 			or spell.english == 'Spectral Floe' 	
	or spell.english == 'Scouring Spate' 	or spell.english == 'Searing Tempest' 	or spell.english == 'Anvil Lightning' 
	or spell.english == 'Silent Storm' 		or spell.english == 'Swipe' 			or spell.english == 'Lunge' then
		equip(sets.BlueMagic.INT)
		if buffactive['Burst Affinity'] then
			equip(sets.JA.BurstAffinity)
		end
	end	
		
	if spell.english == 'Magic Hammer' 		or spell.english == 'Retinal Glare' 	or spell.english == 'Uproot' 
	or spell.english == 'Blinding Fulgor' 	or spell.english == 'Diffusion Ray' 	or spell.english == 'Rail Cannon' then
		equip(sets.BlueMagic.LightNuke)
		if buffactive['Burst Affinity'] then
			equip(sets.JA.BurstAffinity)
		end
	end
	
	if spell.english == 'Tenebral Crush' 	or spell.english == 'Palling Salvo' 	or spell.english == 'Eyes on Me' 
	or spell.english == 'Evryone. Grudge'  or spell.english == 'Dark Orb' then
		equip(sets.BlueMagic.DarkNuke)
		if buffactive['Burst Affinity'] then
			equip(sets.JA.BurstAffinity)
		end	
	end
	
	if spell.english == 'Magic Fruit' 	or spell.english == 'Plenilune Embrace'		or spell.english == 'Wild Carrot' 
	or spell.english == 'Pollen' 		or spell.english == 'Cure IV' 				or spell.english == 'Restoral' then
		equip(sets.BlueMagic.Cures)
	end
	
	if spell.english == 'White Wind' then
		equip(sets.BlueMagic.WhiteWind)
	end
	
	if spell.english == 'Battery Charge' 	or spell.english == 'Refresh' then
		equip(sets.BlueMagic.Battery)
	end
	
	if spell.english == 'Barstone' 		or spell.english == 'Barsleep' 				or spell.english == 'Barwater' 
	or spell.english == 'Barfire'		or spell.english == 'Barfire'				or spell.english == 'Barblind'
	or spell.english == 'Barblizzard'	or spell.english == 'Barsilence'			or spell.english == 'Barthunder'
	or spell.english == 'Barvirus'		or spell.english == 'Barpetrify'			or spell.english == 'Regen'
	or spell.english == 'Regen II'		or spell.english == 'Aquaveil'				or spell.english == 'Protect II'
	or spell.english == 'Shell II'		or spell.english == 'Regeneration' then
		equip(sets.Enhancing)
	end
	
	if spell.english == 'Head Butt' 	or spell.english == 'Sudden Lunge' 			or spell.english == 'Blitzstrahl' then
		equip(sets.BlueMagic.Stun)
	end
	
	if spell.english == 'Heavy Strike' then
		equip(sets.BlueMagic.HeavyStrike)
	end
	
	if spell.english == 'Actinic Burst' or spell.english == 'Fantod' 				or spell.english == 'Jettatura' 
	or spell.english == 'Exuviation' 	or spell.english == 'Temporal Shift' 		or spell.english == 'Flash'then
		equip(sets.BlueMagic.Enmity)
	end
	
	if spell.english == 'Charged Whisker' then
		equip(sets.BlueMagic.ChargedWhisker)
		if buffactive['Burst Affinity'] then
			equip(sets.JA.BurstAffinity)
		end
	end
	
	if spell.english == 'Frightful Roar' 	or spell.english == 'Infrasonics' 			or spell.english == 'Barbed Crescent' 
	or spell.english == 'Tourbillion' 		or spell.english == 'Cimicine Discharge' 	or spell.english == 'Sub-zero smash' 
	or spell.english == 'Filamented Hold' 	or spell.english == 'Mind Blast' 			or spell.english == 'Sandspin' 
	or spell.english == 'Hecatomb Wave' 	or spell.english == 'Cold Wave' 			or spell.english == 'Terror Touch' 
	or spell.english == 'Dream Flower'		or spell.english == 'Absolute Terror' 		or spell.english == 'Temporal Shift' 
	or spell.english == 'Blank Gaze' then
		equip(sets.BlueMagic.MagicAccuracy)
	end
	
	if spell.english == 'MP Drainkiss' 		or spell.english == 'Digest' 				or spell.english == 'Blood Saber' 
	or spell.english == 'Blood Drain' 		or spell.english == 'Osmosis' 				or spell.english == 'Occultation' 
	or spell.english == 'Magic Barrier' 	or spell.english == 'Diamondhide' 			or spell.english == 'Metallic Body'
	or spell.english == 'Mighty Guard' then
		equip(sets.BlueMagic.Skill)
		if buffactive['Diffusion'] then
			equip(sets.JA.Diffusion)
		end
	end
	
	if spell.english == 'Cocoon' 			or spell.english == 'Harden Shell' 			or spell.english == 'Animating Wail' 
	or spell.english == 'Nat. Meditation' 	or spell.english == 'Carcharian Verve' 		
	or spell.english == 'O. Counterstance' 	or spell.english == 'Barrier Tusk' 			or spell.english == 'Saline Coat' then
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
	elseif command == 'toggle Expi set' then
		Expiacion_ind = Expiacion_ind +1
		if Expiacion_ind > #sets.Expiacion.index then Expiacion_ind = 1 end
		send_command('@input /echo <----- Expiacion Set changed to '..sets.Expiacion.index[Expiacion_ind]..' ----->')
	elseif command == 'toggle Savage set' then
		SavageBlade_ind = SavageBlade_ind +1
		if SavageBlade_ind > #sets.SavageBlade.index then Expiacion_ind = 1 end
		send_command('@input /echo <----- Savage Blade Set changed to '..sets.SavageBlade.index[SavageBlade_ind]..' ----->')
	elseif command == 'toggle Realm set' then
		Realmrazer_ind = Realmrazer_ind +1
		if Realmrazer_ind > #sets.Realmrazer.index then Realmrazer_ind = 1 end
	elseif command == 'toggle FlashNova set' then
		FlashNova_ind = FlashNova_ind +1
		if FlashNova_ind > #sets.FlashNova.index then FlashNova_ind = 1 end
		send_command('@input /echo <----- Savage Blade Set changed to '..sets.FlashNova.index[FlashNova_ind]..' ----->')
	 elseif command == 'equip TP set' then
                equip(sets.TP[sets.TP.index[TP_ind]])
        elseif command == 'equip Idle set' then
                equip(sets.Idle[sets.Idle.index[Idle_ind]])
	end
end