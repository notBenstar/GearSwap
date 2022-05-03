-------------------------------------------------------------------------------------------------------------------
-- Setup functions for this job.  Generally should not be modified.
-------------------------------------------------------------------------------------------------------------------

-- Initialization function for this job file.
function get_sets()
    mote_include_version = 2

    -- Load and initialize the include file.
    include('Mote-Include.lua')
	include('organizer-lib')
end


-- Setup vars that are user-independent.  state.Buff vars initialized here will automatically be tracked.
function job_setup()
    state.Buff.Hasso = buffactive.Hasso or false
    state.Buff.Souleater = buffactive.souleater or false
    state.Buff['Last Resort'] = buffactive['Last Resort'] or false
	state.Buff['Dark Seal'] = buffactive['Dark Seal'] or false
	state.Buff['Auspice'] = buffactive['Auspice'] or false

    weapon_list = S{"Apocalypse", "Caladbolg", "Loxotic"}
    no_swap_gear = S{"Warp Ring", "Dim. Ring (Dem)", "Dim. Ring (Holla)", "Dim. Ring (Mea)",
              "Trizek Ring", "Echad Ring", "Facility Ring", "Capacity Ring", "Poseidon's Ring"}
    elemental_ws = S{'Dark Harvest','Shadow of Death','Infernal Scythe','Frostbite','Freezebite',
              'Burning Blade','Red Lotus Blade','Shining Blade','Seraph Blade','Sanguine Blade'}

    lockstyleset = 12
	
	gsList = S{'Malfeasance', 'Macbain', 'Kaquljaan', 'Mekosuchus Blade', 'Ragnarok', 'Raetic Algol', 'Raetic Algol +1', 'Caladbolg', 'Montante +1', 'Albion' }
    scytheList = S{'Liberator', 'Apocalypse', 'Anguta', 'Raetic Scythe', 'Deathbane', 'Twilight Scythe' }
	
	moonshade_WS = S{
		"Resolution", "Ground Strike", "Torcleaver", "Shockwave",
		"Savage Blade", "Sanguine Blade",
		"Upheaval", "Steel Cyclone",
		"Mistral Axe", "Calamity", 
		"Judgement", 
		"Spiral Hell", "Entropy", "Cross Reaper", "Insurgency", "Dark Harvest", "Shadow of Death"
		}
	
	
	end

-------------------------------------------------------------------------------------------------------------------
-- User setup functions for this job.  Recommend that these be overridden in a sidecar file.
-------------------------------------------------------------------------------------------------------------------

-- Setup vars that are user-dependent.
function user_setup()
    state.OffenseMode:options('Normal', 'LowAcc', 'MidAcc', 'HighAcc', 'SB')
    state.HybridMode:options('Normal', 'DT')
    state.WeaponskillMode:options('Normal', 'Acc', 'SB')
    state.PhysicalDefenseMode:options('PDT', 'MDT')
    state.IdleMode:options('Normal', 'DT')
	state.CastingMode:options('Normal', 'Acc')

    state.WeaponSet = M{['description']='Weapon Set', 'Caladbolg', 'Apocalypse', 'Loxotic', 'Anguta'}
	state.WeaponLock = M(false, 'Weapon Lock')
	
    state.MagicBurst = M(false, 'Magic Burst')
    state.Critical = M(false, 'Critical Aftermath TP')
    state.CP = M(false, "Capacity Points Mode")

    -- Additional local binds
    include('Global-Binds.lua') -- OK to remove this line

    send_command('bind !` gs c toggle MagicBurst')
    send_command('bind @a gs c toggle WeaponskillMode')
    --send_command('bind @c gs c toggle CP')
    send_command('bind @e gs c cycleback WeaponSet')
    send_command('bind @r gs c cycle WeaponSet')
	send_command('bind @w gs c toggle WeaponLock')

    send_command('bind !q input /ma "Drain III" <t>')
    send_command('bind !w input /ja "Last Resort" <me>')
    send_command('bind !e input /ja "Hasso" <me>')
    send_command('bind !p input /ma "Dread Spikes" <me>')

    if player.sub_job == 'WAR' then
        send_command('bind ^numpad/ input /ja "Berserk" <me>')
        send_command('bind ^numpad* input /ja "Warcry" <me>')
        send_command('bind ^numpad- input /ja "Aggressor" <me>')
    elseif player.sub_job == 'SAM' then
        send_command('bind ^numpad/ input /ja "Meditate" <me>')
        send_command('bind ^numpad* input /ja "Sekkanoki" <me>')
        send_command('bind ^numpad- input /ja "Third Eye" <me>')
    end


    send_command('bind ^numpad7 input /ws "Resolution" <t>')
    send_command('bind ^numpad5 input /ws "Torcleaver" <t>')
    send_command('bind ^numpad1 input /ws "Freezebite" <t>')

    select_default_macro_book()
    set_lockstyle()

    state.Auto_Kite = M(false, 'Auto_Kite')
    Haste = 0
    DW_needed = 0
    DW = false
    moving = false
    update_combat_form()
    determine_haste_group()
    get_combat_weapon()
end


-- Called when this job file is unloaded (eg: job change)
function user_unload()
    send_command('unbind !`')
    send_command('unbind !q')
    send_command('unbind !w')
    send_command('bind !e input /ma "Haste" <stpc>')
    send_command('unbind !p')
    send_command('unbind @a')
    send_command('unbind @c')
    send_command('unbind @e')
    send_command('unbind @r')

    send_command('unbind ^numpad/')
    send_command('unbind ^numpad*')
    send_command('unbind ^numpad-')
    send_command('unbind ^numpad7')
    send_command('unbind ^numpad8')
    send_command('unbind ^numpad4')
    send_command('unbind ^numpad5')
    send_command('unbind ^numpad6')
    send_command('unbind ^numpad1')
	send_command('unbind numpad1')
end


