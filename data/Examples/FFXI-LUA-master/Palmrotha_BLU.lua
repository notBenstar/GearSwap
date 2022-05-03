function get_sets()
 
        send_command('bind f9 gs c toggle TP set')
        send_command('bind f10 gs c toggle Idle set')
        send_command('bind f11 gs c toggle CDC set')
        send_command('bind f12 gs c toggle Req set')
        send_command('bind !f12 gs c toggle Rea set')
        send_command('bind ^` gs c toggle MB set')
       
        function file_unload()
     
 
        send_command('unbind ^f9')
        send_command('unbind ^f10')
        send_command('unbind ^f11')
        send_command('unbind ^f12')
        send_command('unbind ^`')
       
        send_command('unbind !f9')
        send_command('unbind !f10')
        send_command('unbind !f11')
        send_command('unbind !f12')
 
        send_command('unbind f9')
        send_command('unbind f10')
        send_command('unbind f11')
        send_command('unbind f12')
 
        end    
               
        --Idle Sets--  
        sets.Idle = {}
       
        sets.Idle.index = {'Standard','DT', 'Cleave'}
        Idle_ind = 1                  
       
        sets.Idle.Standard = {head="Rawhide Mask",
										body="Jhakri Robe",
										hands="Rawhide Gloves",
										legs="Carmine Cuisses +1",
										feet="Despair Greaves",
										neck="Loricate Torque +1",
										waist="Fucho-no-Obi",
										left_ear="Heartseeker Earring",
										right_ear="Dudgeon Earring",
										left_ring="Vertigo Ring",
										right_ring="Enlivened Ring",
										back="Solemnity Cape"
										}
                                                 
        sets.Idle.DT = {main="Terra's Staff",sub="Umbra strap",ammo="Staunch Tathlum",
                                head={ name="Herculean Helm", augments={'Accuracy+19 Attack+19','Damage taken-3%','AGI+3','Accuracy+2',}},neck="Loricate Torque +1", ear1="Genmei Earring", ear2="Infused Earring",
                                        body="Emet harness",hands={ name="Herculean Gloves", augments={'DEX+9','Magic dmg. taken -3%','"Refresh"+1',}},ring1="Defending ring",ring2="Vocane Ring",
                                        back="Moonbeam Cape",waist="Flume belt +1",legs={ name="Herculean Trousers", augments={'"Mag.Atk.Bns."+25','Phys. dmg. taken -5%','INT+6','Mag. Acc.+9',}},
										feet={ name="Herculean Boots", augments={'CHR+6','STR+14','"Refresh"+1','Mag. Acc.+14 "Mag.Atk.Bns."+14',}} }
										
										
		sets.Idle.Cleave = {main="Terra's Staff",sub="Umbra strap",ammo="Staunch Tathlum",
                                head={ name="Herculean Helm", augments={'Accuracy+19 Attack+19','Damage taken-3%','AGI+3','Accuracy+2',}},neck="Loricate Torque +1", ear1="Genmei Earring", ear2="Infused Earring",
                                        body="Emet harness",hands={ name="Herculean Gloves", augments={'DEX+9','Magic dmg. taken -3%','"Refresh"+1',}},ring1="Defending ring",ring2="Vocane Ring",
                                        back="Moonbeam Cape",waist="Flume belt +1", legs = "Carmine Cuisses +1",
										feet={ name="Herculean Boots", augments={'CHR+6','STR+14','"Refresh"+1','Mag. Acc.+14 "Mag.Atk.Bns."+14',}} }
		
										
					
        --TP Sets--
        sets.TP = {}
 
           sets.TP.index = {'Standard', 'AccuracyMid', 'AccuracyFull', 'DT', 'DTAccuracy'}
                --1=Standard, 2 = AccuracyMid, 3=AccuracyFull, 4=DT, 5=DTAccuracy--
				
                TP_ind = 1
				sets.TP.Standard = {  ammo="Expeditious Pinion",
									head="Jhakri Coronal +1",
									body ="Herculean Vest",
									hands="Rawhide Gloves",
									legs="Carmine Cuisses +1",
									feet="Despair Greaves",
									neck="Iqabi Necklace",
									waist="Kentarch Belt",
									left_ear="Heartseeker Earring",
									right_ear="Dudgeon Earring",
									left_ring="Petrov Ring",
									right_ring="Enlivened Ring",
									back="Cornflower Cape"
									}			
																						   
                sets.TP.AccuracyMid = {ammo="Ginsen",
                                        head="Carmine Mask +1",neck="Asperity necklace", ear1="Suppanomimi", ear2="Cessance Earring",                            
										body="Adhemar Jacket",hands="Adhemar Wristbands",ring1="Chirich Ring",ring2="Epona's ring",
                                       back="Cornflower Cape",waist="windbuffet belt +1",legs="Samnuha Tights",feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}} }
       
                sets.TP.AccuracyFull = {ammo="Floestone",
                                        head="Carmine Mask +1",neck="Lissome Necklace", ear1="Dignitary's Earring", ear2="Telos Earring",
                                        body="Adhemar Jacket",hands="Adhemar Wristbands",ring1="Cacoethic Ring",ring2="Chirich Ring",
                                        back="Cornflower Cape",waist="Kentarch Belt +1",legs="Carmine Cuisses +1",feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}} }
                                                       
                sets.TP.DT = {ammo="Staunch Tathlum",
                              head={ name="Herculean Helm", augments={'Accuracy+19 Attack+19','Damage taken-3%','AGI+3','Accuracy+2',}},neck="Loricate Torque +1", ear1="Ethereal", ear2="Genmei Earring",
                              body="Emet harness",hands="Herculean Gloves",ring1="Vocane Ring",ring2="Defending Ring",
                              back="Moonbeam Cape",waist="Flume belt +1",legs={ name="Herculean Trousers", augments={'"Mag.Atk.Bns."+25','Phys. dmg. taken -5%','INT+6','Mag. Acc.+9',}},
							  feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}} }
                                 
                sets.TP.DTAccuracy = {ammo="Ginsen",
                                      head={ name="Herculean Helm", augments={'Accuracy+19 Attack+19','Damage taken-3%','AGI+3','Accuracy+2',}},neck="Loricate Torque +1", ear1="Suppanomimi", ear2="Genmei Earring",     
									  body="Emet harness",hands="Herculean Gloves",ring1="Chirich Ring",ring2="Epona's ring",
                                      back="Cornflower Cape",waist="Flume belt +1",legs={ name="Herculean Trousers", augments={'"Mag.Atk.Bns."+25','Phys. dmg. taken -5%','INT+6','Mag. Acc.+9',}},
									  feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}} }
                                                         
                 
       --Weaponskill Sets--
        sets.WS = {}
       
        sets.Requiescat = {}
       
        sets.Requiescat.index = {'Attack'}
        Requiescat_ind = 1
       
        sets.Requiescat.Attack = {ammo="Seething Bomblet +1",
                                          head="Carmine Mask +1",neck="Fotia gorget",ear1="Moonshade Earring",ear2="Telos Earring",
                                          body="Adhemar Jacket",hands={ name="Herculean Gloves", augments={'Accuracy+21 Attack+21','"Triple Atk."+2','STR+11','Accuracy+9',}},ring1="Petrov Ring",ring2="Epona's ring",
                                          back="Cornflower Cape",
										  waist="Fotia belt",legs="Quiahuiz leggings",feet="Carmine Greaves +1"}
										  
		sets.SavageBlade = {}
       
        sets.SavageBlade.index = {'Attack'}
        SavageBlade_ind = 1
       
           sets.SavageBlade.Attack = {ammo="Floestone",
                                          head={ name="Herculean Helm", augments={'Accuracy+24 Attack+24','Weapon skill damage +5%','DEX+4',}},
										  neck="Caro Necklace",ear1="Ishvara Earring",ear2="Moonshade Earring",
                                          body ="Herculean Vest",hands="Jhakri Cuffs +1",
										  ring1="Petrov Ring",ring2="Rajas Ring",
                                          back="Lupine Cape",
										  waist="Grunfeld Rope",
										  legs={ name="Herculean Trousers", augments={'Accuracy+12 Attack+12','Weapon skill damage +3%','DEX+9','Accuracy+13',}},
										  feet={ name="Herculean Boots", augments={'Attack+29','Weapon skill damage +2%','STR+2','Accuracy+10',}}}
                                                           
        sets.ChantDuCygne = {}
       
        sets.ChantDuCygne.index = {'Attack'}
        ChantDuCygne_ind = 1
       
                sets.ChantDuCygne.Attack = {ammo="Jukukik Feather",
                                            head="Adhemar Bonnet",neck="Fotia gorget",ear1="Moonshade Earring",ear2="Telos Earring",
                                            body ="Herculean Vest",hands="Adhemar Wristbands",ring1="Begrudging Ring",ring2="Epona's Ring",
                                            back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Crit.hit rate+10',}},waist="Fotia belt",legs="Samnuha Tights",feet="Thereoid Greaves"}		

                                                                                                                   
        sets.WS.SanguineBlade = {}
       
        sets.WS.SanguineBlade = {ammo="Pemphredo Tathlum",
                                 head="Pixie Hairpin +1",neck="Sanctity Necklace",rear="Friomisi earring", ear1="Novio Earring",
                                 body="Jhakri Robe",hands="Jhakri Cuffs +1", ring1="Vertigo Ring", ring2 ='Vertigo Ring', waist ="Eschan Stone",
                                 back="Cornflower cape",legs="Jhakri Slops +1",feet="Jhakri Pigaches +1" }
               
        sets.WS.CircleBlade = {}              
                       
        sets.WS.CircleBlade = {ammo="Floestone",
                                          head="Adhemar Bonnet",neck="Fotia gorget",ear1="Moonshade Earring",ear2="Telos Earring",
                                          body="Adhemar Jacket",hands={ name="Herculean Gloves", augments={'Accuracy+21 Attack+21','"Triple Atk."+2','STR+11','Accuracy+9',}},ring1="Petrov Ring",ring2="Epona's Ring",
                                          back="Cornflower Cape",waist="Fotia belt",legs="Samnuha Tights",feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}} }
                                                   
        sets.WS.Expiacion = {}        
                       
        sets.WS.Expiacion = {ammo="Floestone",
                                          head={ name="Herculean Helm", augments={'Accuracy+24 Attack+24','Weapon skill damage +5%','DEX+4',}},
										  neck="Caro Necklace",ear1="Moonshade Earring",ear2="Ishvara Earring",
                                          body="Adhemar Jacket",hands={ name="Herculean Gloves", augments={'Accuracy+21 Attack+21','"Triple Atk."+2','STR+11','Accuracy+9',}},ring1="Petrov Ring",ring2="Rajas Ring",
                                          back="Cornflower Cape",waist="Grunfeld Rope",
										  legs={ name="Herculean Trousers", augments={'Accuracy+12 Attack+12','Weapon skill damage +3%','DEX+9','Accuracy+13',}},
										  feet={ name="Herculean Boots", augments={'Attack+29','Weapon skill damage +2%','STR+2','Accuracy+10',}} }
 
        sets.WS.VorpalBlade = {}
       
        sets.WS.VorpalBlade = {ammo="Floestone",
                                          head="Adhemar Bonnet",neck="Fotia gorget",ear1="Moonshade Earring",ear2="Telos Earring",
                                          body="Adhemar Jacket",hands={ name="Herculean Gloves", augments={'Accuracy+21 Attack+21','"Triple Atk."+2','STR+11','Accuracy+9',}},
										  ring1="Petrov Ring",ring2="Epona's Ring",
                                          back="Cornflower Cape",waist="Fotia belt",
										  legs={ name="Herculean Trousers", augments={'Accuracy+12 Attack+12','Weapon skill damage +3%','DEX+9','Accuracy+13',}},
										  feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}} }
                                                 
        sets.Realmrazer = {}
       
        sets.Realmrazer.index = {'Attack'}
        Realmrazer_ind = 1
       
        sets.Realmrazer.Attack = {ammo="Hydrocera",
                                                      head="Dampening Tam",neck="Fotia gorget",ear1="Brutal Earring",ear2="Cessance Earring",
                                                          body="Adhemar Jacket",hands="Adhemar Wristbands",ring1="Petrov Ring",ring2="Epona's ring",
                                                          back="Lupine Cape",waist="Fotia belt",legs="Telchine Braconi",feet="Rawhide Boots"}
                                                                                                                
        sets.WS.FlashNova = {}
       
        sets.WS.FlashNova = {ammo="Pemphredo Tathlum",
                                   Head ="Jhakri Coronal +1",
								   neck="Sanctity Necklace",rear="Friomisi earring", ear1="Novio Earring",
                                 body="Adhemar Jacket",hands="Amalric Gages", ring1="Vertigo Ring", ring2 ='Vertigo Ring', waist ="Eschan Stone",
                                 back="Cornflower cape",legs="Jhakri Slops +1",feet="Jhakri Pigaches +1"}

                                                               
                                                               
        --Magic Burst Sets--
 
        sets.Burst = {}
        sets.Burst.index = {'BA', 'MB'}
        Burst_ind = 1                                                      
                                                               
                                                               
        --Blue Magic Sets--
        sets.BlueMagic = {}
       
	   sets.BlueMagic.Physical = {ammo ="Floestone",
							         head={ name="Herculean Helm", augments={'Accuracy+19 Attack+19','Damage taken-3%','AGI+3','Accuracy+2',}},neck="Caro Necklace",ear1="Corybant Pearl",ear2="Kemas Earring",
                                     body ="Herculean Vest",hands="Jhakri Cuffs +1",ring1="Petrov Ring",ring2="Rajas Ring",
                                     back="Cornflower Cape",waist="Grunfeld Rope",legs="Samnuha Tights",feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}} }
									 
		 sets.BlueMagic.Dart = {ammo ="Floestone",
							         head={ name="Herculean Helm", augments={'Accuracy+19 Attack+19','Damage taken-3%','AGI+3','Accuracy+2',}},neck="Caro Necklace",ear1="Corybant Pearl",ear2="Kemas Earring",
                                     body ="Herculean Vest",hands="Jhakri Cuffs +1",ring1="Petrov Ring",ring2="Rajas Ring",
                                     back="Cornflower Cape",waist="Chaac Belt",legs="Samnuha Tights",feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}} }
		

		sets.BlueMagic.BlueMagic = {ammo="Pemphredo Tathlum",
                                   Head ="Jhakri Coronal +1",neck="Sanctity Necklace",ear2="Friomisi earring", ear1="Regal Earring",
                                 body="Jhakri Robe",hands="Jhakri Cuffs +1", ring1="Vertigo Ring", ring2 ="Acumen Ring", waist ="Eschan Stone",
                                 back="Cornflower cape",legs="Jhakri Slops +1",feet="Jhakri Pigaches +1" }

        
		sets.BlueMagic.PhysStun = {ammo ="Floestone",
									   ear1="Moonshade Earring",ear2="Mavi Earring", ring2="Stikini Ring", Ring1="Kishar Ring",  back="Cuchulain's Mantle",hands = "Jhakri Cuffs +1"}         

										
	    sets.BlueMagic.Debuff = {ammo="Pemphredo Tathlum",
								  head="Carmine Mask +1",ear2="Regal Earring", ear1="Psystorm Earring", neck ="atzintli necklace",
								body="Jhakri Robe",hands="Jhakri Cuffs +1",ring1="Kishar Ring", ring2="Stikini Ring", back="Cornflower cape",
								legs="Jhakri Slops +1",feet="Jhakri Pigaches +1",wait="Eschan Stone"}
		
				
		sets.BlueMagic.BuffSkill = {ammo="Mavi Tathlum",
                head="Mirage Keffiyeh",  body="Assimilator's Jubbah", neck = "Mavi Scarf", legs="Mavi Tayt +2", back="Cornflower Cape", ring1="Stikini Ring"}
				
		
		sets.BlueMagic.Breath ={
                head="Mirage Keffiyeh",ear1="Moonshade Earring",ear2="Mavi Earring",
                body="Assimilator's Jubbah",hands="Espial Bracers",ring1="Bomb Queen Ring",ring2="Meridian Ring",
                back="Gigant Mantle",waist="Lieutenant's Sash",legs="Mavi Tayt +2",feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}} }
		
		sets.BlueMagic.BlueCure = {
                head="Herculean Helm",neck="Incanter's Torque", ear1 ="Regal Earring", ear2="Mendi. Earring",
                body="Vrikodara Jupon",hands="Telchine Gloves",ring1="Metamorph Ring",ring2="Sirona's Ring",
                back="Solemnity Cape",waist="Eschan Stone",legs="Jhakri Slops +1",feet="Jhakri Pigaches +1"}
                                                 
        
        sets.BlueMagic.HeavyStrike = {ammo="Falcon Eye",
				head="Adhemar Bonnet",  body="Adhemar Jacket", hands={ name="Adhemar Wristbands", augments={'DEX+10','AGI+10','Accuracy+15',}},legs="Samnuha Tights",feet="Rawhide Boots", neck="Subtlety Spec.",
				waist="Chuq'aba Belt",left_ear="Heartseeker Earring",  right_ear="Dignitary's Earring",  left_ring="Dark Ring",  right_ring="Epona's Ring",   back="Cornflower cape"}
                                                                 
        
        sets.BlueMagic.Enmity = {ammo="Iron Gobbet",
				head="Rabid Visor",  body="Emet harness",  hands="Leyline Gloves", legs="Obatala Subligar",  feet="Dux Greaves", neck="Atzintli Necklace",
				waist="Trance belt",  left_ear="Friomisi Earring", right_ear="Cryptic Earring",  left_ring='Supershear Ring',  right_ring="Begrudging Ring",  back="Cornflower Cape"}
				
		sets.BlueMagic.Dark = {ammo="Pemphredo Tathlum",
                                 head="Pixie Hairpin +1",neck="Sanctity Necklace",ear2="Friomisi earring", ear1="Regal Earring",
                                 body="Jhakri Robe",hands="Amalric Gages", ring1="Vertigo Ring", ring2 ='Vertigo Ring', waist ="Eschan Stone",
                                 back="Cornflower cape",legs="Jhakri Slops +1",feet="Jhakri Pigaches +1" }
                                                        
        --Ninja Magic Sets--
        sets.NINMagic = {}
       
		sets.NINMagic.Nuke ={Head ="Jhakri Coronal +1", neck="Sanctity Necklace", ear2="Friomisi earring", ear1="Regal Earring",
							body="Samnuha Coat", hands="Leyline Gloves", ring1="Vertigo Ring", ring2 ="Acumen Ring", waist ="Eschan Stone",
							back="Gunslinger's Cape",   legs="Herculean Trousers",  feet={ name="Herculean Boots", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','VIT+10','"Mag.Atk.Bns."+12',}}}
							
	    sets.NINMagic.Utsusemi ={
                              head={ name="Herculean Helm", augments={'Accuracy+19 Attack+19','Damage taken-3%','AGI+3','Accuracy+2',}},neck="Loricate Torque", ar1="Brutal Earring",ear2="Cessance Earring",
                              body="Emet harness",hands="Adhemar Wristbands",ring1="Vocane Ring",ring2="Petrov Ring",
                              back="Moonbeam Cape",waist="Flume belt +1",legs="Herculean Trousers",feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}}}
 
                                              
        --Utility Sets--
        sets.Utility = {}
       
        sets.Utility.Weather = {waist="Hachirin-no-obi",back="Twilight Cape"}
 
        sets.Utility.MB = {head="Herculean Helm",body="Jhakri Robe",ear1="Static Earring",ring1="Locus Ring",ring2="Mujin Band"}
 
       
        sets.Utility.Stoneskin = {head="Haruspex hat",neck="Stone Gorget",ear1="Loquac. earring",ear2="Earthcry earring",
                                                          body="Assim. jubbah +1",hands="Stone Mufflers",ring1="Rahab ring",
                                                          back="Swith cape",waist="Siegel sash",legs="Haven hose",feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}} }
                                                         
        sets.Utility.Phalanx = {head="Haruspex hat",neck="Colossus's torque",ear1="Loquac. earring",ear2="Augment. earring",
                                                    body="Assim. jubbah +1",hands="Ayao's gages",ring1="Rahab ring",
                                                        back="Swith cape",waist="Pythia sash +1",legs="Portent pants",feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}} }
                                                       
        sets.Utility.Steps = {ammo="Falcon Eye",
							head="Adhemar Bonnet", body="Adhemar Jacket", hands="Rawhide Gloves",legs=="Samnuha Tights", feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}},  neck="Subtlety Spec.",
							waist="Chaac Belt", left_ear="Heartseeker Earring",right_ear="Dignitary's Earring",  left_ring="Yacuruna Ring",  right_ring="Epona's Ring",  back="Grounded Mantle",}
                                                 
        sets.Utility.PDT = {head="Adhemar Bonnet",neck="Loricate Torque +1",ear1="Etiolation Earring",
                                                body="Iuitl vest",hands="Umuthi gloves",ring1="Dark ring",ring2="Dark ring",
                                                back="Moonbeam Cape",waist="Flume belt",legs="Iuitl Tights +1",feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}} }
                                               
        sets.Utility.MDT = {head="Adhemar Bonnet",neck="Loricate Torque +1",
                                                body="Assim. jubbah +1",hands="Umuthi gloves",ring1="Dark ring",ring2="Dark ring",
                                                back="Moonbeam Cape",legs="Quiahuiz trousers",feet="Luhlaza charuqs"}
												
		sets.Utility.Doomed = {waist="Gishdubar Sash", ring1 ="Saida Ring"}
		
		sets.Utility.Sleeping = {neck="Opo-Opo Necklace"}
  
        --Job Ability Sets--
       
        sets.JA = {}
       
        sets.JA.ChainAffinity = {feet="Assim. charuqs +1"}
       
        sets.JA.BurstAffinity = {feet="Hashishin Basmak +1"}
       
        sets.JA.Efflux = {legs="Mavi tayt +2"}
       
        sets.JA.AzureLore = {hands="Luh. bazubands +1"}
       
        sets.JA.Diffusion = {feet="Mirage charuqs +2"}                                                

        --Precast Sets--
        sets.precast = {}
       
        sets.precast.FC = {}
       
       sets.precast.FC.Standard = { ammo="Sapience Orb",
							head="Herculean Helm",  body="Vrikodara Jupon",  hands={ name="Telchine Gloves", augments={'"Fast Cast"+3',}},   legs={ name="Herculean Trousers", augments={'Mag. Acc.+21','"Fast Cast"+5','CHR+3',}},
						    feet="Carmine Greaves +1",  neck="Voltsurge Torque", waist="Witful Belt", left_ear="Etiolation Earring",
						    right_ear="Loquac. Earring", left_ring="Rahab Ring", right_ring="Kishar Ring", back="Swith Cape"}
       
