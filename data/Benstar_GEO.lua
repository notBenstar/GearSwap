-------------------------------------------------------------------------------------------------------------------
-- Setup functions for this job.  Generally should not be modified.
-------------------------------------------------------------------------------------------------------------------
 
-- Initialization function for this job file.
function get_sets()
    mote_include_version = 2
 
    -- Load and initialize the include file.
    include('Mote-Include.lua')
end
 
-- Setup vars that are user-independent.  state.Buff vars initialized here will automatically be tracked.
function job_setup()
    indi_timer = ''
    indi_duration = 180
end
 
-------------------------------------------------------------------------------------------------------------------
-- User setup functions for this job.  Recommend that these be overridden in a sidecar file.
-------------------------------------------------------------------------------------------------------------------
 
-- Setup vars that are user-dependent.  Can override this function in a sidecar file.
function user_setup()
    state.OffenseMode:options('None', 'Normal')
    state.CastingMode:options('Normal', 'Resistant')
    state.IdleMode:options('Normal', 'PDT')
 
    gear.default.weaponskill_waist = "Windbuffet Belt +1"
 
    select_default_macro_book()
		set_macro_page(1, 5)
end
 
 
-- Define sets and vars used by this job file.
function init_gear_sets()
 
    --------------------------------------
    -- Precast sets
    --------------------------------------
 
    -- Precast sets to enhance JAs-
    sets.precast.JA.Bolster = {body="Bagua Tunic"}
    sets.precast.JA['Life cycle'] = {body="Geomancy Tunic +1",back="Nantosuelta's Cape"}
    sets.precast.JA['Full Circle'] = {head="Azimuth Hood +1"}
    sets.precast.JA['Curative Recantation'] = {hands="Bagua Mitaines +1"}
    sets.precast.JA['Mending Halation'] = {legs="Bagua Pants"}
    sets.precast.JA['Radial Arcana'] = {feet="Bagua Sandals +1"}
     
    -- Fast cast sets for spells
 
    sets.precast.FC = {
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
		sub="Clerisy Strap",
}
 
    sets.precast.FC.Cure = set_combine(sets.precast.FC, {main="Tamaxchi",sub="Genmei Shield",body="Heka's Kalasiris",back="Pahtli Cape",legs="Doyen Pants",feet="Vanya Clogs"})
     
    sets.precast.FC['Enhancing Magic'] = set_combine(sets.precast.FC, {waist="Siegel Sash",legs="Doyen Pants"})
 
    sets.precast.FC['Elemental Magic'] = set_combine(sets.precast.FC, {neck="Stoicheion Medal",hands="Bagua Mitaines +1",ear1="Barkarole earring"})
 
    sets.precast.FC.Impact = set_combine(sets.precast.FC, {head=empty,body="Twilight Cloak"})
 
     
    -- Weaponskill sets
    -- Default set for any weaponskill that isn't any more specifically defined
    sets.precast.WS = {
        head="Nahtirah Hat",neck="Fotia Gorget",ear1="Bladeborn Earring",ear2="Steelflash Earring",
        body="Vanir Cotehardie",hands="Yaoyotl Gloves",ring1="Rajas Ring",ring2="K'ayres Ring",
        back="Refraction Cape",waist=gear.ElementalBelt,legs="Hagondes Pants",feet="Hagondes Sabots"}
 
    -- Specific weaponskill sets.  Uses the base set if an appropriate WSMod version isn't found.
    sets.precast.WS['Flash Nova'] = {ammo="Dosis Tathlum",
        head="Hagondes Hat",neck="Eddy Necklace",ear1="Friomisi Earring",ear2="Crematio Earring",
        body="Hagondes Coat",hands="Yaoyotl Gloves",ring1="Acumen Ring",ring2="Strendu Ring",
        back="Toro Cape",waist="Snow Belt",legs="Hagondes Pants",feet="Hagondes Sabots"}
 
    sets.precast.WS['Starlight'] = {ear2="Moonshade Earring"}
 
    sets.precast.WS['Moonlight'] = {ear2="Moonshade Earring"}
 
 
    --------------------------------------
    -- Midcast sets
    --------------------------------------
 
    -- Base fast recast for spells
 
 
    sets.midcast.Geomancy = {
		main="Solstice",
		range="Dunna",
        head="Azimuth Hood +1",
		neck="Incanter's Torque",
		left_ear="Calamitous Earring",
		right_ear="Gifted Earring",
        body="Bagua Tunic ",
		hands="Geomancy Mitaines +1",
        back="Lifestream Cape",
		waist="Austerity Belt",
		legs="Bagua Pants",
		feet="Medium's Sabots"
	}
     
    sets.midcast['Enhancing Magic'] = {
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
     
    sets.midcast.Haste = sets.midcast['Enhancing Magic']
     
    sets.midcast.Flurry = sets.midcast['Enhancing Magic']
     
     
    sets.midcast.Geomancy.Indi = {
		main="Solstice",
		range="Dunna",
		head="Azimuth Hood +1",
		neck="Incanter's Torque",
		left_ear="Calamitous Earring",
		right_ear="Gifted Earring",
		body="Bagua Tunic +1",
		hands="Geomancy Mitaines +1",
		back="Lifestream Cape",
		waist="Austerity Belt",
		legs="Bagua Pants",
		feet="Azimuth Gaiters +1"
	}
     
    sets.midcast.Cure = {
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
     
    sets.midcast.Curaga = sets.midcast.Cure
 
    sets.midcast.Protectra = {ring1="Sheltered Ring"}
 
    sets.midcast.Shellra = {ring1="Sheltered Ring"}
     
        -- Elemental Magic sets
     
    sets.midcast['Elemental Magic'] = {
		main={ name="Grioavolr", augments={'Enfb.mag. skill +12','INT+12','Mag. Acc.+14','Magic Damage +3',}},
		sub="Niobid Strap",
		ammo="Pemphredo Tathlum",
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
 
    sets.midcast['Elemental Magic'].Resistant = {
		main={ name="Grioavolr", augments={'Enfb.mag. skill +12','INT+12','Mag. Acc.+14','Magic Damage +3',}},
		sub="Niobid Strap",
		ammo="Pemphredo Tathlum",
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
 
    sets.midcast['Elemental Magic'].HighTierNuke = set_combine(sets.midcast['Elemental Magic'], {sub="Wizzan Grip"})
    sets.midcast['Elemental Magic'].HighTierNuke.Resistant = set_combine(sets.midcast['Elemental Magic'], {sub="Wizzan Grip"})
     
    sets.midcast['Dark Magic'] = {
		main="Rubicundity",
		sub="Ammurapi Shield",
        head="Amalric Coif",
		neck="Erra Pendant",
		ear1="Barkaro Earring",
		ear2="Dignitary's Earring",
        body="Shango Robe",
		hands="Lurid mitts",
		ring1="Stikini ring",
		ring2="Evanescence Ring",
        back={ name="Nantosuelta's Cape", 
		augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
        waist="ovate robe",
		legs="Azimuth Tights +1",
		feet="Artsieq boots"
	}
         
         
    sets.midcast['Enfeebling Magic'] = {
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
         
    sets.midcast.Drain = { 
		main={ name="Grioavolr", augments={'Enfb.mag. skill +12','INT+12','Mag. Acc.+14','Magic Damage +3',}},
		sub="Niobid Strap",
		ammo="Pemphredo Tathlum",
		head={ name="Merlinic Hood", augments={'Mag. Acc.+29','Magic burst dmg.+10%','"Mag.Atk.Bns."+7',}},
		body={ name="Merlinic Jubbah", augments={'Mag. Acc.+27','Magic burst dmg.+10%','INT+5','"Mag.Atk.Bns."+14',}},
		hands={ name="Amalric Gages", augments={'INT+10','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
		legs={ name="Amalric Slops", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
		feet={ name="Merlinic Crackows", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','"Fast Cast"+5','"Mag.Atk.Bns."+9',}},
		neck="Mizu. Kubikazari",
		waist="Fucho-no-Obi",
		left_ear="Barkaro. Earring",
		right_ear="Friomisi Earring",
		left_ring="Archon Ring",
		right_ring="Shiva Ring",
		back="Izdubar Mantle"
	}
         
    sets.midcast.Aspir = sets.midcast.Drain
     
    sets.midcast['Aspir III'] = sets.midcast.Drain
     
             
             
    sets.midcast.Impact = {    
		main="A",
		sub="Wi",
		ammo="Pemphredo Tathlum",
		body="Twilight Cloak",
		hands="Azimuth Gloves +1",
		legs="Merlinic Shalwar",
		feet="Bagua Sandals +1",
		neck="Sanctity Necklace",
		waist="Yamabuki-no-Obi",
		left_ear="Barkaro. Earring",
		right_ear="Hecate's Earring",
		left_ring="Shiva Ring",
		right_ring="Shiva Ring",
		back="Toro Cape"
	}
         
 
     
 
 
    --------------------------------------
    -- Idle/resting/defense/etc sets
    --------------------------------------
 
    -- Resting sets
    sets.resting = {
		head="Befouled Crown",
		neck="Loricate Torque",
		body="Heka's Kalasiris",
		hands="Serpentes Cuffs",
		ring1="Sheltered Ring",
		ring2="Paguroidea Ring",
		waist="Austerity Belt",
		legs="Assiduity Pants +1",
		feet="Chelona Boots +1"
	}
 
 
    -- Idle sets
 
    sets.idle = {
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
 
    sets.idle.PDT = {
		main="Bolelabunga",
		sub="Genmei Shield",
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		head="Azimuth Hood +1",
		body="Jhakri Robe +2",
		hands={ name="Merlinic Dastanas", augments={'Mag. Acc.+1','Weapon skill damage +1%','"Refresh"+1','Accuracy+14 Attack+14',}},
		legs="Assid. Pants +1",
		feet={ name="Merlinic Crackows", augments={'Attack+13','Sklchn.dmg.+4%','"Refresh"+2',}},
		neck="Twilight Torque",
		waist="Fucho-no-Obi",
		left_ear="Odnowa Earring +1",
		right_ear="Odnowa Earring",
		left_ring="Shneddick Ring",
		right_ring="Defending Ring",
		back="Solemnity Cape"
	}
 
    -- .Pet sets are for when Luopan is present.
    sets.idle.Pet = {
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
         
    sets.idle.PDT.Pet = {
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
 
 
    -- .Indi sets are for when an Indi-spell is active.
    sets.idle.Indi = set_combine(sets.idle, {head="Azimuth ",legs="Bagu",feet="Azimu"})
    
	sets.idle.Pet.Indi = set_combine(sets.idle.Pet, {
		main="Solstice",
		sub="Genmei Shield",
		range="Dunna",
        head="Azimuth Hood +1",
		neck="Twilight Torque",
		ear1="Handler's Earring +1",
		ear2="Etiolation Earring",
        body="Witching Robe",
		hands="Geomancy Mitaines +1",
		ring2="Defending Ring",
		ring1="Warden's Ring",
        back={ name="Nantosuelta's Cape", augments={'MND+18','Eva.+18 /Mag. Eva.+18','Pet: "Regen"+10',}},
        waist="Isa Belt",
		legs="Telchine Braconi",
		feet="Bagua Sandals +1"
	})
    
	sets.idle.PDT.Indi = set_combine(sets.idle.PDT, {
		head="Azimuth Hood",
		body="Gyve Doublet",
		back="Lifestream Ca",
		legs="Bagua Pant",
		feet="Azimuth Gait"
	})
	
    sets.idle.PDT.Pet.Indi = set_combine(sets.idle.PDT.Pet, {
		head="Azimuth Ho",
		body="Azimuth Co",
		back="Lifestream e",
		legs="Bagua Pan",
		feet="Azimuth G"
	})
 
    sets.idle.Town = {
		main="Solstice",
		sub="Ammurapi Shield",
		range="Dunna",
        head="",
		neck="Loricate Torque +1",
		ear1="Enchanter Earring +1",
		ear2="Loquacious Earring",
        body="Respite Cloak",
		hands="Geomancy Mitaines +1",
		ring1="Sheltered Ring",
		ring2="Paguroidea Ring",
        back="Solemnity Cape",
		waist="Goading Belt",
		legs="Assiduity Pants +1",
		feet="Geomancy Sandals +1"
	}
 
    sets.idle.Weak = {
		main="Bolelabunga",
		sub="Genmei Shield",
		range="Nepote Bell",
        head="Nefer Khat +1",
		neck="Loricate Torque +1",
		ear1="Bloodgem Earring",
		ear2="Loquacious Earring",
        body="Heka's Kalasiris",
		hands="Serpentes Cuffs",
		ring1="Sheltered Ring",
		ring2="Paguroidea Ring",
        back="Solemnity Cape",
		waist="Goading Belt",
		legs="Assiduity Pants +1",
		feet="Geomancy Sandals +1"
	}
 
    -- Defense sets
 
    sets.defense.PDT = {
		main="Bolelabunga",
		sub="Genmei Shield",
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		head="Azimuth Hood +1",
		body="Jhakri Robe +2",
		hands={ name="Merlinic Dastanas", augments={'Mag. Acc.+1','Weapon skill damage +1%','"Refresh"+1','Accuracy+14 Attack+14',}},
		legs="Assid. Pants +1",
		feet={ name="Merlinic Crackows", augments={'Attack+13','Sklchn.dmg.+4%','"Refresh"+2',}},
		neck="Twilight Torque",
		waist="Fucho-no-Obi",
		left_ear="Odnowa Earring +1",
		right_ear="Odnowa Earring",
		left_ring="Shneddick Ring",
		right_ring="Defending Ring",
		back="Solemnity Cape"
	}
 
    sets.defense.MDT = {
		main="Bolelabunga",
		sub="Genmei Shield",
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		head="Azimuth Hood +1",
		body="Jhakri Robe +2",
		hands={ name="Merlinic Dastanas", augments={'Mag. Acc.+1','Weapon skill damage +1%','"Refresh"+1','Accuracy+14 Attack+14',}},
		legs="Assid. Pants +1",
		feet={ name="Merlinic Crackows", augments={'Attack+13','Sklchn.dmg.+4%','"Refresh"+2',}},
		neck="Twilight Torque",
		waist="Fucho-no-Obi",
		left_ear="Odnowa Earring +1",
		right_ear="Odnowa Earring",
		left_ring="Shneddick Ring",
		right_ring="Defending Ring",
		back="Solemnity Cape"
	}
 
    sets.Kiting = {feet="Geomancy Sandals +1"}
 
    sets.latent_refresh = {waist="Fucho-no-obi"}
 
 
    --------------------------------------
    -- Engaged sets
    --------------------------------------
 
    -- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
    -- sets if more refined versions aren't defined.
    -- If you create a set with both offense and defense modes, the offense mode should be first.
    -- EG: sets.engaged.Dagger.Accuracy.Evasion
 
    -- Normal melee group
    sets.engaged = {main="Solstice",sub="Genmei Shield",range="Dunna",
        head="Befouled Crown",neck="Lissome Necklace",ear1="Cessance Earring",ear2="Brutal Earring",
        body="Onca Suit",hands="Bokw",ring1="Petrov Ring",ring2="Paguroidea Ring",
        back="Solemnity Cape",waist="Windbuffet Belt +1",legs="Hagond",feet="Hagondes Sabots"}
 
    --------------------------------------
    -- Custom buff sets
    --------------------------------------
 
end
 
-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for standard casting events.
-------------------------------------------------------------------------------------------------------------------
 
function job_aftercast(spell, action, spellMap, eventArgs)
    if not spell.interrupted then
        if spell.english:startswith('Indi') then
            if not classes.CustomIdleGroups:contains('Indi') then
                classes.CustomIdleGroups:append('Indi')
            end
            send_command('@timers d "'..indi_timer..'"')
            indi_timer = spell.english
            send_command('@timers c "'..indi_timer..'" '..indi_duration..' down spells/00136.png')
        elseif spell.english == 'Sleep' or spell.english == 'Sleepga' then
            send_command('@timers c "'..spell.english..' ['..spell.target.name..']" 60 down spells/00220.png')
        elseif spell.english == 'Sleep II' or spell.english == 'Sleepga II' then
            send_command('@timers c "'..spell.english..' ['..spell.target.name..']" 90 down spells/00220.png')
        end
    elseif not player.indi then
        classes.CustomIdleGroups:clear()
    end
end
 
 
-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for non-casting events.
-------------------------------------------------------------------------------------------------------------------
 
-- Called when a player gains or loses a buff.
-- buff == buff gained or lost
-- gain == true if the buff was gained, false if it was lost.
function job_buff_change(buff, gain)
    if player.indi and not classes.CustomIdleGroups:contains('Indi')then
        classes.CustomIdleGroups:append('Indi')
        handle_equipping_gear(player.status)
    elseif classes.CustomIdleGroups:contains('Indi') and not player.indi then
        classes.CustomIdleGroups:clear()
        handle_equipping_gear(player.status)
    end
end
 
function job_state_change(stateField, newValue, oldValue)
    if stateField == 'Offense Mode' then
        if newValue == 'Normal' then
            disable('main','sub','range')
        else
            enable('main','sub','range')
        end
    end
end
 
-------------------------------------------------------------------------------------------------------------------
-- User code that supplements standard library decisions.
-------------------------------------------------------------------------------------------------------------------
 
function job_get_spell_map(spell, default_spell_map)
    if spell.action_type == 'Magic' then
        if spell.skill == 'Enfeebling Magic' then
            if spell.type == 'WhiteMagic' then
                return 'MndEnfeebles'
            else
                return 'IntEnfeebles'
            end
        elseif spell.skill == 'Geomancy' then
            if spell.english:startswith('Indi') then
                return 'Indi'
            end
        end
    end
end
 
function customize_idle_set(idleSet)
    if player.mpp < 51 then
        idleSet = set_combine(idleSet, sets.latent_refresh)
    end
    return idleSet
end
 
-- Called by the 'update' self-command.
function job_update(cmdParams, eventArgs)
    classes.CustomIdleGroups:clear()
    if player.indi then
        classes.CustomIdleGroups:append('Indi')
    end
end
 
-- Function to display the current relevant user state when doing an update.
function display_current_job_state(eventArgs)
    display_current_caster_state()
    eventArgs.handled = true
end
 
-------------------------------------------------------------------------------------------------------------------
-- Utility functions specific to this job.
-------------------------------------------------------------------------------------------------------------------
 
-- Select default macro book on initial load or subjob change.
function select_default_macro_book()
    set_macro_page(1, 3)
end