-- Define sets and vars used by this job file.
function init_gear_sets()

    ------------------------------------------------------------------------------------------------
    ---------------------------------------- Precast Sets ------------------------------------------
    ------------------------------------------------------------------------------------------------

    ---- Precast Sets ----

    -- Enmity set
    sets.Enmity = {}

    -- Precast sets to enhance JAs
    sets.precast.JA['Diabolic Eye'] = {hands="Fall. Fin. Gaunt. +2"}
    sets.precast.JA['Arcane Circle'] = {feet="Ignominy Sollerets +2"}
    sets.precast.JA['Nether Void'] = {legs="Heath. Flanchard +1"}
    sets.precast.JA['Souleater'] = {head="Ignominy Burgonet +2"}
    sets.precast.JA['Weapon Bash'] = {hands="Ignominy Gauntlets +2"}
    sets.precast.JA['Last Resort'] = {back=gear.DRK_DA_Cape,feet="Fallen's Sollerets +1"}
    sets.precast.JA['Dark Seal'] = {head="Fall. Burgeonet +2"}
    sets.precast.JA['Blood Weapon'] = {body="Fallen's Cuirass +1"}

    sets.precast.FC = {
		ammo="Sapience Orb", --2
		head="Carmine Mask +1", --10 
		hands="Leyline Gloves", --7
		body="Sacro Breastplate", --10
--	legs="Eschite Cuisses", --5
		waist="Gold Mog. Belt",
		feet="Carmine Greaves +1", --8
		neck="Baetyl Pendant", --4
		ear1="Malignance Earring", --4 
		ear2="Etiolation Earring", --1
		ring1="Kishar Ring", --4
		ring2="Moonlight Ring",
		back="Moonlight Cape",
    } --54

    sets.precast.FC['Dark Magic'] = set_combine(sets.precast.FC, {head="Fall. Burgeonet +2"})


    ------------------------------------------------------------------------------------------------
    ------------------------------------- Weapon Skill Sets ----------------------------------------
    ------------------------------------------------------------------------------------------------

    sets.precast.WS = {
        ammo="Knobkierrie",
        head=gear.Ody_WSD_head,
        neck="Abyssal Bead Necklace +2",
        ear1="Thrud Earring",
        ear2="Lugra Earring +1",
        body="Ignominy Cuirass +3",
		hands=gear.Ody_WSD_hands,
        ring1="Niqmaddu Ring",
        ring2="Regal Ring",
        waist="Fotia Belt",
        legs="Fallen's Flanchard +3",
        feet="Sulevia's Leggings +2",
		back=gear.DRK_WS1_Cape,
    }

    sets.precast.WS.Acc = set_combine(sets.precast.WS, {	
		ring1="Karieyh Ring +1",
    })
	
	sets.precast.WS.SB = set_combine(sets.precast.WS, {	
    }) --50/15

    sets.precast.WS['Resolution'] = set_combine(sets.precast.WS, {
        ammo="Seeth. Bomblet +1",
		head="Flam. Zucchetto +2",
		neck="Fotia Gorget",
        body="Dagon Breast.",
        hands="Sakpata's Gauntlets",
        waist="Fotia Belt",
        legs="Ig. Flanchard +3",
        feet="Sakpata's Leggings",
		ear1="Brutal Earring",
		back=gear.DRK_WS1_Cape,
        })

    sets.precast.WS['Resolution'].Acc = set_combine(sets.precast.WS['Resolution'], {
	})

	sets.precast.WS['Resolution'].SB = set_combine(sets.precast.WS['Resolution'].Acc, {
		body="Dagon Breast.", --0/10
		hands="Sakpata's Gauntlets",--8/0
		ear1="Schere Earring", --3/0
		ring1="Niqmaddu Ring", --0/5
	}) --50/15	
	
    sets.precast.WS['Torcleaver'] = set_combine(sets.precast.WS, {	
        head=gear.Ody_WSD_head,
        body="Ignominy Cuirass +3",
		hands=gear.Ody_WSD_hands,
        neck="Abyssal Bead Necklace +2",
        waist="Fotia Belt",
		ring2="Karieyh ring +1",
        legs="Fallen's Flanchard +3",
		back=gear.DRK_WS2_Cape,
    })

    sets.precast.WS['Torcleaver'].Acc = set_combine(sets.precast.WS['Torcleaver'], {
		head="Sakpata's Helm",
		hands="Sakpata's Gauntlets",
		ring1="Regal Ring"
	})
	
	sets.precast.WS['Torcleaver'].SB = set_combine(sets.precast.WS['Torcleaver'].Acc, {
	}) --50/15
	
	sets.precast.WS['Shockwave'] = set_combine(sets.precast.WS, {
		ammo="Pemphredo Tathlum",
		head="Flam. Zucchetto +2",
		body="Sakpata's Plate",
		hands="Flam. Manopolas +2",
		legs="Sakpata's Cuisses",
		feet="Flam. Gambieras +2",
		neck="Erra Pendant",
		waist="Eschan Stone",
		ear1="Malignance Earring",
		ear2="Digni. Earring",
		ring1="Flamma Ring",
        ring2="Metamor. Ring +1",
		back=gear.DRK_WS1_Cape,
	})
	
	sets.precast.WS['Shockwave'].SB = set_combine(sets.precast.WS['Shockwave'].Acc, {
		body="Dagon Breast.", --0/10
		hands="Sakpata's Gauntlets",--8/0
		ear1="Schere Earring", --3/0
		ring1="Niqmaddu Ring", --0/5
	}) --50/15
	
    sets.precast.WS['Catastrophe'] = set_combine(sets.precast.WS, {
        head="Ratri Sallet +1",
        neck="Abyssal Bead Necklace +2",
        body="Ignominy Cuirass +3",
        hands="Rat. Gadlings +1",
        legs="Ratri Cuisses +1",
        waist="Sailfi Belt +1",
        feet="Ratri Sollerets +1",
		ear1="Thrud Earring",
		ear2="Lugra Earring +1",
		ring2="Karieyh ring +1",
		back=gear.DRK_WS1_Cape,
        })

    sets.precast.WS['Catastrophe'].Acc = set_combine(sets.precast.WS['Catastrophe'], {})
	
	sets.precast.WS['Catastrophe'].SB = set_combine(sets.precast.WS['Catastrophe'].Acc, {
		body="Dagon Breast.", --0/10
		hands="Sakpata's Gauntlets",--8/0
		ear1="Schere Earring", --3/0
		ring1="Niqmaddu Ring", --0/5
	}) --50/15

    sets.precast.WS['Cross Reaper'] = set_combine(sets.precast.WS, {
        head="Ratri Sallet +1",
        body="Ignominy Cuirass +3",
        --body="Ratri Breastplate +1",
        hands="Rat. Gadlings +1",
        waist="Sailfi Belt +1",
        legs="Ratri Cuisses +1",
        feet="Ratri Sollerets +1",
		back=gear.DRK_WS1_Cape,
        })

    sets.precast.WS['Cross Reaper'].Acc = set_combine(sets.precast.WS['Cross Reaper'], {
		ammo="Seething Bomblet +1",
		})

	sets.precast.WS['Cross Reaper'].SB = set_combine(sets.precast.WS['Cross Reaper'].Acc, {
		body="Dagon Breast.", --0/10
		hands="Sakpata's Gauntlets",--8/0
		ear1="Schere Earring", --3/0
		ring1="Niqmaddu Ring", --0/5
	}) --50/15
		
    sets.precast.WS['Entropy'] = set_combine(sets.precast.WS['Resolution'], {
        ammo="Pemphredo Tathlum",
		legs="Ig. Flanchard +3",
		ear1="Schere Earring",
        ring2="Metamor. Ring +1",
		back=gear.DRK_DA_Cape,
        })

    sets.precast.WS['Entropy'].Acc = set_combine(sets.precast.WS['Entropy'], {})
	
	sets.precast.WS['Entropy'].SB = set_combine(sets.precast.WS['Entropy'].Acc, {
		body="Dagon Breast.", --0/10
		hands="Sakpata's Gauntlets",--8/0
		ear1="Schere Earring", --3/0
		ring1="Niqmaddu Ring", --0/5
	}) --50/15

    sets.precast.WS['Insurgency'] = set_combine(sets.precast.WS['Cross Reaper'], {
        head="Sakpata's Helm",
		waist="Fotia Belt",
        })

    sets.precast.WS['Insurgency'].Acc = set_combine(sets.precast.WS['Insurgency'], {})
	
	sets.precast.WS['Insurgency'].SB = set_combine(sets.precast.WS['Insurgency'].Acc, {
		body="Dagon Breast.", --0/10
		hands="Sakpata's Gauntlets",--8/0
		ear1="Schere Earring", --3/0
		ring1="Niqmaddu Ring", --0/5
	}) --50/15

    sets.precast.WS['Quietus'] = set_combine(sets.precast.WS['Cross Reaper'], {
        })

    sets.precast.WS['Quietus'].Acc = set_combine(sets.precast.WS['Quietus'], {})
	
	sets.precast.WS['Quietus'].SB = set_combine(sets.precast.WS['Quietus'].Acc, {
		body="Dagon Breast.", --0/10
		hands="Sakpata's Gauntlets",--8/0
		ear1="Schere Earring", --3/0
		ring1="Niqmaddu Ring", --0/5
	}) --50/15
	
	sets.precast.WS['Infernal Scythe'] = set_combine(sets.precast.WS['Shockwave'], { 
		head="Ratri Sallet +1",
		hands="Rat. Gadlings +1",
		legs="Ratri Cuisses +1",
		feet="Rat. Sollerets +1",
	})
	
	sets.precast.WS['Dark Harvest'] = set_combine(sets.precast.WS, {
		ammo="Seeth. Bomblet +1",
		head="Pixie Hairpin +1",
		body="Sacro Breastplate",
		hands="Fall. Fin. Gaunt. +2",
		legs="Augury Cuisses +1",
        feet=gear.Valor_MAB_feet,
		neck="Baetyl Pendant",
		waist="Orpheus's Sash",
		ear1="Malignance Earring",
		ear2="Friomisi Earring",
		ring1="Karieyh ring +1",
		ring2="Archon Ring",
	})
	
	sets.precast.WS['Shadow of Death'] = sets.precast.WS['Dark Harvest']
	
	sets.precast.WS['Full Break'] = set_combine(sets.precast.WS['Shockwave'], { })
	
	sets.precast.WS['Upheaval'] = set_combine(sets.precast.WS['Torcleaver'], { })
	
	sets.precast.WS['Judgement'] = set_combine(sets.precast.WS, {
		head="Sakpata's Helm",
		ring2="Karieyh Ring +1",
		waist="Sailfi Belt +1",
	})
	

    ------------------------------------------------------------------------------------------------
    ---------------------------------------- Midcast Sets ------------------------------------------
    ------------------------------------------------------------------------------------------------

    sets.midcast.FastRecast = sets.precast.FC

    sets.midcast['Enfeebling Magic'] = {
        ammo="Pemphredo Tathlum",
        head="Carmine Mask +1",
        body="Ignominy Cuirass +3",
        hands="Nyame Gauntlets",
        legs="Nyame Flanchard",
        feet="Nyame Sollerets",
        neck="Erra Pendant",  
		ear1="Malignance Earring",
        ear2="Digni. Earring",
		ring1="Kishar Ring",
        ring2="Metamor. Ring +1",
        waist="Eschan Stone",
        }

    sets.midcast['Dark Magic'] = {
        ammo="Pemphredo Tathlum",
		head="Ig. Burgonet +2",
        body="Sakpata's Breastplate",
        hands="Nyame Gauntlets",
		legs="Fall. Flanchard +3",
        feet="Nyame Sollerets",
        neck="Erra Pendant",
		ear1="Malignance Earring",
        ear2="Digni. Earring",
        ring1="Evanescence Ring",
		ring2="Stikini Ring +1",
        waist="Eschan Stone",
        back="Niht Mantle",
        }
		
	sets.midcast['Elemental Magic'] = {
        ammo="Pemphredo Tathlum",
        head="Jumalik Helm",
        body="Sacro Breastplate",
		hands="Fall. Fin. Gaunt. +2",
		legs="Augury Cuisses +1",
        feet="Nyame Sollerets",
		neck="Baetyl Pendant",
        waist="Eschan Stone",
		ear1="Malignance Earring",
		ear2="Friomisi Earring",
        ring1="Metamor. Ring +1",
		ring2="Stikini Ring +1",
		back="Argocham. Mantle",
        }

    sets.midcast.Drain = set_combine(sets.midcast['Dark Magic'], {
        head="Pixie Hairpin +1",
		hands="Fall. Fin. Gaunt. +2",
		feet="Rat. Sollerets +1",
--  ear2="Hirudinea Earring",
        ring1="Evanescence Ring",
        ring2="Archon Ring",
        back="Niht Mantle",
		waist="Orpheus's Sash",
--  waist="Austerity Belt +1",
        })
	
	sets.midcast.Drain.Acc = set_combine(sets.midcast.Drain, {
		head="Carmine Mask +1",
	})
	
    sets.midcast.Aspir = sets.midcast.Drain

    sets.midcast.Absorb = set_combine(sets.midcast['Dark Magic'], {
		head="Ig. Burgonet +2",
--  hands="Pavor Gauntlets",
        ring1="Kishar Ring",
		waist="Orpheus's Sash",
--  back="Chuparrosa Mantle",
--  waist="Casso Sash",
        })

    sets.midcast['Absorb-TP'] = set_combine(sets.midcast.Absorb, {
		hands="Heath. Gauntlets +1"
	})

	sets.midcast['Endark'] = sets.midcast['Endark II']
	
	sets.midcast['Endark II'] = {
		head="Ig. Burgonet +2",
		feet="Rat. Sollerets +1",
		neck="Erra Pendant",
		hands="Fall. Fin. Gaunt. +2",
		legs="Heath. Flanchard +1",
        ring1="Evanescence Ring",
		ring2="Stikini Ring +1",
		feet="Rat. Sollerets +1",
        back="Niht Mantle",
	}
	
    sets.midcast['Stun'] = set_combine(sets.midcast['Dark Magic'], {})

    sets.midcast['Dread Spikes'] = set_combine(sets.midcast['Dark Magic'], {
        ammo="Aqreqaq Bomblet",
		head="Ratri Sallet +1",
		neck="Unmoving Collar +1",
        body="Heathen's Cuirass +1",
        hands="Rat. Gadlings +1",
        legs="Ratri Cuisses +1",
        feet="Rat. Sollerets +1",
		waist="Gold Mog. Belt",
		ear1="Tuisto Earring",
		ear2="Odnowa Earring +1",
        ring1="Gelatinous Ring +1",
		ring2="Moonlight Ring",
        back="Moonlight Cape",
        })


    ------------------------------------------------------------------------------------------------
    ----------------------------------------- Idle Sets --------------------------------------------
    ------------------------------------------------------------------------------------------------

    sets.idle = {
		ammo="Staunch Tathlum +1",
        head="Ratri Sallet +1",
        neck="Sanctity Necklace",
        ear1="Infused Earring",
		ear2="Etiolation Earring",
        body="Sacro Breastplate",
		hands="Sakpata's Gauntlets",
        ring1="Defending Ring",
		ring2="Karieyh Ring +1",
        waist="Flume belt +1",
        legs="Carmine Cuisses +1",
        feet="Nyame Sollerets",
		back=gear.DRK_DA_Cape,
        }

    sets.idle.DT = set_combine(sets.idle, {
        ammo="Staunch Tathlum +1", --3/3
        head="Nyame Helm", --7/7
        body="Nyame Mail", --9/9
		hands="Nyame Gauntlets", --7/7
		feet="Nyame Sollerets", --7/7
        neck="Loricate Torque +1", --6/6
		ear1="Eabani Earring",
        ring1="Defending Ring", --10/10
		back=gear.DRK_DA_Cape, --10/0
        }) --52/48

    sets.idle.Town = set_combine(sets.idle, {
        body="Councilor's Garb",
		hands="Sakpata's Gauntlets",
        legs="Carmine Cuisses +1",
		feet="Sakpata's Leggings",
        })

    sets.idle.Weak = set_combine(sets.idle.DT, {})

    ------------------------------------------------------------------------------------------------
    ---------------------------------------- Defense Sets ------------------------------------------
    ------------------------------------------------------------------------------------------------

	-- 25% haste PDT:47 MDT:37
    sets.defense.PDT = {
		ammo="Staunch Tathlum +1", --3/3
		head="Sakpata's Helm", --7/7
		body="Sakpata's Breastplate", --10/10
		hands="Sakpata's Gauntlets", --8/8
		legs="Ig. Flanchard +3",
		feet="Flam. Gambieras +2",
		neck="Abyssal Beads +2",
		waist="Ioskeha Belt +1",
		ear1="Brutal Earring",
		ear2="Cessance Earring", --
		ring1="Moonbeam Ring", --4/4
		ring2="Moonlight Ring", --5/5
		back=gear.DRK_DA_Cape, --10/0
    }
	
	-- 25% haste PDT:47 MDT:37
    sets.defense.MDT = set_combine(sets.defense.PDT, {
	
    })

    ------------------------------------------------------------------------------------------------
    ---------------------------------------- Engaged Sets ------------------------------------------
    ------------------------------------------------------------------------------------------------

    -- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
    -- sets if more refined versions aren't defined.
    -- If you create a set with both offense and defense modes, the offense mode should be first.
    -- EG: sets.engaged.Dagger.Accuracy.Evasion

    sets.engaged = {
        ammo="Coiste Bodhar",
        head="Flamma Zucchetto +2",
        neck="Abyssal Bead Necklace +2",
		body="Dagon Breastplate",
        ear1="Brutal Earring",
        ear2="Cessance Earring",
        hands="Flam. Manopolas +2",
        ring1="Niqmaddu Ring",
        ring2="Petrov Ring",
        waist="Ioskeha Belt +1",
        legs="Ignominy Flanchard +3",
		feet=gear.Valor_QA_feet,
		back=gear.DRK_DA_Cape,
        }

    sets.engaged.LowAcc = set_combine(sets.engaged, {})

    sets.engaged.MidAcc = set_combine(sets.engaged.LowAcc, {
	   feet="Flamma Gambieras +2",
		})
    sets.engaged.HighAcc = set_combine(sets.engaged.MidAcc, {
        ammo="Seeth. Bomblet +1",
		ear2="Telos Earring",
		ring2="Regal Ring",
--        hands="Gazu Bracelet +1",
        })

    sets.engaged.SB = set_combine(sets.engaged, {
        })
	
		
    sets.engaged.Caladbolg = set_combine(sets.engaged, {
	    ear2="Telos Earring",
		hands="Sakpata's Gauntlets",
		waist="Sailfi Belt +1",
	})
    sets.engaged.Caladbolg.LowAcc = set_combine(sets.engaged.Caladbolg, {})
    sets.engaged.Caladbolg.MidAcc = set_combine(sets.engaged.Caladbolg.LowAcc, {
		hands="Flam. Manopolas +2",
		ring2="Flamma Ring",
		waist="Ioskeha Belt +1",
		feet="Flamma Gambieras +2",
        })

    sets.engaged.Caladbolg.HighAcc = set_combine(sets.engaged.Caladbolg.MidAcc, {
        ammo="Seeth. Bomblet +1",
		ear1="Cessance Earring",
        })

	sets.engaged.Caladbolg.SB = set_combine(sets.engaged.Caladbolg, {
	})
		
    sets.engaged.Caladbolg.Aftermath = {
        --ammo="Yetshila +1", --2/6
        --head="Blistering Sallet +1", --10/0
        body="Hjarrandi Breast.", --13/0
        hands="Flam. Manopolas +2", --8/0,
        --legs="Zoar Subligar +1", --5/0
        --feet="Valorous Greaves", --0/4
        neck="Abyssal Beads +2", --4/0
        ring1="Hetairoi Ring", --1/0
        --back=gear.DRK_Crit_Cape, --10/0
        }

    sets.engaged.Apocalypse = set_combine(sets.engaged, {
        ear1="Schere Earring",
		ear2="Telos Earring",
        hands="Sakpata's Gauntlets",
		waist="Sailfi belt +1",
        })

    sets.engaged.Apocalypse.LowAcc = set_combine(sets.engaged.Apocalypse, {})
    sets.engaged.Apocalypse.MidAcc = set_combine(sets.engaged.Apocalypse.LowAcc, {
        waist="Ioskeha Belt +1",
        })

    sets.engaged.Apocalypse.HighAcc = set_combine(sets.engaged.Apocalypse.MidAcc, {
        ammo="Seething Bomblet +1",
		ear1="Cessance Earring",
--        hands="Gazu Bracelet +1",
        })
		
	sets.engaged.Apocalypse.SB = set_combine(sets.engaged.Apocalypse, {})
		
    sets.engaged.Anguta = set_combine(sets.engaged, {
        ear1="Schere Earring",
		ear2="Telos Earring",
        hands="Sakpata's Gauntlets",
		waist="Sailfi belt +1",
        })

    sets.engaged.Anguta.LowAcc = set_combine(sets.engaged.Anguta, {})
    sets.engaged.Anguta.MidAcc = set_combine(sets.engaged.Anguta.LowAcc, {
        waist="Ioskeha Belt +1",
        })

    sets.engaged.Anguta.HighAcc = set_combine(sets.engaged.Anguta.MidAcc, {
        ammo="Seething Bomblet +1",
		ear1="Cessance Earring",
--        hands="Gazu Bracelet +1",
        })

	sets.engaged.Anguta.SB = set_combine(sets.engaged.Anguta, {})
		
    ------------------------------------------------------------------------------------------------
    ---------------------------------------- Hybrid Sets -------------------------------------------
    ------------------------------------------------------------------------------------------------

    sets.engaged.Hybrid = {
		ammo="Coiste Bodhar",
		head="Sakpata's Helm", --7/7
		body="Sakpata's Breastplate", --10/10
		hands="Sakpata's Gauntlets", --8/8
		legs="Sakpata's Cuisses", --9/9
		feet="Sakpata's Leggings", --6/6
		neck="Abyssal Beads +2",
		waist="Sailfi Belt +1",
		ear1="Dedition Earring",
		ear2="Telos Earring",
		ring1={name="Chirich Ring +1", bag="wardrobe3"},
		ring2={name="Chirich Ring +1", bag="wardrobe4"},
		back=gear.DRK_DA_Cape, --10/0
        }
	-- 50/40

	
    sets.engaged.DT = set_combine(sets.engaged, sets.engaged.Hybrid)
    sets.engaged.LowAcc.DT = set_combine(sets.engaged.LowAcc, sets.engaged.Hybrid)
    sets.engaged.MidAcc.DT = set_combine(sets.engaged.MidAcc, sets.engaged.Hybrid, {ear1="Brutal Earring",})
    sets.engaged.HighAcc.DT = set_combine(sets.engaged.HighAcc, sets.engaged.Hybrid)
    sets.engaged.SB.DT = set_combine(sets.engaged.SB, sets.engaged.Hybrid, {body="Dagon Breast.",ear1="Brutal Earring",})
	
	sets.engaged.Caladbolg.DT = set_combine(sets.engaged.Caladbolg, sets.engaged.Hybrid)
	sets.engaged.Caladbolg.LowAcc.DT = set_combine(sets.engaged.Caladbolg.LowAcc, sets.engaged.Hybrid)
	sets.engaged.Caladbolg.MidAcc.DT = set_combine(sets.engaged.Caladbolg.MidAcc, sets.engaged.Hybrid, {ear1="Brutal Earring",})
	sets.engaged.Caladbolg.HighAcc.DT = set_combine(sets.engaged.Caladbolg.HighAcc, sets.engaged.Hybrid)
	--DT: 40/30, SB: 28/5
	sets.engaged.Caladbolg.SB.DT = set_combine(sets.engaged.Caladbolg.SB, sets.engaged.Hybrid,	{body="Dagon Breast.",ear1="Brutal Earring",})
	--
	sets.engaged.Caladbolg.Aftermath.DT = set_combine(sets.engaged.Caladbolg.Aftermath, sets.engaged.Hybrid)

	sets.engaged.Apocalypse.DT = set_combine(sets.engaged.Apocalypse, sets.engaged.Hybrid,					{ear1="Schere Earring",})
	sets.engaged.Apocalypse.LowAcc.DT = set_combine(sets.engaged.Apocalypse.LowAcc, sets.engaged.Hybrid,	{ear1="Schere Earring",})
	sets.engaged.Apocalypse.MidAcc.DT = set_combine(sets.engaged.Apocalypse.MidAcc, sets.engaged.Hybrid,	{ear1="Schere Earring",})
	sets.engaged.Apocalypse.HighAcc.DT = set_combine(sets.engaged.Apocalypse.HighAcc, sets.engaged.Hybrid,	{ear1="Schere Earring",})
	sets.engaged.Apocalypse.SB.DT = set_combine(sets.engaged.Apocalypse.SB, sets.engaged.Hybrid,			{ear1="Schere Earring",})
