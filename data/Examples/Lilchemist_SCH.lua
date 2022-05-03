-------------------------------------------------------------------------------------------------------------------
-- Setup functions for this job.  Generally should not be modified.
-------------------------------------------------------------------------------------------------------------------

--[[
        Custom commands:
        Shorthand versions for each strategem type that uses the version appropriate for
        the current Arts.
                                        Light Arts              Dark Arts
        gs c scholar light              Light Arts/Addendum
        gs c scholar dark                                       Dark Arts/Addendum
        gs c scholar cost               Penury                  Parsimony
        gs c scholar speed              Celerity                Alacrity
        gs c scholar aoe                Accession               Manifestation
        gs c scholar power              Rapture                 Ebullience
        gs c scholar duration           Perpetuance
        gs c scholar accuracy           Altruism                Focalization
        gs c scholar enmity             Tranquility             Equanimity
        gs c scholar skillchain                                 Immanence
        gs c scholar addendum           Addendum: White         Addendum: Black
--]]



-- Initialization function for this job file.
function get_sets()
	-- Begin Kuvo code.
	arts = {}	
	arts.Light = {}
	arts.Light.Types = {'Divine Magic','Healing Magic','Enhancing Magic','Enfeebling Magic'}
	arts.Dark = {}
	arts.Dark.Types = {'Elemental Magic','Dark Magic','Enfeebling Magic'}
	-- End Kuvo code.

    mote_include_version = 2

    -- Load and initialize the include file.
    include('Mote-Include.lua')
end

-- Setup vars that are user-independent.  state.Buff vars initialized here will automatically be tracked.
function job_setup()
    info.addendumNukes = S{"Stone IV", "Water IV", "Aero IV", "Fire IV", "Blizzard IV", "Thunder IV",
        "Stone V", "Water V", "Aero V", "Fire V", "Blizzard V", "Thunder V"}

    state.Buff['Sublimation: Activated'] = buffactive['Sublimation: Activated'] or false
    update_active_strategems()
end

-------------------------------------------------------------------------------------------------------------------
-- User setup functions for this job.  Recommend that these be overridden in a sidecar file.
-------------------------------------------------------------------------------------------------------------------

-- Setup vars that are user-dependent.  Can override this function in a sidecar file.
function user_setup()
    state.OffenseMode:options('None', 'Normal')
    state.CastingMode:options('Normal', 'Resistant', 'Burst', 'Enfeebling')
    state.IdleMode:options('Normal', 'PDT')


    info.low_nukes = S{"Stone", "Water", "Aero", "Fire", "Blizzard", "Thunder"}
    info.mid_nukes = S{"Stone II", "Water II", "Aero II", "Fire II", "Blizzard II", "Thunder II",
                       "Stone III", "Water III", "Aero III", "Fire III", "Blizzard III", "Thunder III",
                       "Stone IV", "Water IV", "Aero IV", "Fire IV", "Blizzard IV", "Thunder IV",}
    info.high_nukes = S{"Stone V", "Water V", "Aero V", "Fire V", "Blizzard V", "Thunder V"}

   

    send_command('bind ^` input /ma Stun <t>')

    select_default_macro_book()
end

function user_unload()
    send_command('unbind ^`')
end


