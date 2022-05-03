 ------------------------------------------------------------------------------------------------------------------
-- Setup functions for this job.  Generally should not be modified.
-------------------------------------------------------------------------------------------------------------------

-- Also, you'll need the Shortcuts addon to handle the auto-targetting of the custom pact commands.

--[[
    Custom commands:

	gs c petweather
        Automatically casts the storm appropriate for the current avatar, if possible.

    gs c siphon
        Automatically run the process to: dismiss the current avatar; cast appropriate
        weather; summon the appropriate spirit; Elemental Siphon; release the spirit;
        and re-summon the avatar.

--]]


-- Initialization function for this job file.
function get_sets()
    mote_include_version = 2

    -- Load and initialize the include file.
    include('Mote-Include.lua')
	include('organizer-lib.lua')
	
	--default_macro_book()
end

-- Setup vars that are user-independent.  state.Buff vars initialized here will automatically be tracked.
function job_setup()
    state.Buff["Avatar's Favor"] = buffactive["Avatar's Favor"] or false
    state.Buff["Astral Conduit"] = buffactive["Astral Conduit"] or false

    spirits = S{"LightSpirit", "DarkSpirit", "FireSpirit", "EarthSpirit", "WaterSpirit", "AirSpirit", "IceSpirit", "ThunderSpirit"}
    avatars = S{"Carbuncle", "Fenrir", "Diabolos", "Ifrit", "Titan", "Leviathan", "Garuda", "Shiva", "Ramuh", "Odin", "Alexander", "Cait Sith"}

    magicalRagePacts = S{
        'Inferno','Earthen Fury','Tidal Wave','Aerial Blast','Diamond Dust','Judgment Bolt','Searing Light','Howling Moon','Ruinous Omen',
        'Fire II','Stone II','Water II','Aero II','Blizzard II','Thunder II',
        'Fire IV','Stone IV','Water IV','Aero IV','Blizzard IV','Thunder IV',
        'Thunderspark','Meteorite','Nether Blast',
        'Meteor Strike','Heavenly Strike','Wind Blade','Geocrush','Grand Fall','Thunderstorm',
        'Holy Mist','Lunar Bay','Night Terror','Level ? Holy','Conflag Strike'}

	doubleRagePacts = S{
		'Elciplse Bite','Double Punch','Predator Claw','Rush','Chaotic Strike','Volt Strike'}
		
	HybridRagePacts = S{
		'Burning Strike','Flaming Crush'}

	SkillPacts = S{
		'Perfect Defense','Impact'}

    -- Wards table for creating custom timers
		wards = {}
    -- Base duration for ward pacts.
		wards.durations = {
		['Crimson Howl'] = 60, ['Earthen Armor'] = 60, ['Inferno Howl'] = 60, ['Heavenward Howl'] = 60,
		['Rolling Thunder'] = 120, ['Fleet Wind'] = 120,
		['Shining Ruby'] = 180, ['Frost Armor'] = 180, ['Lightning Armor'] = 180, ['Ecliptic Growl'] = 180,
		['Glittering Ruby'] = 180, ['Hastega'] = 180, ['Hastega II'] = 180, ['Noctoshield'] = 180, ['Ecliptic Howl'] = 180,
		['Dream Shroud'] = 180, ['Crystal Blessing'] = 180, ['Soothing Current'] = 180
    }

    wards.icons = {
		['Earthen Armor']   = 'spells/00299.png', -- 00299 for Titan
		['Shining Ruby']    = 'spells/00043.png', -- 00043 for Protect
		['Dream Shroud']    = 'spells/00304.png', -- 00304 for Diabolos
		['Noctoshield']     = 'spells/00106.png', -- 00106 for Phalanx
        ['Inferno Howl']    = 'spells/00298.png', -- 00298 for Ifrit
        ['Hastega']      	= 'spells/00357.png', -- 00357 for Hastega
        ['Hastega II']      = 'spells/00358.png', -- 00358 for Hastega II
        ['Rolling Thunder'] = 'spells/00104.png', -- 00358 for Enthunder
        ['Frost Armor']     = 'spells/00250.png', -- 00250 for Ice Spikes
        ['Lightning Armor'] = 'spells/00251.png', -- 00251 for Shock Spikes
		['Fleet Wind']      = 'spells/00301.png', -- 00301 for Garuda
		['Crystal Blessing']= 'spells/00020.png', -- 00020 for TP bonus
		['Soothing Current']= 'spells/00183.png', -- 00183 for Healing Bonus
    }

	-- Special rules showing the remaining time of Perfect Defense.
	-- Duration is calculated as follows: [30s + Floor(Summoning Magic Skill/20)s], adjust the time below to reflect your own skill.
	-- Base duration at level 99 with capped skill (417) is 51 seconds, max obtainable time is 60 seconds at 600 skill. (Currently unreachable in game.)
	durations = {}
		durations['Perfect Defense'] = 59
		durations['Impact'] = 180
	timer_icons = {}
	timer_icons['Perfect Defense'] = 'spells/00306.png'	-- 00306 for Perfect Defense

    -- Flags for code to get around the issue of slow skill updates.
    wards.flag = false
    wards.spell = ''

end

-------------------------------------------------------------------------------------------------------------------
-- User setup functions for this job.  Recommend that these be overridden in a sidecar file.
-------------------------------------------------------------------------------------------------------------------

-- Setup vars that are user-dependent.  Can override this function in a sidecar file.
function user_setup()
    state.OffenseMode:options('Normal', 'Acc')
    state.CastingMode:options('Normal', 'Resistant')
    state.IdleMode:options('Normal', 'PDT')

    gear.perp_staff = {name=""}

end