--	sets.engaged.Apocalypse.Aftermath.DT = set_combine(sets.engaged.Apocalypse.Aftermath, sets.engaged.Hybrid)

	sets.engaged.Anguta.DT = set_combine(sets.engaged.Anguta, sets.engaged.Hybrid,	{						ear1="Schere Earring",})
	sets.engaged.Anguta.LowAcc.DT = set_combine(sets.engaged.Anguta.LowAcc, sets.engaged.Hybrid,			{ear1="Schere Earring",})
	sets.engaged.Anguta.MidAcc.DT = set_combine(sets.engaged.Anguta.MidAcc, sets.engaged.Hybrid,			{ear1="Schere Earring",})
	sets.engaged.Anguta.HighAcc.DT = set_combine(sets.engaged.Anguta.HighAcc, sets.engaged.Hybrid,			{body="Dagon Breast.",ear1="Schere Earring",})
	sets.engaged.Anguta.SB.DT = set_combine(sets.engaged.Anguta.SB, sets.engaged.Hybrid,					{ear1="Schere Earring",})
--	sets.engaged.Anguta.Aftermath.DT = set_combine(sets.engaged.Anguta.Aftermath, sets.engaged.Hybrid)


	
    ------------------------------------------------------------------------------------------------
    ---------------------------------------- Special Sets ------------------------------------------
    ------------------------------------------------------------------------------------------------

    sets.magic_burst = {}

    sets.Kiting = {legs="Carmine Cuisses +1"}
    sets.latent_refresh = {head=empty, body="Lugra Cloak +1", waist="Fucho-no-obi"}
    sets.buff.Doom = {ring1="Purity Ring", ring2="Saida Ring", waist="Gishdubar Sash",}
