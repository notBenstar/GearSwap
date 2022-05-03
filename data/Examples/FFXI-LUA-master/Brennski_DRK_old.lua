function get_sets()
 
        send_command('bind f9 gs c toggle TP set')
        send_command('bind f10 gs c toggle Idle set')
         function file_unload()
    
        send_command('unbind ^f9')
        send_command('unbind ^f10')

          send_command('unbind !f9')
        send_command('unbind !f10')
 
        send_command('unbind f9')
        send_command('unbind f10')
 
        end    
 --Idle Sets--  
        sets.Idle = {}
       
        sets.Idle.index = {'Standard','DT'}
        Idle_ind = 1                  
       
        sets.Idle.Standard = {ammo="Staunch Tathlum",
                                      head={ name="Valorous Mask", augments={'INT+6','"Dbl.Atk."+1','"Treasure Hunter"+1','Accuracy+6 Attack+6','Mag. Acc.+16 "Mag.Atk.Bns."+16',}},neck="Sanctity Necklace", 
									  ear1="Genmei earring", ear2="Infused Earring",
                                      body="Sulevia's Plate. +2",hands="Sulev. Gauntlets +2",ring1="Defending ring",ring2="Vocane Ring",
                                      waist="Flume Belt +1",legs="Carmine Cuisses +1",feet="Sulevia's Leggings +2", back ="Moonbeam Cape"}
                                                 
        sets.Idle.DT = { ammo="Staunch Tathlum", 
							head="Sulevia's Mask +2",neck="Loricate Torque +1", ear1="Genmei earring", ear2="Infused Earring",
                              body="Sulevia's Plate. +2",hands="Sulev. Gauntlets +2",ring2="Vocane Ring",ring1="Defending  Ring",
                              back="Moonbeam Cape",waist="Flume belt +1",legs="Sulevia's Cuisses +2",feet="Sulevia's Leggings +2"}
										
							
        --TP Sets--
        sets.TP = {}
 
           sets.TP.index = {'Standard', 'AccuracyMid', 'AccuracyFull', 'DT', 'DTAccuracy'}
                --1=Standard, 2 = AccuracyMid, 3=AccuracyFull, 4=DT, 5=DTAccuracy--
				
                TP_ind = 1
				sets.TP.Standard = {ammo="Ginsen",
                                    head="Flam. Zucchetto +2", neck="Lissome necklace", ear1="Cessance Earring",ear2="Telos Earring",
                                    body={ name="Valorous Mail", augments={'Accuracy+20 Attack+20','"Store TP"+8','Accuracy+12','Attack+8',}},hands="Flam. Manopolas +2",ring1="Niqmaddu Ring",ring2="Flamma Ring",
                                     back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},waist="Ioskeha Belt",
									 legs={ name="Odyssean Cuisses", augments={'Accuracy+16 Attack+16','"Store TP"+7','DEX+2','Attack+8',}},
									feet={ name="Valorous Greaves", augments={'Accuracy+25 Attack+25','"Dbl.Atk."+4','CHR+8','Attack+6',}},}
                                                       
                                                       
                sets.TP.AccuracyMid = {ammo="Seeth. Bomblet +1",
                                        head={ name="Valorous Mask", augments={'Accuracy+30','"Store TP"+4','AGI+10','Attack+13',}}, 
										neck="Lissome necklace", ear1="Cessance Earring",ear2="Telos Earring",
										body={ name="Valorous Mail", augments={'Accuracy+20 Attack+20','"Store TP"+8','Accuracy+12','Attack+8',}},hands="Flam. Manopolas +2",ring1="Niqmaddu Ring",ring2="Flamma Ring",
                                         back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
										 waist="Ioskeha Belt",legs={ name="Odyssean Cuisses", augments={'Accuracy+16 Attack+16','"Store TP"+7','DEX+2','Attack+8',}},
										feet={ name="Valorous Greaves", augments={'Accuracy+25 Attack+25','"Dbl.Atk."+4','CHR+8','Attack+6',}},}
       
                sets.TP.AccuracyFull = {ammo="Seeth. Bomblet +1",
                                        head={ name="Valorous Mask", augments={'Accuracy+30','"Store TP"+4','AGI+10','Attack+13',}}
										,neck="Sanctity Necklace", ear1="Dignitary's Earring", ear2="Telos Earring",
                                        body={ name="Valorous Mail", augments={'Accuracy+20 Attack+20','"Store TP"+8','Accuracy+12','Attack+8',}},hands="Flam. Manopolas +2",ring1="Cacoethic Ring",ring2="Flamma Ring",
                                         back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
										 waist="Ioskeha Belt",legs={ name="Odyssean Cuisses", augments={'Accuracy+16 Attack+16','"Store TP"+7','DEX+2','Attack+8',}},
										feet={ name="Valorous Greaves", augments={'Accuracy+25 Attack+25','"Dbl.Atk."+4','CHR+8','Attack+6',}},}
                                                       
                sets.TP.DT = {ammo="Staunch Tathlum",
                              head={ name="Valorous Mask", augments={'Accuracy+30','"Store TP"+4','AGI+10','Attack+13',}}, 
							  neck="Loricate Torque +1", ear1="Cessance Earring",ear2="Telos Earring",
                              body="Souveran Cuirass",hands="Sulev. Gauntlets +2",ring1="Vocane Ring",ring2="Defending Ring",
                               back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
							   waist="Ioskeha Belt",legs="Sulevia's Cuisses +2",feet="Sulevia's Leggings +2"}
                                 
                sets.TP.DTAccuracy = {ammo="Ginsen",
                                      head="Sulevia's Mask +2",neck="Lissome Necklace", ear2="Telos Earring",ear1="Odnowa Earring +1",    
									  body="Sulevia's Plate. +2",hands="Sulev. Gauntlets +2",ring1="Niqmaddu Ring",ring2="Flamma Ring",
                                       back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
									   waist="Ioskeha Belt",legs="Sulevia's Cuisses +2",feet="Sulevia's Leggings +2"}
                                                         
									
       --Weaponskill Sets--
        sets.WS = {}
       
        sets.Resolution = {}
		
		sets.Resolution.Index ={'Attack'}
		
		Reso_ind= 1
		
		sets.Resolution.Attack = {ammo="Seeth. Bomblet +1",
                                    head="Flam. Zucchetto +2", neck="Fotia Gorget", ear1="Moonshade Earring",ear2="Telos Earring",
                                    body={ name="Valorous Mail", augments={'Accuracy+20 Attack+20','"Store TP"+8','Accuracy+12','Attack+8',}},hands="Argosy Mufflers +1",ring1="Niqmaddu Ring",ring2="Regal Ring",
                                     back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
									 waist="Fotia Belt",legs="Argosy Breeches +1",feet={ name="Valorous Greaves", augments={'Accuracy+25 Attack+25','"Dbl.Atk."+4','CHR+8','Attack+6',}},}
		
                                                           
        sets.Ukkos = {} 
		sets.Ukkos.Index ={'Attack'}		
		Ukkos_Ind = 1		
		sets.Ukkos.Atack = {ammo="Yetshila",
                                    head="Flam. Zucchetto +2", neck="Rancor Collar", ear1="Moonshade Earring",ear2="Telos Earring",
                                    body={ name="Valorous Mail", augments={'Accuracy+20 Attack+20','"Store TP"+8','Accuracy+12','Attack+8',}},hands="Argosy Mufflers +1",ring1="Niqmaddu Ring",ring2="Regal Ring",
                                     back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
									 waist="Grunfeld Rope",legs="Argosy Breeches +1",
									feet={ name="Valorous Greaves", augments={'Accuracy+25 Attack+25','"Dbl.Atk."+4','CHR+8','Attack+6',}}}

		sets.KJ = {}
		sets.KJ.Index ={'Attack'}		
		KJ_Ind= 1		
		sets.KJ.Attack = {ammo="Seeth. Bomblet +1",
                                    head="Flam. Zucchetto +2", neck="Fotia Gorget", ear1="Moonshade Earring",ear2="Telos Earring",
                                    body={ name="Valorous Mail", augments={'Accuracy+20 Attack+20','"Store TP"+8','Accuracy+12','Attack+8',}},hands="Argosy Mufflers +1",ring1="Niqmaddu Ring",ring2="Regal Ring",
                                     back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
									 waist="Fotia Belt",legs="Argosy Breeches +1",feet={ name="Valorous Greaves", augments={'Accuracy+25 Attack+25','"Dbl.Atk."+4','CHR+8','Attack+6',}},}
									
    	sets.Upheavel = {}
		sets.Upheavel.Index ={'Attack'}
		Upheavel_ind= 1
		sets.Upheavel.AttackLowTP = {ammo="Knobkierrie", head="Sulevia's Mask +2",neck="Fotia Gorget", ear1="Moonshade Earring",ear2="Telos Earring",
									  body="Sulevia's Plate. +2",hands="Sulev. Gauntlets +2",ring1="Regal Ring",ring2="Niqmaddu Ring",
                                       back={ name="Cichol's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
									   waist="Grunfeld Rope",legs="Sulevia's Cuisses +2",feet={ name="Valorous Greaves", augments={'Accuracy+25 Attack+25','"Dbl.Atk."+4','CHR+8','Attack+6',}},}
									  
		sets.Upheavel.AttackHighTP = {ammo="Knobkierrie", head={ name="Valorous Mask", augments={'Accuracy+18','Weapon skill damage +3%','STR+4','Attack+11',}},
									  neck="Fotia Gorget", ear1="Moonshade Earring",ear2="Ishvara Earring",
									  body={ name="Valorous Mail", augments={'Accuracy+25','Weapon skill damage +4%','DEX+8','Attack+5',}},
									  hands={ name="Valorous Mitts", augments={'Accuracy+17 Attack+17','Weapon skill damage +3%','VIT+9','Accuracy+3','Attack+12',}},ring1="Regal Ring",ring2="Niqmaddu Ring",
                                       back={ name="Cichol's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
									   waist="Grunfeld Rope",legs={ name="Valor. Hose", augments={'Attack+27','Weapon skill damage +5%','DEX+8','Accuracy+15',}},feet="Sulevia's Leggings +2"}								
        
		sets.SB ={}
		sets.SB.Attack = {ammo="Knobkierrie",
                                    head={ name="Valorous Mask", augments={'Accuracy+18','Weapon skill damage +3%','STR+4','Attack+11',}}, 
									neck="Caro Necklace", ear1="Ishvara Earring",ear2="Moonshade Earring",
                                    body={ name="Valorous Mail", augments={'Accuracy+25','Weapon skill damage +4%','DEX+8','Attack+5',}},hands={ name="Valorous Mitts", augments={'Accuracy+17 Attack+17','Weapon skill damage +3%','VIT+9','Accuracy+3','Attack+12',}},ring1="Niqmaddu Ring",ring2="Regal Ring",
                                     back={ name="Cichol's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
									 waist="Grunfeld Rope",legs={ name="Valor. Hose", augments={'Attack+27','Weapon skill damage +5%','DEX+8','Accuracy+15',}},feet="Sulevia's Leggings +2" }
       
        --Ninja Magic Sets--
        sets.NINMagic = {}
       				
	    sets.NINMagic.Utsusemi ={
                              head="Dampening Tam",neck="Loricate Torque +1", ear1="Brutal Earring",ear2="Cessance Earring",
                              body="Emet harness +1",hands="Sulev. Gauntlets +2",ring1="Vocane Ring",ring2="Flamma Ring",
                              back="Solemnity Cape",waist="Flume belt +1",legs="Herculean Trousers",feet="Valorous Greaves"}
							  
		
 
                                              
        --Utility Sets--
        sets.Utility = {}
       
        sets.Utility.Weather = {waist="Hachirin-no-obi",back="Twilight Cape"}
 
        sets.Utility.MB = {head="Herculean Helm",body="Amalric Doublet",ear1="Static Earring",ring1="Locus Ring",ring2="Mujin Band"}
 
       
        sets.Utility.Stoneskin = {head="Haruspex hat",neck="Stone Gorget",ear1="Loquac. earring",ear2="Earthcry earring",
                                                          body="Assim. jubbah +1",hands="Stone Mufflers",ring1="Rahab ring",
                                                          back="Swith cape",waist="Siegel sash",legs="Haven hose",feet="Valorous Greaves"}
                                                         
        sets.Utility.Phalanx = {head="Haruspex hat",neck="Colossus's torque",ear1="Loquac. earring",ear2="Augment. earring",
                                                    body="Assim. jubbah +1",hands="Ayao's gages",ring1="Rahab ring",
                                                        back="Swith cape",waist="Pythia sash +1",legs="Portent pants",feet="Valorous Greaves"}
                                                       
        sets.Utility.Steps = {ammo="Ginsen",
							head="Flam. Zucchetto +2", body={ name="Valorous Mail", augments={'Accuracy+20 Attack+20','"Store TP"+8','Accuracy+12','Attack+8',}}, hands="Rawhide Gloves",legs=="Odyssean Cuisses", feet="Valorous Greaves", neck="Subtlety Spec.",waist="Chaac Belt", left_ear="Heartseeker Earring",right_ear="Dignitary's Earring", left_ring="Yacuruna Ring", right_ring="Cacoethic Ring",  back="Grounded Mantle",}
                                                 
		sets.Utility.Doomed = {waist="Gishdubar Sash", ring1 ="Saida Ring"}
		
		sets.Utility.Enmity = {}
		
		sets.Utility.Sleeping = {neck="Opo-Opo Necklace"}
        --Job Ability Sets--
       
        sets.JA = {}
               
		sets.JA.Berserk ={back = "Grounded Mantle",feet = "Warrior's Calligae +2"}

		sets.JA.Aggressor = { body = "Warrior's Lorcia +2"}
		
		sets.JA.Warcry = {head = "Agoge Mask"}		
		
		sets.JA.MightyStrikes = {hands = "Warrior's Muffler +2"}
		
		sets.JA.Ret ={}
		
		sets.JA.BloodRage ={body ="Ravager's Lorica +2"}
		
		sets.JA.Tomahawk = {ammo = "Throwing Tomahawk",feet = "Warrior's Calligae +2"}

		sets.JA.Restraint ={}
        --Precast Sets--
        sets.precast = {}
       
        sets.precast.FC = {}
       
       sets.precast.FC.Standard = { ammo="Sapience Orb",
							head="Carmine Mask +1", 
							body="Odyssean Chestplate",
							hands="Leyline Gloves",
							legs={ name="Odyssean Cuisses", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','"Fast Cast"+3','INT+1','Mag. Acc.+9','"Mag.Atk.Bns."+3',}},
						    feet="Carmine Greaves +1",
							neck="Voltsurge Torque",
							waist="Witful Belt",
							left_ear="Etiolation Earring",
						    right_ear="Loquac. Earring",
							left_ring="Rahab Ring",
							right_ring="Kishar Ring", 
							back="Swith Cape"}
       
end
 
  
function precast(spell)
        if spell.type == 'Magic' then
                equip(sets.precast.FC.Standard)
        elseif spell.english == 'Resolution' or spell.english == 'Shockwave' or spell.english == 'Stardiver' or spell.english == 'Ruinator' or spell.english == "Vorpal Blade" then
                equip(sets.Resolution.Attack)
        elseif spell.english == "Ukko's Fury" then
                equip(sets.Ukkos.Attack)
        elseif spell.english == 'Savage Blade' or spell.english == 'Ground Strike' or spell.english == 'Steel Cyclone' or spell.english == "Mistral Axe" or spell.english =='Fell Cleave' then
			equip(sets.SB.Attack)
		elseif spell.english == "King's Justice"  then
                equip(sets.KJ.Attack)
        elseif spell.english == "Upheaval"  then
			equip(sets.Upheavel.AttackHighTP)
		elseif spell.english =='Scourge' then
			equip(sets.Upheavel.AttackHighTP)
		elseif spell.english =='Provoke' then
			equip(sets.Utility.Enmity)
		elseif spell.english == 'Box Step' then
                equip(sets.Utility.Steps)
        elseif spell.type == 'Weapon Skill' then
			equip(sets.Resolution.Attack)
		end      
end
       
function midcast(spell,act)
		if spell.skill =='Ninjutsu' then
			equip(sets.NINMagic.Nuke)
			 if spell.element == world.day_element or spell.element == world.weather_element then
                              equip(set_combine(sets.NINMagic.Nuke,sets.Utility.Weather))
                        end
		end
		
	    if spell.english == 'Utsusemi: Ichi' then
                equip(sets.NINMagic.Utsusemi)
                        if buffactive['Copy Image (3)'] then
                                send_command('@wait 0.3; input //cancel Copy Image*')
                        end
                        if buffactive['Copy Image (2)'] then
                                send_command('@wait 0.3; input //cancel Copy Image*')
                        end
                        if buffactive['Copy Image (1)'] then
                                send_command('@wait 0.3; input //cancel Copy Image*')
                        end
                        if buffactive['Copy Image'] then
                                send_command('@wait 0.3; input //cancel Copy Image*')
                        end
        end
 
        if spell.english == 'Utsusemi: Ni'  or spell.english == 'Utsusemi: San' then
                equip(sets.NINMagic.Utsusemi)
        end
end	
 
function aftercast(spell)
        if player.status == 'Engaged' then
                equip(sets.TP[sets.TP.index[TP_ind]])
				if buffactive['doom'] then
					equip(sets.Utility.Doom)
				end
				if buffactive['terror'] or buffactive['stun'] or buffactive['sleep']	then 
					equip(sets.TP.DT)
				end

		else
                equip(sets.Idle[sets.Idle.index[Idle_ind]])					
					if buffactive['doom'] then
					equip(sets.Utility.Doom)
				end
				if buffactive['terror'] or buffactive['stun'] or buffactive['sleep']	then 
					equip(sets.TP.DT)
				end

        end
end

 
function status_change(new,old)
        if player.status == 'Engaged' then
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
         elseif command == 'equip TP set' then
                equip(sets.TP[sets.TP.index[TP_ind]])
        elseif command == 'equip Idle set' then
                equip(sets.Idle[sets.Idle.index[Idle_ind]])
        end
end