-- Define sets and vars used by this job file.
function init_gear_sets()

    --------------------------------------
    -- Misc Items
    --------------------------------------
	sets.misc = {neck="Sacrifice torque"}

    --------------------------------------
    -- Augmented Items
    --------------------------------------
	-- BP Items

	-- TP Items

	-- Weapons

	-- Perp stuff

	-- Capes
		BP_cape = { name="Conveyance cape", augments={'Summoning magic skill +3','Pet: Enmity+10','Blood Pact Dmg.+5',}}
		Delay_cape = { name="Conveyance cape", augments={'Summoning magic skill +1','Pet: Enmity+12','Blood Pact ab. del. II -2',}}

    --------------------------------------
    -- Precast Sets
    --------------------------------------

    -- Precast sets to enhance JAs
    sets.precast.JA['Astral Flow'] = {head="Glyphic Horn +1"}

    sets.precast.JA['Elemental Siphon'] = {
			main="Nirvana",
			sub="Vox grip",
			ammo="Esper Stone +1",
			head="Telchine cap",
			ear1="Smn. earring",
			ear2="Andoaa earring",
			neck="Incanter's Torque",
			body="Beck. Doublet +1",
			hands="Telchine gloves",
			ring1="Evoker's Ring",
			ring2="Zodiac Ring",
			back="Conveyance Cape",
			waist="Kobo obi",
			legs="Telchine Braconi",
			feet="Beck. pigaches +1"}

    sets.precast.JA['Mana Cede'] = {hands="Beck. Bracers +1"}

    -- Pact delay reduction gear
    sets.precast.BloodPactWard = {
			ammo="Sancus sachet +1",
			head="Beckoner's horn +1",
			ear2="Evans Earring",
			Body="Apogee dalmatica +1",
			back="Conveyance Cape",
			hands="Glyphic Bracers +1",
			legs="Glyphic Spats +1",
			feet="Glyph. Pigaches +1"}

    sets.precast.BloodPactRage = sets.precast.BloodPactWard

    -- Fast cast sets for spells

    sets.precast.FC = {
        	ammo="Sancus sachet +1",
			head={ name="Merlinic Hood", augments={'Mag. Acc.+27','"Fast Cast"+5','MND+10',}},
			neck="Orunmila's Torque",
			ear1="Etiolation earring",
			ear2="Loquac. Earring",
			body="Inyanga Jubbah +1",
			hands="Glyphic Bracers +1",
			ring1="Kishar Ring",
			ring2="Lebeche Ring",
			back="Swith Cape +1",
			waist="Witful Belt";
			feet={ name="Merlinic Crackows", augments={'Mag. Acc.+4','"Fast Cast"+6','AGI+3',}},
			legs="Psycloth Lappas"}

    sets.precast.FC['Enhancing Magic'] = set_combine(sets.precast.FC, {waist="Siegel Sash"})

    sets.precast.Cure = set_combine(sets.precast.FC,{body="Heka's Kalasiris"})
    sets.precast.Cure = set_combine(sets.precast.FC,{body="Heka's Kalasiris"})


    -- Weaponskill sets
    -- Default set for any weaponskill that isn't any more specifically defined
    sets.precast.WS = {
        head="",neck="Asperity Necklace",ear1="",ear2="",
        body="",hands="",ring1="Rajas Ring",ring2="",
        back="Pahtli Cape",waist="",legs="",feet=""}

    -- Specific weaponskill sets.  Uses the base set if an appropriate WSMod version isn't found.
    sets.precast.WS['Myrkr'] = {
        head="",ear1="Gifted Earring",ear2="Loquacious Earring",
        body="Con. Doublet +2",hands="Beck. Bracers +1",ring1="Evoker's Ring",ring2="Sangoma Ring",
        back="Pahtli Cape",waist="Fucho-no-Obi",legs="Assid. Pants +1",feet=""}

    sets.precast.WS['Shattersoul'] = {
        head="",
        body="",hands="",
        back="",waist="Fucho-no-Obi",legs="Assid. Pants +1",feet=""}

	sets.precast.WS['Garland of Bliss'] = {
		head="",neck="",ear1="",ear2="Friomisi Earring",
		body="Shango robe",hands="",ring1="", ring2="",
		back="",waist="Eschan stone",legs="",feet=""}
    --------------------------------------
    -- Midcast sets
    --------------------------------------

    sets.midcast.FastRecast = {
        ear2="Loquacious Earring",
        body="Inyanga Jubbah +1",
        back="Swith Cape +1",
		waist="Witful Belt",
		feet={ name="Merlinic Crackows", augments={'Mag. Acc.+4','"Fast Cast"+6','AGI+3',}},
		legs="Psycloth Lappas"}

    sets.midcast.Cure = {
		head="Vanya Hood",
        main="Nirvana",
		sub="Elan strap +1",
		neck="Incanter's Torque",
		ear1="Beatific earring",
		ear2="Healing Earring",
		body="Heka's Kalasiris",
		hands="Reveal. mitts +1",
		back="Tempered Cape +1",
		waist="Bishop's sash",
        ring1="Janniston ring",
		ring2="Sirona's Ring",
		legs="Marduk's shalwar +1",
		feet="Vanya clogs"}

    sets.midcast.Stoneskin = {head="Umuthi hat", ear1="Andoaa earring", neck="Nodens gorget", waist="Siegel Sash"}

    sets.midcast.Regen = {head="Inyanga Tiara +1"}

    sets.midcast['Elemental Magic'] = {
		head="",neck="",ear1="",ear2="Friomisi Earring",
		body="",hands="",ring1="",ring2="",
		back="",waist="Eschan stone",legs="",feet=""}

    sets.midcast['Dark Magic'] = {main= "Nirvana",
		Head="", neck="Eddy Necklace",
		body="Shango robe",hands="",ring1="",ring2="",
		back="",waist="Fucho-no-obi",legs="Psycloth Lappas", feet="Helios boots"}

    -- Avatar pact sets.  All pacts are Ability type.

    -- Perfect Defense
    sets.midcast.Pet.Alexander = {
		main="Nirvana",
		sub="Vox grip",
		ammo="Sancus sachet +1",
		head="Beckoner's horn +1",
		ear1="Andoaa earring",
		ear2="Smn. earring",
		neck="Incanter's Torque",
		body="Beck. Doublet +1",
		hands="Lamassu mitts +1",
		ring1="Evoker's Ring",
		ring2="Stikini Ring",
		back="Conveyance Cape",
		waist="Kobo obi",
		feet={ name="Apogee Pumps", augments={'MP+60','Summoning magic skill +15','Blood Pact Dmg.+7',}},
		legs="Beckoner's spats +1"}

	sets.midcast.Pet.BloodPactWard = {
		main="Nirvana",
		sub="Oneiros Grip",
		ammo="Sancus sachet +1",
		head="Beckoner's horn +1",
		ear1="Andoaa earring",
		ear2="Smn. earring",
		neck="Incanter's Torque",
		body="Beck. Doublet +1",
		hands="Lamassu mitts +1",
		ring1="Evoker's Ring",
		ring2="Globidonta Ring",
		back="Conveyance Cape",
		waist="Lucidity Sash",
		feet={ name="Apogee Pumps", augments={'MP+60','Summoning magic skill +15','Blood Pact Dmg.+7',}},
		legs="Beckoner's spats +1"}

    sets.midcast.Pet.DebuffBloodPactWard = {
		main="Nirvana",
		sub="Vox grip",
		ammo="Sancus sachet +1",
		head="Beckoner's horn +1",
		ear1="Andoaa earring",
		ear2="Smn. earring",
		neck="Adad amulet",
		body="Beck. Doublet +1",
		hands="Lamassu mitts +1",
		ring1="Evoker's Ring",
		ring2="Globidonta Ring",
		back={ name="Campestres's Cape", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Eva.+20 /Mag. Eva.+20','Pet: "Regen"+10',}},
		waist="Incarnation sash",
		legs="Glyphic spats +1",
		feet="Beck. pigaches +1"}

    sets.midcast.Pet.DebuffBloodPactWard.Acc = sets.midcast.Pet.DebuffBloodPactWard

    sets.midcast.Pet.PhysicalBloodPactRage = {
		main="Nirvana",
		sub="Elan strap +1",
		ammo="Sancus sachet +1",
		head={ name="Apogee Crown +1", augments={'MP+80','Pet: Attack+35','Blood Pact Dmg.+8',}},
		neck="Shulmanu collar",
		ear1="Gelos Earring",
		ear2="Lugalbanda Earring",
		body="Convoker's Doublet +3",
		hands={ name="Merlinic Dastanas", augments={'Pet: Mag. Acc.+15 Pet: "Mag.Atk.Bns."+15','Blood Pact Dmg.+7','Pet: STR+4','Pet: Mag. Acc.+10','Pet: "Mag.Atk.Bns."+3',}},
		ring1="Varar ring",
		ring2="Varar ring",
		back={ name="Campestres's Cape", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Eva.+20 /Mag. Eva.+20','Pet: "Regen"+10',}},
		waist="Regal belt",
		feet={ name="Helios Boots", augments={'Pet: Attack+30 Pet: Rng.Atk.+30','Pet: Crit.hit rate +3','Blood Pact Dmg.+6',}},
		legs="Apogee slacks +1"}

    sets.midcast.Pet.PhysicalBloodPactRage.Acc = sets.midcast.Pet.PhysicalBloodPactRage
	
	sets.midcast.Pet.DoubleRagePacts ={
	}

    sets.midcast.Pet.MagicalBloodPactRage = {
		main="Nirvana",
		sub="Elan strap +1",
		ammo="Sancus sachet +1",
		head={ name="Apogee Crown +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
		ear1="Gelos Earring",
		ear2="Lugalbanda Earring",
		neck="Adad amulet",
		body="Apogee dalmatica +1",
		hands={ name="Merlinic Dastanas", augments={'Pet: Mag. Acc.+20 Pet: "Mag.Atk.Bns."+20','Blood Pact Dmg.+10','Pet: "Mag.Atk.Bns."+6',}},
		ring1="Speaker's Ring",
		ring2="Varar ring",
		back={ name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Mag. Acc+20 /Mag. Dmg.+20','Pet: Haste+10',}},
		waist="Incarnation sash",
		feet={ name="Apogee Pumps", augments={'MP+60','Pet: "Mag.Atk.Bns."+30','Blood Pact Dmg.+7',}},
		legs="Apogee slacks +1"}

    sets.midcast.Pet.MagicalBloodPactRage.Acc = sets.midcast.Pet.MagicalBloodPactRage

	sets.midcast.Pet.HybridBloodPactRage = {
		main="Nirvana",
		sub="Elan strap +1",
		ammo="Sancus sachet +1",
		head={ name="Apogee Crown +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
		ear1="Gelos Earring",
		ear2="Lugalbanda Earring",
		neck="Adad amulet",
		body="Apogee dalmatica +1",
		hands={ name="Merlinic Dastanas", augments={'Pet: Mag. Acc.+15 Pet: "Mag.Atk.Bns."+15','Blood Pact Dmg.+7','Pet: STR+4','Pet: Mag. Acc.+10','Pet: "Mag.Atk.Bns."+3',}},
		ring1="Varar ring",
		ring2="Varar ring",
		back={ name="Campestres's Cape", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Eva.+20 /Mag. Eva.+20','Pet: "Regen"+10',}},
		waist="Incarnation sash",
		feet={ name="Apogee Pumps", augments={'MP+60','Pet: "Mag.Atk.Bns."+30','Blood Pact Dmg.+7',}},
		legs="Apogee slacks +1"}

	-- Aftercast sets



    -- Spirits cast magic spells, which can be identified in standard ways.

    sets.midcast.Pet.WhiteMagic = {ring1="Sheltered ring",legs="Glyphic Spats +1"}

    sets.midcast.Pet['Elemental Magic'] = set_combine(sets.midcast.Pet.MagicalBloodPactRage, {body="",back="",legs=""})

    sets.midcast.Pet['Elemental Magic'].Resistant = {}


    --------------------------------------
    -- Idle/resting/defense/etc sets
    --------------------------------------

    -- Resting sets
    sets.resting = {
		main="Nirvana",
		sub="Oneiros Grip",
		ammo="Sancus sachet +1",
		head="Beckoner's horn +1",
		neck="Sanctity neclace",
		ear1="Moonshade earring",
		ear2="Evans Earring",
		body="Shomonjijoe +1",
		hands="Asteria mitts +1",
		ring1="Evoker's Ring",
		ring2="Globidonta Ring",
		back="Conveyance Cape",
		waist="Fucho-no-Obi",
		legs="Assid. Pants +1",
		feet="Beck. pigaches +1"}

    -- Idle sets
    sets.idle = {
		main="Nirvana",
		sub="Oneiros Grip",
		ammo="Sancus Sachet +1",
		head="Convoker's Horn +2",
		body="Apogee Dalmatica +1",
		hands="Asteria Mitts +1",
		legs="Assid. Pants +1",
		feet="Herald's Gaiters",
		neck="Twilight torque",
		waist="Slipor Sash",
		ear1="Moonshade Earring",
		ear2="Etiolation Earring",
		ring1="Defending ring",
		ring2={ name="Dark Ring", augments={'Phys. dmg. taken -6%','Magic dmg. taken -4%',}},
		back="Solemnity Cape"}

	sets.idle.Town = {
		main="Nirvana",
		sub="Oneiros Grip",
		ammo="Sancus Sachet +1",
		head="Convoker's Horn +2",
		body="Apogee Dalmatica +1",
		hands="Asteria Mitts +1",
		legs="Assid. Pants +1",
		neck="Twilight torque",
		waist="Slipor Sash",
		ear1="Moonshade Earring",
		ear2="Infused Earring",
		ring1="Defending ring",
		ring2={ name="Dark Ring", augments={'Phys. dmg. taken -6%','Magic dmg. taken -4%',}},
		back="Solemnity Cape",
		feet="Herald's Gaiters"}

    sets.idle.PDT = {}

    -- perp costs:
    -- spirits: 7
    -- carby/Cait Sith: 11
    -- fenrir: 13
    -- others: 15

	sets.idle.Avatar = {
		main="Nirvana",
		sub="Oneiros Grip",
		ammo="Sancus sachet +1",
		head="Beckoner's horn +1",
		ear1="Moonshade earring",
		ear2="Evans Earring",
		neck="Caller's Pendant",
		body="Shomonjijoe +1",
		hands="Asteria Mitts +1",
		ring1="Evoker's Ring",
		ring2="Globidonta Ring",
		back={ name="Campestres's Cape", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Eva.+20 /Mag. Eva.+20','Pet: "Regen"+10',}},
		waist="Lucidity sash",
		legs="Assid. Pants +1",
		feet="Beck. pigaches +1"}


    sets.idle.PDT.Avatar = {}

    sets.idle.Spirit = {
		main="Nirvana",
		sub="Vox Grip",
		head="Beckoner's horn +1",
		ear1="Smn. earring",
		ear2="Andoaa earring",
		neck="Incanter's Torque",
		body="Beck. Doublet +1",
		hands="Lamassu mitts +1",
		ring1="Evoker's Ring",
		ring2="Globidonta ring",
		back="Conveyance Cape",
		waist="Kobo obi",
		feet={ name="Apogee Pumps", augments={'MP+60','Summoning magic skill +15','Blood Pact Dmg.+7',}},
		legs="Beck. spats +1"}

    sets.idle.Avatar.Favor = {
		main="Nirvana",
		sub="Oneiros Grip",
		ammo="Sancus sachet +1",
        neck="Incanter's Torque",
		head="Beckoner's horn +1",
		ear1="Andoaa earring",
		ear2="Smn. earring",
		body="Beck. Doublet +1",
		hands="Lamassu mitts +1",
		ring1="Evoker's Ring",
		ring2="Globidonta Ring",
		legs="Beck. spats +1",
		waist="Kobo obi",
		back={ name="Campestres's Cape", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Eva.+20 /Mag. Eva.+20','Pet: "Regen"+10',}},
		feet={ name="Apogee Pumps", augments={'MP+60','Summoning magic skill +15','Blood Pact Dmg.+7',}},
		legs="Beck. spats +1"}

	sets.idle.Avatar.Melee = {
		main="Nirvana",
		sub="Oneiros Grip",
		ammo="Sancus sachet +1",
		head={ name="Helios Band", augments={'Pet: Attack+25 Pet: Rng.Atk.+25','Pet: Crit.hit rate +3','Blood Pact Dmg.+5',}},
		ear1="Rimeice Earring",
		ear2="Domes. earring",
		neck="Caller's Pendant",
		body="Glyphic Doublet +1",
		hands={ name="Helios Gloves", augments={'Pet: Attack+24 Pet: Rng.Atk.+24','Pet: "Dbl. Atk."+8','Blood Pact Dmg.+7',}},
		ring1="Varar ring",
		ring2="Varar ring",
		back={ name="Campestres's Cape", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Eva.+20 /Mag. Eva.+20','Pet: "Regen"+10',}},
		waist="Klouskap sash +1",
		legs={ name="Helios Spats", augments={'Pet: Attack+30 Pet: Rng.Atk.+30','Pet: Crit.hit rate +3','Blood Pact Dmg.+7',}},
		feet="Psycloth boots"}

    sets.perp = {}
-- Carbuncle and Cait Sith have a lower perpetuation cost than other avatars, so items can be adjusted for Regen/Refresh and movement speed gear.
    sets.perp.Carbuncle = {
		main="Nirvana",
		sub="Oneiros Grip",
        head="Beckoner's horn +1",
		neck="Caller's pendant",
		ear1="Moonshade earring",
		ear2="Gifted earring",
		body="Shomonjijoe +1",
		hands="Asteria mitts +1",
		ring1="Evoker's Ring",
		ring2="Globidonta Ring",
		back={ name="Campestres's Cape", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Eva.+20 /Mag. Eva.+20','Pet: "Regen"+10',}},
		waist="Fucho-no-Obi",
		legs="Assid. Pants +1",
		feet="Beck. pigaches +1"}

	sets.perp.staff_and_grip = {}

    -- Defense sets
    sets.defense.PDT = {}

    sets.defense.MDT = {}

    sets.Kiting = {feet="Herald's Gaiters"}

    --------------------------------------
    -- Engaged sets
    --------------------------------------

    -- Normal melee group
    sets.engaged = {main="Nirvana",
		sub="Oneiros Grip",
		ammo="Sancus sachet +1",
		head={ name="Helios Band", augments={'Pet: Attack+25 Pet: Rng.Atk.+25','Pet: Crit.hit rate +3','Blood Pact Dmg.+5',}},
		ear1="Rimeice Earring",
		ear2="Domes. earring",
		neck="Caller's Pendant",
		body="Glyphic Doublet +1",
		hands={ name="Helios Gloves", augments={'Pet: Attack+24 Pet: Rng.Atk.+24','Pet: "Dbl. Atk."+8','Blood Pact Dmg.+7',}},
		ring1="Varar ring",
		ring2="Varar ring",
		back={ name="Campestres's Cape", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Eva.+20 /Mag. Eva.+20','Pet: "Regen"+10',}},
		waist="Klouskap sash +1",
		legs={ name="Helios Spats", augments={'Pet: Attack+30 Pet: Rng.Atk.+30','Pet: Crit.hit rate +3','Blood Pact Dmg.+7',}},
		feet="Psycloth boots"}
end

-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for standard casting events.
-------------------------------------------------------------------------------------------------------------------

-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
-- Set eventArgs.useMidcastGear to true if we want midcast gear equipped on precast.
function job_precast(spell, action, spellMap, eventArgs)
    if state.Buff['Astral Conduit'] and pet_midaction() then
        eventArgs.handled = true
    end
	custom_aftermath_timers_precast(spell)
end

function job_aftercast(spell, action, spellMap, eventArgs)
	custom_aftermath_timers_aftercast(spell)
end



function job_midcast(spell, action, spellMap, eventArgs)
    if state.Buff['Astral Conduit'] and pet_midaction() then
        eventArgs.handled = true
    end
end

-- Runs when pet completes an action.
function job_pet_aftercast(spell, action, spellMap, eventArgs)
    if not spell.interrupted and spell.type == 'BloodPactWard' and spellMap ~= 'DebuffBloodPactWard' then
        wards.flag = true
        wards.spell = spell.english
        send_command('wait 4; gs c reset_ward_flag')
        end


-- Add to Chat rules for buffs with variable values.
		if (spell.english=="Ecliptic Howl") then
                if (world.moon_pct>89) then
                        --add_to_chat(105,"[Ecliptic Howl] Accuracy 25 - Evasion 1")
						windower.send_command('input /p [Ecliptic Howl] Accuracy 25 - Evasion 1')
                elseif (world.moon_pct>74) then
                        --add_to_chat(105,"[Ecliptic Howl] Accuracy 21 - Evasion 5")
						windower.send_command('input /p [Ecliptic Howl] Accuracy 21 - Evasion 5')
                elseif (world.moon_pct>59) then
                        --add_to_chat(105,"[Ecliptic Howl] Accuracy 17 - Evasion 9")
						windower.send_command('input /p [Ecliptic Howl] Accuracy 17 - Evasion 9')
                elseif (world.moon_pct>39) then
                        --add_to_chat(105,"[Ecliptic Howl] Accuracy 13 - Evasion 13")
						windower.send_command('input /p [Ecliptic Howl] Accuracy 13 - Evasion 13')
                elseif (world.moon_pct>24) then
                        --add_to_chat(105,"[Ecliptic Howl] Accuracy 9 - Evasion 17")
						windower.send_command('input /p [Ecliptic Howl] Accuracy 9 - Evasion 17')
                elseif (world.moon_pct>9) then
                        --add_to_chat(105,"[Ecliptic Howl] Accuracy 5 - Evasion 21")
						windower.send_command('input /p [Ecliptic Howl] Accuracy 5 - Evasion 21')
                else
                        --add_to_chat(105,"[Ecliptic Howl] Accuracy 1 - Evasion 25")
						windower.send_command('input /p [Ecliptic Howl] Accuracy 1 - Evasion 25')
                end
        elseif (spell.english=="Ecliptic Growl") then
                if (world.moon_pct>89) then
                        --add_to_chat(5,"[Ecliptic Growl] STR/DEX/VIT 7 - INT/MND/CHR/AGI 1")
						windower.send_command('input /p [Ecliptic Growl] STR/DEX/VIT 7 - INT/MND/CHR/AGI 1')
                elseif (world.moon_pct>74) then
                        --add_to_chat(5,"[Ecliptic Growl] STR/DEX/VIT 6 - INT/MND/CHR/AGI 2")
						windower.send_command('input /p [Ecliptic Growl] STR/DEX/VIT 6 - INT/MND/CHR/AGI 2')
                elseif (world.moon_pct>59) then
                        --add_to_chat(5,"[Ecliptic Growl] STR/DEX/VIT 5 - INT/MND/CHR/AGI 3")
						windower.send_command('input /p [Ecliptic Growl] STR/DEX/VIT 5 - INT/MND/CHR/AGI 3')
                elseif (world.moon_pct>39) then
                        --add_to_chat(5,"[Ecliptic Growl] STR/DEX/VIT 4 - INT/MND/CHR/AGI 4")
						windower.send_command('input /p [Ecliptic Growl] STR/DEX/VIT 4 - INT/MND/CHR/AGI 4')
                elseif (world.moon_pct>24) then
                        --add_to_chat(5,"[Ecliptic Growl] STR/DEX/VIT 3 - INT/MND/CHR/AGI 5")
						windower.send_command('input /p [Ecliptic Growl] STR/DEX/VIT 4 - INT/MND/CHR/AGI 5')
                elseif (world.moon_pct>9) then
                        --add_to_chat(5,"[Ecliptic Growl] STR/DEX/VIT 2 - INT/MND/CHR/AGI 6")
						windower.send_command('input /p [Ecliptic Growl] STR/DEX/VIT 2 - INT/MND/CHR/AGI 6')
                else
                        --add_to_chat(5,"[Ecliptic Growl] STR/DEX/VIT 1 - INT/MND/CHR/AGI 7")
						windower.send_command('input /p [Ecliptic Growl] STR/DEX/VIT 1 - INT/MND/CHR/AGI 7')
                end
        elseif (spell.english=="Lunar Cry") then
                if (world.moon_pct>89) then
                        --add_to_chat(104,"[Lunar Cry] Enemy Acc Down 31 - Enemy Eva Down 1")
						windower.send_command('input /p [Lunar Cry] Enemy Acc Down 31 - Enemy Eva Down 1')
                elseif (world.moon_pct>74) then
                        --add_to_chat(5,"[Lunar Cry] Enemy Acc Down 26 - Enemy Eva Down 6")
						windower.send_command('input /p [Lunar Cry] Enemy Acc Down 27 - Enemy Eva Down 6')
                elseif (world.moon_pct>59) then
                        --add_to_chat(5,"[Lunar Cry] Enemy Acc Down 21 - Enemy Eva Down 11")
						windower.send_command('input /p [Lunar Cry] Enemy Acc Down 21 - Enemy Eva Down 11')
                elseif (world.moon_pct>39) then
                        --add_to_chat(5,"[Lunar Cry] Enemy Acc Down 16 - Enemy Eva Down 16")
						windower.send_command('input /p [Lunar Cry] Enemy Acc Down 16 - Enemy Eva Down 16')
                elseif (world.moon_pct>24) then
                        --add_to_chat(5,"[Lunar Cry] Enemy Acc Down 11 - Enemy Eva Down 21")
						windower.send_command('input /p [Lunar Cry] Enemy Acc Down 11 - Enemy Eva Down 21')
                elseif (world.moon_pct>9) then
                        --add_to_chat(5,"[Lunar Cry] Enemy Acc Down 6 - Enemy Eva Down 26")
						windower.send_command('input /p [Lunar Cry] Enemy Acc Down 6 - Enemy Eva Down 26')
                else
                        --add_to_chat(5,"[Lunar Cry] Enemy Acc Down 1 - Enemy Eva Down 31")
						windower.send_command('input /p [Lunar Cry] Enemy Acc Down 1 - Enemy Eva Down 31')
                end
        elseif (spell.english=="Heavenward Howl") then
                if (world.moon_pct>89) then
                        --add_to_chat(5,"[Heavenward Howl] Moon Phase Full moon - Endrain 15%")
						windower.send_command('input /p [Heavenward Howl] Moon Phase Full moon - Endrain 15%')
                elseif (world.moon_pct>73) then
                        --add_to_chat(5,"[Heavenward Howl] Moon phase 74~90% {Endrain 12%")
						windower.send_command('input /p [Heavenward Howl] Moon Phase 74~90% {Endrain 12%')
                elseif (world.moon_pct>56) then
                        --add_to_chat(5,"[Heavenward Howl] Moon phase 57~73% {Endrain 8%}")
						windower.send_command('input /p [Heavenward Howl] Moon Phase 57~73% {Endrain 8%}')
                elseif (world.moon_pct>39) then
                        --add_to_chat(5,"[Heavenward Howl] Moon phase 40~56% {First Quarter Moon - Endrain 5% | Last Quarter - moon Enaspir 1%}" )
						windower.send_command('input /p [Heavenward Howl] Moon Phase 40~56% {First Quarter Moon - Endrain 5% | Last Quarter - moon Enaspir 1%}')
                elseif (world.moon_pct>24) then
                        --add_to_chat(5,"[Heavenward Howl] Moon phase 25~39% {Enaspir 2%}")
						windower.send_command('input /p [Heavenward Howl] Moon Phase 25~39% {Enaspir 2%}')
                elseif (world.moon_pct>9) then
                        --add_to_chat(5,"[Heavenward Howl] Moon phase 10~24% {Enaspir 4%}")
						windower.send_command('input /p [Heavenward Howl] Moon phase 10~24% {Enaspir 4%}')
                else
                        --add_to_chat(5,"[Heavenward Howl] Moon Phase New Moon - Enaspir 5%")
						windower.send_command('input /p [Heavenward Howl] Moon Phase New Moon - Enaspir 5%')
        end
		elseif (spell.english=="Dream Shroud") then
                if (world.time >= 0 and world.time < 1*60) then
                        --add_to_chat(5,"[Dream Shroud] MAB 13 - MDB 1")
						windower.send_command('input /p [Dream Shroud] MAB 13 - MDB 1')
                elseif (world.time >= 1*60 and world.time < 2*60) or (world.time >= 23*60 and world.time <= 23*60+59) then
                        --add_to_chat(5,"[Dream Shroud] MAB 12 - MDB 2")
						windower.send_command('input /p [Dream Shroud] MAB 12 - MDB 2')
                elseif (world.time >= 2*60 and world.time < 3*60) or (world.time >= 22*60 and world.time < 23*60) then
                        --add_to_chat(5,"[Dream Shroud] MAB 11 - MDB 3")
						windower.send_command('input /p [Dream Shroud] MAB 11 - MDB 3')
                elseif (world.time >= 3*60 and world.time < 4*60) or (world.time >= 21*60 and world.time < 22*60) then
                        --add_to_chat(5,"[Dream Shroud] MAB 10 - MDB 4")
						windower.send_command('input /p [Dream Shroud] MAB 10 - MDB 4')
                elseif (world.time >= 4*60 and world.time < 5*60) or (world.time >= 20*60 and world.time < 21*60) then
                        --add_to_chat(5,"[Dream Shroud] MAB 9 - MDB 5")
						windower.send_command('input /p [Dream Shroud] MAB 9 - MDB 5")')
                elseif (world.time >= 5*60 and world.time < 6*60) or (world.time >= 19*60 and world.time < 20*60) then
                        --add_to_chat(5,"[Dream Shroud] MAB 8 - MDB 6")
						windower.send_command('input /p [Dream Shroud] MAB 8 - MDB 6')
                elseif (world.time >= 6*60 and world.time < 7*60) or (world.time >= 18*60 and world.time < 19*60) then
                        --add_to_chat(5,"[Dream Shroud] MAB 7 - MDB 7")
						windower.send_command('input /p [Dream Shroud] MAB 7 - MDB 7')
                elseif (world.time >= 7*60 and world.time < 8*60) or (world.time >= 17*60 and world.time < 18*60) then
                        --add_to_chat(5,"[Dream Shroud] MAB 6 - MDB 8")
						windower.send_command('input /p [Dream Shroud] MAB 6 - MDB 8')
                elseif (world.time >= 8*60 and world.time < 9*60) or (world.time >= 16*60 and world.time < 17*60) then
                        --add_to_chat(5,"[Dream Shroud] MAB 5 - MDB 9")
						windower.send_command('input /p [Dream Shroud] MAB 5 - MDB 9')
                elseif (world.time >= 9*60 and world.time < 10*60) or (world.time >= 15*60 and world.time < 16*60) then
                        --add_to_chat(5,"[Dream Shroud] MAB 4 - MDB 10")
						windower.send_command('input /p [Dream Shroud] MAB 4 - MDB 10')
                elseif (world.time >= 10*60 and world.time < 11*60) or (world.time >= 14*60 and world.time < 15*60) then
                        --add_to_chat(5,"[Dream Shroud] MAB 3 - MDB 11")
						windower.send_command('input /p [Dream Shroud] MAB 3 - MDB 11')
                elseif (world.time >= 11*60 and world.time < 12*60) or (world.time >= 13*60 and world.time < 14*60) then
                        --add_to_chat(5,"[Dream Shroud] MAB 2 - MDB 12")
						windower.send_command('input /p [Dream Shroud] MAB 2 - MDB 12 ')
                else
                        --add_to_chat(5,"[Dream Shroud] MAB 1 - MDB 13")
						windower.send_command('input /p [Dream Shroud] MAB 1 - MDB 13 ')
        end
	end

	if not spell.interrupted then
		-- Create custom timers for Perfect Defense.
		if durations[spell.english] then
			local timer_cmd = 'timers c "'..spell.english..'" '..tostring(durations[spell.english])..' down'

			if timer_icons[spell.english] then
				timer_cmd = timer_cmd..' '..timer_icons[spell.english]
			end

			send_command(timer_cmd)
		end
	end
end

-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for non-casting events.
-------------------------------------------------------------------------------------------------------------------

-- Called when a player gains or loses a buff.
-- buff == buff gained or lost
-- gain == true if the buff was gained, false if it was lost.
function job_buff_change(buff, gain)
    if state.Buff[buff] ~= nil then
        handle_equipping_gear(player.status)
    elseif storms:contains(buff) then
        handle_equipping_gear(player.status)
    end
	if buff == 'sleep' and pet.isvalid then
        if gain then
            equip({neck="Sacrifice Torque"})
            disable('neck')
        else
            enable('neck')
            handle_equipping_gear(player.status)
		end
	end
end


-- Called when the player's pet's status changes.
-- This is also called after pet_change after a pet is released.  Check for pet validity.
function job_pet_status_change(newStatus, oldStatus, eventArgs)
    if pet.isvalid and not midaction() and not pet_midaction() and (newStatus == 'Engaged' or oldStatus == 'Engaged') then
        handle_equipping_gear(player.status, newStatus)
    end
 end


-- Called when a player gains or loses a pet.
-- pet == pet structure
-- gain == true if the pet was gained, false if it was lost.
function job_pet_change(petparam, gain)
    classes.CustomIdleGroups:clear()
    if gain then
        if avatars:contains(pet.name) then
            classes.CustomIdleGroups:append('Avatar')
        elseif spirits:contains(pet.name) then
            classes.CustomIdleGroups:append('Spirit')
        end
    --else
      --  select_default_macro_book('reset')
    --end
end

-------------------------------------------------------------------------------------------------------------------
-- User code that supplements standard library decisions.
-------------------------------------------------------------------------------------------------------------------

-- Custom spell mapping.
function job_get_spell_map(spell)
   if spell.type == 'BloodPactRage' then
        if magicalRagePacts:contains(spell.english) then
            return 'MagicalBloodPactRage'
		elseif HybridRagePacts:contains(spell.english) then
			return 'HybridBloodPactRage'
		elseif SkillPacts:contains(spell.english) then
			return 'Alexander'
		elseif doubleRagePacts:containts(spell.english)then
			return 'DoubleRagePacts'
		else
            return 'PhysicalBloodPactRage'
        end
    elseif spell.type == 'BloodPactWard' and spell.target.type == 'MONSTER' then
       return 'DebuffBloodPactWard'
	end
end

-- Modify the default idle set after it was constructed.
function customize_idle_set(idleSet)
    if pet.isvalid then
        if sets.perp[pet.name] then
            idleSet = set_combine(idleSet, sets.perp[pet.name])
        end
        gear.perp_staff.name = elements.perpetuance_staff_of[pet.element]
        if gear.perp_staff.name and (player.inventory[gear.perp_staff.name] or player.wardrobe[gear.perp_staff.name]) then
            idleSet = set_combine(idleSet, sets.perp.staff_and_grip)
        end
        if state.Buff["Avatar's Favor"] and avatars:contains(pet.name) then
            idleSet = set_combine(idleSet, sets.idle.Avatar.Favor)
        end
        if pet.status == 'Engaged' then
            idleSet = set_combine(idleSet, sets.idle.Avatar.Melee)
        end
-- Automatically change equipment in the avatar melee set based on MP level.
        if pet.status == 'Engaged' and player.mpp < 15 then
            idleSet = set_combine(sets.idle.Avatar.Melee, {body="Shomonjijoe +1"})
        end
        if pet.status == 'Engaged' and player.mpp < 10 then
            idleSet = set_combine(sets.idle.Avatar.Melee, {head="Beckoner's horn +1" , body="Shomonjijoe +1"})
        end
        if pet.status == 'Engaged' and player.mpp < 5 then
            idleSet = set_combine(IdleSet, sets.idle.Avatar)
        end
-- Puts Cait Sith in the Carbuncle set as they share the same perpetuation cost.
		if pet.name == 'Cait Sith' then
			idleSet = sets.perp.Carbuncle
		end
		if pet.name == 'Cait Sith' and pet.status == 'Engaged' then
			idleSet = set_combine(sets.idle.Avatar.Melee, {hands="Lamassu mitts +1", waist="Moepapa stone"})
		end
		if pet.name == 'Cait Sith' and state.Buff["Avatar's Favor"] then
            idleSet = set_combine(idleSet, sets.idle.Avatar.Favor)
        end
-- Puts Arciela's Grace on in Reives.
		if  buffactive["Reive Mark"] then
            idleSet = set_combine(sets.idle.Avatar, {neck="Arciela's Grace +1"})
        end
		if  buffactive["Reive Mark"] and pet.status == 'Engaged' then
            idleSet = set_combine(sets.idle.Avatar.Melee, {neck="Arciela's Grace +1"})
        end
-- Carbuncle Melee
		if pet.name == 'Carbuncle' and pet.status == 'Engaged' then
			idleSet = set_combine (sets.idle.Avatar.Melee, {hands="Asteria mitts +1" , waist="Moepapa stone"})
		end
	end
-- Specific area rules for idle sets.
	if world.area:contains('Adoulin') then
			idleSet = set_combine(sets.idle.Town, {body="Councilor's Garb"})
		end
    return idleSet
end

-- Called by the 'update' self-command, for common needs.
-- Set eventArgs.handled to true if we don't want automatic equipping of gear.
function job_update(cmdParams, eventArgs)
    classes.CustomIdleGroups:clear()
    if pet.isvalid then
        if avatars:contains(pet.name) then
            classes.CustomIdleGroups:append('Avatar')
        elseif spirits:contains(pet.name) then
            classes.CustomIdleGroups:append('Spirit')
        end
    end
end

-- Set eventArgs.handled to true if we don't want the automatic display to be run.
function display_current_job_state(eventArgs)

end


-------------------------------------------------------------------------------------------------------------------
-- User self-commands.
-------------------------------------------------------------------------------------------------------------------

-- Called for custom player commands.
function job_self_command(cmdParams, eventArgs)
    if cmdParams[1]:lower() == 'siphon' then
        handle_siphoning()
        eventArgs.handled = true
    end
end


-------------------------------------------------------------------------------------------------------------------
-- Utility functions specific to this job.
-------------------------------------------------------------------------------------------------------------------

-- Cast the appopriate storm for the currently summoned avatar, if possible.
function handle_petweather()
    if player.sub_job ~= 'SCH' then
        add_to_chat(122, "You can not cast storm spells")
        return
    end

    if not pet.isvalid then
        add_to_chat(122, "You do not have an active avatar.")
        return
    end

    local element = pet.element
    if element == 'Thunder' then
        element = 'Lightning'
    end

    if S{'Light','Dark','Lightning'}:contains(element) then
        add_to_chat(122, 'You do not have access to '..elements.storm_of[element]..'.')
        return
    end

    local storm = elements.storm_of[element]

    if storm then
        send_command('@input /ma "'..elements.storm_of[element]..'" <me>')
    else
        add_to_chat(123, 'Error: Unknown element ('..tostring(element)..')')
    end
end


-- Custom uber-handling of Elemental Siphon
function handle_siphoning()
    if areas.Cities:contains(world.area) then
        add_to_chat(122, 'Cannot use Elemental Siphon in a city area.')
        return
    end

    local siphonElement
    local stormElementToUse
    local releasedAvatar
    local dontRelease

    -- If we already have a spirit out, just use that.
    if pet.isvalid and spirits:contains(pet.name) then
        siphonElement = pet.element
        dontRelease = true
        -- If current weather doesn't match the spirit, but the spirit matches the day, try to cast the storm.
        if player.sub_job == 'SCH' and pet.element == world.day_element and pet.element ~= world.weather_element then
            if not S{'Light','Dark','Lightning'}:contains(pet.element) then
                stormElementToUse = pet.element
            end
        end
    -- If we're subbing /sch, there are some conditions where we want to make sure specific weather is up.
    -- If current (single) weather is opposed by the current day, we want to change the weather to match
    -- the current day, if possible.
    elseif player.sub_job == 'SCH' and world.weather_element ~= 'None' then
        -- We can override single-intensity weather; leave double weather alone, since even if
        -- it's partially countered by the day, it's not worth changing.
        if get_weather_intensity() == 1 then
            -- If current weather is weak to the current day, it cancels the benefits for
            -- siphon.  Change it to the day's weather if possible (+0 to +20%), or any non-weak
            -- weather if not.
            -- If the current weather matches the current avatar's element (being used to reduce
            -- perpetuation), don't change it; just accept the penalty on Siphon.
            if world.weather_element == elements.weak_to[world.day_element] and
                (not pet.isvalid or world.weather_element ~= pet.element) then
                -- We can't cast lightning/dark/light weather, so use a neutral element
                if S{'Light','Dark','Lightning'}:contains(world.day_element) then
                    stormElementToUse = 'Wind'
                else
                    stormElementToUse = world.day_element
                end
            end
        end
    end

    -- If we decided to use a storm, set that as the spirit element to cast.
    if stormElementToUse then
        siphonElement = stormElementToUse
    elseif world.weather_element ~= 'None' and (get_weather_intensity() == 2 or world.weather_element ~= elements.weak_to[world.day_element]) then
        siphonElement = world.weather_element
    else
        siphonElement = world.day_element
    end

    local command = ''
    local releaseWait = 0

    if pet.isvalid and avatars:contains(pet.name) then
        command = command..'input /pet "Release" <me>;wait 1.1;'
        releasedAvatar = pet.name
        releaseWait = 10
    end

    if stormElementToUse then
        command = command..'input /ma "'..elements.storm_of[stormElementToUse]..'" <me>;wait 4;'
        releaseWait = releaseWait - 4
    end

    if not (pet.isvalid and spirits:contains(pet.name)) then
        command = command..'input /ma "'..elements.spirit_of[siphonElement]..'" <me>;wait 4;'
        releaseWait = releaseWait - 4
    end

    command = command..'input /ja "Elemental Siphon" <me>;'
    releaseWait = releaseWait - 1
    releaseWait = releaseWait + 0.1

    if not dontRelease then
        if releaseWait > 0 then
            command = command..'wait '..tostring(releaseWait)..';'
        else
            command = command..'wait 1.1;'
        end

        command = command..'input /pet "Release" <me>;'
    end

    if releasedAvatar then
        command = command..'wait 1.1;input /ma "'..releasedAvatar..'" <me>'
    end

    send_command(command)
end


-- Handles executing blood pacts in a generic, avatar-agnostic way.
-- cmdParams is the split of the self-command.
-- gs c [pact] [pacttype]
function handle_pacts(cmdParams)
    if areas.Cities:contains(world.area) then
        add_to_chat(122, 'You cannot use pacts in town.')
		--windower.send_command('input /p You cannot use pacts in town.')
        return
    end

    --if not pet.isvalid then
      --  add_to_chat(122,'No avatar currently available. Returning to default macro set.')
        --select_default_macro_book('reset')
        --return
    --end

    if spirits:contains(pet.name) then
        add_to_chat(122,'Cannot use pacts with spirits.')
		--windower.send_command('input /p Cannot use pacts with spirits.')
        return
    end

    if not cmdParams[2] then
        add_to_chat(123,'No pact type given.')
		--windower.send_command('input /p No pact type given.')
        return
    end

    local pact = cmdParams[2]:lower()

    if not pacts[pact] then
        add_to_chat(123,'Unknown pact type: '..tostring(pact))
		--windower.send_command('input /p Unknown pact type: '..tostring(pact))
        return
    end

    if pacts[pact][pet.name] then
        if pact == 'astralflow' and not buffactive['astral flow'] then
            add_to_chat(122,'Cannot use Astral Flow pacts at this time.')
			--windower.send_command('input /p Cannot use Astral Flow pacts at this time.')
            return
        end

        -- Leave out target; let Shortcuts auto-determine it.
        send_command('@input /pet "'..pacts[pact][pet.name]..'"')
    else
        add_to_chat(122,pet.name..' does not have a pact of type ['..pact..'].')
		--windower.send_command('input /p' pet.name.. ' does not have a pact of type ['..pact..'].')
    end
end


-- Event handler for updates to player skill, since we can't rely on skill being
-- correct at pet_aftercast for the creation of custom timers.
windower.raw_register_event('incoming chunk',
    function (id)
        if id == 0x62 then
            if wards.flag then
                create_pact_timer(wards.spell)
                wards.flag = false
                wards.spell = ''
            end
        end
    end)

-- Function to create custom timers using the Timers addon.  Calculates ward duration
-- based on player skill and base pact duration (defined in job_setup).
function create_pact_timer(spell_name)
    -- Create custom timers for ward pacts.
    if wards.durations[spell_name] then
        local ward_duration = wards.durations[spell_name]
        if ward_duration < 181 then
            local skill = player.skills.summoning_magic
            if skill > 300 then
                skill = skill - 300
                if skill > 300 then skill = 300 end
                ward_duration = ward_duration + skill
            end
	if wards[spell_name] then
		local ward_duration = wards[spell_name]
		end
	end

        local timer_cmd = 'timers c "'..spell_name..'" '..tostring(ward_duration)..' down'

        if wards.icons[spell_name] then
            timer_cmd = timer_cmd..' '..wards.icons[spell_name]
        end

        send_command(timer_cmd)
    end
end


-- Select default macro book on initial load or subjob change.
--function select_default_macro_book(reset)
  --  if reset == 'reset' then
        -- lost pet, or tried to use pact when pet is gone
    --end

    -- Default macro set/book
    --set_macro_page(1, 2)
end