--    sets.CP = {back="Mecisto. Mantle"}

    sets.Caladbolg = {main="Caladbolg", sub="Utu Grip"}
    sets.Apocalypse = {main="Apocalypse", sub="Utu Grip"}
	sets.Naegling = {main="Naegling", sub="Blurred Shield +1"}
	sets.Loxotic = {main="Loxotic Mace +1", sub="Blurred Shield +1"}
	sets.Anguta = {main="Anguta", sub="Utu Grip"}

	--Need 50SB1 and 25SB2 to cap
	sets.WSFullSB = {
		body="Dagon Breast.", --0/10
		hands="Sakpata's Gauntlets", --8/0
		feet="Sakpata's Leggings", --2/0
		ring1="Niqmaddu Ring", --0/5
		neck="Bathy Choker +1", --11/0
		ring1={name="Chirich Ring +1", bag="wardrobe3"}, --10/0
		ring2={name="Chirich Ring +1", bag="wardrobe4"}, --10/0
		ear1="Schere Earring", --3/0
		ear2="Digni. Earring", --5/0
	} --49/10
	
	sets.TPFullSB = {
		body="Dagon Breast.", --0/10
		hands="Sakpata's Gauntlets", --8/0
		feet="Sakpata's Leggings", --2/0
		ring1="Niqmaddu Ring", --0/5
		neck="Bathy Choker +1", --11/0
		ring1={name="Chirich Ring +1", bag="wardrobe3"}, --10/0
		ring2={name="Chirich Ring +1", bag="wardrobe4"}, --10/0
		ear2="Digni. Earring", --5/0
	} --46/10
	
	--need 25SB1 and 25SB2 to cap, Auspice
	sets.WSMidSB = {
		body="Dagon Breast.", --0/10
		hands="Sakpata's Gauntlets", --8/0
		ring1="Niqmaddu Ring", --0/5
		ring2={name="Chirich Ring +1", bag="wardrobe4"}, --10/0
		ear1="Schere Earring", --3/0
		ear2="Digni. Earring", --5/0
	} --26/15
	
	sets.TPMidSB = {
		body="Dagon Breast.", --0/10
		hands="Sakpata's Gauntlets", --8/0
		feet="Sakpata's Leggings", --2/0
		ring1="Niqmaddu Ring", --0/5
		ring2={name="Chirich Ring +1", bag="wardrobe4"}, --10/0
		ear2="Digni. Earring", --5/0
	} --25/15
	
	--Need 35SB1 and 25SB to cap, LR
	sets.WSMidSB2 = {
		body="Dagon Breast.", --0/10
		hands="Sakpata's Gauntlets", --8/0
		feet="Sakpata's Leggings", --2/0
		ring1={name="Chirich Ring +1", bag="wardrobe3"}, --10/0
		ring2={name="Chirich Ring +1", bag="wardrobe4"}, --10/0
		ear1="Schere Earring", --3/0	
	} --35/10
	
	sets.TPMidSB2 = {
		body="Dagon Breast.", --0/10
		hands="Sakpata's Gauntlets", --8/0
		feet="Sakpata's Leggings", --2/0
		ring1={name="Chirich Ring +1", bag="wardrobe3"}, --10/0
		ring2={name="Chirich Ring +1", bag="wardrobe4"}, --10/0
		ear2="Digni. Earring", --5/0
	} --35/10
	
	--Need 25SB2 to cap, monks roll
	sets.WSMonkSB = {
		body="Dagon Breast.", --0/10
		ring1="Niqmaddu Ring",
	} --0/15

	sets.TPMonkSB = {
		body="Dagon Breast.", --0/10
		ring1="Niqmaddu Ring",
	} --0/15
	
	
	
