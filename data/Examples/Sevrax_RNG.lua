-- Owner: AlanWarren, aka ~ Orestes 
-- current file resides @ https://github.com/AlanWarren/gearswap
--[[ 
 === Notes ===
 -- Set format is as follows:
    sets.midcast.RA.[CustomClass][CombatForm][CombatWeapon][RangedMode][CustomRangedGroup]
    ex: sets.midcast.RA.SAM.Bow.Mid.SamRoll = {}
    you can also append CustomRangedGroups to each other
 
 -- These are the available sets per category
 -- CustomClass = SAM
 -- CombatForm = DW
 -- CombatWeapon = weapon name, ex: Yoichinoyumi  (you can make new sets for any ranged weapon)
 -- RangedMode = Normal, Mid, Acc
 -- CustomRangedGroup = SamRoll
 -- SamRoll is applied automatically whenever you have the roll on you. 
 -- SAM is used when you're RNG/SAM 
 * Auto RA
 - You can use the built in hotkey (CTRL -) or create a macro. (like below) Note "AutoRA" is case sensitive
   /console gs c toggle AutoRA
 - You have to shoot once after toggling autora for it to begin.
 - AutoRA will use weaponskills @ 1000TP, depending on which weapon you're using. However, this will only
   work if you set gear.Gun or gear.Bow to the weapon you're using. You also have to specify the desired
   ws it should use, with the settings auto_gun_ws and auto_bow_ws. 
 
 === Helpful Commands ===
    //gs validate
    //gs showswaps
    //gs debugmode
--]]
 
function get_sets()
        mote_include_version = 2
        -- Load and initialize the include file.
        include('Mote-Include.lua')
			require('nest')
end

-- setup vars that are user-independent.
function job_setup()
end
 
-- setup vars that are user-dependent. 
function user_setup()
        -- Options: Override default values
        state.OffenseMode:options('Melee', 'Normal')
        state.RangedMode:options('Normal', 'Acc')
        state.HybridMode:options('Normal', 'PDT')
        state.IdleMode:options('Normal', 'PDT')
        state.WeaponskillMode:options('Normal', 'Acc')
        state.PhysicalDefenseMode:options('PDT')
        state.MagicalDefenseMode:options('MDT')
 
        state.Buff.Barrage = buffactive.Barrage or false
        state.Buff.Camouflage = buffactive.Camouflage or false
        state.Buff.Overkill = buffactive.Overkill or false

        -- settings
        state.CapacityMode = M(false, 'Capacity Point Mantle')

        state.AutoRA = M{['description']='Auto RA', 'Normal', 'Shoot', 'WS' }
		
        auto_gun_ws = "Trueflight"
		
        auto_bow_ws = "Apex Arrow"

        gear.Gun = "Gastraphetes"
					--Fomalhaut
					--Gastraphetes
					--Anarchy +2
		
        gear.Bow = "Fail-Not"
       
        rng_sub_weapons = S{'Kustawi +1', 'Malevolence', 'Perun +1', 'Atoyac'}
        
        sam_sj = player.sub_job == 'SAM' or false

      	DefaultAmmo = {[gear.Bow] = "Chrono arrow", [gear.Gun] = "Quelling Bolt"}  --Quelling Bolt
	    U_Shot_Ammo = {[gear.Bow] = "Chrono arrow", [gear.Gun] = "Chrono bullet"} 

        get_combat_form()
        get_custom_ranged_groups()
        select_default_macro_book()

        send_command('bind != gs c toggle CapacityMode')
        send_command('bind !f9f9 gs c cycle RangedMode')
        send_command('bind f9 gs c cycle OffenseMode')
        send_command('bind ^f9 gs c cycle HybridMode')
        send_command('bind ^] gs c cycle WeaponskillMode')
        send_command('bind ^- gs c cycle AutoRA')
        send_command('bind ^[ input /lockstyle on')
        send_command('bind ![ input /lockstyle off')
        
        -- Testing 
        --windower.register_event('incoming text', detect_cor_rolls)
end

-- Called when this job file is unloaded (eg: job change)
function file_unload()
    send_command('unbind f9')
    send_command('unbind ^f9')
    send_command('unbind ^[')
    send_command('unbind ![')
    send_command('unbind !=')
    send_command('unbind ^=')
    send_command('unbind @=')
    send_command('unbind ^-')
end
 
