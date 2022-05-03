-------------------------------------------------------------------------------------------------------------------
-- Setup functions for this job.  Generally should not be modified. 
 
-- Want to Add ************************************************
-- Echo drops for when I am silenced AND try to use magic (not auto)
-- Cure potency recieved+ auto activate when cure spell cast on me
-- holy water gear change when item is used
-- March from trust cycle/toggle for haste values (currently all march are considered to be ghrn)
-- reive neck auto locked in reive
-- cp mantle lock when manually put on (not a toggle)
-- Auto user set to equip when slept/terro/stunned/etc
-- town audolin idle set instead of generic town (garb)
-- AM time warnings
-- ammo toggle disable for parties
-- That cool cor roll chat thing I see so many using
-- alert when low on a nin tool
-- echo chat for elemental ninjitsu resist rates down
 
-------------------------------------------------------------------------------------------------------------------
 
-- Initialization function for this job file.
function get_sets()
    mote_include_version = 2
    -- Load and initialize the include file.
    include('Mote-Include.lua')
end

 
-- Setup vars that are user-independent.  state.Buff vars initialized here will automatically be tracked.
function job_setup()
    state.Buff.Migawari = buffactive.migawari or false
    state.Buff.Doom = buffactive.doom or false
    state.Buff.Yonin = buffactive.Yonin or false
    state.Buff.Innin = buffactive.Innin or false
    state.Buff.Futae = buffactive.Futae or false
end
 
-------------------------------------------------------------------------------------------------------------------
-- User setup functions for this job.  Recommend that these be overridden in a sidecar file.
-------------------------------------------------------------------------------------------------------------------
 
-- Setup vars that are user-dependent.  Can override this function in a sidecar file.
function user_setup()
    state.HasteMode = M{['description']='Haste Mode', 'Normal', 'Hi'}
    state.OffenseMode:options('Normal', 'Acc', 'HighAcc')
    state.HybridMode:options('Normal', 'Evasion', 'PDT')
    state.WeaponskillMode:options('Normal', 'Acc', 'Mod')
    state.CastingMode:options( 'MAB', 'Normal')
    state.PhysicalDefenseMode:options('PDT', 'MDT')
 
    gear.MovementFeet = {name="Hachiya Kyahan +1"}
    gear.DayFeet = "Rao sune-ate"  
    gear.NightFeet = "Hachiya Kyahan +1"
     
    determine_haste_group()
    select_movement_feet()

end
     
