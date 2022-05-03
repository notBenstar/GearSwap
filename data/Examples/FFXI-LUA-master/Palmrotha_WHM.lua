-- Local Settings, setting the zones prior to use
naSpells = S{"Paralyna","Silena","Viruna","Erase","Stona","Blindna","Poisona"}

resSpells = S{"Barstonra","Barwatera","Baraera","Barfira","Barblizzara","Barthundra",
	"Barstone","Barwater","Baraero","Barfire","Barblizzard","Barthunder"}
ST_Cure_Spells = S{"Cure","Cure II","Cure III","Cure IV","Cure V","Cure VI"}
MT_Cure_Spells = S{"Curaga","Curaga II","Curaga III","Curaga IV","Curaga V","Cura","Cura II","Cura III"}
FC_Spells = S{"Haste","Utsusemi: Ichi","Utsusemi: Ni","Refresh","Flurry","Aurorastorm"}
Regen_Spells = S{"Regen","Regen II","Regen III","Regen IV"}
Holy_Spells = S{"Banish","Banish II","Banish III","Banishga","Banishga II","Holy","Holy II"}
Gear_Debug = 0

-- Start Functions here
-- Gear Sets
function get_sets()
		
	sets.aftercast_Idle_refresh ={ 
    main="Bolelabunga",
    sub="Genmei Shield",
    ammo="Incantor Stone",
    head="Inyanga Tiara +2",
    body="Ebers Bliaud +1",
    hands={ name="Chironic Gloves", augments={'Pet: Attack+25 Pet: Rng.Atk.+25','Blood Pact Dmg.+1','"Refresh"+1',}},
    legs="Assid. Pants +1",
    feet="Inyan. Crackows +2",
    neck="Loricate Torque +1",
    waist="Fucho-no-Obi",
    left_ear="Lifestorm Earring",
    right_ear="Spellbr. Earring",
    left_ring="Vertigo Ring",
    right_ring="Inyanga Ring",
    back="Solemnity Cape",
}
	
	sets.aftercast_Move = sets.aftercast_Idle_refresh

	sets.aftercast_Idle = sets.aftercast_Idle_refresh
	
	sets.precast_Cure =  { main={ name="Queller Rod", augments={'Healing magic skill +15','"Cure" potency +10%','"Cure" spellcasting time -7%',}},
    sub="Sors Shield",
    ammo="Incantor Stone",
    head="Nahtirah Hat",
    body="Inyanga Jubbah +1",
    hands={ name="Telchine Gloves", augments={'"Fast Cast"+3',}},
    legs="Assid. Pants +1",
    feet="Regal Pumps",
    neck="Voltsurge Torque",
    waist="Channeler's Stone",
    left_ear="Lifestorm Earring",
    right_ear="Spellbr. Earring",
    left_ring="Prolix Ring",
    right_ring="Kishar Ring",
    back={ name="Alaunus's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}},}
		
	sets.precast_FastCast =  {
    ammo="Incantor Stone",
    head="Nahtirah Hat",
    body="Inyanga Jubbah +1",
    hands={ name="Telchine Gloves", augments={'"Fast Cast"+3',}},
    legs="Assid. Pants +1",
    feet="Regal Pumps",
    neck="Voltsurge Torque",
    waist="Channeler's Stone",
    left_ear="Lifestorm Earring",
    right_ear="Spellbr. Earring",
    left_ring="Prolix Ring",
    right_ring="Kishar Ring",
    back={ name="Alaunus's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}},
}
	
	sets.precast_Haste = {    main="Queller Rod",
    sub="Sors Shield",
    ammo="Impatiens",
    head="Vanya Hood",
    body="Inyanga Jubbah +1",
    hands={ name="Fanatic Gloves", augments={'MP+50','Healing magic skill +10','"Conserve MP"+7','"Fast Cast"+7',}},
    legs="Aya. Cosciales +1",
    feet="Chelona Boots",
    neck="Voltsurge Torque",
    waist="Channeler's Stone",
    left_ear="Loquac. Earring",
    right_ear="Enchntr. Earring +1",
    left_ring="Prolix Ring",
    right_ring="Kishar Ring",
    back={ name="Alaunus's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}},
}
		
	sets.midcast_Haste = {  main="Bolelabunga",
    sub="Sors Shield",
    ammo="Homiliary",
    head={ name="Telchine Cap", augments={'Enh. Mag. eff. dur. +9',}},
    body={ name="Telchine Chas.", augments={'Evasion+8','"Cure" spellcasting time -5%','Enh. Mag. eff. dur. +9',}},
    hands="Dynasty Mitts",
    legs={ name="Telchine Braconi", augments={'Enh. Mag. eff. dur. +8',}},
    feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +7',}},
    neck="Voltsurge Torque",
    waist="Channeler's Stone",
    left_ear="Loquac. Earring",
    right_ear="Enchntr. Earring +1",
    left_ring="Sangoma Ring",
    right_ring="Kishar Ring",
    back={ name="Alaunus's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}},
}
	
	sets.precast_Devotion = {}

	sets.Resting = {main="Queller rod",sub="Genmei shield",ammo="Incantor Stone",
		head="Befouled crown",neck="Loricate torque +1",ear1="Sanare earring",ear2="Spellbreaker Earring",
		body="Piety briault +1",hands="Gendewitha gages +1",ring1="Patricius Ring",ring2="Defending ring",
		back="Solemnity cape",waist="Fucho-no-obi",legs="Lengo pants",feet="Inspirited boots"}
	
	sets.midcast_EnfeeblingMagic = {main="Grioavolr",sub="Mephitis grip",ammo="Hydrocera",
		head="Befouled crown",neck="Imbodla necklace",ear1="Lifestorm Earring",ear2="Psystorm Earring",
		body="Chironic doublet",hands="Lurid mitts",ring1="Weatherspoon ring",ring2="Vertigo ring",
		back={ name="Alaunus's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}},
		waist="Rumination sash",legs="Chironic hose",feet="Medium's sabots"}
	
	sets.midcast_BarSpells_Solace = {
    main="Beneficus",
    sub="Sors Shield",
    ammo="Homiliary",
    head={ name="Telchine Cap", augments={'Enh. Mag. eff. dur. +9',}},
    body="Ebers Bliaud +1",
    hands="Dynasty Mitts",
    legs={ name="Piety Pantaln. +1", augments={'Enhances "Shellra V" effect',}},
    feet="Ebers Duckbills",
    neck="Incanter's Torque",
    waist="Channeler's Stone",
    left_ear="Andoaa Earring",
    right_ear="Enchntr. Earring +1",
    left_ring="Rahab Ring",
    right_ring="Kishar Ring",
    back={ name="Alaunus's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}},
}
		
	sets.midcast_Barspells_noSolace = sets.midcast_BarSpells_Solace

	sets.midcast_EnhancingMagic = {    main="Beneficus",
    sub="Sors Shield",
    ammo="Homiliary",
    head={ name="Telchine Cap", augments={'Enh. Mag. eff. dur. +9',}},
    Body ="Piety Briault",
    hands="Dynasty Mitts",
    legs={ name="Piety Pantaln. +1", augments={'Enhances "Shellra V" effect',}},
    feet="Piety Duckbills",
    neck="Incanter's Torque",
    waist="Channeler's Stone",
    left_ear="Andoaa Earring",
    right_ear="Enchntr. Earring +1",
    left_ring="Sangoma Ring",
    right_ring="Kishar Ring",
	back={ name="Alaunus's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}},
}
	
	sets.midcast_MAB = {main="Grioavolr",sub="Niobid strap",ammo="Pemphredo tathlum",
		head="Helios band",neck="Sanctity necklace",ear1="Friomisi Earring",ear2="Crematio Earring",
		body="Vedic coat",hands="Helios gloves",ring1="Weatherspoon ring",ring2="Acumen ring",
		back="Toro cape",waist="Eschan stone",legs="Chironic hose",feet="Navon crackows"}
		
	sets.midcast_Impact = {main="Grioavolr",sub="Mephitis grip",ammo="Pemphredo tathlum",
		neck="Sanctity necklace",ear1="Friomisi Earring",ear2="Crematio Earring",
		body="Twilight cloak",hands="Chironic gloves",ring1="Weatherspoon ring",ring2="Archon ring",
		back="Toro cape",waist="Eschan stone",legs="Chironic hose",feet="Helios boots"}	
		
	sets.midcast_Regen = {    main="Bolelabunga",
    sub="Sors Shield",
    ammo="Homiliary",
    head="Inyanga Tiara +2",
    Body ="Piety Briault",
    hands="Ebers Mitts",
    legs="Theophany Pantaloons +1",
    feet="Ebers Duckbills",
    neck="Incanter's Torque",
    waist="Channeler's Stone",
    left_ear="Andoaa Earring",
    right_ear="Enchntr. Earring +1",
    left_ring="Sangoma Ring",
    right_ring="Kishar Ring",
    back={ name="Alaunus's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}},
}
	sets.midcast_Auspice = {feet="Ebers Duckbills"}
	
	sets.midcast_Cure = { main={ name="Queller Rod", augments={'Healing magic skill +15','"Cure" potency +10%','"Cure" spellcasting time -7%',}},
    sub="Sors Shield",
    ammo="Esper Stone",
    head="Vanya Hood",
    body="Ebers Bliaud +1",
    hands="Theophany Mitts +2",
    legs="Ebers Pant. +1",
    feet ="Vanya Clogs",
    neck="Nodens Gorget",
    waist="Channeler's Stone",
    left_ear="Nourish. Earring +1",
    right_ear="Glorious Earring",
    left_ring="Lebeche Ring",
    right_ring="Sirona's Ring",
    back={ name="Alaunus's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}},
}
	
	sets.midcast_Curaga = {    main={ name="Queller Rod", augments={'Healing magic skill +15','"Cure" potency +10%','"Cure" spellcasting time -7%',}},
    sub="Sors Shield",
    ammo="Esper Stone",
    head="Vanya Hood",
    body="Ebers Bliaud +1",
    hands="Theophany Mitts +2",
    legs="Ebers Pant. +1",
    feet={ name="Kaykaus Boots", augments={'MP+60','"Cure" spellcasting time -5%','Enmity-5',}},
    neck="Nodens Gorget",
    waist="Channeler's Stone",
    left_ear="Nourish. Earring +1",
    right_ear="Glorious Earring",
    left_ring="Lebeche Ring",
    right_ring="Sirona's Ring",
    back={ name="Alaunus's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}},
}
		
	sets.midcast_Stoneskin = sets.midcast_EnhancingMagic
	
	sets.midcast_DebuffRemoval = {    main="Queller Rod",
    sub="Sors Shield",
    ammo="Esper Stone",
    head="Ebers Cap",
    body="Ebers Bliaud +1",
    hands={ name="Fanatic Gloves", augments={'MP+50','Healing magic skill +10','"Conserve MP"+7','"Fast Cast"+7',}},
    legs="Theophany Pantaloons +1",
    feet ="Vanya Clogs",
    neck="Malison Medallion",
    waist="Channeler's Stone",
    left_ear="Nourish. Earring +1",
    right_ear="Loquac. Earring",
    left_ring="Ephedra Ring",
    right_ring="Ephedra Ring",
    back={ name="Alaunus's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}},
}

	sets.midcast_Cursna = {    main="Queller Rod",
    sub="Sors Shield",
    ammo="Esper Stone",
    head="Ebers Cap",
    body="Ebers Bliaud +1",
    hands={ name="Fanatic Gloves", augments={'MP+50','Healing magic skill +10','"Conserve MP"+7','"Fast Cast"+7',}},
    legs="Theophany Pantaloons +1",
    feet ="Vanya Clogs",
    neck="Malison Medallion",
    waist="Channeler's Stone",
    left_ear="Nourish. Earring +1",
    right_ear="Loquac. Earring",
    left_ring="Ephedra Ring",
    right_ring="Ephedra Ring",
    back={ name="Alaunus's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}},
}
	


end

-- --- Precast ---

function precast(spell)
	if ST_Cure_Spells:contains(spell.name) then
		equip(sets.precast_Cure)
		--send_command('@input /echo Cure Precast Set')
	elseif MT_Cure_Spells:contains(spell.name) then
		equip(sets.precast_Cure)
		--send_command('@input /echo Cure Precast Set')
	elseif naSpells:contains(spell.name) then
		equip(sets.precast_FastCast)
		--send_command('@input /echo NA Precast Set')
	elseif FC_Spells:contains(spell.name) then
		equip(sets.precast_Haste)
		--send_command('@input /echo Haste Precast Set')
	elseif spell.name == 'Impact' then
		equip({body="Twilight cloak"})
	else
		equip(sets.precast_FastCast)
		--send_command('@input /echo Precast Set')
	end
end
-- --- MidCast ---
function midcast(spell)
	if ST_Cure_Spells:contains(spell.name) then 
		equip(sets.midcast_Cure)
		weathercheck(spell.element)
		send_command('@input /echo ST Cure Set')
	elseif MT_Cure_Spells:contains(spell.name) then
		equip(sets.midcast_Curaga)
		weathercheck(spell.element)
		send_command('@input /echo MT Cure Set')
	elseif naSpells:contains(spell.name) then
		equip(sets.midcast_DebuffRemoval)
		send_command('@input /echo NA Cure Set')
	elseif Regen_Spells:contains(spell.name) then
		equip(sets.midcast_Regen)
		send_command('@input /echo Regen Set')
	elseif spell.name == 'Cursna' then
		equip(sets.midcast_Cursna)
	elseif spell.skill == 'Enfeebling Magic' then
		equip(sets.midcast_EnfeeblingMagic)
		send_command('@input /echo Enfeebling Set')
	elseif spell.skill == 'Enhancing Magic' then		
		if resSpells:contains(spell.name) then					
			equip(sets.midcast_BarSpells_Solace)
				send_command('@input /echo Barspell Set')
		elseif FC_Spells:contains(spell.name) then		
			equip(sets.midcast_Haste)
				send_command('@input /echo Enhancing Duration Set')
		else
			equip(sets.midcast_EnhancingMagic)
				send_command('@input /echo Enhancing Set')
		end	
	elseif Holy_Spells:contains(spell.name) then
		equip(sets.midcast_MAB)
		weathercheck(spell.element)
		send_command('@input /echo Holy Nuke Set')			
	elseif spell.skill == 'Elemental Magic' then
		if spell.name == 'Impact' then
			equip(sets.midcast_Impact)
			weathercheck(spell.element)
			send_command('@input /echo Impact Set')	
		else
			equip(sets.midcast_MAB)
			weathercheck(spell.element)
			send_command('@input /echo Elemental Set')	
		end
	else
		equip(sets.midcast_Haste)
	end		
end		

-- --- Aftercast ---

function aftercast(spell)
	if Gear_Debug == 0 then
			equip(sets.aftercast_Idle)	
			send_command('@input /echo Idle Set')
	else
	end
end

-- Status Change - ie. Resting

function status_change(new,tab)
	if new == 'Resting' then
		equip(sets['Resting'])
	else
		equip(sets['aftercast_Idle'])
	end
end


-- Self Commands -- ie. Defender 

function self_command(command)	
	if command == 'equip Idle set' then				
		equip(sets.aftercast_Idle_refresh)	
    elseif command == 'change debug mode' then
		if Gear_Debug == 1 then
			Gear_Debug = 0
			send_command('@input /echo Debug Mode Set to 0')
		else
			Gear_Debug = 1
			send_command('@input /echo Debug Mode Set to 1')
		end
	end
end

-- This function is user defined, but never called by GearSwap itself. It's just a user function that's only called from user functions. I wanted to check the weather and equip a weather-based set for some spells, so it made sense to make a function for it instead of replicating the conditional in multiple places.

function weathercheck(spell_element)
	if spell_element == world.weather_element or spell_element == world.day_element then
		equip({waist="Hachirin-no-Obi"})
		send_command('@input /echo Using Element Obi')
	else		
	end
end