end


-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for standard casting events.
-------------------------------------------------------------------------------------------------------------------

-- Run after the default precast() is done.
-- eventArgs is the same one used in job_precast, in case information needs to be persisted.
function job_precast(spell, action, spellMap, eventArgs)

end


-- Run after the default midcast() is done.
-- eventArgs is the same one used in job_midcast, in case information needs to be persisted.
function job_aftercast(spell, action, spellMap, eventArgs)

end

-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for non-casting events.
-------------------------------------------------------------------------------------------------------------------

function job_state_change(field, new_value, old_value)
    if state.WeaponSet.value == 'Caladbolg' then
        send_command('bind ^numpad7 input /ws "Resolution" <t>')
        send_command('unbind ^numpad8')
        send_command('unbind ^numpad4')
        send_command('bind ^numpad5 input /ws "Torcleaver" <t>')
        send_command('unbind ^numpad6')
        send_command('bind ^numpad1 input /ws "Freezebite" <t>')
    elseif state.WeaponSet.value == "Apocalypse" then
        send_command('unbind ^numpad7')
        send_command('bind ^numpad8 input /ws "Insurgency" <t>')
        send_command('bind ^numpad4 input /ws "Catastrophe" <t>')
        send_command('bind ^numpad5 input /ws "Cross Reaper" <t>')
        send_command('bind ^numpad6 input /ws "Quietus" <t>')
        send_command('bind ^numpad1 input /ws "Infernal Scythe" <t>')
        send_command('bind ^numpad0 input /ws "Entropy" <t>')
    end

    check_weaponset()