-- Define sets and vars used by this job file.
function init_gear_sets()
    --------------------------------------
    -- Precast sets
    --------------------------------------
    Andartia={}
    Andartia.MAB="Izdubar Mantle"
    Andartia.DA= "Andartia's Mantle"
    Andartia.WSD="Yokaze Mantle"
 
    -- Precast sets to enhance JAs
    sets.precast.JA['Mijin Gakure'] = {legs="Mochizuki Hakama"}
    sets.precast.JA['Futae'] = {Hands="Hattori Tekko +1"}
    sets.precast.JA['Sange'] = {legs="Mochizuki Chainmail +1"}
 
    -- Waltz set (chr and vit)
    sets.precast.Waltz = {}
         
    -- Don't need any special gear for Healing Waltz.
    sets.precast.Waltz['Healing Waltz'] = {}
 
    -- Set for acc on steps, since Yonin drops acc a fair bit
    sets.precast.Step = {neck="Yarak Torque"}
 
    sets.precast.Flourish1 = {waist="Chaac Belt"}
 
    -- Fast cast sets for spells
    sets.precast.FC = {
        --ammo="Staunch Tathlum",
        head={ name="Herculean Helm", augments={'Accuracy+19 Attack+19','Damage taken-3%','AGI+3','Accuracy+2',}},
        body="Taeon Tabard",
        hands="Leyline Gloves",
        legs={ name="Herculean Trousers", augments={'Mag. Acc.+21','"Fast Cast"+5','CHR+3',}},
        feet="Herculean Boots",
        neck="Voltsurge Torque",
        waist="Druid's Rope",
        left_ear="Etiolation Earring",
        right_ear="Loquac. Earring",
        left_ring="Rahab Ring",
        right_ring="Kishar Ring",
        back="Mujin Mantle"}
         
    sets.precast.FC.Utsusemi = set_combine(sets.precast.FC, {
        neck="Magoraga Beads",
        body="Mochi. Chainmail +1",})
 
    -- Snapshot for ranged
    sets.precast.RA = {head="Amini Gapette", -- 7
            body="Amini Caban +1", -- 7
            
            back="Lutian Cape", -- 2
            legs="Adhemar Kecks",
            waist="Impulse Belt", -- 2
            feet="Meg. Jam. +1" -- 8
			}
        
    -- Weaponskill sets
    -- Default set for any weaponskill that isn't any more specifically defined
    sets.precast.WS = {
        --ammo="Seething bomblet +1",
        head={ name="Herculean Helm", augments={'Accuracy+24 Attack+24','Weapon skill damage +5%','DEX+4',}},
        body="Herculean Vest",
        hands="Adhemar Wristbands",
        legs="Hiza. Hizayoroi +2",
        feet={ name="Herculean Boots", augments={'Accuracy+21','Weapon skill damage +4%','Attack+12',}},
        neck="Fotia Gorget",
        waist="Windbuffet Belt +1",
        right_ear="Moonshade Earring",
        left_ear="Telos Earring",
        left_ring="Epona's Ring",
        right_ring="Regal Ring",
        back=Andartia.WSD}
         
    sets.precast.WS.Acc = set_combine(sets.precast.WS, {
        --ammo="Seething bomblet +1",
        head={ name="Herculean Helm", augments={'Accuracy+24 Attack+24','Weapon skill damage +5%','DEX+4',}},
        body="Herculean Vest",
        hands="Adhemar Wristbands",
        legs="Hiza. Hizayoroi +2",
        feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}},
        neck="Fotia Gorget",
        waist="Grunfeld Belt",
        right_ear="Moonshade Earring",
        left_ear="Telos Earring",
        left_ring="Epona's Ring",
        right_ring="Regal Ring",
        back=Andartia.WSD})
         
    -- Specific weaponskill sets.  Uses the base set if an appropriate WSMod version isn't found.
    sets.precast.WS['Blade: Ten'] = set_combine(sets.precast.WS,{
        --ammo="Seething bomblet +1",
        head={ name="Herculean Helm", augments={'Accuracy+24 Attack+24','Weapon skill damage +5%','DEX+4',}},
        neck="Caro necklace",
        hands="Adhemar Wristbands",
        waist="Grunfeld rope",
        body="Herculean Vest",
        legs="Hiza. Hizayoroi +2",
        feet={ name="Herculean Boots", augments={'Accuracy+21','Weapon skill damage +4%','Attack+12',}},
        right_ear="Moonshade Earring",
        left_ear="Ishvara Earring",
        right_ring="Regal Ring",
        left_ring="Rajas Ring"})
 
    sets.precast.WS['Blade: Shun'] = set_combine(sets.precast.WS, { 
        head="Adhemar Bonnet",
        body="Adhemar Jacket",
        hands="Adhemar Wristbands",
        legs="Samnuha tights",
        feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}},
        waist="Fotia Belt",
        back=Andartia.DA,
        right_ring="Regal Ring",})
 
    sets.precast.WS['Blade: Metsu'] = set_combine(sets.precast.WS, {
        --ammo="Jukukik feather",
        head={ name="Herculean Helm", augments={'Accuracy+24 Attack+24','Weapon skill damage +5%','DEX+4',}},
        neck="Caro necklace",
        body="Herculean Vest",
        hands="Adhemar Wristbands",
        legs="Hiza. Hizayoroi +2",
        left_ear="Telos Earring",
        right_ear="Moonshade Earring",
        feet={ name="Herculean Boots", augments={'Accuracy+21','Weapon skill damage +4%','Attack+12',}},
        waist="Grunfeld rope",
        right_ring="Regal Ring",
        left_ring="Rajas Ring"})
 
    sets.precast.WS['Blade: Hi'] = set_combine(sets.precast.WS, {
        --ammo="Yetshila",
        head="Adhemar Bonnet",
        body="Herculean Vest",
        hands="Ryuo Tekko",
        legs="Hiza. Hizayoroi +2",
       feet={ name="Herculean Boots", augments={'Accuracy+21','Weapon skill damage +4%','Attack+12',}},
        neck="Caro Necklace",
        waist="Windbuffet Belt +1",
        left_ear="Moonshade Earring",
        right_ear="Ishvara Earring",
        left_ring="Regal Ring",
        right_ring="Begruding Ring",
        back=Andartia.WSD})
 
    --------------------------------------
    -- Midcast sets
    --------------------------------------
 
    sets.midcast.FastRecast = {
        ear2="Loquacious Earring",ring1="Kishar Ring"}
         
    sets.midcast.SelfNinjutsu = {
        --ammo="Staunch Tathlum",
        head="Hachiya hatsuburi +1",
        body="Foppish Tunica",
        hands="Rawhide Gloves",
        legs={ name="Herculean Trousers", augments={'"Mag.Atk.Bns."+25','Phys. dmg. taken -5%','INT+6','Mag. Acc.+9',}},
        feet="Mochi. Kyahan +1",
        neck="Willpower Torque",
        waist="Druid's Rope",
        left_ear="Stealth Earring",
        right_ear="Loquac. Earring",
        left_ring="Kishar Ring",   
        right_ring="Evanescence Ring",
        back="Mujin Mantle",}
     
    sets.midcast.Utsusemi = set_combine(sets.midcast.SelfNinjutsu,{
        --ammo="Staunch Tathlum",
       head={ name="Herculean Helm", augments={'Accuracy+19 Attack+19','Damage taken-3%','AGI+3','Accuracy+2',}},
        body="Foppish Tunica",
        hands="Leyline Gloves",
        legs={ name="Herculean Trousers", augments={'"Mag.Atk.Bns."+25','Phys. dmg. taken -5%','INT+6','Mag. Acc.+9',}},
        neck="Willpower Torque",
        waist="Druid's Rope",
        left_ear="Halasz Earring",
        right_ear="Loquac. Earring",
        left_ring="Kishar Ring",
        right_ring="Defending Ring",
        feet="Hattori Kyahan", 
        back="Andartia's Mantle"})
 
    sets.midcast.ElementalNinjutsu = 
       {--ammo = "Pemphredo Tathlum",
	   head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','"Dbl.Atk."+2','Mag. Acc.+12','"Mag.Atk.Bns."+4',}}, 
	   neck="Sanctity Necklace", 
	   ear2="Friomisi earring", 
	   ear1="Hecate's Earring",
	   body="Samnuha Coat",
	   hands="Leyline Gloves",
	   ring1="Dingir Ring",
	   ring2 ="Acumen Ring",
	   waist ="Eschan Stone",
	   back="Izdubar Mantle",
	   legs={ name="Herculean Trousers", augments={'"Mag.Atk.Bns."+25','Phys. dmg. taken -5%','INT+6','Mag. Acc.+9',}},
	   feet={ name="Herculean Boots", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','VIT+10','"Mag.Atk.Bns."+12',}}}
 
    -- MBD caps at 40% , unknown as of what cap on MABII is
    sets.midcast.ElementalNinjutsu.MAB = set_combine(sets.midcast.ElementalNinjutsu, {
        legs={ name="Herculean Trousers", augments={'"Mag.Atk.Bns."+25','Phys. dmg. taken -5%','INT+6','Mag. Acc.+9',}},
        feet={ name="Herculean Boots", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','VIT+10','"Mag.Atk.Bns."+12',}},
        right_ear="Static Earring",
        left_ring="Locus Ring",
        right_ring="Mujin Band",})
         
    sets.midcast.NinjutsuDebuff = {
        --ammo = "Pemphredo Tathlum",
	    head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','"Dbl.Atk."+2','Mag. Acc.+12','"Mag.Atk.Bns."+4',}}, 
	    neck="Sanctity Necklace", 
	    ear2="Friomisi earring", 
	    ear1="Hecate's Earring",
	    body="Samnuha Coat",
	    hands="Leyline Gloves",
        waist="Eschan Stone",
		feet={ name="Herculean Boots", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','VIT+10','"Mag.Atk.Bns."+12',}},
        left_ear="Stealth Earring", right_ear="Dignitary's Earring",
        left_ring="Stikini Ring", right_ring="Sangoma Ring",
        back="Izdubar Mantle"}
 
    sets.midcast.NinjutsuBuff = {
        --ammo="Staunch Tathlum",
		head={ name="Herculean Helm", augments={'Accuracy+19 Attack+19','Damage taken-3%','AGI+3','Accuracy+2',}},
		neck="Loricate Torque+1", 
		ear1="Genmei Earring",ear2="Infused Earring",
        body="Ashera Harness",
		hands="Herculean Gloves",
		ring2="Vocane Ring",
		ring1="Defending Ring",
        back="Moonbeam Cape",
		waist="Flume belt +1",
		legs={ name="Herculean Trousers", augments={'"Mag.Atk.Bns."+25','Phys. dmg. taken -5%','INT+6','Mag. Acc.+9',}},
		feet={ name="Herculean Boots", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','VIT+10','"Mag.Atk.Bns."+12',}}}
 
    sets.midcast.RA = {
		head="Meghanada Visor +1",
							neck="Iskur Gorget", 
							ear2="Telos Earring", 
							ear1="Volley Earring",
							body="Adhemar Jacket",
							hands={ name="Adhemar Wristbands", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
							ring1="Apate Ring",
							ring2="Cacoethic Ring", 
							waist ="Yemaya Belt",
							back="Gunslinger's Cape",   
							legs="Pursuer's Pants",
							feet="Meg. Jam. +1"
	}
 
    ------------------------\--------------
    -- Idle/resting/defense/etc sets
    --------------------------------------
     
    -- Resting sets
    sets.resting = {
        --ammo="Staunch Tathlum",
        head="Rao kabuto",
        body="Hizamaru haramaki +1",
        hands="Rao kote",
        legs={ name="Herculean Trousers", augments={'"Mag.Atk.Bns."+25','Phys. dmg. taken -5%','INT+6','Mag. Acc.+9',}}, 
        feet=gear.MovementFeet,
        neck="Sanctity necklace",
        waist="Flume Belt +1",
        left_ear="Infused Earring", right_ear="Genmei Earring",   
        left_ring="Vocane Ring",
        right_ring="Defending Ring",
        back="Shadow mantle"}
         
    -- Idle sets
    sets.idle = {
        --ammo="Staunch Tathlum",
        head="Rao kabuto",
        body="Hizamaru haramaki +1",
        hands="Rao kote",
        legs={ name="Herculean Trousers", augments={'"Mag.Atk.Bns."+25','Phys. dmg. taken -5%','INT+6','Mag. Acc.+9',}},
        feet=gear.MovementFeet,
        neck="Sanctity necklace",
        waist="Flume Belt +1",
        left_ear="Infused Earring", right_ear="Genmei Earring",   
        right_ring="Vocane Ring",
        left_ring="Defending Ring",
        back="Moonbeam Cape"}
 
    sets.idle.Town = {
        --ammo="Staunch Tathlum",
        head="Skormoth mask",
        body="Councilor's Garb",
        hands="Ryuo Tekko",
        legs={ name="Herculean Trousers", augments={'"Mag.Atk.Bns."+25','Phys. dmg. taken -5%','INT+6','Mag. Acc.+9',}},
        feet=gear.MovementFeet,
        neck="Sanctity necklace",
        waist="Flume Belt +1",
        left_ear="Infused Earring", right_ear="Genmei Earring",    
        right_ring="Vocane Ring",
        left_ring="Defending Ring",
        back="Moonbeam Cape"}
     
    sets.idle.Weak = {
        --ammo="Staunch Tathlum",
        head="Rao kabuto",
        body="Hizamaru haramaki +1",
        hands="Rao kote",
        legs={ name="Herculean Trousers", augments={'"Mag.Atk.Bns."+25','Phys. dmg. taken -5%','INT+6','Mag. Acc.+9',}},
        feet=gear.MovementFeet,
        neck="Sanctity necklace",
        waist="Flume Belt +1",
        left_ear="Infused Earring", right_ear="Genmei Earring",   
        Right_ring="Meridian Ring",
        Left_ring="Defending Ring",
        back="Moonbeam Cape"}
     
    -- Defense sets
    sets.defense.Evasion = {neck="Yarak Torque", back="Yokaze Mantle"}
 
    sets.defense.PDT = {
        --ammo="Staunch Tathlum",
        head="Ryuo Somen",
        body="Ashera Harness",
        hands="Herculean Gloves",
        legs={ name="Herculean Trousers", augments={'"Mag.Atk.Bns."+25','Phys. dmg. taken -5%','INT+6','Mag. Acc.+9',}},
        feet="Herculean Boots",
        neck="Loricate Torque +1",
        waist="Flume Belt +1",
        left_ear="Genmei Earring",
        right_ear="Suppanomimi",
        right_ring="Vocane Ring",
        left_ring="Defending Ring",
        back="Moonbeam Cape",}
         
    sets.defense.MDT = {
        --ammo="Happo Shuriken",
        head="Dampening Tam",
        body="Ashera Harness",
        hands="Floral Gauntlets",
        hands="Herculean Gloves",
        feet="Herculean Boots",
        neck="Loricate Torque",
        waist="Flume Belt",
        left_ear="Brutal Earring",
        right_ear="Static Earring",
        left_ring="Shadow Ring",
        right_ring="Defending Ring",
        back="Moonbeam Cape",}
 
    sets.Kiting = {left_ring="Shneddick Ring",feet=gear.MovementFeet}
    ---------------------------------------------------------------------------------
    -- Engaged sets (Shigi)     Normal      acc         high acc
    -- 37-39 DW no haste        1161        1182        1211
    -- 31 dw 15%                1163        1180        1217
    -- 19 dw 30%                1172        1181        1249
    -- 13 dw 35%                ?           ?           ?
    -- 0 DW max                 1165        1184        1264
     
    --My goal is to have 1165~ base acc (no buffs) on each haste lv for normal
    --this allows me to eat bream sushi and be at around 1245 acc 1265 sublime
    --which is good enough for almost all events and allows kanaria
    --to be used for superior dps and maintaining 1200/1220 acc with my current augs
    --this will cap your hit rate at Apex, and most mobs up to 130.
     
    --the acc set is aimed more at when I am using red curry OR when I am messing 
    --around and dont want to use food OR when im /rdm on apex to nuke and use
    --macc/mab food instead (with ionis your at 1200). 
     
    --high acc take into acccout my playtyle. Normally I will be maxed haste for 2 reasons
    -- 1st is I am solo with ulima+koru and using red curry or another non-acc food
    --so 1260 is the highest I could ever imagine needing, and will normally be at normal.
    --2nd is that I am in a zerg with LS on very high end mobs 145+ at which point
    --the goal is to be at 1450 pre party buffs which I hit with sublime+vorseals+innin
    ----------------------------------------------------------------------------------------
     
    -- Normal melee group    39DW
    sets.engaged = {
        --ammo="Happo Shuriken",
        head="Ryuo somen",
        body="Ashera Harness",
        hands="Floral gauntlets",
        legs="Samnuha tights",
        feet="Hiza. Sune-Ate +1",
        neck="Lissome Necklace",
        waist="Windbuffet Belt +1",
        left_ear="Telos Earring", right_ear="Suppanomimi",
        left_ring="Epona's Ring", right_ring="Regal Ring",
        back=Andartia.DA}
         
    sets.engaged.Acc = set_combine(sets.engaged, {
        neck="Yarak Torque",
        left_ear="Telos Earring",
        right_ring="Cacoethic Ring",})
         
    sets.engaged.HighAcc = set_combine(sets.engaged.ACC, {
               left_ring="Chirich Ring",})
         
    -- I dont use   
    sets.engaged.Evasion = {}
    sets.engaged.Acc.Evasion = {}
    sets.engaged.PDT = {}
    sets.engaged.Acc.PDT = {}
     
    -- 15% melee group 31 DW
     sets.engaged.Haste_15 = {
        --ammo="Happo Shuriken",
        head="Ryuo somen",
        body="Ashera Harness",
        hands="Floral gauntlets",
        legs="Samnuha tights",
        feet="Hiza. Sune-Ate +1",
        neck="Lissome Necklace",
        waist="Windbuffet Belt +1",
        left_ear="Telos Earring", right_ear="Suppanomimi",
        left_ring="Epona's Ring", right_ring="Regal Ring",
        back=Andartia.DA}
         
    sets.engaged.Acc.Haste_15 = set_combine(sets.engaged.Haste_15, {
        waist="Patentia sash",
        left_ear="Cessance Earring",
        neck="Yarak Torque",
        right_ear="Telos Earring",})
         
    sets.engaged.HighAcc.Haste_15 = set_combine(sets.engaged.Acc.Haste_15,{
        legs="Samnuha tights",
        right_ring="Cacoethic Ring",
        left_ring="Chirich Ring",})
     
    -- I dont use
    sets.engaged.Evasion.Haste_15 = {}
    sets.engaged.Acc.Evasion.Haste_15 = {}
    sets.engaged.PDT.Haste_15 = {}
    sets.engaged.Acc.PDT.Haste_15 = {}
 
    -- Custom melee group: 30% Haste (~20% DW) ~ 19
    sets.engaged.Haste_30 = {
        --ammo="Happo Shuriken",
        head="Ryuo somen",
        body="Ashera Harness",
        hands="Adhemar Wristbands",
        legs="Samnuha tights",
        feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}},
        neck="Lissome Necklace",
        waist="Windbuffet Belt +1",
        left_ear="Telos Earring", right_ear="Suppanomimi",
        left_ring="Epona's Ring", right_ring="Regal Ring",
        back=Andartia.DA}
         
    sets.engaged.Acc.Haste_30 = set_combine(sets.engaged.Haste_30,{
        neck="Yarak Torque",
        left_ear="Cessance Earring",})
         
    sets.engaged.HighAcc.Haste_30 = set_combine(sets.engaged.Acc.Haste_30,{
        hands="Adhemar Wristbands",
        legs="Samnuha tights",
        waist="Kentarch belt +1",
        left_ear="Telos Earring",
        right_ring="Cacoethic Ring",
        left_ring="Chirich Ring",})
         
    -- I dont use
    sets.engaged.Evasion.Haste_30 = {}
    sets.engaged.Acc.Evasion.Haste_30 = {}
    sets.engaged.PDT.Haste_30 = {}
    sets.engaged.Acc.PDT.Haste_30 = {}
 
    -- Custom melee group 35%: 13 DW Rarely used set if ever
    sets.engaged.Haste_35 = {
        --ammo="Happo Shuriken",
        head="Ryuo somen",
        body="Adhemar Jacket",
        hands="Adhemar Wristbands",
        legs="Samnuha tights",
        feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}},
        neck="Lissome Necklace",
        waist="Windbuffet Belt +1",
        left_ear="Telos Earring", right_ear="Cessance Earring",
        left_ring="Epona's Ring", right_ring="Regal Ring",
        back=Andartia.DA}
         
    sets.engaged.HighAcc.Haste_35 = set_combine(sets.engaged.Haste_35,{
        neck="Yarak Torque",
        right_ear="Telos Earring",})
         
    sets.engaged.Acc.Haste_35= set_combine(sets.engaged.Acc.Haste_35,{
        hands="Adhemar Wristbands",
        legs="Samnuha tights",
        waist="Kentarch belt +1",
        right_ring="Cacoethic Ring",})
     
    -- I dont use
    sets.engaged.Evasion.Haste_35 = {}
    sets.engaged.Acc.Evasion.Haste_35 = {}
    sets.engaged.PDT.Haste_35 = {}
    sets.engaged.Acc.PDT.Haste_35 = {}
 
    -- Custom melee group: Max Haste (0% DW)
    sets.engaged.MaxHaste = {
        --ammo="Happo Shuriken",
        head="Dampening Tam",
        body="Ashera Harness",
        hands="Adhemar Wristbands",
        legs="Samnuha tights",
        feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}},
        neck="Lissome Necklace",
        waist="Windbuffet Belt +1",
        left_ear="Telos Earring", right_ear="Cessance earring",
        left_ring="Epona's Ring", right_ring="Regal Ring",
        back=Andartia.DA}
         
    sets.engaged.Acc.MaxHaste = set_combine(sets.engaged.MaxHaste,{
        head="Dampening Tam",
		waist ="Kentarch belt +1"})
         
    sets.engaged.HighAcc.MaxHaste = set_combine(sets.engaged.Acc.MaxHaste,{
        head="Dampening Tam",
        hands="Ashera Harness",
        legs="Samnuha tights",
        feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}},
        neck="Yarak Torque",
        waist="Kentarch Belt +1", 
        right_ring="Cacoethic Ring",
        left_ring="Chirich Ring",})
     
    -- I dont use
    sets.engaged.Evasion.MaxHaste = {}
    sets.engaged.Acc.Evasion.MaxHaste = {}
    sets.engaged.PDT.MaxHaste = {}
    sets.engaged.Acc.PDT.MaxHaste = {}
 
    --------------------------------------
    -- Custom buff sets
    --------------------------------------
    sets.buff.Migawari = {} -- add your emp body if you want the extra % (I dont like it)
    sets.buff.Doom = {waist="Gishdubar sash",ring1="Saida Ring",ring2="Saida Ring"}
    sets.buff.Yonin = {}
    sets.buff.Innin = {}