end
 
 
function precast(spell)
        if spell.type == 'Magic' then
                equip(sets.precast.FC.Standard)    
        elseif spell.english == 'Azure Lore' then
                equip(sets.JA.AzureLore)
        elseif spell.english == 'Requiescat' then
                equip(sets.Requiescat[sets.Requiescat.index[Requiescat_ind]])
        elseif spell.english == 'Chant du Cygne' then
                equip(sets.ChantDuCygne[sets.ChantDuCygne.index[ChantDuCygne_ind]])
        elseif spell.english == 'Savage Blade' then
                equip(sets.SavageBlade[sets.SavageBlade.index[SavageBlade_ind]])
        elseif spell.english == 'Circle Blade' then
                equip(sets.WS.CircleBlade)
        elseif spell.english == 'Expiacion' then
                equip(sets.WS.Expiacion)
        elseif spell.english == 'Vorpal Blade' then
                equip(sets.WS.VorpalBlade)
        elseif spell.english == 'Sanguine Blade' then
                equip(sets.BlueMagic.Dark)
                if spell.element == world.day_element or spell.element == world.weather_element then
                              equip(sets.Utility.Weather)
                        end
        elseif spell.english == 'Box Step' then
                equip(sets.Utility.Steps)
        elseif spell.english == 'Realmrazer' then
                equip(sets.Realmrazer[sets.Realmrazer.index[Realmrazer_ind]])
        elseif spell.english == 'Flash Nova' then
                equip(sets.WS.FlashNova)
                if spell.element == world.day_element or spell.element == world.weather_element then
                              equip(sets.Utility.Weather)
                        end
		elseif spell.type == 'Weaponskill' then
			equip(sets.SavageBlade[sets.SavageBlade.index[SavageBlade_ind]])
        end