end

-- Called when a player gains or loses a buff.
-- buff == buff gained or lost
-- gain == true if the buff was gained, false if it was lost.
function job_buff_change(buff,gain)

--    if buffactive['Reive Mark'] then
--        if gain then
--            equip(sets.Reive)
--            disable('neck')
--        else
--            enable('neck')
--        end
--    end

    if buff == "doom" then
        if gain then
            equip(sets.buff.Doom)
            send_command('@input /p Doomed.')
            disable('ring1','ring2','waist')
        else
            enable('ring1','ring2','waist')
            handle_equipping_gear(player.status)
        end
    end

	if buff == "Auspice" then
		if gain then
		state.Buff['Auspice'] = buffactive['Auspice']
		else
		state.Buff['Auspice'] = false
		end
	end
	
	if buff == "Monk's Roll" then
		if gain then
			state.Buff["Monk's Roll"] = buffactive["Monk's Roll"]
		else
			state.Buff["Monk's Roll"] = false
		end
	end
	
end

-- Handle notifications of general user state change.
function job_state_change(stateField, newValue, oldValue)
    if state.WeaponLock.value == true then
        disable('ranged')
		disable('main')
		disable('sub')
    else
        enable('ranged')
		enable('main')
		enable('sub')
    end

    equip(sets[state.WeaponSet.current])