-- Define sets and vars used by this job file.
function init_gear_sets()
    --------------------------------------
    -- Start defining the sets
    --------------------------------------

    -- Precast Sets

    -- Precast sets to enhance JAs

    sets.precast.JA['Tabula Rasa'] = {legs="Pedagogy Pants"}
	sets.precast.JA['Parsimony'] = {legs="Arbatel Pants +1"}
	sets.precast.JA['Penury'] = {legs="Arbatel Pants +1"}
	sets.precast.JA['Perpetuance'] = {hands="Arbatel Bracers +1"}
	sets.precast.JA['Immanence'] = {hands="Arbatel Bracers +1"}
	sets.precast.JA['Sublimation'] = {
		main="Siriti",
		ammo="Ghastly Tathlum +1",
		head="Acad. Mortarboard",
		body={ name="Peda. Gown +1", augments={'Enhances "Enlightenment" effect',}},
		hands="Telchine Gloves",
		legs="Telchine Braconi",
		feet="Telchine Pigaches",
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		left_ear="Terminus Earring",
		right_ear="Loquac. Earring",
		left_ring="Provocare Ring",
		right_ring="Kunaji Ring",
		back="Swith Cape +1"
	}
	
	sets.precast.JA['Rapture'] = {head="Arbatel Bonnet +1"}
	sets.precast.JA['Ebullience'] = {head="Arbatel Bonnet +1"}
	

	
	
	
    -- Fast cast sets for spells

    sets.precast.FC = {
		main="Grioavolr",
		sub="Clerisy Strap",
		ammo="Incantor Stone",
		head={ name="Merlinic Hood", augments={'Mag. Acc.+29','Magic burst dmg.+10%','"Mag.Atk.Bns."+7',}},
		body={ name="Merlinic Jubbah", augments={'Mag. Acc.+27','Magic burst dmg.+10%','INT+5','"Mag.Atk.Bns."+14',}},
		hands={ name="Merlinic Dastanas", augments={'"Fast Cast"+7','CHR+8',}},
		legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
		feet={ name="Merlinic Crackows", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','"Fast Cast"+5','"Mag.Atk.Bns."+9',}},
		neck="Voltsurge Torque",
		waist="Witful Belt",
		left_ear="Ethereal Earring",
		right_ear="Loquac. Earring",
		left_ring="Lebeche Ring",
		right_ring="Defending Ring",
		back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+6','"Fast Cast"+10',}}
	}
    
	sets.precast.FC['Enhancing Magic'] = set_combine(sets.precast.FC, {
		waist="Siegel Sash"}
	)

    sets.precast.FC['Elemental Magic'] = {
		main="Grioavolr",
		sub="Clerisy Strap",
		ammo="Incantor Stone",
		head={ name="Merlinic Hood", augments={'Mag. Acc.+29','Magic burst dmg.+10%','"Mag.Atk.Bns."+7',}},
		body={ name="Merlinic Jubbah", augments={'Mag. Acc.+27','Magic burst dmg.+10%','INT+5','"Mag.Atk.Bns."+14',}},
		hands={ name="Merlinic Dastanas", augments={'"Fast Cast"+7','CHR+8',}},
		legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
		feet={ name="Merlinic Crackows", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','"Fast Cast"+5','"Mag.Atk.Bns."+9',}},
		neck="Voltsurge Torque",
		waist="Witful Belt",
		left_ear="Ethereal Earring",
		right_ear="Loquac. Earring",
		left_ring="Lebeche Ring",
		right_ring="Defending Ring",
		back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+6','"Fast Cast"+10',}}

	}

    sets.precast.FC.Cure = set_combine(sets.precast.FC, {
		ammo="Sapience Orb",
		head={ name="Merlinic Hood", augments={'Mag. Acc.+21','"Fast Cast"+7','"Mag.Atk.Bns."+1',}},
		body="Eirene's Manteel", 
		hands={ name="Merlinic Dastanas", augments={'"Mag.Atk.Bns."+9','"Fast Cast"+5','MND+9','Mag. Acc.+2',}},
		legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
		feet="Acad. Loafers +3",
		neck="Voltsurge Torque",
		waist="Witful Belt",
		left_ear="Etiolation Earring",
		right_ear="Loquac. Earring",
		left_ring="Lebeche Ring",
		right_ring="Prolix Ring",
		back="Perimede Cape"
	})

    sets.precast.FC.Curaga = sets.precast.FC.Cure

    sets.precast.FC.Impact = set_combine(sets.precast.FC['Elemental Magic'], {head=empty,body="Twilight Cloak"})
	
	sets.precast.FC.Regen = set_combine(sets.precast.FC, {back="Lugh's Cape", hands="Arbatel Bracers +1",})
	
	sets.precast.Klimaform = {feet="Arbatel Loafers +1"}

	

    -- Midcast Sets

    sets.midcast.FastRecast = {}

    sets.midcast.Cure = {
		main="Tamaxchi",
		sub="Genmei Shield",
		ammo="Kalboron Stone",
		head="Gende. Caubeen",
		body="Jhakri Robe +2",
		hands="Telchine Gloves",
		legs="Gyve Trousers",
		feet="Regal Pumps",
		neck="Incanter's Torque",
		waist="Witful Belt",
		left_ear="Loquac. Earring",
		right_ear="Mendi. Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
		back="Solemnity Cape"
	}

    sets.midcast.CureWithLightWeather = {
		main="Tamaxchi",
		sub="Genmei Shield",
		ammo="Kalboron Stone",
		head="Gende. Caubeen",
		body="Jhakri Robe +2",
		hands="Telchine Gloves",
		legs="Gyve Trousers",
		feet="Regal Pumps",
		neck="Incanter's Torque",
		waist="Witful Belt",
		left_ear="Loquac. Earring",
		right_ear="Mendi. Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
		back="Solemnity Cape"
	}

    sets.midcast.Curaga = sets.midcast.Cure

    sets.midcast.Regen = {
		main="Bolelabunga",
		sub="Genmei Shield",
		ammo="Kalboron Stone",
		head="Arbatel Bonnet +1",
		body="Telchine Chas.",
		hands="Arbatel Bracers +1",
		legs="Telchine Braconi",
		feet="Telchine Pigaches",
		neck="Incanter's Torque",
		waist="Olympus Sash",
		left_ear="Mendi. Earring",
		right_ear="Andoaa Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
		back="Bookworm's Cape"
	}

    sets.midcast.Cursna = set_combine(sets.midcast.Cure, {
        neck="Malison Medallion",
        hands="Hieros Mittens",
		body={ name="Pedagogy Gown", augments={'Enhances "Enlightenment" effect',}},
		ring1="Ephedra Ring",
		ring2="Ephedra Ring",
		back="Oretan. Cape +1",
        feet="Gendewitha Galoshes +1"})

    sets.midcast['Enhancing Magic'] = {
		main={ name="Grioavolr", augments={'Enh. Mag. eff. dur. +10','MP+82','Magic Damage +5',}},
		sub="Clerisy Strap",
		ammo="Savant's Treatise",
		head="Arbatel Bonnet +1",
		body="Telchine Chas.",
		hands="Arbatel Bracers +1",
		legs="Telchine Braconi",
		feet="Telchine Pigaches",
		neck="Incanter's Torque",
		waist="Olympus Sash",
		left_ear="Mendi. Earring",
		right_ear="Andoaa Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
		back="Fi Follet Cape"
	}

    sets.midcast.Stoneskin = set_combine(sets.midcast['Enhancing Magic'], {
		right_ear="Andoaa Earring",
		left_ear="Earthcry Earring",
		waist="Siegel Sash",
		neck="Nodens Gorget",
	})
		
	sets.midcast.Phalanx = set_combine(sets.midcast['Enhancing Magic'], {
		head={ name="Chironic Hat", augments={'"Dbl.Atk."+3','INT+2','Phalanx +2','Accuracy+1 Attack+1',}},
	})

	sets.midcast.Refresh = set_combine(sets.midcast['Enhancing Magic'],{
		feet="Inspirited Boots",
		waist="Gishdubar Sash"
	})
			
    sets.midcast.Storm = set_combine(sets.midcast['Enhancing Magic'], {feet="Pedagogy Loafers"})

    sets.midcast.Protect = {ring1="Sheltered Ring"}
    sets.midcast.Protectra = sets.midcast.Protect

    sets.midcast.Shell = {ring1="Sheltered Ring"}
    sets.midcast.Shellra = sets.midcast.Shell
	
	
	

    -- Custom spell classes
	
	sets.midcast['Enfeebling Magic'] = {
		main={ name="Grioavolr", augments={'Enfb.mag. skill +12','INT+12','Mag. Acc.+14','Magic Damage +3',}},
		sub="Clerisy Strap",
		ammo="Savant's Treatise",
		head={ name="Chironic Hat", augments={'Mag. Acc.+25','Enmity-3','INT+15','"Mag.Atk.Bns."+11',}},
		body={ name="Merlinic Jubbah", augments={'Mag. Acc.+27','Magic burst dmg.+10%','INT+5','"Mag.Atk.Bns."+14',}},
		hands="Jhakri Cuffs +2",
		legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
		feet={ name="Chironic Slippers", augments={'Mag. Acc.+30','"Resist Silence"+2','INT+11','"Mag.Atk.Bns."+15',}},
		neck="Incanter's Torque",
		waist="Eschan Stone",
		left_ear="Loquac. Earring",
		right_ear="Barkaro. Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
		back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+6','"Fast Cast"+10',}}
	}

    sets.midcast['Dark Magic'] = {
		main={ name="Akademos", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
		sub="Niobid Strap",
		ammo="Pemphredo Tathlum",
		head="Pixie Hairpin +1",
		body={ name="Merlinic Jubbah", augments={'Mag. Acc.+27','Magic burst dmg.+10%','INT+5','"Mag.Atk.Bns."+14',}},
		hands="Jhakri Cuffs +2",
		legs="Jhakri Slops +1",
		feet={ name="Merlinic Crackows", augments={'Attack+13','Sklchn.dmg.+4%','"Refresh"+2',}},
		neck="Mizu. Kubikazari",
		waist="Fucho-no-Obi",
		left_ear="Friomisi Earring",
		right_ear="Barkaro. Earring",
		left_ring="Excelsis Ring",
		right_ring="Archon Ring",
		back={ name="Bookworm's Cape", augments={'INT+3','MND+1','Helix eff. dur. +20','"Regen" potency+7',}}
	}
    
	-- NEED TO FIX --
	sets.midcast.Kaustra = {
		main="Akademos",
		sub="Niobid Strap",
		ammo="Ghastly Tathlum +1",
		head={ name="Merlinic Hood", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','Enmity-3','DEX+9','Mag. Acc.+15','"Mag.Atk.Bns."+12',}},
		body="Wretched Coat",
		hands="Amalric Gages",
		legs={ name="Merlinic Shalwar", augments={'Magic burst mdg.+9%','INT+3','Mag. Acc.+15','"Mag.Atk.Bns."+4',}},
		feet="Jhakri Pigaches +1",
		neck="Mizu. Kubikazari",
		waist="Aswang Sash",
		left_ear="Moldavite Earring",
		right_ear="Friomisi Earring",
		left_ring="Mujin Band",
		right_ring="Locus Ring",
		back="Seshaw Cape",
}
		
    sets.midcast.Drain = {
		main={ name="Akademos", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
		sub="Niobid Strap",
		ammo="Pemphredo Tathlum",
		head="Pixie Hairpin +1",
		body={ name="Merlinic Jubbah", augments={'Mag. Acc.+27','Magic burst dmg.+10%','INT+5','"Mag.Atk.Bns."+14',}},
		hands="Jhakri Cuffs +2",
		legs="Jhakri Slops +1",
		feet={ name="Merlinic Crackows", augments={'Attack+13','Sklchn.dmg.+4%','"Refresh"+2',}},
		neck="Mizu. Kubikazari",
		waist="Fucho-no-Obi",
		left_ear="Friomisi Earring",
		right_ear="Barkaro. Earring",
		left_ring="Excelsis Ring",
		right_ring="Archon Ring",
		back={ name="Bookworm's Cape", augments={'INT+3','MND+1','Helix eff. dur. +20','"Regen" potency+7',}}
	}



    sets.midcast.Aspir = sets.midcast.Drain

    sets.midcast.Stun = {
		ammo="Pemphredo Tathlum",
		head="Befouled Crown",
		body="Shango Robe",
		hands="Jhakri Cuffs +1",
		legs={ name="Chironic Hose", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','Haste+1','Mag. Acc.+14','"Mag.Atk.Bns."+3',}},
		feet="Arbatel Loafers +1",
		neck="Sanctity Necklace",
		waist="Casso Sash",
		left_ear="Digni. Earring",
		right_ear="Regal Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
		back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},
	}
    sets.midcast.Stun.Resistant = set_combine(sets.midcast.Stun, {main="Lehbrailg +2"})


    -- Elemental Magic sets are default for handling low-tier nukes.
    
	sets.midcast['Elemental Magic'] = {
		main={ name="Akademos", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
		sub="Niobid Strap",
		ammo="Pemphredo Tathlum",
		head={ name="Merlinic Hood", augments={'Mag. Acc.+29','Magic burst dmg.+10%','"Mag.Atk.Bns."+7',}},
		body={ name="Merlinic Jubbah", augments={'Mag. Acc.+27','Magic burst dmg.+10%','INT+5','"Mag.Atk.Bns."+14',}},
		hands={ name="Amalric Gages", augments={'INT+10','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
		legs={ name="Amalric Slops", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
		feet="Arbatel Loafers +1",
		neck="Mizu. Kubikazari",
		waist="Hachirin-no-Obi",
		left_ear="Friomisi Earring",
		right_ear="Barkaro. Earring",
		left_ring="Mujin Band",
		right_ring="Locus Ring",
		back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+6','"Fast Cast"+10',}}
	}

    sets.midcast['Elemental Magic'].Resistant = {
		main={ name="Akademos", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
		sub="Niobid Strap",
		ammo="Pemphredo Tathlum",
		head={ name="Merlinic Hood", augments={'Mag. Acc.+29','Magic burst dmg.+10%','"Mag.Atk.Bns."+7',}},
		body={ name="Merlinic Jubbah", augments={'Mag. Acc.+27','Magic burst dmg.+10%','INT+5','"Mag.Atk.Bns."+14',}},
		hands={ name="Amalric Gages", augments={'INT+10','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
		legs={ name="Amalric Slops", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
		feet="Arbatel Loafers +1",
		neck="Mizu. Kubikazari",
		waist="Hachirin-no-Obi",
		left_ear="Friomisi Earring",
		right_ear="Barkaro. Earring",
		left_ring="Mujin Band",
		right_ring="Locus Ring",
		back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+6','"Fast Cast"+10',}}
	}

    -- Custom refinements for certain nuke tiers
	
    sets.midcast['Elemental Magic'].HighTierNuke = set_combine(sets.midcast['Elemental Magic'], {sub="Wizzan Grip"})

    sets.midcast['Elemental Magic'].HighTierNuke.Resistant = set_combine(sets.midcast['Elemental Magic'].Resistant, {sub="Wizzan Grip"})

    sets.midcast.Impact = {main="Lehbrailg +2",sub="Mephitis Grip",ammo="Dosis Tathlum",
        head=empty,neck="Eddy Necklace",ear1="Psystorm Earring",ear2="Lifestorm Earring",
        body="Twilight Cloak",hands=gear.macc_hagondes,ring1="Icesoul Ring",ring2="Sangoma Ring",
        back="Toro Cape",waist="Demonry Sash",legs="Hagondes Pants",feet="Bokwus Boots"}
		-- need to fix
		
	sets.midcast['Elemental Magic'].Burst = {
		main={ name="Akademos", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
		sub="Niobid Strap",
		ammo="Pemphredo Tathlum",
		head={ name="Merlinic Hood", augments={'Mag. Acc.+29','Magic burst dmg.+10%','"Mag.Atk.Bns."+7',}},
		body={ name="Merlinic Jubbah", augments={'Mag. Acc.+27','Magic burst dmg.+10%','INT+5','"Mag.Atk.Bns."+14',}},
		hands={ name="Amalric Gages", augments={'INT+10','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
		legs={ name="Amalric Slops", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
		feet="Arbatel Loafers +1",
		neck="Mizu. Kubikazari",
		waist="Hachirin-no-Obi",
		left_ear="Friomisi Earring",
		right_ear="Barkaro. Earring",
		left_ring="Mujin Band",
		right_ring="Locus Ring",
		back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+6','"Fast Cast"+10',}}
	}

	



    -- Sets to return to when not performing an action.

    -- Resting sets
    sets.resting = {main="Chatoyant Staff",sub="Mephitis Grip",
        head="Nefer Khat +1",neck="Wiglen Gorget",
        body="Heka's Kalasiris",hands="Serpentes Cuffs",ring1="Sheltered Ring",ring2="Paguroidea Ring",
        waist="Austerity Belt",legs="Nares Trews",feet="Serpentes Sabots"
	}


    -- Idle sets (default idle set not needed since the other three are defined, but leaving for testing purposes)

    sets.idle.Town = {
		main="Bolelabunga",
		sub="Genmei Shield",
		ammo="Homiliary",
		head="Arbatel Bonnet +1",
		body="Jhakri Robe +2",
		hands={ name="Merlinic Dastanas", augments={'Mag. Acc.+1','Weapon skill damage +1%','"Refresh"+1','Accuracy+14 Attack+14',}},
		legs="Assid. Pants +1",
		feet={ name="Merlinic Crackows", augments={'Attack+13','Sklchn.dmg.+4%','"Refresh"+2',}},
		neck="Sanctity Necklace",
		waist="Fucho-no-Obi",
		left_ear="Ethereal Earring",
		right_ear="Eabani Earring",
		left_ring="Shneddick Ring",
		right_ring="Defending Ring",
		back="Solemnity Cape"
	}
    sets.idle.Field = {
		main="Bolelabunga",
		sub="Genmei Shield",
		ammo="Homiliary",
		head="Arbatel Bonnet +1",
		body="Jhakri Robe +2",
		hands={ name="Merlinic Dastanas", augments={'Mag. Acc.+1','Weapon skill damage +1%','"Refresh"+1','Accuracy+14 Attack+14',}},
		legs="Assid. Pants +1",
		feet={ name="Merlinic Crackows", augments={'Attack+13','Sklchn.dmg.+4%','"Refresh"+2',}},
		neck="Sanctity Necklace",
		waist="Fucho-no-Obi",
		left_ear="Ethereal Earring",
		right_ear="Eabani Earring",
		left_ring="Shneddick Ring",
		right_ring="Defending Ring",
		back="Solemnity Cape"
	}

    sets.idle.Field.PDT = {
		main="Bolelabunga",
		sub="Genmei Shield",
		ammo="Homiliary",
		head="Arbatel Bonnet +1",
		body="Jhakri Robe +2",
		hands={ name="Merlinic Dastanas", augments={'Mag. Acc.+1','Weapon skill damage +1%','"Refresh"+1','Accuracy+14 Attack+14',}},
		legs="Assid. Pants +1",
		feet={ name="Merlinic Crackows", augments={'Attack+13','Sklchn.dmg.+4%','"Refresh"+2',}},
		neck="Sanctity Necklace",
		waist="Fucho-no-Obi",
		left_ear="Ethereal Earring",
		right_ear="Eabani Earring",
		left_ring="Shneddick Ring",
		right_ring="Defending Ring",
		back="Solemnity Cape"
	}
			
    sets.idle.Field.Stun = {main="Apamajas II",sub="Mephitis Grip",ammo="Incantor Stone",
        head="Nahtirah Hat",neck="Aesir Torque",ear1="Psystorm Earring",ear2="Lifestorm Earring",
        body="Vanir Cotehardie",hands="Gendewitha Gages",ring1="Prolix Ring",ring2="Sangoma Ring",
        back="Swith Cape +1",waist="Goading Belt",legs="Bokwus Slops",feet="Acad. Loafers +3"}

    sets.idle.Weak = {main="Bolelabunga",sub="Genbu's Shield",ammo="Incantor Stone",
        head="Nahtirah Hat",neck="Wiglen Gorget",ear1="Bloodgem Earring",ear2="Loquacious Earring",
        body="Hagondes Coat",hands="Yaoyotl Gloves",ring1="Sheltered Ring",ring2="Meridian Ring",
        back="Umbra Cape",waist="Hierarch Belt",legs="Nares Trews",feet="Herald's Gaiters"}
		


    -- Defense sets

    sets.defense.PDT = {
			main="Bolelabunga",
			sub="Genmei Shield",
			ammo="Staunch Tathlum",
			head={ name="Merlinic Hood", augments={'Phys. dmg. taken -3%','INT+3',}},
			body="Mallquis saio +1",
			hands={ name="Merlinic Dastanas", augments={'Phys. dmg. taken -4%','MND+7','"Mag.Atk.Bns."+15',}},
			legs={ name="Merlinic Shalwar", augments={'Damage taken-2%','Pet: INT+4','Accuracy+13 Attack+13',}},
			feet={ name="Merlinic Crackows", augments={'Mag. Acc.+7 "Mag.Atk.Bns."+7','Phys. dmg. taken -4%','CHR+6','Mag. Acc.+15',}},
			neck="Loricate Torque +1",
			waist="Fucho-no-Obi",
			left_ear="Etiolation Earring",
			right_ear="Genmei Earring",
			left_ring="Defending Ring",
			right_ring="Succor Ring",
			back="Solemnity Cape",}

    sets.defense.MDT = {
			main="Bolelabunga",
			sub="Genmei Shield",
			ammo="Staunch Tathlum",
			head="Befouled Crown",
			body="Jhakri Robe +2",
			hands="Serpentes Cuffs",
			legs="Assid. Pants +1",
			feet={ name="Merlinic Crackows", augments={'Spell interruption rate down -9%','Crit. hit damage +1%','"Refresh"+1','Accuracy+10 Attack+10','Mag. Acc.+13 "Mag.Atk.Bns."+13',}},
			neck="Loricate Torque +1",
			waist="Fucho-no-Obi",
			left_ear="Etiolation Earring",
			right_ear="Loquac. Earring",
			left_ring="Defending Ring",
			right_ring="Succor Ring",
			back="Solemnity Cape",
		}    --idle refresh set
	
	

    sets.Kiting = {feet="Herald's Gaiters"}

    sets.latent_refresh = {waist="Fucho-no-obi"}

    -- Engaged sets

    -- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
    -- sets if more refined versions aren't defined.
    -- If you create a set with both offense and defense modes, the offense mode should be first.
    -- EG: sets.engaged.Dagger.Accuracy.Evasion

    -- Normal melee group
    --sets.engaged = {)
       



    -- Buff sets: Gear that needs to be worn to actively enhance a current player buff.
    sets.buff['Ebullience'] = {head="Arbatel Bonnet +1"}
    sets.buff['Rapture'] = {head="Arbatel Bonnet +1"}
    sets.buff['Perpetuance'] = {hands="Arbatel Bracers +1"}
    sets.buff['Immanence'] = {hands="Arbatel Bracers +1"}
    sets.buff['Penury'] = {legs="Arbatel Pants +1"}
    sets.buff['Parsimony'] = {legs="Arbatel Pants +1"}
    sets.buff['Celerity'] = {feet="Pedagogy Loafers"}
    sets.buff['Alacrity'] = {feet="Pedagogy Loafers"}

    sets.buff['Klimaform'] = {feet="Arbatel Loafers +1"}

    sets.buff.FullSublimation = {head="Academic's Mortarboard",ear1="Savant's Earring",body="Pedagogy Gown +1",main="Siriti",}
    sets.buff.PDTSublimation = {head="Academic's Mortarboard",ear1="Savant's Earring"}

    --sets.buff['Sandstorm'] = {feet="Desert Boots"}
end

-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for standard casting events.
-------------------------------------------------------------------------------------------------------------------

-- Run after the general midcast() is done.
function job_post_midcast(spell, action, spellMap, eventArgs)
	-- Begin Kuvo code.
    if spell.action_type == 'Magic' then		
		local activeArt = getActiveArt()
		
		-- Warn if magic type is not valid for active art.
		if activeArt ~= 'None' and T(arts[activeArt].Types):contains(spell.skill) == false then
			add_to_chat(8,'--------- Wrong Art Active ---------')
		end
    end	
	-- End Kuvo code.
	
    if spell.action_type == 'Magic' then
        apply_grimoire_bonuses(spell, action, spellMap, eventArgs)
    end
end

-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for non-casting events.
-------------------------------------------------------------------------------------------------------------------

-- Called when a player gains or loses a buff.
-- buff == buff gained or lost
-- gain == true if the buff was gained, false if it was lost.
function job_buff_change(buff, gain)
    if buff == "Sublimation: Activated" then
        handle_equipping_gear(player.status)
    end
end

------------------------------------------------------------------------------------------------------------------
-- User code that supplements standard library decisions.
-------------------------------------------------------------------------------------------------------------------

-- Custom spell mapping.
function job_get_spell_map(spell, default_spell_map)
    if spell.action_type == 'Magic' then
        if default_spell_map == 'Cure' or default_spell_map == 'Curaga' then
            if world.weather_element == 'Light' then
                return 'CureWithLightWeather'
            end
        elseif spell.skill == 'Elemental Magic' then
            if info.low_nukes:contains(spell.english) then
                return 'LowTierNuke'
            elseif info.mid_nukes:contains(spell.english) then
                return 'MidTierNuke'
            elseif info.high_nukes:contains(spell.english) then
                return 'HighTierNuke'
            end
        end
    end
end

function customize_idle_set(idleSet)
    if state.Buff['Sublimation: Activated'] then
        if state.IdleMode.value == 'Normal' then
            idleSet = set_combine(idleSet, sets.buff.FullSublimation)
        elseif state.IdleMode.value == 'PDT' then
            idleSet = set_combine(idleSet, sets.buff.PDTSublimation)
        end
    end

    if player.mpp < 51 then
        idleSet = set_combine(idleSet, sets.latent_refresh)
    end

    return idleSet
end

-- Called by the 'update' self-command.
function job_update(cmdParams, eventArgs)
    if cmdParams[1] == 'user' and not (buffactive['light arts']      or buffactive['dark arts'] or
                       buffactive['addendum: white'] or buffactive['addendum: black']) then
        if state.IdleMode.value == 'Stun' then
            send_command('@input /ja "Dark Arts" <me>')
        else
            send_command('@input /ja "Light Arts" <me>')
        end
    end

    update_active_strategems()
    update_sublimation()
end

-- Function to display the current relevant user state when doing an update.
-- Return true if display was handled, and you don't want the default info shown.
function display_current_job_state(eventArgs)
    display_current_caster_state()
    eventArgs.handled = true
end

-------------------------------------------------------------------------------------------------------------------
-- User code that supplements self-commands.
-------------------------------------------------------------------------------------------------------------------

-- Called for direct player commands.
function job_self_command(cmdParams, eventArgs)
    if cmdParams[1]:lower() == 'scholar' then
        handle_strategems(cmdParams)
        eventArgs.handled = true
    end
end

-------------------------------------------------------------------------------------------------------------------
-- Utility functions specific to this job.
-------------------------------------------------------------------------------------------------------------------

-- Reset the state vars tracking strategems.
function update_active_strategems()
    state.Buff['Ebullience'] = buffactive['Ebullience'] or false
    state.Buff['Rapture'] = buffactive['Rapture'] or false
    state.Buff['Perpetuance'] = buffactive['Perpetuance'] or false
    state.Buff['Immanence'] = buffactive['Immanence'] or false
    state.Buff['Penury'] = buffactive['Penury'] or false
    state.Buff['Parsimony'] = buffactive['Parsimony'] or false
    state.Buff['Celerity'] = buffactive['Celerity'] or false
    state.Buff['Alacrity'] = buffactive['Alacrity'] or false

    state.Buff['Klimaform'] = buffactive['Klimaform'] or false
end

function update_sublimation()
    state.Buff['Sublimation: Activated'] = buffactive['Sublimation: Activated'] or false
end

-- Equip sets appropriate to the active buffs, relative to the spell being cast.
function apply_grimoire_bonuses(spell, action, spellMap)
    if state.Buff.Perpetuance and spell.type =='WhiteMagic' and spell.skill == 'Enhancing Magic' then
        equip(sets.buff['Perpetuance'])
    end
    if state.Buff.Rapture and (spellMap == 'Cure' or spellMap == 'Curaga') then
        equip(sets.buff['Rapture'])
    end
    if spell.skill == 'Elemental Magic' and spellMap ~= 'ElementalEnfeeble' then
        if state.Buff.Ebullience and spell.english ~= 'Impact' then
            equip(sets.buff['Ebullience'])
        end
        if state.Buff.Immanence then
            equip(sets.buff['Immanence'])
        end
        if state.Buff.Klimaform and spell.element == world.weather_element then
            equip(sets.buff['Klimaform'])
        end
    end

    if state.Buff.Penury then equip(sets.buff['Penury']) end
    if state.Buff.Parsimony then equip(sets.buff['Parsimony']) end
    if state.Buff.Celerity then equip(sets.buff['Celerity']) end
    if state.Buff.Alacrity then equip(sets.buff['Alacrity']) end
end


-- General handling of strategems in an Arts-agnostic way.
-- Format: gs c scholar <strategem>
function handle_strategems(cmdParams)
    -- cmdParams[1] == 'scholar'
    -- cmdParams[2] == strategem to use

    if not cmdParams[2] then
        add_to_chat(123,'Error: No strategem command given.')
        return
    end
    local strategem = cmdParams[2]:lower()

    if strategem == 'light' then
        if buffactive['light arts'] then
            send_command('input /ja "Addendum: White" <me>')
        elseif buffactive['addendum: white'] then
            add_to_chat(122,'Error: Addendum: White is already active.')
        else
            send_command('input /ja "Light Arts" <me>')
        end
    elseif strategem == 'dark' then
        if buffactive['dark arts'] then
            send_command('input /ja "Addendum: Black" <me>')
        elseif buffactive['addendum: black'] then
            add_to_chat(122,'Error: Addendum: Black is already active.')
        else
            send_command('input /ja "Dark Arts" <me>')
        end
    elseif buffactive['light arts'] or buffactive['addendum: white'] then
        if strategem == 'cost' then
            send_command('input /ja Penury <me>')
        elseif strategem == 'speed' then
            send_command('input /ja Celerity <me>')
        elseif strategem == 'aoe' then
            send_command('input /ja Accession <me>')
        elseif strategem == 'power' then
            send_command('input /ja Rapture <me>')
        elseif strategem == 'duration' then
            send_command('input /ja Perpetuance <me>')
        elseif strategem == 'accuracy' then
            send_command('input /ja Altruism <me>')
        elseif strategem == 'enmity' then
            send_command('input /ja Tranquility <me>')
        elseif strategem == 'skillchain' then
            add_to_chat(122,'Error: Light Arts does not have a skillchain strategem.')
        elseif strategem == 'addendum' then
            send_command('input /ja "Addendum: White" <me>')
        else
            add_to_chat(123,'Error: Unknown strategem ['..strategem..']')
        end
    elseif buffactive['dark arts']  or buffactive['addendum: black'] then
        if strategem == 'cost' then
            send_command('input /ja Parsimony <me>')
        elseif strategem == 'speed' then
            send_command('input /ja Alacrity <me>')
        elseif strategem == 'aoe' then
            send_command('input /ja Manifestation <me>')
        elseif strategem == 'power' then
            send_command('input /ja Ebullience <me>')
        elseif strategem == 'duration' then
            add_to_chat(122,'Error: Dark Arts does not have a duration strategem.')
        elseif strategem == 'accuracy' then
            send_command('input /ja Focalization <me>')
        elseif strategem == 'enmity' then
            send_command('input /ja Equanimity <me>')
        elseif strategem == 'skillchain' then
            send_command('input /ja Immanence <me>')
        elseif strategem == 'addendum' then
            send_command('input /ja "Addendum: Black" <me>')
        else
            add_to_chat(123,'Error: Unknown strategem ['..strategem..']')
        end
    else
        add_to_chat(123,'No arts has been activated yet.')
    end
end


-- Gets the current number of available strategems based on the recast remaining
-- and the level of the sch.
function get_current_strategem_count()
    -- returns recast in seconds.
    local allRecasts = windower.ffxi.get_ability_recasts()
    local stratsRecast = allRecasts[231]

    local maxStrategems = (player.main_job_level + 10) / 20

    local fullRechargeTime = 4*60

    local currentCharges = math.floor(maxStrategems - maxStrategems * stratsRecast / fullRechargeTime)

    return currentCharges
end


-- Select default macro book on initial load or subjob change.
function select_default_macro_book()
    set_macro_page(1, 5)
end

-- Kuvo Code
function getActiveArt()
	if buffactive['Light Arts'] or buffactive['Addendum: White'] then
		return "Light"
	elseif buffactive['Dark Arts'] or buffactive['Addendum: Black'] then
		return "Dark"
	else		
		return "None"
	end
end