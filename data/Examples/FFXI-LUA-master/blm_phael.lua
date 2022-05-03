-- Local Settings, setting the zones prior to use
toau_zones = S{"Leujaoam Sanctum","Mamool Ja Training Grounds","Lebros Cavern","Periqia","Ilrusi Atoll",
        "Nyzul Isle","Bhaflau Remnants","Arrapago Remnants","Silver Sea Remnants","Zhayolm Remnants"}

resSpells = S{"Barstonra","Barwatera","Baraera","Barfira","Barblizzara","Barthundra",
	"Barstone","Barwater","Baraero","Barfire","Barblizzard","Barthunder"}
Cure_Spells = S{"Cure","Cure II","Cure III","Cure IV","Curaga","Curaga II"}
FC_Spells = S{"Haste","Utsusemi: Ichi","Utsusemi: Ni","Refresh","Regen","Regen II","Firestorm","Hailstorm","Windstorm","Rainstorm","Sandstorm",
				"Thunderstorm","Voidstorm","Aurorastorm","Protect II","Protect III","Shell II"}
AF_Nukes = S{"Stone III","Water III","Aero III","Fire III","Blizzard III","Thunder III",
			"Stonega","Stonega II","Stonega III","Waterga","Waterga II","Waterga III","Aeroga","Aeroga II","Aeroga III","Firaga","Firaga II","Firaga III",
			"Blizzaga","Blizzaga II","Blizzaga III","Thundaga","Thundaga II","Thundaga III",
			"Stoneja","Waterja","Aeroja","Firaja","Blizzaja","Thundaja","Quake II","Flood II","Tornado II","Flare II","Freeze II","Burst II"}
Big_Nukes = S{"Thunder V","Blizzard V","Fire V","Aero V","Water V","Stone V","Thunder VI","Blizzard VI","Fire VI","Aero VI","Water VI","Stone VI"}

Stone_Spells = S{"Stone","Stone II","Stone III","Stone IV","Stone V","Stone VI","Stonega","Stonega II","Stonega III","Stoneja"}

			Gear_Debug = 0
AF_Body_On_ST = 0
MBB_Mode = 0
Death_Mode = 0

--Augmented Gear Multiples--