end
       
       
function midcast(spell,act)
		if spell.english =='magic' then
		equip(sets.BlueMagic.BlueMagic)
		elseif spell.english == 'Vertical Cleave' or spell.english == 'Death Scissors' or spell.english == 'Empty Thrash' or spell.english == 'Dimensional Death' or spell.english == 'Quadrastrike' or spell.english == 'Bloodrake' 
		or spell.english == 'Disseverment' or spell.english == 'Hysteric Barrage' or spell.english == 'Frenetic Rip' or spell.english == 'Seedspray' or spell.english == 'Vanity Dive' or spell.english == 'Goblin Rush' or spell.english == 'Paralyzing Triad' or spell.english == 'Thrashing Assault' 
			or  spell.english == 'Benthic Typhoon' or spell.english == 'Final Sting' or spell.english == 'Spiral Spin' or spell.english == 'Whirl of Rage' 
		   or spell.english == 'Quad. Continuum' or spell.english == 'Delta Thrust' or spell.english == 'Cannonball' or spell.english == 'Glutinous Dart' or spell.english == 'Heavy Strike' or spell.english == 'Sinker Drill' then
                equip(sets.BlueMagic.Physical)
                if buffactive['Chain Affinity'] then
                        equip(sets.JA.ChainAffinity)
                end
                if buffactive['Efflux'] then
                        equip(sets.JA.Efflux)
                end
        elseif spell.english == 'Gates of Hades' or spell.english == 'Lunge' or spell.english == 'Swipe' or spell.english == 'Leafstorm' or spell.english == 'Firespit' or spell.english == 'Acrid Stream' or spell.english == 'Regurgitation' or spell.english == 'Corrosive Ooze' or spell.english == 'Thermal Pulse' or spell.english == 'Magic Hammer'
        or spell.english == 'Evryone. Grudge' or spell.english == 'Water Bomb' or spell.english == 'Dark Orb' or spell.english == 'Thunderbolt' or spell.english == 'Tem. Upheaval' or spell.english == 'Embalming Earth' or spell.english == 'Foul Waters' or spell.english == 'Rending Deluge'
        or spell.english == 'Droning Whirlwind' or spell.english == 'Subduction' or spell.english == 'Anvil Lightning' or spell.english == 'Blinding Fulgor' or spell.english == 'Entomb' or spell.english == 'Palling Salvo' or spell.english == 'Scouring Spate'
        or spell.english == 'Searing Tempest' or spell.english == 'Silent Storm' or spell.english == 'Spectral Floe' or spell.english == 'Blazing Bound' 
		or spell.english == 'Frightful Roar' or spell.english == 'Infrasonics' or spell.english == 'Chaotic Eye' or spell.english == 'Auroral Drape' or  spell.english == 'Barbed Crescent'
        or spell.english == 'Tourbillion' or spell.english == 'Cimicine Discharge' or spell.english == 'Sub-zero smash' or spell.english == 'Filamented Hold' or spell.english == 'Mind Blast' or spell.english == 'Sandspin'
        or spell.english == 'Hecatomb Wave' or spell.english == 'Cold Wave' or spell.english == 'Terror Touch' or spell.english == 'Charged Whisker' then
                equip(sets.BlueMagic.BlueMagic)
                if spell.element == world.day_element or spell.element == world.weather_element then
                              equip(set_combine(sets.BlueMagic.BlueMagic,sets.Utility.Weather))
                        end
                if buffactive['Burst Affinity'] then
                        if Burst_ind == 1 then 
                        equip(sets.JA.BurstAffinity)
                        elseif Burst_ind == 2 then
                        equip(sets.Utility.MB)
                end
                end
		elseif spell.english == 'Tenebral Crush'  then
		      equip(sets.BlueMagic.Dark)
                if spell.element == world.day_element or spell.element == world.weather_element then
                              equip(set_combine(sets.BlueMagic.Dark, sets.Utility.Weather))
                        end
      elseif spell.english=='Sheep Song' or spell.english=='Blood Drain' or spell.english=='Soporific' or spell.english=='Soud Blast' or spell.english=='Chaotic Eye' or  spell.english=='Digest' or spell.english=='Blank Gaze' 
	   or spell.english=='Venom Shell' or spell.english=='MP Drainkiss' or spell.english=='Stinking Gas' or spell.english=='Geist Wall' or spell.english=='Awful Eye' or spell.english=='Blood Saber' 
	   or spell.english=='Jettatura' or spell.english=='Frightful Roar' or spell.english=='Filamented Hold' or spell.english=='Cold Wave' or spell.english=='Light of Penance' or spell.english=='1000 Needles' 
	   or spell.english=='Feather Tickle' or spell.english=='Yawn' or spell.english=='Voracious Trunk' or spell.english=='Infrasonics' or spell.english=='Sandspray' or spell.english=='Corrosive Ooze' 
	   or spell.english=='Enervation' or spell.english=='Lowing' or spell.english=='Triumphant Roar' or spell.english=='Actinic Burst' or spell.english=='Osmosis' or   spell.english=='Cimicine Discharge' 
	   or spell.english=='Demoralizing Roar' or spell.english=='Auroral Drape' or spell.english=='Dream Flower' or spell.english=='Reaving Wind' or spell.english=='Mortal Ray' 
	   or spell.english=='Absolute Terror' or spell.english=='Blistering Roar' then
				equip(sets.BlueMagic.Debuff)
	  elseif spell.english == 'Magic Fruit' or spell.english == 'Plenilune Embrace' or spell.english == 'Wild Carrot' or spell.english == 'Pollen' or spell.english == 'Cure III' or spell.english == 'Cure IV' or spell.english =='White Wind' then
                equip(sets.BlueMagic.BlueCure)
                        if spell.target.name == player.name and string.find(spell.english, 'Magic Fruit') or string.find(spell.english, 'Plenilune Embrace') or string.find(spell.english, 'Wild Carrot') or string.find(spell.english, 'Cure III') or string.find(spell.english, 'Cure IV') then
                                equip(sets.BlueMagic.BlueCure)
                        end
                       
        elseif spell.english == 'Head Butt' or spell.english == 'Sudden Lunge' or spell.english == 'Tourbillion' or spell.english == 'Saurian Slide' or spell.english == 'Sweeping Gouge' or spell.english == 'Frypan' then
                equip(sets.BlueMagic.PhysStun)
        elseif spell.english == 'MP Drainkiss' or spell.english == 'Digest' or spell.english == 'Blood Saber' or spell.english == 'Blood Drain' or spell.english == 'Osmosis'  or spell.english == 'Magic Barrier' or spell.english == 'Diamondhide' or spell.english == 'Metallic Body' then
                equip(sets.BlueMagic.Buff)
                if buffactive['Diffusion'] then
                        equip(sets.JA.Diffusion)
                end
        elseif spell.english == 'Fantod' or spell.english =='Wind Breath' or spell.english =='Exuviation' then
                equip(sets.BlueMagic.Enmity)               
        elseif spell.english == 'Erratic Flutter' or spell.english == 'Nat. Meditation' or spell.english == 'Uproot' or spell.english == 'Saline Coat' or spell.english == 'Barrier Tusk'
		or spell.english=='Metallic Body' or spell.english=='Diamondhide' or spell.english=='Reactor Cool'  or spell.english=='Plasma Charge' or spell.english=='Magic Barrier' or spell.english=='Orcish Counterstance'
		or spell.english=='Pyric Bulwark' or spell.english=='Carcharian Verve' or spell.english == 'Battery Charge' or spell.engligh == 'Refresh' or spell.english =='Occultation' then
                equip(sets.BlueMagic.Buff)
       elseif spell.english =='Poison Breath' or spell.english =='Magnetite Cloud' or spell.english =='Self Destruct' or spell.english =='Hecatomb Wave' or spell.english =='Radiant Breath' or 
        spell.english =='Flying Hip Press' or spell.english =='Bad Breath' or spell.english =='Frost Breath' or spell.english =='Heat Breath' or spell.english =='Final Sting' or 
        spell.english =='Thunder Breath' or spell.english =='Wind Breath' then
				equip(sets.BlueMagic.Breath)
		elseif spell.english == 'Cocoon' or spell.english == 'Mighty Guard' or spell.english == 'Harden Shell' or spell.english == 'Animating Wail' or spell.english == 'Battery Charge' or spell.english == 'Nat. Meditation' or spell.english == 'Carcharian Verve' or spell.english == 'O. Counterstance' or spell.english == 'Barrier Tusk' or spell.english == 'Saline Coat' or spell.english == 'Regeneration' or spell.english == 'Erratic Flutter' then
                if buffactive['Diffusion'] then
                        equip(sets.JA.Diffusion)
                end
        elseif spell.english == 'Utsusemi: Ichi' then
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
        elseif spell.english == 'Utsusemi: Ni'  or spell.english == 'Utsusemi: San' then
                equip(sets.NINMagic.Utsusemi)
        end
end	
 
function aftercast(spell)
      if player.status == 'Engaged' then
                equip(sets.TP[sets.TP.index[TP_ind]])
		
	  elseif player.status == 'Engaged' and buffactive['doom'] then
					equip(set_combine(sets.TP[sets.TP.index[TP_ind]],sets.Utility.Doomed))
		
		elseif player.status == 'Engaged' and buffactive['terror'] or buffactive['stun'] or buffactive['sleep']	then 
					equip(sets.TP.DT)
				
		elseif	buffactive['doom'] then
					equip(set_combine(sets.Idle[sets.Idle.index[Idle_ind]],sets.Utility.Doomed))
			else
			equip(sets.Idle[sets.Idle.index[Idle_ind]])
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