end
 
-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for standard casting events.
-------------------------------------------------------------------------------------------------------------------
 
-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
function job_aftercast(spell, action, spellMap, eventArgs)
    if not spell.interrupted and spell.english == "Migawari: Ichi" then
        state.Buff.Migawari = true
    end
end
 
-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for non-casting events.
-------------------------------------------------------------------------------------------------------------------
 
function job_buff_change(buff, gain)
if S{'haste', 'march', 'mighty guard', 'embrava', 'haste samba', 'geo-haste', 'indi-haste'}:contains(buff:lower()) then
        determine_haste_group()
        handle_equipping_gear(player.status)
    elseif state.Buff[buff] ~= nil then
        handle_equipping_gear(player.status)
    end
end
 
function job_status_change(new_status, old_status)
    if new_status == 'Idle' then
        select_movement_feet()
    end
end
 
-------------------------------------------------------------------------------------------------------------------
-- User code that supplements standard library decisions.
-------------------------------------------------------------------------------------------------------------------
 
-- Get custom spell maps
function job_get_spell_map(spell, default_spell_map)
    if spell.skill == "Ninjutsu" then
        if not default_spell_map then
            if spell.target.type == 'SELF' then
                return 'NinjutsuBuff'
            else
                return 'NinjutsuDebuff'
            end
        end
    end