-- Start Functions here
-- Gear Sets
function get_sets()
		
	sets.aftercast_Idle_refresh = {
	main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}},
    sub="Niobid Strap",
    ammo="Hydrocera",
    head="Befouled Crown",
    body={ name="Witching Robe", augments={'MP+50','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Refresh"+1',}},
    hands={ name="Amalric Gages", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
    legs="Assid. Pants +1",
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','Phys. dmg. taken -3%','Mag. Acc.+15',}},
    neck="Loricate Torque +1",
    waist="Fucho-no-Obi",
    left_ear="Barkaro. Earring",
    right_ear="Etiolation Earring",
    left_ring="Patricius Ring",
    right_ring={ name="Dark Ring", augments={'Breath dmg. taken -3%','Phys. dmg. taken -5%','Magic dmg. taken -3%',}},
    back="Solemnity Cape",
}
	
	sets.aftercast_death = {
	main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}},
    sub="Niobid Strap",
    ammo="Psilomene",
    head="Pixie Hairpin +1",
    body={ name="Witching Robe", augments={'MP+50','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Refresh"+1',}},
    hands={ name="Amalric Gages", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
    legs="Assid. Pants +1",
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','Phys. dmg. taken -3%','Mag. Acc.+15',}},
    neck="Orunmila's Torque",
    waist="Fucho-no-Obi",
    left_ear="Loquac. Earring",
    right_ear="Etiolation Earring",
    left_ring="Mephitas's Ring +1",
    right_ring={ name="Dark Ring", augments={'Breath dmg. taken -3%','Phys. dmg. taken -5%','Magic dmg. taken -3%',}},
    back={ name="Taranus's Cape", augments={'MP+60','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}
	
	sets.aftercast_Move = sets.aftercast_Idle_refresh

	sets.aftercast_Idle = sets.aftercast_Idle_refresh
	
	sets.precast_Cure = {
	main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}},
    sub="Niobid Strap",
    ammo="Impatiens",
    head={ name="Merlinic Hood", augments={'Mag. Acc.+14','"Fast Cast"+6','CHR+2',}},
    body={ name="Merlinic Jubbah", augments={'"Fast Cast"+6','INT+8','"Mag.Atk.Bns."+2',}},
    hands={ name="Merlinic Dastanas", augments={'"Fast Cast"+5','MND+1',}},
    legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
    feet={ name="Merlinic Crackows", augments={'"Mag.Atk.Bns."+1','"Fast Cast"+6','Mag. Acc.+11',}},
    neck="Orunmila's Torque",
    waist="Witful Belt",
    left_ear="Barkaro. Earring",
    right_ear="Loquac. Earring",
    left_ring="Rahab Ring",
    right_ring="Weather. Ring",
    back={ name="Taranus's Cape", augments={'MP+60','Eva.+20 /Mag. Eva.+20','"Fast Cast"+10',}},
}
		
	sets.precast_FastCast = {
	main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}},
    sub="Niobid Strap",
    ammo="Sapience Orb",
    head={ name="Merlinic Hood", augments={'Mag. Acc.+14','"Fast Cast"+6','CHR+2',}},
    body={ name="Merlinic Jubbah", augments={'"Fast Cast"+6','INT+8','"Mag.Atk.Bns."+2',}},
    hands={ name="Merlinic Dastanas", augments={'"Fast Cast"+5','MND+1',}},
    legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
    feet={ name="Merlinic Crackows", augments={'"Mag.Atk.Bns."+1','"Fast Cast"+6','Mag. Acc.+11',}},
    neck="Orunmila's Torque",
    waist="Channeler's Stone",
    left_ear="Loquac. Earring",
    right_ear="Etiolation Earring",
    left_ring="Prolix Ring",
    right_ring="Rahab Ring",
    back={ name="Taranus's Cape", augments={'MP+60','Eva.+20 /Mag. Eva.+20','"Fast Cast"+10',}},
}
	
	sets.precast_Death = {
	main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}},
    sub="Niobid Strap",
    ammo="Psilomene",
    head="Pixie Hairpin +1",
    body={ name="Merlinic Jubbah", augments={'"Fast Cast"+6','INT+8','"Mag.Atk.Bns."+2',}},
    hands={ name="Amalric Gages", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
    legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
    feet={ name="Merlinic Crackows", augments={'"Mag.Atk.Bns."+1','"Fast Cast"+6','Mag. Acc.+11',}},
    neck="Orunmila's Torque",
    waist="Channeler's Stone",
    left_ear="Loquac. Earring",
    right_ear="Etiolation Earring",
    left_ring="Mephitas's Ring +1",
    right_ring="Rahab Ring",
    back={ name="Taranus's Cape", augments={'MP+60','Eva.+20 /Mag. Eva.+20','"Fast Cast"+10',}},
}
	
	sets.precast_Haste = {
	main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}},
    sub="Niobid Strap",
    ammo="Impatiens",
    head={ name="Merlinic Hood", augments={'Mag. Acc.+14','"Fast Cast"+6','CHR+2',}},
    body={ name="Merlinic Jubbah", augments={'"Fast Cast"+6','INT+8','"Mag.Atk.Bns."+2',}},
    hands={ name="Merlinic Dastanas", augments={'"Fast Cast"+5','MND+1',}},
    legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
    feet={ name="Merlinic Crackows", augments={'"Mag.Atk.Bns."+1','"Fast Cast"+6','Mag. Acc.+11',}},
    neck="Orunmila's Torque",
    waist="Witful Belt",
    left_ear="Etiolation Earring",
    right_ear="Loquac. Earring",
    left_ring="Rahab Ring",
    right_ring="Weather. Ring",
    back={ name="Taranus's Cape", augments={'MP+60','Eva.+20 /Mag. Eva.+20','"Fast Cast"+10',}},
}
	
	sets.Resting = {
	main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}},
    sub="Niobid Strap",
    ammo="Hydrocera",
    head={ name="Amalric Coif", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
    body={ name="Witching Robe", augments={'MP+50','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Refresh"+1',}},
    hands={ name="Amalric Gages", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
    legs="Assid. Pants +1",
    feet={ name="Amalric Nails", augments={'Mag. Acc.+15','"Mag.Atk.Bns."+15','"Conserve MP"+6',}},
    neck="Loricate Torque +1",
    waist="Fucho-no-Obi",
    left_ear="Etiolation Earring",
    right_ear="Loquac. Earring",
    left_ring="Patricius Ring",
    right_ring={ name="Dark Ring", augments={'Breath dmg. taken -3%','Phys. dmg. taken -5%','Magic dmg. taken -3%',}},
    back="Solemnity Cape",
}
	
	sets.midcast_EnfeeblingMagic = {
	main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}},
    sub="Niobid Strap",
    ammo="Pemphredo Tathlum",
    head={ name="Amalric Coif", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
    body={ name="Merlinic Jubbah", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','"Drain" and "Aspir" potency +10','CHR+3','Mag. Acc.+14','"Mag.Atk.Bns."+1',}},
    hands={ name="Amalric Gages", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
    legs={ name="Amalric Slops", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
    feet={ name="Amalric Nails", augments={'Mag. Acc.+15','"Mag.Atk.Bns."+15','"Conserve MP"+6',}},
    neck="Sanctity Necklace",
    waist="Yamabuki-no-Obi",
    left_ear="Barkaro. Earring",
    right_ear="Friomisi Earring",
    left_ring="Shiva Ring +1",
    right_ring="Shiva Ring +1",
    back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}
		
	sets.midcast_DarkMagic = {
	main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}},
    sub="Niobid Strap",
    ammo="Pemphredo Tathlum",
    head={ name="Amalric Coif", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
    body={ name="Merlinic Jubbah", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','"Drain" and "Aspir" potency +10','CHR+3','Mag. Acc.+14','"Mag.Atk.Bns."+1',}},
    hands={ name="Amalric Gages", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
    legs={ name="Amalric Slops", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
    feet={ name="Amalric Nails", augments={'Mag. Acc.+15','"Mag.Atk.Bns."+15','"Conserve MP"+6',}},
    neck="Sanctity Necklace",
    waist="Yamabuki-no-Obi",
    left_ear="Barkaro. Earring",
    right_ear="Friomisi Earring",
    left_ring="Shiva Ring +1",
    right_ring="Shiva Ring +1",
    back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}
			
	sets.midcast_EnhancingMagic = {
	main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}},
    sub="Niobid Strap",
    ammo="Pemphredo Tathlum",
    head={ name="Telchine Cap", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    body={ name="Telchine Chas.", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +9',}},
    hands={ name="Telchine Gloves", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}},
    legs={ name="Telchine Braconi", augments={'"Cure" potency +6%','Enh. Mag. eff. dur. +9',}},
    feet={ name="Telchine Pigaches", augments={'"Cure" potency +5%','Enh. Mag. eff. dur. +10',}},
    neck="Sanctity Necklace",
    waist="Yamabuki-no-Obi",
    left_ear="Barkaro. Earring",
    right_ear="Friomisi Earring",
    left_ring="Shiva Ring +1",
    right_ring="Shiva Ring +1",
    back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}
		
	sets.midcast_Duration = {
	main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}},
    sub="Niobid Strap",
    ammo="Pemphredo Tathlum",
    head={ name="Telchine Cap", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    body={ name="Telchine Chas.", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +9',}},
    hands={ name="Telchine Gloves", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}},
    legs={ name="Telchine Braconi", augments={'"Cure" potency +6%','Enh. Mag. eff. dur. +9',}},
    feet={ name="Telchine Pigaches", augments={'"Cure" potency +5%','Enh. Mag. eff. dur. +10',}},
    neck="Sanctity Necklace",
    waist="Yamabuki-no-Obi",
    left_ear="Barkaro. Earring",
    right_ear="Friomisi Earring",
    left_ring="Shiva Ring +1",
    right_ring="Shiva Ring +1",
    back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}
	
	sets.midcast_MAB = {
	main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}},
    sub="Niobid Strap",
    ammo="Pemphredo Tathlum",
    head={ name="Merlinic Hood", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','Magic burst mdg.+9%','Mag. Acc.+7',}},
    body={ name="Merlinic Jubbah", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','"Drain" and "Aspir" potency +10','CHR+3','Mag. Acc.+14','"Mag.Atk.Bns."+1',}},
    hands={ name="Amalric Gages", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
    legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','Magic burst mdg.+11%','CHR+8','Mag. Acc.+7','"Mag.Atk.Bns."+2',}},
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','Phys. dmg. taken -3%','Mag. Acc.+15',}},
    neck="Saevus Pendant +1",
    waist="Refoccilation Stone",
    left_ear="Barkaro. Earring",
    right_ear="Friomisi Earring",
    left_ring="Shiva Ring +1",
    right_ring="Shiva Ring +1",
    back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}

	sets.midcast_MABB = {
	main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}},
    sub="Niobid Strap",
    ammo="Pemphredo Tathlum",
    head={ name="Merlinic Hood", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','Magic burst mdg.+9%','Mag. Acc.+7',}},
    body={ name="Merlinic Jubbah", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','"Drain" and "Aspir" potency +10','CHR+3','Mag. Acc.+14','"Mag.Atk.Bns."+1',}},
    hands={ name="Amalric Gages", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
    legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','Magic burst mdg.+11%','CHR+8','Mag. Acc.+7','"Mag.Atk.Bns."+2',}},
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+21 "Mag.Atk.Bns."+21','Magic burst mdg.+5%','INT+10','Mag. Acc.+8','"Mag.Atk.Bns."+6',}},
    neck="Mizu. Kubikazari",
    waist="Hachirin-no-Obi",
    left_ear="Barkaro. Earring",
    right_ear="Friomisi Earring",
    left_ring="Mujin Band",
    right_ring="Shiva Ring +1",
    back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}
	
	sets.midcast_Death = {
	main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}},
    sub="Niobid Strap",
    ammo="Psilomene",
    head="Pixie Hairpin +1",
    body={ name="Merlinic Jubbah", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','Magic burst mdg.+10%','Mag. Acc.+4',}},
    hands={ name="Amalric Gages", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
    legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','Magic burst mdg.+11%','CHR+8','Mag. Acc.+7','"Mag.Atk.Bns."+2',}},
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+21 "Mag.Atk.Bns."+21','Magic burst mdg.+5%','INT+10','Mag. Acc.+8','"Mag.Atk.Bns."+6',}},
    neck="Mizu. Kubikazari",
    waist="Hachirin-no-Obi",
    left_ear="Barkaro. Earring",
    right_ear="Friomisi Earring",
    left_ring="Mephitas's Ring +1",
    right_ring="Mujin Band",
    back={ name="Taranus's Cape", augments={'MP+60','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}

	sets.midcast_Drain = {
	main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}},
    sub="Niobid Strap",
    ammo="Psilomene",
    head="Pixie Hairpin +1",
    body={ name="Merlinic Jubbah", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','"Drain" and "Aspir" potency +10','CHR+3','Mag. Acc.+14','"Mag.Atk.Bns."+1',}},
    hands={ name="Amalric Gages", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
    legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','Magic burst mdg.+11%','CHR+8','Mag. Acc.+7','"Mag.Atk.Bns."+2',}},
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+21 "Mag.Atk.Bns."+21','Magic burst mdg.+5%','INT+10','Mag. Acc.+8','"Mag.Atk.Bns."+6',}},
    neck="Mizu. Kubikazari",
    waist="Hachirin-no-Obi",
    left_ear="Barkaro. Earring",
    right_ear="Friomisi Earring",
    left_ring="Mephitas's Ring +1",
    right_ring="Mujin Band",
    back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}

	sets.midcast_Comet = {
	main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}},
    sub="Niobid Strap",
    ammo="Pemphredo Tathlum",
    head="Pixie Hairpin +1",
    body={ name="Merlinic Jubbah", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','"Drain" and "Aspir" potency +10','CHR+3','Mag. Acc.+14','"Mag.Atk.Bns."+1',}},
    hands={ name="Amalric Gages", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
    legs={ name="Amalric Slops", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','Phys. dmg. taken -3%','Mag. Acc.+15',}},
    neck="Saevus Pendant +1",
    waist="Yamabuki-no-Obi",
    left_ear="Barkaro. Earring",
    right_ear="Friomisi Earring",
    left_ring="Shiva Ring +1",
    right_ring="Shiva Ring +1",
    back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}
		
	sets.midcast_AF = {
	main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}},
    sub="Niobid Strap",
    ammo="Pemphredo Tathlum",
    head={ name="Merlinic Hood", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','Magic burst mdg.+9%','Mag. Acc.+7',}},
    body="Spae. Coat +1",
    hands={ name="Amalric Gages", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
    legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','Magic burst mdg.+9%',}},
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','Phys. dmg. taken -3%','Mag. Acc.+15',}},
    neck="Saevus Pendant +1",
    waist="Yamabuki-no-Obi",
    left_ear="Barkaro. Earring",
    right_ear="Friomisi Earring",
    left_ring="Mujin Band",
    right_ring="Locus Ring",
    back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}

	sets.midcast_Impact = {
	main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}},
    sub="Niobid Strap",
    ammo="Pemphredo Tathlum",
    body="Twilight Cloak",
    hands={ name="Amalric Gages", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
    legs={ name="Amalric Slops", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','Phys. dmg. taken -3%','Mag. Acc.+15',}},
    neck="Saevus Pendant +1",
    waist="Yamabuki-no-Obi",
    left_ear="Barkaro. Earring",
    right_ear="Friomisi Earring",
    left_ring="Shiva Ring +1",
    right_ring="Shiva Ring +1",
    back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}
		
	sets.midcast_Cure = {
	main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}},
    sub="Niobid Strap",
    ammo="Pemphredo Tathlum",
    head={ name="Telchine Cap", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    body={ name="Telchine Chas.", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +9',}},
    hands={ name="Telchine Gloves", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}},
    legs={ name="Telchine Braconi", augments={'"Cure" potency +6%','Enh. Mag. eff. dur. +9',}},
    feet={ name="Telchine Pigaches", augments={'"Cure" potency +5%','Enh. Mag. eff. dur. +10',}},
    neck="Sanctity Necklace",
    waist="Gishdubar Sash",
    left_ear="Barkaro. Earring",
    right_ear="Friomisi Earring",
    left_ring="Shiva Ring +1",
    right_ring="Sirona's Ring",
    back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}
	sets.stun = {
	main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}},
    sub="Niobid Strap",
    ammo="Pemphredo Tathlum",
    head={ name="Amalric Coif", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
    body={ name="Merlinic Jubbah", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','"Drain" and "Aspir" potency +10','CHR+3','Mag. Acc.+14','"Mag.Atk.Bns."+1',}},
    hands="Telchine Gloves",
    legs={ name="Amalric Slops", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
    feet={ name="Amalric Nails", augments={'Mag. Acc.+15','"Mag.Atk.Bns."+15','"Conserve MP"+6',}},
    neck="Sanctity Necklace",
    waist="Gishdubar Sash",
    left_ear="Barkaro. Earring",
    right_ear="Friomisi Earring",
    left_ring="Shiva Ring +1",
    right_ring="Sirona's Ring",
    back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}
	
	--Weaponskill Sets--
	sets.WS = {}
	sets.WS.Myrkr = {
	main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}},
    sub="Niobid Strap",
    ammo="Psilomene",
    head="Pixie Hairpin +1",
    body={ name="Witching Robe", augments={'MP+50','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Refresh"+1',}},
    hands={ name="Amalric Gages", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
    legs="Assid. Pants +1",
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+21 "Mag.Atk.Bns."+21','Magic burst mdg.+5%','INT+10','Mag. Acc.+8','"Mag.Atk.Bns."+6',}},
    neck="Orunmila's Torque",
    waist="Fucho-no-Obi",
    left_ear="Loquac. Earring",
    right_ear="Etiolation Earring",
    left_ring="Mephitas's Ring +1",
    right_ring={ name="Dark Ring", augments={'Breath dmg. taken -3%','Phys. dmg. taken -5%','Magic dmg. taken -3%',}},
    back={ name="Taranus's Cape", augments={'MP+60','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}

end

-- --- Precast ---

function precast(spell)		
if death_mode == 1 and player.mp > 1800 then
	if spell then
		equip(sets.precast_Death)
	end
else 
	if Cure_Spells:contains(spell.name) then
		equip(sets.precast_Cure)
		send_command('@input /echo Cure Precast Set')		
	elseif FC_Spells:contains(spell.name) then
		equip(sets.precast_Haste)
		send_command('@input /echo Haste Precast Set')
	elseif spell.name == 'Impact' then
		equip(sets.precast_FastCast)
		equip({body="Twilight cloak"})
		send_command('@input /echo Impact Precast Set')		
	elseif spell.name == 'Stun' then
		equip(sets.stun)
		send_command('@input /echo Stun Set')	
	elseif spell.type == 'JobAbility' then
		equip(sets.aftercast_death)
		send_command('@input /echo Death FC Set')
		--TEST--
		--return
	--elseif spell.type == '' then
	--	return
	elseif spell.name == 'Death' then
		equip(sets.precast_Death)
		send_command('@input /echo Death FC Set')
	elseif spell.name == 'Refresh' then
		equip(sets.precast_Death)
		send_command('@input /echo Death FC Set')
	elseif spell.name == 'Haste' then
		equip(sets.precast_Death)
		send_command('@input /echo Death FC Set')
	else
		equip(sets.precast_FastCast)
		send_command('@input /echo Precast Set')	
	end
	
	if spell.english == 'Myrkr' then
			equip(sets.WS.Myrkr)
			send_command('@input /echo Myrkr Set')
	end
end
end
-- --- MidCast ---
function midcast(spell)
if death_mode == 1 and player.mp > 1800 then
	if spell.name =='Death' then
		equip(sets.midcast_Death)
	end
	if spell.name =='Comet' then
		equip(sets.midcast_Comet)
	end
	if spell.skill=='Dark Magic' then
		equip(sets.midcast_DarkMagic)
	end
	if spell.skill =='Elemntal Maigc' or spell.skill =='Enfeebling Maigc' or spell.skill == 'Healing Magic' or spell.skill == 'Enhancing Maigc' then
		equip(sets.midcast_Comet)
	end
	if spell then
		equip(sets.midcast_Comet)
	end
else 
	if Cure_Spells:contains(spell.name) then 
		equip(sets.midcast_Cure)
		send_command('@input /echo ST Cure Set')
		weathercheck(spell.element)
	elseif spell.name == "Stun" then
		return
	elseif spell.skill == 'Enfeebling Magic' then
		equip(sets.midcast_EnfeeblingMagic)
		send_command('@input /echo Enfeebling Set')
	elseif spell.skill == 'Enhancing Magic' then		
		if FC_Spells:contains(spell.name) then
			equip(sets.midcast_Duration)
			if spell.name == 'Refresh' then
				equip({head="Amalric coif"})
			end
			send_command('@input /echo Enhancing Duration Set')
		else
			equip(sets.midcast_EnhancingMagic)
			send_command('@input /echo Enhancing Regular Set')
		end
	elseif spell.skill == 'Elemental Magic' then
		if spell.name == 'Impact' then	
			equip(sets.midcast_Impact)
			send_command('@input /echo Impact Set')
			weathercheck(spell.element)			
		elseif Stone_Spells:contains(spell.name) then
			if MBB_Mode == 1 then
				equip(sets.midcast_MABB)
				equip({neck="Quanpur Necklace"})
				send_command('@input /echo Stone Neck MBB Set')
				weathercheck(spell.element)
			else
				equip(sets.midcast_MAB)
				equip({neck="Quanpur Necklace"})
				send_command('@input /echo Stone Set')
				weathercheck(spell.element)
			end
		else					
			if AF_Body_On_ST == 1 then
				if MBB_Mode == 1 then
					equip(sets.midcast_MABB)				
					equip({body="Spaekona's coat +1"})
					send_command('@input /echo AF Body MBB Set')
					weathercheck(spell.element)
				else
					equip(sets.midcast_MAB)				
					equip({body="Spaekona's coat +1"})
					send_command('@input /echo AF Body Elemental Set')
					weathercheck(spell.element)
				end
			else
				if MBB_Mode == 1 then
					if spell.name == 'Comet' then
					equip(sets.midcast_Comet)					
					send_command('@input /echo MBB Comet Set')
					weathercheck(spell.element)
					else
					equip(sets.midcast_MABB)
					send_command('@input /echo MBB Elemental Set')
					weathercheck(spell.element)					
					end
				else
					if Death_Mode == 1 then
					if spell.name == 'Refresh' then
					equip(sets.midcast_Drain)					
					send_command('@input /echo Death-Buff Set')
					weathercheck(spell.element)
					else
					equip(sets.midcast_Duration)
					equip({head="Amalric coif"})
					send_command('@input /echo Refresh Set')
					weathercheck(spell.element)					
					end
				else
					if Death_Mode == 1 then
					if spell.name == 'Haste' then
					equip(sets.midcast_Drain)					
					send_command('@input /echo Death-Buff Set')
					weathercheck(spell.element)
					else
					equip(sets.midcast_Duration)
					send_command('@input /echo Duration Set')
					weathercheck(spell.element)					
					end
					--TEST MP MANAGEMENT DURING DEATH MODE--					
				else
					if Death_Mode == 1 then
					if spell.type == 'JobAbility' then
					equip(sets.aftercast_death)					
					send_command('@input /echo Death MP Conserve Set')
					weathercheck(spell.element)
					end
					--else
					--equip(sets.midcast_Duration)
					--send_command('@input /echo Duration Set')
					--weathercheck(spell.element)		
					--END TEST MP MANAGEMENT DURING DEATH MODE--
				else
					if spell.name == 'Comet' then
					equip(sets.midcast_Comet)					
					send_command('@input /echo Comet Set')
					weathercheck(spell.element)
					else
					equip(sets.midcast_MAB)									
					send_command('@input /echo Elemental Set')
					weathercheck(spell.element)
					end
				end				
			end
			
		end
	end
end
end
end
	elseif spell.skill == 'Dark Magic' then
		if spell.name == 'Klimaform' then
			equip(sets.midcast_Duration)
			send_command('@input /echo Klimaform Set')
		elseif spell.name == 'Death' then
			equip(sets.midcast_Death)
			send_command('@input /echo Death Set')
			weathercheck(spell.element)
		else
			equip(sets.midcast_DarkMagic)
			send_command('@input /echo Dark Magic Set')
			weathercheck(spell.element)
		end
	else
	end
end		


-- --- Aftercast ---

function aftercast(spell)
if Gear_Debug == 0 then
	if Death_Mode == 0 then
	equip(sets.aftercast_Idle)
	send_command('@input /echo Idle Set')
	else
	equip(sets.aftercast_death)
	send_command('@input /echo Death Idle Set')
	end	
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
		if Death_Mode == 0 then
			equip(sets.aftercast_Idle)
			send_command('@input /echo Idle Set')
		else
			equip(sets.aftercast_death)
			send_command('@input /echo Death Idle Set')
		end		
    elseif command == 'change debug mode' then
		if Gear_Debug == 1 then
			Gear_Debug = 0
			send_command('@input /echo Debug Mode Set to 0')
		else
			Gear_Debug = 1
			send_command('@input /echo Debug Mode Set to 1')
		end
	elseif command == 'change MP mode' then
		if AF_Body_On_ST == 1 then
			AF_Body_On_ST = 0
			send_command('@input /echo MP Saving Mode off')
		else
			AF_Body_On_ST = 1
			send_command('@input /echo MP Saving Mode on')
		end
	elseif command == 'change MBB mode' then
		if MBB_Mode == 1 then
			MBB_Mode = 0
			send_command('@input /echo MBB Mode off')			
		else
			MBB_Mode = 1
			send_command('@input /echo MBB Mode on')			
		end
	elseif command == 'change Death mode' then
		if Death_Mode == 1 then
			Death_Mode = 0
			send_command('@input /echo Death Mode off')
		else
			Death_Mode = 1
			send_command('@input /echo Death Mode on')
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
