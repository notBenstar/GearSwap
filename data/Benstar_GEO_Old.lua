function get_sets()
	IdleIndex = 1
	IdleArray = {"Refresh","Pet","Town"} -- Default Idle Set Is Movement --
	Armor = 'None'
	define_geomancy_values()
	Obi = 'ON' -- Turn Default Obi ON or OFF Here --
	target_distance = 5 -- Set Default Distance Here --

	Cure_Spells = {"Cure","Cure II","Cure III","Cure IV"} -- Cure Degradation --
	Curaga_Spells = {"Curaga","Curaga II"} -- Curaga Degradation --
	sc_map = {SC1 = "GeoTorpor", SC2 = "GeoLanguor", SC3 = "IndiFocus"} -- 3 Additional Binds. Can Change Whatever JA/WS/Spells You Like Here. Remember Not To Use Spaces. --

	Non_Obi_Spells = S{
			'Burn','Choke','Drown','Frost','Rasp','Shock','Impact','Anemohelix','Cryohelix',
			'Geohelix','Hydrohelix','Ionohelix','Luminohelix','Noctohelix','Pyrohelix'}

	Cities = S{
			"Ru'lude Gardens","Upper Jeuno","Lower Jeuno","Port Jeuno",
			"Port Windurst","Windurst Waters","Windurst Woods","Windurst Walls","Heavens Tower",
			"Port San d'Oria","Northern San d'Oria","Southern San d'Oria",
			"Port Bastok","Bastok Markets","Bastok Mines","Metalworks",
			"Aht Urhgan Whitegate","Nashmau","Tavanazian Safehold",
			"Selbina","Mhaura","Norg","Eastern Adoulin","Western Adoulin","Kazham"}

	-- Idle Sets --
	sets.Idle = {}	
	
	sets.Idle.Refresh = {
		main="Bolelabunga",
		sub="Genmei Shield",
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		head="Azimuth Hood +1",
		body="Jhakri Robe +2",
		hands={ name="Merlinic Dastanas", augments={'Mag. Acc.+1','Weapon skill damage +1%','"Refresh"+1','Accuracy+14 Attack+14',}},
		legs="Assid. Pants +1",
		feet={ name="Merlinic Crackows", augments={'Attack+13','Sklchn.dmg.+4%','"Refresh"+2',}},
		neck="Sanctity Necklace",
		waist="Fucho-no-Obi",
		left_ear="Odnowa Earring +1",
		right_ear="Odnowa Earring",
		left_ring="Shneddick Ring",
		right_ring="Defending Ring",
		back="Solemnity Cape"
	}
			
	sets.Idle.Town = {
		main="Bolelabunga",
		sub="Genmei Shield",
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		head="Azimuth Hood +1",
		body="Jhakri Robe +2",
		hands={ name="Merlinic Dastanas", augments={'Mag. Acc.+1','Weapon skill damage +1%','"Refresh"+1','Accuracy+14 Attack+14',}},
		legs="Assid. Pants +1",
		feet={ name="Merlinic Crackows", augments={'Attack+13','Sklchn.dmg.+4%','"Refresh"+2',}},
		neck="Sanctity Necklace",
		waist="Fucho-no-Obi",
		left_ear="Odnowa Earring +1",
		right_ear="Odnowa Earring",
		left_ring="Shneddick Ring",
		right_ring="Defending Ring",
		back="Solemnity Cape"
	}
			
	sets.Resting = set_combine(sets.Idle.Refresh,{})
	
		-- .Pet sets are for when Luopan is present. --
		
	sets.Idle.Pet = {
		main={ name="Solstice", augments={'Mag. Acc.+20','Pet: Damage taken -4%','"Fast Cast"+5',}},
		sub="Genmei Shield",
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		head="Azimuth Hood +1",
		body="Jhakri Robe +2",
		hands="Geo. Mitaines +1",
		legs="Assid. Pants +1",
		feet={ name="Merlinic Crackows", augments={'Attack+13','Sklchn.dmg.+4%','"Refresh"+2',}},
		neck="Sanctity Necklace",
		waist="Fucho-no-Obi",
		left_ear="Handler's Earring +1",
		right_ear="Handler's Earring",
		left_ring="Shneddick Ring",
		right_ring="Defending Ring",
		back={ name="Lifestream Cape", augments={'Geomancy Skill +7','Indi. eff. dur. +17','Pet: Damage taken -3%',}}
	}

	-- PDT Set --
	sets.PDT = {
		main={ name="Solstice", augments={'Mag. Acc.+20','Pet: Damage taken -4%','"Fast Cast"+5',}},
		sub="Genmei Shield",
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		head="Azimuth Hood +1",
		body="Jhakri Robe +2",
		hands="Geo. Mitaines +1",
		legs="Assid. Pants +1",
		feet={ name="Merlinic Crackows", augments={'Attack+13','Sklchn.dmg.+4%','"Refresh"+2',}},
		neck="Sanctity Necklace",
		waist="Fucho-no-Obi",
		left_ear="Handler's Earring +1",
		right_ear="Handler's Earring",
		left_ring="Shneddick Ring",
		right_ring="Defending Ring",
		back={ name="Lifestream Cape", augments={'Geomancy Skill +7','Indi. eff. dur. +17','Pet: Damage taken -3%',}}
	}

	sets.Sublimation = {
		main="",
		sub="",
		ammo="",
		head="",
		neck="",
		ear1="",
		ear2="",
		body="",
		hands="",
		ring1="",
		ring2="",
		back="",
		waist="",
		legs="",
		feet=""
	}

	sets.Precast = {}
	-- FastCast Sets --
	sets.Precast.FastCast = {
		main={ name="Grioavolr", augments={'Enfb.mag. skill +12','INT+12','Mag. Acc.+14','Magic Damage +3',}},
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		head={ name="Merlinic Hood", augments={'Mag. Acc.+29','Magic burst dmg.+10%','"Mag.Atk.Bns."+7',}},
		body="Jhakri Robe +2",
		hands={ name="Merlinic Dastanas", augments={'"Fast Cast"+7','CHR+8',}},
		legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
		feet={ name="Merlinic Crackows", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','"Fast Cast"+5','"Mag.Atk.Bns."+9',}},
		neck="Voltsurge Torque",
		waist="Witful Belt",
		left_ear="Barkaro. Earring",
		right_ear="Loquac. Earring",
		left_ring="Jhakri Ring",
		right_ring="Lebeche Ring",
		back="Izdubar Mantle",
		sub="Clerisy Strap"
	}

	-- Geomancy Sets --
	sets.Precast.GeoCast = set_combine(sets.Precast.FastCast,{
		main="Solstice",
		sub="Genmei Shield",
		range="Dunna",
		ammo=empty,
		body="Bagua Tunic",
		hands="Geomancy Mitaines +1",
		back="Lifestream Cape",
		ear1="Gifted Earring",
		legs="Bagua Pants",
		feet="Medium's Sabots"
	})
	
	-- Elemental Staves --
	sets.Precast.Thunder = {main='Venabulum'}
	sets.Precast.Water = {main='Venabulum'}
	sets.Precast.Fire = {main='Venabulum'}
	sets.Precast.Ice = {main='Venabulum'}
	sets.Precast.Wind = {main='Venabulum'}
	sets.Precast.Earth = {main='Venabulum'}
	sets.Precast.Light = {main='Venabulum'}
	sets.Precast.Dark = {main='Venabulum'}

	sets.Precast['Enhancing Magic'] = set_combine(sets.Precast.FastCast,{waist="Siegel Sash",head="Umuthi Hat"})

	-- Precast Cure Set --
	sets.Precast.Cure = {
		main={ name="Grioavolr", augments={'Enfb.mag. skill +12','INT+12','Mag. Acc.+14','Magic Damage +3',}},
		sub="Clerisy Strap",
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		head={ name="Merlinic Hood", augments={'Mag. Acc.+29','Magic burst dmg.+10%','"Mag.Atk.Bns."+7',}},
		body="Jhakri Robe +2",
		hands={ name="Merlinic Dastanas", augments={'"Fast Cast"+7','CHR+8',}},
		legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
		feet={ name="Merlinic Crackows", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','"Fast Cast"+5','"Mag.Atk.Bns."+9',}},
		neck="Voltsurge Torque",
		waist="Witful Belt",
		left_ear="Barkaro. Earring",
		right_ear="Loquac. Earring",
		left_ring="Jhakri Ring",
		right_ring="Lebeche Ring",
		back="Izdubar Mantle"
	}

	-- Midcast Base Set --
	sets.Midcast = {}

	-- Cure Set --
	sets.Midcast.Cure = {
		main="Tamaxchi",
		sub="Genmei Shield",
		ammo="Kalboron Stone",
		hands={ name="Telchine Gloves", augments={'"Regen" potency+3',}},
		legs="Gyve Trousers",
		feet={ name="Medium's Sabots", augments={'MP+15','MND+3','"Conserve MP"+2',}},
		neck="Incanter's Torque",
		left_ear="Mendi. Earring",
		left_ring="Lebeche Ring",
		right_ring="Stikini Ring",
		back="Solemnity Cape"	
	}

	-- Curaga Set --
	sets.Midcast.Curaga = {
		main="Tamaxchi",
		sub="Genmei Shield",
		ammo="Kalboron Stone",
		hands={ name="Telchine Gloves", augments={'"Regen" potency+3',}},
		legs="Gyve Trousers",
		feet={ name="Medium's Sabots", augments={'MP+15','MND+3','"Conserve MP"+2',}},
		neck="Incanter's Torque",
		left_ear="Mendi. Earring",
		left_ring="Lebeche Ring",
		right_ring="Stikini Ring",
		back="Solemnity Cape"
	}

	-- Haste Set --
	sets.Midcast.Haste = {
		main={ name="Grioavolr", augments={'Enh. Mag. eff. dur. +10','MP+82','Magic Damage +5',}},
		sub="Clerisy Strap",
		ammo="Kalboron Stone",
		body={ name="Telchine Chas.", augments={'Pet: "Regen"+1','Enh. Mag. eff. dur. +7',}},
		legs={ name="Telchine Braconi", augments={'Enh. Mag. eff. dur. +8',}},
		feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +9',}},
		neck="Incanter's Torque",
		waist="Olympus Sash",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
		back="Fi Follet Cape"
	}

	sets.Midcast['Enhancing Magic'] = {
		main={ name="Grioavolr", augments={'Enh. Mag. eff. dur. +10','MP+82','Magic Damage +5',}},
		sub="Clerisy Strap",
		ammo="Kalboron Stone",
		body={ name="Telchine Chas.", augments={'Pet: "Regen"+1','Enh. Mag. eff. dur. +7',}},
		legs={ name="Telchine Braconi", augments={'Enh. Mag. eff. dur. +8',}},
		feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +9',}},
		neck="Incanter's Torque",
		waist="Olympus Sash",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
		back="Fi Follet Cape"
	}

	sets.Midcast.Stoneskin = set_combine(sets.Midcast['Enhancing Magic'],{
		head="Umuthi Hat",
		neck="Nodens Gorget",
		waist="Siegel Sash"
	})

	sets.Midcast.Cursna = set_combine(sets.Midcast.Haste,{
		head="Nahtirah Hat",
		neck="Colossus's Torque",
		ear2="Beatific Earring",
		body="Anhur Robe",
		hands="Bokwus Gloves",
		ring1="Haoma's Ring",
		ring2="Haoma's Ring",
		back="Altruistic Cape",
		waist="Witful Belt",
		legs="Bokwus Slops",
		feet="Geomancy Sandals"
	})

	sets.Midcast.Stun = {
		main="Venabulum",
		sub="Mephitis Grip",
		range="Aureole",
		head="Nahtirah Hat",
		neck="Orunmila's Torque",
		ear1="Loquac. Earring",
		ear2="Enchanter Earring +1",
		body="Vanir Cotehardie",
		hands="Hagondes Cuffs",
		ring1="Prolix Ring",
		ring2="Sangoma Ring",
		back="Lifestream Cape",
		waist="Ninurta's Sash",
		legs="Geomancy Pants",
		feet="Hagondes Sabots +1"
	}
	
	sets.Midcast.Stun.MidACC = set_combine(sets.Midcast.Stun,{})
	
	sets.Midcast.Stun.HighACC = set_combine(sets.Midcast.Stun.MidACC,{})

	-- Elemental Sets --
	sets.Midcast['Elemental Magic'] = {
		main={ name="Grioavolr", augments={'Enfb.mag. skill +12','INT+12','Mag. Acc.+14','Magic Damage +3',}},
		sub="Niobid Strap",
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		head={ name="Merlinic Hood", augments={'Mag. Acc.+29','Magic burst dmg.+10%','"Mag.Atk.Bns."+7',}},
		body={ name="Merlinic Jubbah", augments={'Mag. Acc.+27','Magic burst dmg.+10%','INT+5','"Mag.Atk.Bns."+14',}},
		hands={ name="Amalric Gages", augments={'INT+10','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
		legs={ name="Amalric Slops", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
		feet={ name="Merlinic Crackows", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','"Fast Cast"+5','"Mag.Atk.Bns."+9',}},
		neck="Mizu. Kubikazari",
		waist="Yamabuki-no-Obi",
		left_ear="Barkaro. Earring",
		right_ear="Friomisi Earring",
		left_ring="Locus Ring",
		right_ring="Mujin Band",
		back="Izdubar Mantle"
	}
			
	sets.Midcast['Elemental Magic'].MidACC = set_combine(sets.Midcast['Elemental Magic'],{
		head="Hagondes Hat +1",
		body="Hagondes Coat +1"
	})
	
	sets.Midcast['Elemental Magic'].HighACC = set_combine(sets.Midcast['Elemental Magic'].MidACC,{})
	
		-- Dark Magic Sets --
	sets.Midcast['Dark Magic'] = set_combine(sets.Midcast['Elemental Magic'],{
			ear1="Psystorm Earring",
			ear2="Lifestorm Earring",
			body="Geomancy Tunic +1",
			head="Buremte Hat",
			hands="Hagondes Cuffs",
			legs="Hagondes pants +1",
			back="Refraction Cape",
			ring1="Archon Ring",
			ring2="Shiva Ring"
	})
			
	sets.Midcast['Dark Magic'].MidACC = set_combine(sets.Midcast['Dark Magic'],{})
	sets.Midcast['Dark Magic'].HighACC = set_combine(sets.Midcast['Dark Magic'].MidACC,{})
	
	sets.Midcast.Aspir = set_combine(sets.Midcast['Dark Magic'],{
			ring2="Excelsis Ring",
			head="Bagua Galero",
			waist="Fucho-no-obi"})
		
	sets.Midcast.Drain = set_combine(sets.Midcast.Aspir)


	-- Enfeebling Sets --
	sets.Midcast['Enfeebling Magic'] = {
		main={ name="Grioavolr", augments={'Enfb.mag. skill +12','INT+12','Mag. Acc.+14','Magic Damage +3',}},
		sub="Clerisy Strap",
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		head={ name="Merlinic Hood", augments={'Mag. Acc.+29','Magic burst dmg.+10%','"Mag.Atk.Bns."+7',}},
		body="Jhakri Robe +2",
		hands="Lurid Mitts",
		legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
		feet={ name="Merlinic Crackows", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','"Fast Cast"+5','"Mag.Atk.Bns."+9',}},
		neck="Incanter's Torque",
		waist="Eschan Stone",
		left_ear="Barkaro. Earring",
		right_ear="Loquac. Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
		back={ name="Lifestream Cape", augments={'Geomancy Skill +7','Indi. eff. dur. +17','Pet: Damage taken -3%',}}
	}
	
	sets.Midcast['Enfeebling Magic'].MidACC =  set_combine(sets.Midcast['Enfeebling Magic'],{})
	
	sets.Midcast['Enfeebling Magic'].HighACC = set_combine(sets.Midcast['Enfeebling Magic'].MidACC,{})

	sets.Midcast.Impact = {
		main="Venabulum",
		sub="Mephitis grip",
		neck="Imbodla necklace",
		head=empty,
		ear1="Lifestorm Earring",
		ear2="Psystorm Earring",
		body="Twilight Cloak",
		hands="Hagondes Cuffs",
		ring1="Archon Ring",
		ring2="Sangoma Ring",
		back="Refraction Cape",
		waist="Yamabuki-No-Obi",
		legs="Hagondes pants +1",
		feet="Bagua Sandals +1"
	}
			
	-- Para/Slow Set --
	sets.Midcast.paralyze = set_combine(sets.Midcast['Enfeebling Magic'],{
		feet="Uk'uxkaj boots"
	})
			
	sets.Midcast.slow = set_combine(sets.Midcast['Enfeebling Magic'],{
		feet="Uk'uxkaj boots"
	})
			
	-- Geomancy Midcast --
	sets.Midcast.GeoCast = set_combine(sets.Precast.GeoCast,{
		main="Solstice",
		sub="Genbu's Shield",
		range="Dunna",
		ammo=empty,
		body="Bagua Tunic",
		hands="Geomancy Mitaines +1",
		waist="Austerity Belt +1",
		back="Lifestream Cape",
		ear1="Gifted Earring",
		ear2="Gwati Earring",
		legs="Bagua Pants +1",
		feet="Umbani Boots"
	})
			

	-- Elemental Obi/Twilight Cape --
	sets.Obi = {}
	sets.Obi.Thunder = {back="Twilight Cape",waist='Rairin Obi'}
	sets.Obi.Water = {back="Twilight Cape",waist='Suirin Obi'}
	sets.Obi.Fire = {back="Twilight Cape",waist='Karin Obi'}
	sets.Obi.Ice = {back="Twilight Cape",waist='Hyorin Obi'}
	sets.Obi.Wind = {back="Twilight Cape",waist='Furin Obi'}
	sets.Obi.Earth = {back="Twilight Cape",waist='Dorin Obi'}
	sets.Obi.Light = {back="Twilight Cape",waist='Korin Obi'}
	sets.Obi.Dark = {back="Twilight Cape",waist='Anrin Obi'}

	-- JA Sets --
	sets.JA = {}
	sets.JA['Life Cycle'] = {body="Geomancy Tunic"}
	sets.JA.Bolster = {body="Bagua Tunic"}
	sets.JA['Radial Arcana'] = {feet="Bagua Sandals +1"}
	sets.JA['Mending Halation'] = {legs="Bagua Pants +1"}
	

	-- Melee Set --
	sets.Melee = {
		range="Dunna",
		ammo=empty,
		head="Kaabnax Hat",
		neck="Asperity Necklace",
		ear1="Bladeborn Earring",
		ear2="Steelflash Earring",
		body="Ischemia Chasuble",
		hands="Otomi Gloves",
		ring1="K'ayres Ring",
		ring2="Rajas Ring",
		back="Rancorous Mantle",
		waist="Cetl Belt",
		legs="Perdition Slops",
		feet="Battlecast Gaiters"
	}

	-- WS Base Set --
	sets.WS = set_combine(sets.Melee,{})
	
	sets.WS["Hexa Strike"] = {
		range="Dunna",
		ammo=empty,
		head="Buremte Hat",
		neck="Nefarious Collar",
		ear1="Vulcan's Pearl",
		ear2="Flame Pearl",
		body="Vanir Cotehardie",
		hands="Otomi Gloves",
		ring1="Rajas Ring",
		ring2="Pyrosoul Ring",
		back="Rancorous Mantle",
		waist="Wanion Belt",
		legs="Perdition Slops",
		feet="Uk'uxkaj Boots"
	}
	
	sets.WS.Realmrazer = {}
	
	sets.WS.Shattersoul = {}
	
	sets.WS["Flash Nova"] = {
		range="Dunna",
		ammo=empty,
		head="Hagondes Hat +1",
		neck="Eddy Necklace",
		ear1="Novio Earring",
		ear2="Friomisi Earring",
		body="Hagondes Coat +1",
		hands="Yaoyotl Gloves",
		ring1="Shiva Ring",
		ring2="Shiva Ring",
		back="Toro Cape",
		waist="Yamabuki-No-Obi",
		legs="Hagondes Pants +1",
		feet="Umbani Boots"
	}
	
	-- Latent Idle Set --
	sets.latent_refresh = {waist="Fucho-no-obi"}
	
		-- Lock Main Weapon --
	sets.MainWeapon = {
		main="Bolelabunga",
		sub="Genbu's Shield"
	}
end

function pretarget(spell,action)
	if (string.find(spell.type,'Magic') or spell.type == "Ninjutsu" or spell.type == "Geomancy") and buffactive.silence then -- Auto Use Echo Drops If You Are Silenced --
		cancel_spell()
		send_command('input /item "Echo Drops" <me>')
	elseif spell.english:ifind("Cure") and player.mp<actualCost(spell.mp_cost) then
		degrade_spell(spell,Cure_Spells)
	elseif spell.english:ifind("Curaga") and player.mp<actualCost(spell.mp_cost) then
		degrade_spell(spell,Curaga_Spells)
	elseif string.find(spell.english,'Geo') and pet.isvalid then -- Change Any Geo Spells To Full Circle If You Have A Luopan Active --
		cancel_spell()
		send_command('input /ja "Full Circle" <me>')
	elseif buffactive['Light Arts'] or buffactive['Addendum: White'] then
		if spell.english == "Light Arts" and not buffactive['Addendum: White'] then
			cancel_spell()
			send_command('input /ja Addendum: White <me>')
		elseif spell.english == "Manifestation" then
			cancel_spell()
			send_command('input /ja Accession <me>')
		elseif spell.english == "Alacrity" then
			cancel_spell()
			send_command('input /ja Celerity <me>')
		elseif spell.english == "Parsimony" then
			cancel_spell()
			send_command('input /ja Penury <me>')
		end
	elseif buffactive['Dark Arts'] or buffactive['Addendum: Black'] then
		if spell.english == "Dark Arts" and not buffactive['Addendum: Black'] then
			cancel_spell()
			send_command('input /ja Addendum: Black <me>')
		elseif spell.english == "Accession" then
			cancel_spell()
			send_command('input /ja Manifestation <me>')
		elseif spell.english == "Celerity" then
			cancel_spell()
			send_command('input /ja Alacrity <me>')
		elseif spell.english == "Penury" then
			cancel_spell()
			send_command('input /ja Parsimony <me>')
		end
	end
end

function precast(spell,action)
	if spell.type:endswith('Magic') or spell.type == "Ninjutsu" then
		if buffactive.silence or spell.target.distance > 16+target_distance then -- Cancel Magic or Ninjutsu If You Are Silenced or Out of Range --
			cancel_spell()
			add_to_chat(123, spell.name..' Canceled: [Silenced or Out of Casting Range]')
			return
		else
			if string.find(spell.english,'Cur') or spell.english == "Cursna" then
				equip(sets.Precast.Cure)
			elseif spell.type == "Geomancy" then
				equip(sets.Precast.GeoCast)
			elseif string.find(spell.english,'Fir') or string.find(spell.english,'Bliz') or string.find(spell.english,'Thund') or string.find(spell.english,'Aer') or string.find(spell.english,'Wat') or string.find(spell.english,'Stone') then
				equip(set_combine(sets.Precast.FastCast,{hands="Bagua Mitaines +1"}))
			elseif spell.english == "Impact" then
				equip(set_combine(sets.Precast.FastCast,{head=empty,body="Twilight Cloak"}))
			elseif spell.english == "Dia" then
				equip(set_combine(sets.Midcast['Enfeebling Magic'],{waist="Chaac Belt"}))
			elseif string.find(spell.english,'Utsusemi') then
				if buffactive['Copy Image (3)'] or buffactive['Copy Image (4)'] then
					cancel_spell()
					add_to_chat(123, spell.english .. ' Canceled: [3+ Images]')
					return
				else
					equip(sets.Precast.FastCast)
				end
			elseif sets.Precast[spell.skill] then
				equip(sets.Precast[spell.skill])
			else
				equip(sets.Precast.FastCast)
			end
		end
	elseif spell.type == "WeaponSkill" then
		if player.status ~= 'Engaged' then -- Cancel WS If You Are Not Engaged. Can Delete It If You Don't Need It --
			cancel_spell()
			add_to_chat(123,'Unable To Use WeaponSkill: [Disengaged]')
			return
		elseif sets.WS[spell.english] then
			equip(sets.WS[spell.english])
		end
	elseif spell.type == "JobAbility" then
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		end
	elseif spell.type == "Geomancy" then
		if Cities:contains(world.area) then
			cancel_spell()
			add_to_chat(123,'Unable To Use Geomancy In Town')
			return
		else
			if buffactive.silence or spell.target.distance > 16+target_distance then -- Cancel Geomancy If You Are Silenced or Out of Range --
				cancel_spell()
				add_to_chat(123, spell.name..' Canceled: [Silenced or Out of Casting Range]')
				return
			else
				display_geomancy_info(spell)
				equip(sets.Precast.GeoCast)
			end
		end
	elseif spell.english == 'Spectral Jig' and buffactive.Sneak then
		cast_delay(0.2)
		send_command('cancel Sneak')
	end
	if sets.Precast[spell.element] then
		equip(sets.Precast[spell.element])
	end
	if StunIndex == 1 then
		equip(sets.Midcast.Stun)
	end
	if spell.english == 'Paralyze' then
		equip(sets.Midcast.paralyze)
	end
	if spell.english == 'Slow' then
		equip(sets.Midcast.slow)
	end
	if Main == 'ON' then
		equip(sets.MainWeapon)
	end
end

function midcast(spell,action)
	equipSet = {}
	if spell.type:endswith('Magic') or spell.type == 'Ninjutsu' then
		equipSet = sets.Midcast
		if string.find(spell.english,'Cure') then
			equipSet = equipSet.Cure
		elseif string.find(spell.english,'Cura') then
			equipSet = equipSet.Curaga
		elseif string.find(spell.english,'Banish') then
			equipSet = set_combine(equipSet.Haste,{ring1="Fenian Ring"})
		elseif spell.type == "Geomancy" then
			equipSet = sets.Midcast.GeoCast
		elseif spell.english == "Stoneskin" then
			if buffactive.Stoneskin then
				send_command('@wait 2.8;cancel stoneskin')
			end
			equipSet = equipSet.Stoneskin
		elseif spell.english == "Sneak" then
			if spell.target.name == player.name and buffactive['Sneak'] then
				send_command('cancel sneak')
			end
			equipSet = equipSet.Haste
		elseif string.find(spell.english,'Utsusemi') then
			if spell.english == 'Utsusemi: Ichi' and (buffactive['Copy Image'] or buffactive['Copy Image (2)']) then
				send_command('@wait 1.7;cancel Copy Image*')
			end
			equipSet = equipSet.Haste
		elseif spell.english == 'Monomi: Ichi' then
			if buffactive['Sneak'] then
				send_command('@wait 1.7;cancel sneak')
			end
			equipSet = equipSet.Haste
		else
			if equipSet[spell.english] then
				equipSet = equipSet[spell.english]
			end
			if equipSet[spell.skill] then
				equipSet = equipSet[spell.skill]
			end
			if equipSet[spell.type] then
				equipSet = equipSet[spell.type]
			end
			if (spell.type == 'Elemental Magic' or string.find(spell.english,'Cur') or string.find(spell.english,'Bio') or string.find(spell.english,'Dia')) and not Non_Obi_Spells:contains(spell.english) and (world.day_element == spell.element or world.weather_element == spell.element) and sets.Obi[spell.element] and Obi == 'ON' then -- Use Obi Toggle To Equip Normal Waist Gear --
				equipSet = set_combine(equipSet,sets.Obi[spell.element])
			end
		end
	elseif equipSet[spell.english] then
		equipSet = equipSet[spell.english]
	end
	equip(equipSet)
	if StunIndex == 1 then
		equip(sets.Midcast.Stun)
	end
	if Main == 'ON' then
		equip(sets.MainWeapon)
	end
end

function aftercast(spell,action)
	if player.status == 'Engaged' then
		equip(sets.Melee)
	else
		equip(sets.Idle[IdleArray[IdleIndex]])
	end
end	

function status_change(new,old)
	if Armor == 'PDT' then
		equip(sets.PDT)
	elseif buffactive["Sublimation: Activated"] then
		equip(sets.Sublimation)
	elseif new == 'Engaged' then
		equip(sets.Melee)
	elseif new == 'Idle' then
		equip(sets.Idle[IdleArray[IdleIndex]])
	elseif new == 'Resting' then
		equip(sets.Resting)
	end
	if StunIndex == 1 then
		equip(sets.Midcast.Stun)
	end
	if Main == 'ON' then
		equip(sets.MainWeapon)
	end
end

function buff_change(buff,gain)
	buff = string.lower(buff)
	if buff == 'Weakness' then -- Weakness Timer --
		if gain then
			send_command('timers create "Weakness" 300 up')
		else
			send_command('timers delete "Weakness"')
		end
	end
	if not midaction() then
		status_change(player.status)
	end
end

-- In Game: //gs c (command), Macro: /console gs c (command), Bind: gs c (command) --
function self_command(command)
	if command == 'C1' then -- Stun Toggle --
		if StunIndex == 1 then
			StunIndex = 0
			add_to_chat(123,'Stun Set: [Unlocked]')
		else
			StunIndex = 1
			add_to_chat(158,'Stun Set: [Locked]')
		end
		status_change(player.status)
	elseif command == 'C5' then -- Auto Update Gear Toggle --
		status_change(player.status)
		add_to_chat(158,'Auto Update Gear')
	elseif command == 'C3' then -- Obi Toggle --
		if Obi == 'ON' then
			Obi = 'OFF'
			add_to_chat(123,'Obi: [OFF]')
		else
			Obi = 'ON'
			add_to_chat(158,'Obi: [ON]')
		end
		status_change(player.status)
	elseif command == 'C7' then -- PDT Toggle --
		if Armor == 'PDT' then
			Armor = 'None'
			add_to_chat(123,'PDT Set: [Unlocked]')
		else
			Armor = 'PDT'
			add_to_chat(158,'PDT Set: [Locked]')
		end
		status_change(player.status)
	elseif command == 'w' then -- Main Weapon Toggle --
		if Main == 'ON' then
			Main = 'OFF'
			add_to_chat(123,'Main Weapon: [Unlocked]')
		else
			Main = 'ON'
			add_to_chat(158,'Main Weapon: [Locked]')
		end
		status_change(player.status)
	elseif command == 'C8' then -- Distance Toggle --
		if player.target.distance then
			target_distance = math.floor(player.target.distance*10)/10
			add_to_chat(158,'Distance: '..target_distance)
		else
			add_to_chat(123,'No Target Selected')
		end
	elseif command == 'C6' then -- Idle Toggle --
		IdleIndex = (IdleIndex % #IdleArray) + 1
		add_to_chat(158,'Idle Set: '..IdleArray[IdleIndex])
		status_change(player.status)
	elseif command:match('^SC%d$') then
		send_command('//' .. sc_map[command])
	end
end

function actualCost(originalCost)
	if buffactive["Penury"] then
		return originalCost*.5
	elseif buffactive["Light Arts"] then
		return originalCost*.9
	else
		return originalCost
	end
end

function degrade_spell(spell,degrade_array)
	spell_index = table.find(degrade_array,spell.name)
	if spell_index > 1 then
		new_spell = degrade_array[spell_index - 1]
		change_spell(new_spell,spell.target.raw)
		add_to_chat(8,spell.name..' Canceled: ['..player.mp..'/'..player.max_mp..'MP::'..player.mpp..'%] Casting '..new_spell..' instead.')
	end
end

function change_spell(spell_name,target)
	cancel_spell()
	send_command('//'..spell_name..' '..target)
end

function customize_idle_set(idleSet)
    if player.mpp < 51 then
        idleSet = set_combine(idleSet, sets.latent_refresh)
    end
return idleSet
end

function define_geomancy_values()
	geomancy = {
		Frailty = {bonus="Defense Down"},
		Torpor = {bonus="Evasion Down"},
		Languor = {bonus="Magic Evasion Down"},
		Focus = {bonus="Magic Accuracy"},
		Malaise = {bonus="Magic Defense Down"},
		Precision = {bonus="Accuracy"},
		Refresh = {bonus="Refresh"},
		Fade = {bonus="Magic Attack Down"},
		Wilt = {bonus="Attack Down"},
		Vex = {bonus="Magic Accuracy Down"},
		Slip = {bonus="Accuracy Down"},
		Acumen = {bonus="Magic Attack"},
		Fend = {bonus="Magic Defense"},
		Fury = {bonus="Attack"},
		Attunement = {bonus="Magic Evasion"},
		Voidance = {bonus="Evasion"},
		Barrier = {bonus="Defense"},
		Haste = {bonus="Haste"}
		}
end

function display_geomancy_info(spell)
	geoType=nil 
	string.gsub(spell.english.."-","-(.-)-",function(geo) geoType=geo end)
	geoInfo = geomancy[geoType]
	if geoInfo then
		add_to_chat(158, spell.english..' = '..tostring(geoInfo.bonus))
	end
end