end

-------------------------------------------------------------------------------------------------------------------
-- User code that supplements standard library decisions.
-------------------------------------------------------------------------------------------------------------------

-- Called by the 'update' self-command, for common needs.
-- Set eventArgs.handled to true if we don't want automatic equipping of gear.
function job_handle_equipping_gear(playerStatus, eventArgs)
    check_gear()
    update_combat_form()
    determine_haste_group()
    check_moving()
end

function job_update(cmdParams, eventArgs)
    handle_equipping_gear(player.status)
    get_combat_weapon()
end

function update_combat_form()
    if DW == true then
        state.CombatForm:set('DW')
    elseif DW == false then
        state.CombatForm:reset()
    end
end

function get_custom_wsmode(spell, action, spellMap)
    local wsmode
    if state.OffenseMode.value == 'MidAcc' or state.OffenseMode.value == 'HighAcc' then
        wsmode = 'Acc'
	end
	
    return wsmode
end

-- Modify the default idle set after it was constructed.
function customize_idle_set(idleSet)
    if player.mpp < 51 and state.IdleMode.value == 'Normal' then
        idleSet = set_combine(idleSet, sets.latent_refresh)
	
    end
--[[    if state.CP.current == 'on' then
         equip(sets.CP)
         disable('back')
     else
         enable('back')
     end]]
    if state.Auto_Kite.value == true then
       idleSet = set_combine(idleSet, sets.Kiting)
    end

    return idleSet
end

-- Modify the default melee set after it was constructed.
function customize_melee_set(meleeSet)
    if buffactive['Aftermath: Lv.3'] and player.equipment.main == "Caladbolg"
        and state.Critical.value then

        meleeSet = set_combine(meleeSet, sets.engaged.Caladbolg.Aftermath)
    end
	
	if state.OffenseMode.value == 'SB' and player.equipment.main == "Caladbolg" then
		if state.Buff['Last Resort'] == false and state.Buff['Auspice'] == false then --0/0
			meleeSet = set_combine(meleeSet, sets.TPFullSB) --44/10
		elseif state.Buff['Last Resort'] == false then --25/0
			meleeSet = set_combine(meleeSet, sets.TPMidSB) --50/15
		elseif state.Buff['Auspice'] == false then --15/0
			meleeSet = set_combine(meleeSet, sets.TPMidSB2) --48/10
		elseif buffactive["Monk's Roll"] then
			meleeSet = set_combine(meleeSet, sets.TPMonkSB)
		end
	end	
	
--[[if buffactive['Last Resort'] and state.OffenseMode.value == 'SB' then
		meleeSet = set_combaine(meleeSet, {feet="Fallen's Sollerets +1"})
		
	end	]]
	
    return meleeSet
end


	