function init_gear_sets()
        -- Misc. Job Ability precasts
        sets.precast.JA['Bounty Shot'] = {hands=""}
        sets.precast.JA['Double Shot'] = {head="Amini Gapette +1"}
        sets.precast.JA['Camouflage'] = {body="Orion Jerkin +1"}
        sets.precast.JA['Sharpshot'] = {legs="Orion Braccae +1"}
        sets.precast.JA['Velocity Shot'] = {body="Amini Caban +1"}
        sets.precast.JA['Scavenge'] = {feet=""}
		sets.precast.Trueflight = {waist="Eschan Stone"}
		sets.precast.Wildfire = {waist="Eschan Stone"}

        sets.CapacityMantle = {back={ name="Mecisto. Mantle", augments={'Cap. Point+46%','HP+28','DEF+8',}},}

        sets.precast.JA['Eagle Eye Shot'] = {
            head="Mummu Bonnet +1",
			body="Mummu Jacket +1",
			hands={ name="Adhemar Wristbands", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			legs={ name="Adhemar Kecks", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			feet="Thereoid Greaves",
			neck="Combatant's Torque",
			waist="Kwahu Kachina Belt",
			left_ear="Telos Earring",
			right_ear="Enervating Earring",
			left_ring="Hajduk Ring",
			right_ring="Longshot Ring",
			back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','"Store TP"+10',}},
			}

        sets.precast.JA['Eagle Eye Shot'].Acc = {
            head="Mummu Bonnet +1",
			body="Mummu Jacket +1",
			hands={ name="Adhemar Wristbands", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			legs={ name="Adhemar Kecks", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			feet="Thereoid Greaves",
			neck="Combatant's Torque",
			waist="Kwahu Kachina Belt",
			left_ear="Telos Earring",
			right_ear="Enervating Earring",
			left_ring="Hajduk Ring",
			right_ring="Longshot Ring",
			back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','"Store TP"+10',}},
			}

        sets.precast.FC = {
            head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
			body={ name="Taeon Tabard", augments={'Accuracy+17','"Fast Cast"+3','Crit. hit damage +2%',}},
			hands={ name="Leyline Gloves", augments={'Accuracy+12','Mag. Acc.+14','"Mag.Atk.Bns."+15','"Fast Cast"+2',}},
			legs={ name="Taeon Tights", augments={'Accuracy+18 Attack+18','"Fast Cast"+3','STR+6 AGI+6',}},
			feet={ name="Carmine Greaves +1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}},
			neck="Voltsurge Torque",
			left_ear="Loquac. Earring",
			right_ear="Enchntr. Earring +1",
			left_ring="Weather. Ring",
			right_ring="Prolix Ring",
			}
			
        sets.precast.FC.Utsusemi = set_combine(sets.precast.FC, { neck="Magoraga Beads" })
        
        sets.idle = {
			head="Orion Beret +3",
			body="Meg. Cuirie +2",
			hands="Meg. Gloves +2",
			legs="Meg. Chausses +2",
			feet={ name="Carmine Greaves +1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}},
			neck="Loricate Torque +1",
			waist="Flume Belt",
			left_ear="Infused Earring",
			right_ear="Odnowa Earring",
			left_ring="Patricius Ring",
			right_ring="Defending Ring",
			back="Moonbeam Cape",
			}

        sets.idle.Regen = {
			head="Orion Beret +3",
			body="Meg. Cuirie +2",
			hands="Meg. Gloves +2",
			legs="Meg. Chausses +2",
			feet={ name="Carmine Greaves +1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}},
			neck="Loricate Torque +1",
			waist="Flume Belt",
			left_ear="Infused Earring",
			right_ear="Odnowa Earring",
			left_ring="Patricius Ring",
			right_ring="Defending Ring",
			back="Moonbeam Cape",
			}

        sets.idle.PDT = {
			head="Orion Beret +3",
			body="Meg. Cuirie +2",
			hands="Meg. Gloves +2",
			legs="Meg. Chausses +2",
			feet={ name="Carmine Greaves +1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}},
			neck="Loricate Torque +1",
			waist="Flume Belt",
			left_ear="Infused Earring",
			right_ear="Odnowa Earring",
			left_ring="Patricius Ring",
			right_ring="Defending Ring",
			back="Moonbeam Cape",
			}

        sets.idle.Town = {
			head="Orion Beret +3",
			body="Meg. Cuirie +2",
			hands="Meg. Gloves +2",
			legs="Meg. Chausses +2",
			feet={ name="Carmine Greaves +1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}},
			neck="Loricate Torque +1",
			waist="Flume Belt",
			left_ear="Infused Earring",
			right_ear="Odnowa Earring",
			left_ring="Patricius Ring",
			right_ring="Defending Ring",
			back="Moonbeam Cape",
			}
 
        -- Engaged sets
        sets.engaged =  {
            head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}},
			body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
			hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
			legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
			feet={ name="Herculean Boots", augments={'"Triple Atk."+4','STR+3','Accuracy+15','Attack+13',}},
			neck="Combatant's Torque",
			waist="Kentarch Belt +1",
			left_ear="Telos Earring",
			right_ear="Mache Earring",
			left_ring="Hetairoi Ring",
			right_ring="Epona's Ring",
			back={ name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
			}
			
        sets.engaged.PDT = {
            head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}},
			body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
			hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
			legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
			feet={ name="Herculean Boots", augments={'"Triple Atk."+4','STR+3','Accuracy+15','Attack+13',}},
			neck="Loricate Torque +1",
			waist="Kentarch Belt +1",
			left_ear="Telos Earring",
			right_ear="Mache Earring",
			left_ring="Hetairoi Ring",
			right_ring="Epona's Ring",
			back={ name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
			}
			
        sets.engaged.Bow = set_combine(sets.engaged, {})

		sets.engaged.Gun = set_combine(sets.engaged, {})
		
        sets.engaged.Melee = {
            head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}},
			body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
			hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
			legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
			feet={ name="Herculean Boots", augments={'"Triple Atk."+4','STR+3','Accuracy+15','Attack+13',}},
			neck="Combatant's Torque",
			waist="Kentarch Belt +1",
			left_ear="Telos Earring",
			right_ear="Suppanomimi",
			left_ring="Hetairoi Ring",
			right_ring="Epona's Ring",
			back={ name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
			}
			
        sets.engaged.Bow.Melee = sets.engaged.Melee
		
		sets.engaged.Gun.Melee = sets.engaged.Melee

        sets.engaged.Melee.PDT = {
            head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}},
			body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
			hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
			legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
			feet={ name="Herculean Boots", augments={'"Triple Atk."+4','STR+3','Accuracy+15','Attack+13',}},
			neck="Combatant's Torque",
			waist="Kentarch Belt +1",
			left_ear="Telos Earring",
			right_ear="Mache Earring",
			left_ring="Hetairoi Ring",
			right_ring="Epona's Ring",
			back={ name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
			}

        sets.engaged.DW = {
            head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}},
			body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
			hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
			legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
			feet={ name="Herculean Boots", augments={'"Triple Atk."+4','STR+3','Accuracy+15','Attack+13',}},
			neck="Combatant's Torque",
			waist="Kentarch Belt +1",
			left_ear="Telos Earring",
			right_ear="Suppanomimi",
			left_ring="Hetairoi Ring",
			right_ring="Epona's Ring",
			back={ name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
			}

        sets.engaged.DW.Melee = {
            head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}},
			body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
			hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
			legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
			feet={ name="Herculean Boots", augments={'"Triple Atk."+4','STR+3','Accuracy+15','Attack+13',}},
			neck="Combatant's Torque",
			waist="Kentarch Belt +1",
			left_ear="Telos Earring",
			right_ear="Mache Earring",
			left_ring="Hetairoi Ring",
			right_ring="Epona's Ring",
			back={ name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
			}

        ------------------------------------------------------------------
        -- Preshot / Snapshot sets
        ------------------------------------------------------------------
        sets.precast.RA = {
            head="Amini Gapette +1",
			body="Amini Caban +1",
			hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
			legs={ name="Adhemar Kecks", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			feet="Meg. Jam. +2",
			waist="Impulse Belt",
			back={ name="Belenus's Cape", augments={'"Snapshot"+10',}},
			}
        
        ------------------------------------------------------------------
        -- Default Base Gear Sets for Ranged Attacks. Geared for Gun
        ------------------------------------------------------------------
        sets.midcast.RA = { 
            head="Arcadian Beret +1",
			body="Meg. Cuirie +2",
			hands={ name="Adhemar Wristbands", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			legs={ name="Adhemar Kecks", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			feet={ name="Pursuer's Gaiters", augments={'Rng.Acc.+10','"Rapid Shot"+10','"Recycle"+15',}},
			neck="Combatant's Torque",
			waist="Yemaya Belt",
			left_ear="Telos Earring",
			right_ear="Enervating Earring",
			left_ring="Petrov Ring",
			right_ring="Rajas Ring",
			back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','"Store TP"+10',}},
			}
			
		sets.buff.DoubleShot = {
			head="Oshosi Mask",
			body="Oshosi Vest",
			hands="Oshosi Gloves",
			legs="Oshosi Trousers",
			feet="Oshosi Leggings",
			neck="Combatant's Torque",
			waist="Yemaya Belt",
			left_ear="Enervating Earring",
			right_ear="Telos Earring",
			left_ring="Hajduk Ring",
			right_ring="Ilabrat Ring",
			back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','"Store TP"+10',}},
			}
		
        sets.midcast.RA.Acc = { 
            head="Orion Beret +3",
			body="Mummu Jacket +1",
			hands={ name="Adhemar Wristbands", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			legs={ name="Adhemar Kecks", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			feet={ name="Pursuer's Gaiters", augments={'Rng.Acc.+10','"Rapid Shot"+10','"Recycle"+15',}},
			neck="Combatant's Torque",
			waist="Kwahu Kachina Belt",
			left_ear="Telos Earring",
			right_ear="Enervating Earring",
			left_ring="Hajduk Ring",
			right_ring="Longshot Ring",
			back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','"Store TP"+10',}},
			}
    
        -- Samurai Roll sets 
        sets.midcast.RA.SamRoll = { 
            head="Arcadian Beret +1",
			body="Meg. Cuirie +2",
			hands={ name="Adhemar Wristbands", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			legs={ name="Adhemar Kecks", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			feet={ name="Pursuer's Gaiters", augments={'Rng.Acc.+10','"Rapid Shot"+10','"Recycle"+15',}},
			neck="Combatant's Torque",
			waist="Kwahu Kachina Belt",
			left_ear="Telos Earring",
			right_ear="Enervating Earring",
			left_ring="Petrov Ring",
			right_ring="Rajas Ring",
			back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','"Store TP"+10',}},
			}
		
        sets.midcast.RA.Acc.SamRoll = { 
            head="Orion Beret +3",
			body="Mummu Jacket +1",
			hands={ name="Adhemar Wristbands", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			legs={ name="Adhemar Kecks", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			feet={ name="Pursuer's Gaiters", augments={'Rng.Acc.+10','"Rapid Shot"+10','"Recycle"+15',}},
			neck="Combatant's Torque",
			waist="Kwahu Kachina Belt",
			left_ear="Telos Earring",
			right_ear="Enervating Earring",
			left_ring="Hajduk Ring",
			right_ring="Longshot Ring",
			back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','"Store TP"+10',}},
			}
        
        -- SAM Subjob
        sets.midcast.RA.SAM = { 
            head="Arcadian Beret +1",
			body="Mummu Jacket +1",
			hands={ name="Adhemar Wristbands", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			legs={ name="Adhemar Kecks", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			feet={ name="Pursuer's Gaiters", augments={'Rng.Acc.+10','"Rapid Shot"+10','"Recycle"+15',}},
			neck="Combatant's Torque",
			waist="Kwahu Kachina Belt",
			left_ear="Telos Earring",
			right_ear="Enervating Earring",
			left_ring="Petrov Ring",
			right_ring="Rajas Ring",
			back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','"Store TP"+10',}},
			}
			
        sets.midcast.RA.SAM.Acc = { 
            head="Orion Beret +3",
			body="Mummu Jacket +1",
			hands={ name="Adhemar Wristbands", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			legs={ name="Adhemar Kecks", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			feet={ name="Pursuer's Gaiters", augments={'Rng.Acc.+10','"Rapid Shot"+10','"Recycle"+15',}},
			neck="Combatant's Torque",
			waist="Kwahu Kachina Belt",
			left_ear="Telos Earring",
			right_ear="Enervating Earring",
			left_ring="Hajduk Ring",
			right_ring="Longshot Ring",
			back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','"Store TP"+10',}},
			}

        -- Samurai Roll for /sam, assume we're using a staff
        sets.midcast.RA.SAM.SamRoll = { 
            head="Orion Beret +3",
			body="Mummu Jacket +1",
			hands={ name="Adhemar Wristbands", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			legs={ name="Adhemar Kecks", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			feet={ name="Pursuer's Gaiters", augments={'Rng.Acc.+10','"Rapid Shot"+10','"Recycle"+15',}},
			neck="Combatant's Torque",
			waist="Kwahu Kachina Belt",
			left_ear="Telos Earring",
			right_ear="Enervating Earring",
			left_ring="Hajduk Ring",
			right_ring="Longshot Ring",
			back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','"Store TP"+10',}},
			}

        sets.midcast.RA.SAM.Acc.SamRoll = { 
            head="Orion Beret +3",
			body="Mummu Jacket +1",
			hands={ name="Adhemar Wristbands", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			legs={ name="Adhemar Kecks", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			feet={ name="Pursuer's Gaiters", augments={'Rng.Acc.+10','"Rapid Shot"+10','"Recycle"+15',}},
			neck="Combatant's Torque",
			waist="Kwahu Kachina Belt",
			left_ear="Telos Earring",
			right_ear="Enervating Earring",
			left_ring="Hajduk Ring",
			right_ring="Longshot Ring",
			back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','"Store TP"+10',}},
			}

        -- Bow base set.
        sets.midcast.RA.Bow = { 
            head="Arcadian Beret +1",
			body="Mummu Jacket +1",
			hands={ name="Adhemar Wristbands", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			legs={ name="Adhemar Kecks", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			feet={ name="Pursuer's Gaiters", augments={'Rng.Acc.+10','"Rapid Shot"+10','"Recycle"+15',}},
			neck="Combatant's Torque",
			waist="Kwahu Kachina Belt",
			left_ear="Telos Earring",
			right_ear="Enervating Earring",
			left_ring="Petrov Ring",
			right_ring="Rajas Ring",
			back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','"Store TP"+10',}},
			}
			
        sets.midcast.RA.Bow.Acc = { 
            head="Orion Beret +3",
			body="Mummu Jacket +1",
			hands={ name="Adhemar Wristbands", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			legs={ name="Adhemar Kecks", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			feet={ name="Pursuer's Gaiters", augments={'Rng.Acc.+10','"Rapid Shot"+10','"Recycle"+15',}},
			neck="Combatant's Torque",
			waist="Kwahu Kachina Belt",
			left_ear="Telos Earring",
			right_ear="Enervating Earring",
			left_ring="Hajduk Ring",
			right_ring="Longshot Ring",
			back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','"Store TP"+10',}},
			}
       
        -- Bow Sam roll
        sets.midcast.RA.Bow.SamRoll = { 
            head="Arcadian Beret +1",
			body="Mummu Jacket +1",
			hands={ name="Adhemar Wristbands", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			legs={ name="Adhemar Kecks", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			feet={ name="Pursuer's Gaiters", augments={'Rng.Acc.+10','"Rapid Shot"+10','"Recycle"+15',}},
			neck="Combatant's Torque",
			waist="Kwahu Kachina Belt",
			left_ear="Telos Earring",
			right_ear="Enervating Earring",
			left_ring="Petrov Ring",
			right_ring="Rajas Ring",
			back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','"Store TP"+10',}},
			}
			
        sets.midcast.RA.Bow.Acc.SamRoll = { 
            head="Orion Beret +3",
			body="Mummu Jacket +1",
			hands={ name="Adhemar Wristbands", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			legs={ name="Adhemar Kecks", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			feet={ name="Pursuer's Gaiters", augments={'Rng.Acc.+10','"Rapid Shot"+10','"Recycle"+15',}},
			neck="Combatant's Torque",
			waist="Kwahu Kachina Belt",
			left_ear="Telos Earring",
			right_ear="Enervating Earring",
			left_ring="Hajduk Ring",
			right_ring="Longshot Ring",
			back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','"Store TP"+10',}},
			}
        
        -- Sam SJ / Bow 
        sets.midcast.RA.SAM.Bow = { 
            head="Arcadian Beret +1",
			body="Mummu Jacket +1",
			hands={ name="Adhemar Wristbands", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			legs={ name="Adhemar Kecks", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			feet={ name="Pursuer's Gaiters", augments={'Rng.Acc.+10','"Rapid Shot"+10','"Recycle"+15',}},
			neck="Combatant's Torque",
			waist="Kwahu Kachina Belt",
			left_ear="Telos Earring",
			right_ear="Enervating Earring",
			left_ring="Petrov Ring",
			right_ring="Rajas Ring",
			back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','"Store TP"+10',}},
			}
			
        sets.midcast.RA.SAM.Bow.Acc = { 
            head="Orion Beret +3",
			body="Mummu Jacket +1",
			hands={ name="Adhemar Wristbands", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			legs={ name="Adhemar Kecks", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			feet={ name="Pursuer's Gaiters", augments={'Rng.Acc.+10','"Rapid Shot"+10','"Recycle"+15',}},
			neck="Combatant's Torque",
			waist="Kwahu Kachina Belt",
			left_ear="Telos Earring",
			right_ear="Enervating Earring",
			left_ring="Hajduk Ring",
			right_ring="Longshot Ring",
			back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','"Store TP"+10',}},
			}
			
        -- Sam SJ / Bow / Sam's Roll
        sets.midcast.RA.SAM.Bow.SamRoll = { 
            head="Arcadian Beret +1",
			body="Mummu Jacket +1",
			hands={ name="Adhemar Wristbands", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			legs={ name="Adhemar Kecks", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			feet={ name="Pursuer's Gaiters", augments={'Rng.Acc.+10','"Rapid Shot"+10','"Recycle"+15',}},
			neck="Combatant's Torque",
			waist="Kwahu Kachina Belt",
			left_ear="Telos Earring",
			right_ear="Enervating Earring",
			left_ring="Petrov Ring",
			right_ring="Rajas Ring",
			back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','"Store TP"+10',}},
			}

        sets.midcast.RA.SAM.Bow.Acc.SamRoll = { 
            head="Orion Beret +3",
			body="Mummu Jacket +1",
			hands={ name="Adhemar Wristbands", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			legs={ name="Adhemar Kecks", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			feet={ name="Pursuer's Gaiters", augments={'Rng.Acc.+10','"Rapid Shot"+10','"Recycle"+15',}},
			neck="Combatant's Torque",
			waist="Kwahu Kachina Belt",
			left_ear="Telos Earring",
			right_ear="Enervating Earring",
			left_ring="Hajduk Ring",
			right_ring="Longshot Ring",
			back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','"Store TP"+10',}},
			}

        -- Weaponskill sets  
        sets.precast.WS = {
            head="Mummu Bonnet +1",
			body="Abnoba Kaftan",
			hands="Meg. Gloves +2",
			legs={ name="Herculean Trousers", augments={'Weapon skill damage +2%','STR+10','Attack+13',}},
			feet="Thereoid Greaves",
			neck="Fotia Gorget",
			waist="Fotia Belt",
			left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
			right_ear="Ishvara Earring",
			left_ring="Petrov Ring",
			right_ring="Rajas Ring",
			back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','"Store TP"+10',}},
			}
		
        sets.precast.WS.Acc = {
            head="Mummu Bonnet +1",
			body="Abnoba Kaftan",
			hands="Meg. Gloves +2",
			legs={ name="Herculean Trousers", augments={'Weapon skill damage +2%','STR+10','Attack+13',}},
			feet="Thereoid Greaves",
			neck="Fotia Gorget",
			waist="Fotia Belt",
			left_ear="Telos Earring",
			right_ear="Ishvara Earring",
			left_ring="Hajduk Ring",
			right_ring="Longshot Ring",
			back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','"Store TP"+10',}},
			}

	sets.precast.WS['Split Shot'] = {
			head="Orion Beret +3",
			body="Mummu Jacket +1",
			hands="Meg. Gloves +2",
			legs={ name="Adhemar Kecks", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			feet={ name="Pursuer's Gaiters", augments={'Rng.Acc.+10','"Rapid Shot"+10','"Recycle"+15',}},
			neck="Fotia Gorget",
			waist="Fotia Belt",
			left_ear="Enervating Earring",
			right_ear="Telos Earring",
			left_ring="Hajduk Ring",
			right_ring="Rajas Ring",
			back={ name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
			}
			
	sets.precast.WS['Sniper Shot'] = {
			head="Orion Beret +3",
			body="Mummu Jacket +1",
			hands="Meg. Gloves +2",
			legs={ name="Adhemar Kecks", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			feet={ name="Pursuer's Gaiters", augments={'Rng.Acc.+10','"Rapid Shot"+10','"Recycle"+15',}},
			neck="Fotia Gorget",
			waist="Fotia Belt",
			left_ear="Enervating Earring",
			right_ear="Telos Earring",
			left_ring="Hajduk Ring",
			right_ring="Rajas Ring",
			back={ name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
			}
			
	sets.precast.WS['Detonator'] = {
			head="Orion Beret +3",
			body="Mummu Jacket +1",
			hands="Meg. Gloves +2",
			legs={ name="Adhemar Kecks", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			feet={ name="Pursuer's Gaiters", augments={'Rng.Acc.+10','"Rapid Shot"+10','"Recycle"+15',}},
			neck="Fotia Gorget",
			waist="Fotia Belt",
			left_ear="Enervating Earring",
			right_ear="Telos Earring",
			left_ring="Hajduk Ring",
			right_ring="Rajas Ring",
			back={ name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
			}
			
        -- WILDFIRE
        sets.Wildfire = {
            head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','STR+9','"Mag.Atk.Bns."+6',}},
			body={ name="Samnuha Coat", augments={'Mag. Acc.+14','"Mag.Atk.Bns."+13','"Fast Cast"+4','"Dual Wield"+3',}},
			hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
			legs={ name="Herculean Trousers", augments={'CHR+6','STR+10','Magic burst dmg.+5%','Accuracy+13 Attack+13','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
			feet={ name="Herculean Boots", augments={'INT+6','"Mag.Atk.Bns."+24','Crit.hit rate+1','Mag. Acc.+17 "Mag.Atk.Bns."+17',}},
			neck="Sanctity Necklace",
			waist="Eschan Stone",
			left_ear="Friomisi Earring",
			right_ear="Novio Earring",
			left_ring="Fenrir Ring +1",
			right_ring="Arvina Ringlet +1",
			back={ name="Belenus's Cape", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','Magic Damage +10','"Mag.Atk.Bns."+10',}},
			}

        sets.precast.WS['Wildfire'] = set_combine(sets.precast.WS, sets.Wildfire)
        sets.precast.WS['Wildfire'].Acc = set_combine(sets.precast.WS.Acc, sets.Wildfire)
        
        sets.Trueflight = {
            head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','STR+9','"Mag.Atk.Bns."+6',}},
			body={ name="Samnuha Coat", augments={'Mag. Acc.+14','"Mag.Atk.Bns."+13','"Fast Cast"+4','"Dual Wield"+3',}},
			hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
			legs={ name="Herculean Trousers", augments={'CHR+6','STR+10','Magic burst dmg.+5%','Accuracy+13 Attack+13','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
			feet={ name="Herculean Boots", augments={'INT+6','"Mag.Atk.Bns."+24','Crit.hit rate+1','Mag. Acc.+17 "Mag.Atk.Bns."+17',}},
			neck="Sanctity Necklace",
			waist="Eschan Stone",
			left_ear="Friomisi Earring",
			right_ear="Novio Earring",
			left_ring="Weatherspoon Ring",
			right_ring="Arvina Ringlet +1",
			back={ name="Belenus's Cape", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','Magic Damage +10','"Mag.Atk.Bns."+10',}},
			}
			
        sets.precast.WS['Trueflight'] = set_combine(sets.precast.WS, sets.Trueflight)
        sets.precast.WS['Trueflight'].Acc = set_combine(sets.precast.WS.Acc, sets.Trueflight)

        -- CORONACH
        sets.Coronach = {
            head="Orion Beret +3",
			body="Abnoba Kaftan",
			hands="Meg. Gloves +2",
			legs={ name="Herculean Trousers", augments={'Weapon skill damage +2%','STR+10','Attack+13',}},
			feet="Thereoid Greaves",
			neck="Fotia Gorget",
			waist="Fotia Belt",
			left_ear="Telos Earring",
			right_ear="Ishvara Earring",
			left_ring="Hajduk Ring",
			right_ring="Longshot Ring",
			back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','"Store TP"+10',}},
			}
			
        sets.precast.WS['Coronach'] = set_combine(sets.precast.WS, sets.Coronach)
        sets.precast.WS['Coronach'].Acc = set_combine(sets.precast.WS.Acc, sets.Coronach)

        sets.precast.WS['Coronach'].SAM = {
            head="Orion Beret +3",
			body="Abnoba Kaftan",
			hands="Meg. Gloves +2",
			legs={ name="Herculean Trousers", augments={'Weapon skill damage +2%','STR+10','Attack+13',}},
			feet="Thereoid Greaves",
			neck="Fotia Gorget",
			waist="Fotia Belt",
			left_ear="Telos Earring",
			right_ear="Ishvara Earring",
			left_ring="Hajduk Ring",
			right_ring="Longshot Ring",
			back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','"Store TP"+10',}},
			}

        -- LAST STAND
        sets.LastStand = {
            head="Orion Beret +3",
			body={ name="Pursuer's Doublet", augments={'HP+50','Crit. hit rate+4%','"Snapshot"+6',}},
			hands="Meg. Gloves +2",
			legs={ name="Adhemar Kecks", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			feet={ name="Pursuer's Gaiters", augments={'Rng.Acc.+10','"Rapid Shot"+10','"Recycle"+15',}},
			neck="Fotia Gorget",
			waist="Fotia Belt",
			left_ear="Telos Earring",
			right_ear="Ishvara Earring",
			left_ring="Hajduk Ring",
			right_ring="Longshot Ring",
			back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','"Store TP"+10',}},
			}
			
        sets.precast.WS['Last Stand'] = set_combine(sets.precast.WS, sets.LastStand)
        sets.precast.WS['Last Stand'].Acc = set_combine(sets.precast.WS.Acc, sets.LastStand)

        sets.precast.WS['Last Stand'].SAM = {
            head="Orion Beret +3",
			body={ name="Pursuer's Doublet", augments={'HP+50','Crit. hit rate+4%','"Snapshot"+6',}},
			hands="Meg. Gloves +2",
			legs={ name="Adhemar Kecks", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			feet={ name="Pursuer's Gaiters", augments={'Rng.Acc.+10','"Rapid Shot"+10','"Recycle"+15',}},
			neck="Fotia Gorget",
			waist="Fotia Belt",
			left_ear="Telos Earring",
			right_ear="Ishvara Earring",
			left_ring="Hajduk Ring",
			right_ring="Longshot Ring",
			back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','"Store TP"+10',}},
			}
        
        -- DETONATOR
        sets.Detonator = {
            head="Orion Beret +3",
			body={ name="Pursuer's Doublet", augments={'HP+50','Crit. hit rate+4%','"Snapshot"+6',}},
			hands="Meg. Gloves +2",
			legs={ name="Adhemar Kecks", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			feet={ name="Pursuer's Gaiters", augments={'Rng.Acc.+10','"Rapid Shot"+10','"Recycle"+15',}},
			neck="Fotia Gorget",
			waist="Fotia Belt",
			left_ear="Telos Earring",
			right_ear="Ishvara Earring",
			left_ring="Hajduk Ring",
			right_ring="Longshot Ring",
			back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','"Store TP"+10',}},
			}
			
        sets.precast.WS['Detonator'] = set_combine(sets.precast.WS, sets.Detonator)
        sets.precast.WS['Detonator'].Acc = set_combine(sets.precast.WS.Acc, sets.Detonator)
        
        -- SLUG SHOT
        sets.SlugShot = {
			head="Orion Beret +3",
			body={ name="Pursuer's Doublet", augments={'HP+50','Crit. hit rate+4%','"Snapshot"+6',}},
			hands="Meg. Gloves +2",
			legs={ name="Adhemar Kecks", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			feet={ name="Pursuer's Gaiters", augments={'Rng.Acc.+10','"Rapid Shot"+10','"Recycle"+15',}},
			neck="Fotia Gorget",
			waist="Fotia Belt",
			left_ear="Telos Earring",
			right_ear="Ishvara Earring",
			left_ring="Hajduk Ring",
			right_ring="Longshot Ring",
			back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','"Store TP"+10',}},
			}
			
        sets.precast.WS['Slug Shot'] = set_combine(sets.precast.WS, sets.SlugShot)
        sets.precast.WS['Slug Shot'].Acc = set_combine(sets.precast.WS.Acc, sets.SlugShot)
        
        sets.precast.WS['Heavy Shot'] = set_combine(sets.precast.WS, sets.SlugShot)
        sets.precast.WS['Heavy Shot'].Acc = set_combine(sets.precast.WS.Acc, sets.SlugShot)

        -- NAMAS
        sets.Namas = {
			head="Mummu Bonnet +1",
			body={ name="Pursuer's Doublet", augments={'HP+50','Crit. hit rate+4%','"Snapshot"+6',}},
			hands="Meg. Gloves +2",
			legs={ name="Adhemar Kecks", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			feet={ name="Pursuer's Gaiters", augments={'Rng.Acc.+10','"Rapid Shot"+10','"Recycle"+15',}},
			neck="Fotia Gorget",
			waist="Fotia Belt",
			left_ear="Telos Earring",
			right_ear="Ishvara Earring",
			left_ring="Hajduk Ring",
			right_ring="Longshot Ring",
			back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','"Store TP"+10',}},
			}
			
        sets.precast.WS['Namas Arrow'] = set_combine(sets.precast.WS, sets.Namas)
        sets.precast.WS['Namas Arrow'].Acc = set_combine(sets.precast.WS.Acc, sets.Namas)
        
        sets.precast.WS['Namas Arrow'].SAM = {
			head="Mummu Bonnet +1",
			body={ name="Pursuer's Doublet", augments={'HP+50','Crit. hit rate+4%','"Snapshot"+6',}},
			hands="Meg. Gloves +2",
			legs={ name="Adhemar Kecks", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			feet={ name="Pursuer's Gaiters", augments={'Rng.Acc.+10','"Rapid Shot"+10','"Recycle"+15',}},
			neck="Fotia Gorget",
			waist="Fotia Belt",
			left_ear="Telos Earring",
			right_ear="Ishvara Earring",
			left_ring="Hajduk Ring",
			right_ring="Longshot Ring",
			back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','"Store TP"+10',}},
			}

        -- JISHNUS
        sets.Jishnus = {
			head="Mummu Bonnet +1",
			body={ name="Pursuer's Doublet", augments={'HP+50','Crit. hit rate+4%','"Snapshot"+6',}},
			hands="Meg. Gloves +2",
			legs={ name="Adhemar Kecks", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			feet={ name="Pursuer's Gaiters", augments={'Rng.Acc.+10','"Rapid Shot"+10','"Recycle"+15',}},
			neck="Fotia Gorget",
			waist="Fotia Belt",
			left_ear="Telos Earring",
			right_ear="Ishvara Earring",
			left_ring="Hajduk Ring",
			right_ring="Longshot Ring",
			back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','"Store TP"+10',}},
			}
			
        sets.precast.WS['Jishnu\'s Radiance'] = set_combine(sets.precast.WS, sets.Jishnus)
        sets.precast.WS['Jishnu\'s Radiance'].Acc = {
			head="Mummu Bonnet +1",
			body={ name="Pursuer's Doublet", augments={'HP+50','Crit. hit rate+4%','"Snapshot"+6',}},
			hands="Meg. Gloves +2",
			legs={ name="Adhemar Kecks", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			feet={ name="Pursuer's Gaiters", augments={'Rng.Acc.+10','"Rapid Shot"+10','"Recycle"+15',}},
			neck="Fotia Gorget",
			waist="Fotia Belt",
			left_ear="Telos Earring",
			right_ear="Ishvara Earring",
			left_ring="Hajduk Ring",
			right_ring="Longshot Ring",
			back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','"Store TP"+10',}},
			}

        -- SIDEWINDER
        sets.Sidewinder = {
			head="Mummu Bonnet +1",
			body={ name="Pursuer's Doublet", augments={'HP+50','Crit. hit rate+4%','"Snapshot"+6',}},
			hands="Meg. Gloves +2",
			legs={ name="Adhemar Kecks", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			feet={ name="Pursuer's Gaiters", augments={'Rng.Acc.+10','"Rapid Shot"+10','"Recycle"+15',}},
			neck="Fotia Gorget",
			waist="Fotia Belt",
			left_ear="Telos Earring",
			right_ear="Ishvara Earring",
			left_ring="Hajduk Ring",
			right_ring="Longshot Ring",
			back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','"Store TP"+10',}},
			}
			
        sets.precast.WS['Sidewinder'] = set_combine(sets.precast.WS, sets.Sidewinder)
        sets.precast.WS['Sidewinder'].Acc = set_combine(sets.precast.WS.Acc, sets.Sidewinder)

        sets.precast.WS['Refulgent Arrow'] = sets.precast.WS['Sidewinder']
        sets.precast.WS['Refulgent Arrow'].Acc = sets.precast.WS['Sidewinder'].Acc
       
        -- Resting sets
        sets.resting = {}
       
        -- Defense sets
        sets.defense.PDT = set_combine(sets.idle, {})
        sets.defense.MDT = set_combine(sets.idle, {})
        --sets.Kiting = {feet="Fajin Boots"}
       
        sets.buff.Barrage = { 
            head="Arcadian Beret +1",
			body="Mummu Jacket +1",
			hands="Orion Bracers +2",
			legs={ name="Adhemar Kecks", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			feet={ name="Pursuer's Gaiters", augments={'Rng.Acc.+10','"Rapid Shot"+10','"Recycle"+15',}},
			neck="Combatant's Torque",
			waist="Kwahu Kachina Belt",
			left_ear="Telos Earring",
			right_ear="Enervating Earring",
			left_ring="Petrov Ring",
			right_ring="Rajas Ring",
			back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','"Store TP"+10',}},
			}
			
        -- placeholder until I can get to it
        sets.buff.Barrage.Acc = sets.buff.Barrage

        sets.buff.Camouflage =  {body="Orion Jerkin +1"}
		
		sets.Obi = {waist="Hachirin-no-Obi"}
end

function job_pretarget(spell, action, spellMap, eventArgs)
    -- If autora enabled, use WS automatically at 100+ TP
    if spell.action_type == 'Ranged Attack' then
        if player.tp >= 1000 and state.AutoRA.value == 'WS' and not buffactive.amnesia then
            cancel_spell()
            use_weaponskill()
        end
    end
end 

-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
-- Set eventArgs.useMidcastGear to true if we want midcast gear equipped on precast.
 
function job_post_precast(spell, action, spellMap, eventArgs)
	if spell.type == 'WeaponSkill' then
		if spell.english == 'Trueflight' then
			if world.weather_element == 'Light' or world.day_element == 'Light' then
				equip(sets.Obi)
			end
		elseif spell.english == 'Wildfire' and (world.weather_element == 'Fire' or world.day_element == 'Fire') then
			equip(sets.Obi)
		end
		
        if state.Buff[spell.english] ~= nil then
            state.Buff[spell.english] = true
        end
        --add_to_chat(8, state.CombatForm)
        if sam_sj then
            classes.CustomClass = 'SAM'
        end

        if spell.action_type == 'Ranged Attack' and player.equipment.range == gear.Bow then
            state.CombatWeapon:set('Bow')
        end
        -- add support for RangedMode toggles to EES
        if spell.english == 'Eagle Eye Shot' then
            classes.JAMode = state.RangedMode.value
        end
        -- Safety checks for weaponskills 
        if spell.type:lower() == 'weaponskill' then
            if player.tp < 1000 then
                    eventArgs.cancel = true
                    return
            end
            if ((spell.target.distance >8 and spell.skill ~= 'Archery' and spell.skill ~= 'Marksmanship') or (spell.target.distance >21)) then
                -- Cancel Action if distance is too great, saving TP
                add_to_chat(122,"Outside WS Range! /Canceling")
                eventArgs.cancel = true
                return
            
            elseif state.DefenseMode.value ~= 'None' then
                -- Don't gearswap for weaponskills when Defense is on.
                eventArgs.handled = true
            end
        end
        -- Ammo checks
	    if spell.action_type == 'Ranged Attack' or
          (spell.type == 'WeaponSkill' and (spell.skill == 'Marksmanship' or spell.skill == 'Archery')) then
            check_ammo(spell, action, spellMap, eventArgs)
        end
	end
end
 
-- Run after the default precast() is done.
-- eventArgs is the same one used in job_precast, in case information needs to be persisted.
-- This is where you place gear swaps you want in precast but applied on top of the precast sets
function job_post_precast(spell, action, spellMap, eventArgs)
    if state.Buff.Camouflage then
        equip(sets.buff.Camouflage)
    elseif state.Buff.Overkill then
        equip(sets.Overkill.Preshot)
    end
    if spell.type == 'WeaponSkill' then
        if state.CapacityMode.value then
            equip(sets.CapacityMantle)
        end
    end
end
 
-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
function job_midcast(spell, action, spellMap, eventArgs)
    -- Barrage
    if spell.action_type == 'Ranged Attack' and state.Buff.Barrage then
        if state.RangedMode.current == 'Mid' then
            equip(sets.buff.Barrage.Mid)
        elseif state.RangedMode.current == 'Acc' then
            equip(sets.buff.Barrage.Acc)
        else
            equip(sets.buff.Barrage.Acc)
        end
        eventArgs.handled = true
    end
    if state.Buff.Camouflage then
        equip(sets.buff.Camouflage)
    end
    if state.Buff.Overkill then
        equip(sets.Overkill)
    end
    if spell.action_type == 'Ranged Attack' then
        if state.CapacityMode.value then
            equip(sets.CapacityMantle)
        end
    end
	if spell.action_type == 'Ranged Attack' and buffactive['Double Shot'] then
        equip(sets.buff.DoubleShot)
    end
end

 
-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
function job_aftercast(spell, action, spellMap, eventArgs)
    -- autora
    if state.AutoRA.value ~= 'Normal' then
        use_ra(spell)
    end

    if state.Buff[spell.name] ~= nil then
        state.Buff[spell.name] = not spell.interrupted or buffactive[spell.english]
    end

end
 
-- Called when a player gains or loses a buff.
-- buff == buff gained or lost
-- gain == true if the buff was gained, false if it was lost.
function job_buff_change(buff, gain)
    --if S{"courser's roll"}:contains(buff:lower()) then
    --if string.find(buff:lower(), 'samba') then

    if state.Buff[buff] ~= nil then
        state.Buff[buff] = gain
        handle_equipping_gear(player.status)
    end
    if buff == 'Velocity Shot' and gain then
        windower.send_command('wait 290;input /echo **VELOCITY SHOT** Wearing off in 10 Sec.')
    elseif buff == 'Double Shot' and gain then
        windower.send_command('wait 90;input /echo **DOUBLE SHOT OFF**;wait 90;input /echo **DOUBLE SHOT READY**')
    elseif buff == 'Decoy Shot' and gain then
        windower.send_command('wait 170;input /echo **DECOY SHOT** Wearing off in 10 Sec.];wait 120;input /echo **DECOY SHOT READY**')
    end

    if  buff == "Samurai Roll" or buff == "Courser's Roll" or string.find(buff:lower(), 'flurry') then
        classes.CustomRangedGroups:clear()

        if (buff == "Samurai Roll" and gain) or buffactive['Samurai Roll'] then
            classes.CustomRangedGroups:append('SamRoll')
        end
       
    end

    if buff == "Camouflage" then
        if gain then
            equip(sets.buff.Camouflage)
            disable('body')
        else
            enable('body')
        end
    end

    if buff == "Camouflage" or buff == "Overkill" or buff == "Samurai Roll" or buff == "Courser's Roll" then
        if not midaction() then
            handle_equipping_gear(player.status)
        end
    end
end
 
-- Called before the Include starts constructing melee/idle/resting sets.
-- Can customize state or custom melee class values at this point.
-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
function job_handle_equipping_gear(status, eventArgs)
    --select_earring()
end
 
function customize_idle_set(idleSet)
    if state.HybridMode.value == 'PDT' then
        state.IdleMode.value = 'PDT'
    elseif state.HybridMode.value ~= 'PDT' then
        state.IdleMode.value = 'Normal'
    end
	if state.Buff.Camouflage then
		idleSet = set_combine(idleSet, sets.buff.Camouflage)
	end
    if player.hpp < 90 then
        idleSet = set_combine(idleSet, sets.idle.Regen)
    end
    return idleSet
end
 
function customize_melee_set(meleeSet)
    if state.Buff.Camouflage then
    	meleeSet = set_combine(meleeSet, sets.buff.Camouflage)
    end
    if state.Buff.Overkill then
    	meleeSet = set_combine(meleeSet, sets.Overkill)
    end
    if state.CapacityMode.value then
        meleeSet = set_combine(meleeSet, sets.CapacityMantle)
    end
    return meleeSet
end
 
function job_status_change(newStatus, oldStatus, eventArgs)
    if newStatus == "Engaged" and player.equipment.range == gear.Bow then
         state.CombatWeapon:set('Bow')
    end

    if camo_active() then
        disable('body')
    else
        enable('body')
    end
end
 

-------------------------------------------------------------------------------------------------------------------
-- User code that supplements self-commands.
-------------------------------------------------------------------------------------------------------------------
 
-- Called for custom player commands.
function job_self_command(cmdParams, eventArgs)
end
 
-- Called by the 'update' self-command, for common needs.
-- Set eventArgs.handled to true if we don't want automatic equipping of gear.
function job_update(cmdParams, eventArgs)
    get_combat_form()
    get_custom_ranged_groups()
    sam_sj = player.sub_job == 'SAM' or false
    -- called here incase buff_change failed to update value
    state.Buff.Camouflage = buffactive.camouflage or false
    state.Buff.Overkill = buffactive.overkill or false

    if camo_active() then
        disable('body')
    else
        enable('body')
    end
end
 
---- Job-specific toggles.
--function job_toggle_state(field)
--    if field:lower() == 'autora' then
--        state.AutoRA = not state.AutoRA
--        return state.AutoRA
--    end
--end
 
---- Request job-specific mode lists.
---- Return the list, and the current value for the requested field.
--function job_get_option_modes(field)
--    if field:lower() == 'autora' then
--        return state.AutoRA
--    end
--end
-- 
---- Set job-specific mode values.
---- Return true if we recognize and set the requested field.
--function job_set_option_mode(field, val)
--    if field:lower() == 'autora' then
--        state.AutoRA = val
--        return true
--    end
--end
 
-- Set eventArgs.handled to true if we don't want the automatic display to be run.
function display_current_job_state(eventArgs)
    local msg = ''
    if state.AutoRA.value ~= 'Normal' then
        msg = '[Auto RA: ON]['..state.AutoRA.value..']'
    else
        msg = '[Auto RA: OFF]'
    end

    add_to_chat(122, 'Ranged: '..state.RangedMode.value..'/'..state.HybridMode.value..', WS: '..state.WeaponskillMode.value..', '..msg)
    
    eventArgs.handled = true
 
end
-- Special WS mode for Sam subjob
function get_custom_wsmode(spell, spellMap, ws_mode)
    if spell.skill == 'Archery' or spell.skill == 'Marksmanship' then
        if player.sub_job == 'SAM' then
            return 'SAM'
        end
    end
end
-------------------------------------------------------------------------------------------------------------------
-- Utility functions specific to this job.
-------------------------------------------------------------------------------------------------------------------
function get_combat_form()
    if S{'NIN', 'DNC'}:contains(player.sub_job) and rng_sub_weapons:contains(player.equipment.sub) then
        state.CombatForm:set("DW")
    else
        state.CombatForm:reset()
    end
end

function get_custom_ranged_groups()
	classes.CustomRangedGroups:clear()
    
    if buffactive['Samurai Roll'] then
        classes.CustomRangedGroups:append('SamRoll')
    end

end

function use_weaponskill()
    if player.equipment.range == gear.Bow then
        send_command('input /ws "'..auto_bow_ws..'" <t>')
    elseif player.equipment.range == gear.Gun then
        send_command('input /ws "'..auto_gun_ws..'" <t>')
    end
end

function job_state_change(stateField, newValue, oldValue)
    if stateField == 'Auto RA' then
        if newValue ~= 'Normal' then
            send_command('@wait 2.5; input /ra <t>')
        end
    end
end

function use_ra(spell)
    
    local delay = '2.2'
    -- BOW
    if player.equipment.range == gear.Bow then
        if spell.type:lower() == 'weaponskill' then
            delay = '2.25'
         else
             if buffactive["Courser's Roll"] then
                 delay = '0.7' -- MAKE ADJUSTMENT HERE
             elseif buffactive["Flurry II"] or buffactive.Overkill then
                 delay = '0.5'
             else
                delay = '1.05' -- MAKE ADJUSTMENT HERE
            end
        end
    else
    -- GUN 
        if spell.type:lower() == 'weaponskill' then
            delay = '2.25' 
        else
            if buffactive["Courser's Roll"] then
                delay = '0.7' -- MAKE ADJUSTMENT HERE
            elseif buffactive.Overkill or buffactive['Flurry II'] then
                delay = '0.5'
            else
                delay = '1.05' -- MAKE ADJUSTMENT HERE
            end
        end
    end
    send_command('@wait '..delay..'; input /ra <t>')
end

function camo_active()
    return state.Buff['Camouflage']
end
-- Check for proper ammo when shooting or weaponskilling
function check_ammo(spell, action, spellMap, eventArgs)
	-- Filter ammo checks depending on Unlimited Shot
	if state.Buff['Unlimited Shot'] then
		if player.equipment.ammo ~= U_Shot_Ammo[player.equipment.range] then
			if player.inventory[U_Shot_Ammo[player.equipment.range]] or player.wardrobe[U_Shot_Ammo[player.equipment.range]] then
				add_to_chat(122,"Unlimited Shot active. Using custom ammo.")
				equip({ammo=U_Shot_Ammo[player.equipment.range]})
			elseif player.inventory[DefaultAmmo[player.equipment.range]] or player.wardrobe[DefaultAmmo[player.equipment.range]] then
				add_to_chat(122,"Unlimited Shot active but no custom ammo available. Using default ammo.")
				equip({ammo=DefaultAmmo[player.equipment.range]})
			else
				add_to_chat(122,"Unlimited Shot active but unable to find any custom or default ammo.")
			end
		end
	else
		if player.equipment.ammo == U_Shot_Ammo[player.equipment.range] and player.equipment.ammo ~= DefaultAmmo[player.equipment.range] then
			if DefaultAmmo[player.equipment.range] then
				if player.inventory[DefaultAmmo[player.equipment.range]] then
					add_to_chat(122,"Unlimited Shot not active. Using Default Ammo")
					equip({ammo=DefaultAmmo[player.equipment.range]})
				else
					add_to_chat(122,"Default ammo unavailable.  Removing Unlimited Shot ammo.")
					equip({ammo=empty})
				end
			else
				add_to_chat(122,"Unable to determine default ammo for current weapon.  Removing Unlimited Shot ammo.")
				equip({ammo=empty})
			end
		elseif player.equipment.ammo == 'empty' then
			if DefaultAmmo[player.equipment.range] then
				if player.inventory[DefaultAmmo[player.equipment.range]] then
					add_to_chat(122,"Using Default Ammo")
					equip({ammo=DefaultAmmo[player.equipment.range]})
				else
					add_to_chat(122,"Default ammo unavailable.  Leaving empty.")
				end
			else
				add_to_chat(122,"Unable to determine default ammo for current weapon.  Leaving empty.")
			end
		elseif player.inventory[player.equipment.ammo].count < 15 then
			add_to_chat(122,"Ammo '"..player.inventory[player.equipment.ammo].shortname.."' running low ("..player.inventory[player.equipment.ammo].count..")")
		end
	end
end
-- Select default macro book on initial load or subjob change.
function select_default_macro_book()
	-- Default macro set/book
	if player.sub_job == 'WAR'then
		    set_macro_page(7, 1)
	elseif player.sub_job == 'SAM' then
		    set_macro_page(7, 1)
	else
		set_macro_page(7, 1)
end
end