end
 
-- Modify the default idle set after it was constructed.
function customize_idle_set(idleSet)
    if state.Buff.Migawari then
        idleSet = set_combine(idleSet, sets.buff.Migawari)
    end
    if state.Buff.Doom then
        idleSet = set_combine(idleSet, sets.buff.Doom)
    end
    return idleSet
end
 
-- Modify the default melee set after it was constructed.
function customize_melee_set(meleeSet)
    if state.Buff.Migawari then
        meleeSet = set_combine(meleeSet, sets.buff.Migawari)
    end
    if state.Buff.Doom then
        meleeSet = set_combine(meleeSet, sets.buff.Doom)
    end
    return meleeSet
end
 
-- Called by the default 'update' self-command.
function job_update(cmdParams, eventArgs)
    select_movement_feet()
    determine_haste_group()
end
 
-------------------------------------------------------------------------------------------------------------------
-- Utility functions specific to this job.
-------------------------------------------------------------------------------------------------------------------
 
function determine_haste_group()
  
    classes.CustomMeleeGroups:clear()
    -- assuming +4 for marches (ghorn has +5)
    -- Haste (white magic) 15%
    -- Haste Samba (Sub) 5%
    -- Haste (Merited DNC) 10% (never account for this)
    -- Victory March +0/+3/+4/+5    9.4/14%/15.6%/17.1% +0
    -- Advancing March +0/+3/+4/+5  6.3/10.9%/12.5%/14%  +0
    -- Embrava 30% with 500 enhancing skill
    -- Mighty Guard - 15%
    -- buffactive[580] = geo haste
    -- buffactive[33] = regular haste
    -- buffactive[604] = mighty guard
    -- state.HasteMode = toggle for when you know Haste II is being cast on you
    -- Hi = Haste II is being cast. This is clunky to use when both haste II and haste I are being cast
    if state.HasteMode.value == 'Hi' then
        if ( ( (buffactive[33] or buffactive[580] or buffactive.embrava) and (buffactive.march or buffactive[604]) ) or
             ( buffactive[33] and (buffactive[580] or buffactive.embrava) ) or
             ( buffactive.march == 2 and buffactive[604] ) ) then
            add_to_chat(8, '-------------Max-Haste Mode Enabled--------------')
            classes.CustomMeleeGroups:append('MaxHaste')
        elseif ( (buffactive[33] or buffactive.march == 2 or buffactive[580]) and buffactive['haste samba'] ) then
            add_to_chat(8, '-------------Haste 35%-------------')
            classes.CustomMeleeGroups:append('Haste_35')
        elseif ( ( buffactive[580] or buffactive[33] or buffactive.march == 2 ) or
                 ( buffactive.march == 1 and buffactive[604] ) ) then
            add_to_chat(8, '-------------Haste 30%-------------')
            classes.CustomMeleeGroups:append('Haste_30')
        elseif ( buffactive.march == 1 or buffactive[604] ) then
            add_to_chat(8, '-------------Haste 15%-------------')
            classes.CustomMeleeGroups:append('Haste_15')
        end
    else
        if ( buffactive[580] and ( buffactive.march or buffactive[33] or buffactive.embrava or buffactive[604]) ) or  -- geo haste + anything
           ( buffactive.embrava and (buffactive.march or buffactive[33] or buffactive[604]) ) or  -- embrava + anything
           ( buffactive.march == 2 and (buffactive[33] or buffactive[604]) ) or  -- two marches + anything
           ( buffactive[33] and buffactive[604] and buffactive.march ) then -- haste + mighty guard + any marches
            add_to_chat(8, '-------------Max Haste Mode Enabled--------------')
            classes.CustomMeleeGroups:append('MaxHaste')
        elseif ( (buffactive[604] or buffactive[33]) and buffactive['haste samba'] and buffactive.march == 1) or -- MG or haste + samba with 1 march
               ( buffactive.march == 2 and buffactive['haste samba'] ) or
               ( buffactive[580] and buffactive['haste samba'] ) then 
            add_to_chat(8, '-------------Haste 35%-------------')
            classes.CustomMeleeGroups:append('Haste_35')
        elseif ( buffactive.march == 2 ) or -- two marches from ghorn
               ( (buffactive[33] or buffactive[604]) and buffactive.march == 1 ) or  -- MG or haste + 1 march
               ( buffactive[580] ) or  -- geo haste
               ( buffactive[33] and buffactive[604] ) then  -- haste with MG
            add_to_chat(8, '-------------Haste 30%-------------')
            classes.CustomMeleeGroups:append('Haste_30')
        elseif buffactive[33] or buffactive[604] or buffactive.march == 1 then
            add_to_chat(8, '-------------Haste 15%-------------')
            classes.CustomMeleeGroups:append('Haste_15')
        end
    end
  
end
 
 
function select_movement_feet()
    if world.time >= 17*60 or world.time < 7*60 then
        gear.MovementFeet.name = gear.NightFeet
    else
        gear.MovementFeet.name = gear.DayFeet
    end
end
 
function job_post_precast(spell, action, spellMap, eventArgs)
    if spell.type == 'WeaponSkill' then
        if world.time >= 17*60 or world.time < 7*60 then 
            equip({ear1="Lugra Earring +1", ear2="Lugra Earring"})
        end
    end
end
 
function job_post_precast(spell, action, spellMap, eventArgs)
    if spellMap == 'ElementalNinjutsu' then
        if spell.english:contains(': San') then
            equip({feet="Mochi. Kyahan +1"})
        end
    end
end
 
function job_post_midcast(spell, action, spellMap, eventArgs)
    if spellMap == 'ElementalNinjutsu' then
        if spell.english:contains(': San') then
            equip({head="Mochi. Hatsuburi +1"})
        end
        if spell.element == world.day_element or spell.element == world.weather_element then
            equip({waist="Hachirin-no-Obi"})
        end
        if state.Buff.Futae then
            equip(sets.precast.JA['Futae'])
        end
        if state.Buff.Doom then
        equip(sets.buff.Doom)
    end
    end
end