-- Function to display the current relevant user state when doing an update.
-- Return true if display was handled, and you don't want the default info shown.
function display_current_job_state(eventArgs)
    local cf_msg = ''
    if state.CombatForm.has_value then
        cf_msg = ' (' ..state.CombatForm.value.. ')'
    end

    local m_msg = state.OffenseMode.value
    if state.HybridMode.value ~= 'Normal' then
        m_msg = m_msg .. '/' ..state.HybridMode.value
    end

    local ws_msg = state.WeaponskillMode.value

    local c_msg = state.CastingMode.value

    local d_msg = 'None'
    if state.DefenseMode.value ~= 'None' then
        d_msg = state.DefenseMode.value .. state[state.DefenseMode.value .. 'DefenseMode'].value
    end

    local i_msg = state.IdleMode.value

    local msg = ''
    if state.MagicBurst.value then
        msg = ' Burst: On |'
    end
    if state.Kiting.value then
        msg = msg .. ' Kiting: On |'
    end

    add_to_chat(002, '| ' ..string.char(31,210).. 'Melee' ..cf_msg.. ': ' ..string.char(31,001)..m_msg.. string.char(31,002)..  ' |'
        ..string.char(31,207).. ' WS: ' ..string.char(31,001)..ws_msg.. string.char(31,002)..  ' |'
        ..string.char(31,060).. ' Magic: ' ..string.char(31,001)..c_msg.. string.char(31,002)..  ' |'
        ..string.char(31,004).. ' Defense: ' ..string.char(31,001)..d_msg.. string.char(31,002)..  ' |'
        ..string.char(31,008).. ' Idle: ' ..string.char(31,001)..i_msg.. string.char(31,002)..  ' |'
        ..string.char(31,002)..msg)

    eventArgs.handled = true
end

-------------------------------------------------------------------------------------------------------------------
-- Utility functions specific to this job.
-------------------------------------------------------------------------------------------------------------------

function get_combat_weapon()
    state.CombatWeapon:reset()
    if weapon_list:contains(player.equipment.main) then
        state.CombatWeapon:set(player.equipment.main)
    end
end

function determine_haste_group()
    classes.CustomMeleeGroups:clear()
    if DW == true then
        if DW_needed <= 11 then
            classes.CustomMeleeGroups:append('MaxHaste')
        elseif DW_needed > 11 and DW_needed <= 21 then
            classes.CustomMeleeGroups:append('HighHaste')
        elseif DW_needed > 21 and DW_needed <= 27 then
            classes.CustomMeleeGroups:append('MidHaste')
        elseif DW_needed > 27 and DW_needed <= 37 then
            classes.CustomMeleeGroups:append('LowHaste')
        elseif DW_needed > 37 then
            classes.CustomMeleeGroups:append('')
        end
    end
end

function job_self_command(cmdParams, eventArgs)
    gearinfo(cmdParams, eventArgs)
end


function job_post_precast(spell, action, spellMap, eventArgs)
	if spell.type == 'WeaponSkill' then
		if moonshade_WS:contains(spell.english) and player.tp<2250 and player.equipment.main == "Anguta" then 
			equip({ear2="Moonshade Earring"})
		elseif moonshade_WS:contains(spell.english) and player.tp<2700  then
			equip({ear2="Moonshade Earring"})
		end
	end
	if spell.type == 'WeaponSkill' and state.WeaponskillMode.value == 'SB' then
			equipSet = sets.precast.WS[spell]
		if state.OffenseMode.value == 'SB' then
			if state.Buff['Last Resort'] == false and state.Buff['Auspice'] == false then --0/0
				equipSet = set_combine(equipSet, sets.WSFullSB) --47/10
			elseif state.Buff['Last Resort'] == false then --25/0
				equipSet = set_combine(equipSet, sets.WSMidSB) --51/15
			elseif state.Buff['Auspice'] == false then --15/0
				equipSet = set_combine(equipSet, sets.WSMidSB2) --51/10
			elseif buffactive["Monk's Roll"] then
				 equipSet = set_combine(equipSet, sets.WSMonkSB) --50/15
			end
			equip(equipSet)
		end	
	end
end

function job_post_midcast(spell, spellMap, eventArgs)
	if state.Buff['Dark Seal'] and spell.skill == 'Dark Magic'
		then equip(sets.precast.JA['Dark Seal'])
	end
end

function gearinfo(cmdParams, eventArgs)
    if cmdParams[1] == 'gearinfo' then
        if type(tonumber(cmdParams[2])) == 'number' then
            if tonumber(cmdParams[2]) ~= DW_needed then
            DW_needed = tonumber(cmdParams[2])
            DW = true
            end
        elseif type(cmdParams[2]) == 'string' then
            if cmdParams[2] == 'false' then
                DW_needed = 0
                DW = false
            end
        end
        if type(tonumber(cmdParams[3])) == 'number' then
            if tonumber(cmdParams[3]) ~= Haste then
                Haste = tonumber(cmdParams[3])
            end
        end
        if type(cmdParams[4]) == 'string' then
            if cmdParams[4] == 'true' then
                moving = true
            elseif cmdParams[4] == 'false' then
                moving = false
            end
        end
        if not midaction() then
            job_update()
        end
    end
end

function check_moving()
    if state.DefenseMode.value == 'None'  and state.Kiting.value == false then
        if state.Auto_Kite.value == false and moving then
            state.Auto_Kite:set(true)
        elseif state.Auto_Kite.value == true and moving == false then
            state.Auto_Kite:set(false)
        end
    end
end

function check_gear()
    if no_swap_gear:contains(player.equipment.left_ring) then
        disable("ring1")
    else
        enable("ring1")
    end
    if no_swap_gear:contains(player.equipment.right_ring) then
        disable("ring2")
    else
        enable("ring2")
    end
end

function check_weaponset()
    equip(sets[state.WeaponSet.current])
end

windower.register_event('zone change',
    function()
        if no_swap_gear:contains(player.equipment.left_ring) then
            enable("ring1")
            equip(sets.idle)
        end
        if no_swap_gear:contains(player.equipment.right_ring) then
            enable("ring2")
            equip(sets.idle)
        end
    end
)

-- Select default macro book on initial load or subjob change.
function select_default_macro_book()
    -- Default macro set/book
    if scytheList:contains(player.equipment.main) then
		set_macro_page(3, 7)
    elseif gsList:contains(player.equipment.main) then
		set_macro_page(1, 7)
    else
		set_macro_page(1, 7)
    end
end

function set_lockstyle()
    send_command('wait 2; input /lockstyleset ' .. lockstyleset)
end