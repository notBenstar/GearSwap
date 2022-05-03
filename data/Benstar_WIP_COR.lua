--Please ensure that all of the bullet fields are filled in properly. Also ensure that all of the annotated gun lines are filled in properly.--
--If you wish for Luzaf Ring mode to default to "on", change Luzaf_ind = 1   to Luzaf_ind = 2 --

--To toggle gearsets:
--Main command: //gs c toggle x set       where x = set name variable. Variables are as follows: --
--Idle sets: Idle, Melee TP sets: MTP, Ranged TP sets: RTP--
--Requiescat sets: Req, Last Stand sets: LastS, Leaden Salute sets: LeadS, Wildfire sets: WF--
--Quick Draw sets: QD, Luzaf Ring Mode: Luzaf--

--http://pastebin.com/u/DBentt

function job_setup()

	define_roll_values()

end

function get_sets()
 		
		--Idle Sets--
		sets.Idle = {}
		
		sets.Idle.index = {'Standard'}--, 'DT', 'Town'}
		--1=Standard, 2=DT, 3=Town--
		
		Idle_ind = 1
		--Set this number to whichever set you want the game to default to when you load this lua. This goes for each similar line below.   ex. setting this to 2 will cause the game to equip your DT Idle set by default.--
		
		sets.Idle.Standard = {
			ammo="Adlivun Bullet",
			head="Blood Mask", 
			neck="Wiglen gorget", 
			ear1="Colossus's earring", 
			ear2="Darkness earring",
			body="Kheper jacket", 
			hands="Denali wristbands", 
			ring1="Defending ring", 
			ring2="Sheltered ring",
			back="Engulfer cape", 
			waist="Flume belt", 
			legs="Iuitl tights", 
			feet="Skd. jambeaux +1"
		}

		sets.Idle.DT = {
			ammo="Adlivun Bullet",
			head="Blood Mask", 
			neck="Wiglen gorget", 
			ear1="Colossus's earring", 
			ear2="Darkness earring",
			body="Kheper jacket", 
			hands="Denali wristbands", 
			ring1="Defending ring", 
			ring2="Sheltered ring",
			back="Engulfer cape", 
			waist="Flume belt", 
			legs="Iuitl tights", 
			feet="Skd. jambeaux +1"
			}

		sets.Idle.Town = {
			ammo="Adlivun Bullet",
			head="Blood Mask", 
			neck="Wiglen gorget", 
			ear1="Colossus's earring", 
			ear2="Darkness earring",
			body="Kheper jacket", 
			hands="Denali wristbands", 
			ring1="Defending ring", 
			ring2="Sheltered ring",
			back="Engulfer cape", 
			waist="Flume belt", 
			legs="Iuitl tights", 
			feet="Skd. jambeaux +1"
		}
							  						  
							  
							  
							  
							  
							  
		--Melee TP Sets--
		sets.MeleeTP = {}
		
		sets.MeleeTP.index = {'Standard'}--, 'Accuracy', 'DT', 'DTAccuracy'}
		--1=Standard, 2=Accuracy, 3=DT, 4=DTAccuracy--
		
		MeleeTP_ind = 1
		
		sets.MeleeTP.Standard = {
			ammo="Eminent Bullet",
			head={ name="Adhemar Bonnet", augments={'DEX+10','AGI+10','Accuracy+15',}},
			body={ name="Adhemar Jacket", augments={'DEX+10','AGI+10','Accuracy+15',}},
			hands={ name="Adhemar Wristbands", augments={'DEX+10','AGI+10','Accuracy+15',}},
			legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
			feet={ name="Herculean Boots", augments={'Accuracy+27','"Triple Atk."+2','AGI+4','Attack+10',}},
			neck="Lissome Necklace",
			waist="Kentarch Belt +1",
			left_ear="Dudgeon Earring",
			right_ear="Heartseeker Earring",
			left_ring="Petrov Ring",
			right_ring="Epona's Ring",
			back="Gunslinger's Cape",
		}
							
						
		--sets.MeleeTP.Accuracy = {ammo="Adlivun bullet",
		--			 head="Whirlpool mask", neck="Asperity necklace", ear1="Dudgeon earring", ear2="Heartseeker earring",				 body="Thaumas coat", hands="Lak. gants", ring1="Epona's ring", ring2="Rajas ring",
		--			 back="Letalis mantle", waist="Hurch'lan sash", legs="Iuitl tights", feet="Lanun bottes"}
		--						
		--						
		--sets.MeleeTP.DT = {ammo="Adlivun bullet",
		--		   head="Whirlpool mask", neck="Twilight torque", ear1="Colossus's earring", ear2="Darkness earring",
		--		   body="Lanun frac", hands="Lak. gants", ring1="Defending ring", ring2="Dark ring",
		--		   back="Mollusca mantle", waist="Flume belt", legs="Iuitl tights", feet="Lanun bottes"}
		--				   
		--sets.MeleeTP.DTAccuracy = {ammo="Adlivun bullet",
		--			   head="Whirlpool mask", neck="Twilight torque", ear1="Dudgeon earring", ear2="Heartseeker earring"				   body="Lanun frac", hands="Lak. gants", ring1="Defending ring", ring2="Dark ring",
		--			   back="Letalis mantle", waist="Hurch'lan sash", legs="Iuitl tights", feet="Lanun bottes"}
								   
								   
								   
								   
								   
								   
		--Melee WS Sets--
		sets.Requiescat = {}
		
		sets.Requiescat.index = {'Attack','Accuracy'}
		
		Requiescat_ind = 1
		
		sets.Requiescat.Attack = {
			ammo="Adlivun Bullet",
			head="Blood Mask", 
			neck="Wiglen gorget", 
			ear1="Colossus's earring", 
			ear2="Darkness earring",
			body="Kheper jacket", 
			hands="Denali wristbands", 
			ring1="Defending ring", 
			ring2="Sheltered ring",
			back="Engulfer cape", 
			waist="Flume belt", 
			legs="Iuitl tights", 
			feet="Skd. jambeaux +1"
		}
								  
		--sets.Requiescat.Accuracy = {ammo="Adlivun bullet",
		--			    head="Whirlpool mask", neck="Soil gorget", ear1="Bladeborn earring", ear2="Steelflash earring",				    body="Manibozho jerkin", hands="Iuitl wristbands", ring1="Epona's ring", ring2="Aquasoul ring",					    back="Letalis mantle", waist="Soil belt", legs="Manibozho brais", feet="Manibozho boots"}
									
									
									
									  
									  
									  
									  
									  
									  
		--Ranged TP Sets--
		sets.RangedTP = {}
		
		sets.RangedTP.index = {'Standard'}--, 'Accuracy'}
		--1=Standard, 2=Accuracy--
		
		RangedTP_ind = 1
		
		sets.RangedTP.Standard = {
			ammo="Adlivun Bullet",
			head="Blood Mask", 
			neck="Wiglen gorget", 
			ear1="Colossus's earring", 
			ear2="Darkness earring",
			body="Kheper jacket", 
			hands="Denali wristbands", 
			ring1="Defending ring", 
			ring2="Sheltered ring",
			back="Engulfer cape", 
			waist="Flume belt", 
			legs="Iuitl tights", 
			feet="Skd. jambeaux +1"
			}
								  
		--sets.RangedTP.Accuracy = {ammo="Adlivun bullet",
		--			  head="Laksamana's hat", neck="Arctier's torque", ear1="Volley earring", ear2="Clearview earring",				  body="Lak. frac +1", hands="Sigyn's bazubands", ring1="Moepapa ring", ring2="Hajduk ring",
		--			  back="Gunslinger's cape", waist="Elanid belt", legs="Thur. tights +1", feet="Lak. bottes"}
								
									  
									  
		sets.Bullets = {}
		
		sets.Bullets.TP = {ammo="Adlivun bullet"}
		
		sets.Bullets.QD = {ammo="Adlivun bullet"}
		
		sets.Bullets.WS = {ammo="Adlivun bullet"}
		
		sets.Bullets.MWS = {ammo="Orichalc. bullet"}
									  
		
									  
									  
									  
									  
		--Ranged WS Sets--
		sets.LastStand = {}
		sets.LastStand.index = {'Attack'}--,'Accuracy'}
		
		LastStand_ind = 1
		
		sets.LastStand.Attack = {
			ammo="Adlivun Bullet",
			head="Blood Mask", 
			neck="Wiglen gorget", 
			ear1="Colossus's earring", 
			ear2="Darkness earring",
			body="Kheper jacket", 
			hands="Denali wristbands", 
			ring1="Defending ring", 
			ring2="Sheltered ring",
			back="Engulfer cape", 
			waist="Flume belt", 
			legs="Iuitl tights", 
			feet="Skd. jambeaux +1"
		}
								  
		--sets.LastStand.Accuracy = {ammo="Adlivun bullet",
		--			   head="Laksamana's hat", neck="Light gorget", ear1="Volley earring", ear2="Clearview earring",
		--			   body="Lak. frac +1", hands="Sigyn's bazubands", ring1="Moepapa ring", ring2="Hajduk ring",
		--			   back="Gunslinger's cape", waist="Light belt", legs="Thur. tights +1", feet="Lak. bottes"}
								   
								   
		sets.LeadenSalute = {}
		sets.LeadenSalute.index = {'MagicAttack'}--,'MagicAccuracy'}
		
		LeadenSalute_ind = 1
		
		sets.LeadenSalute.MagicAttack = {
			ammo="Eminent Bullet",
			head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Damage taken-1%','INT+1','"Mag.Atk.Bns."+15',}},
			body={ name="Samnuha Coat", augments={'Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+5','"Dual Wield"+5',}},
			hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
			legs={ name="Herculean Trousers", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +1%','MND+8','Mag. Acc.+3',}},
			feet={ name="Herculean Boots", augments={'Accuracy+27','"Triple Atk."+2','AGI+4','Attack+10',}},
			neck="Fotia Gorget",
			waist="Fotia Belt",
			left_ear="Friomisi Earring",
			right_ear="Moldavite Earring",
			left_ring="Acumen Ring",
			right_ring="Fenrir Ring +1",
			back="Gunslinger's Cape",
		}
								  
										   
										   
		sets.Wildfire = {}
		sets.Wildfire.index = {'MagicAttack'}--,'MagicAccuracy'}
		
		Wildfire_ind = 1
		
		sets.Wildfire.MagicAttack = {
			ammo="Eminent Bullet",
			head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Damage taken-1%','INT+1','"Mag.Atk.Bns."+15',}},
			body={ name="Samnuha Coat", augments={'Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+5','"Dual Wield"+5',}},
			hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
			legs={ name="Herculean Trousers", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +1%','MND+8','Mag. Acc.+3',}},
			feet={ name="Herculean Boots", augments={'Accuracy+27','"Triple Atk."+2','AGI+4','Attack+10',}},
			neck="Fotia Gorget",
			waist="Fotia Belt",
			left_ear="Friomisi Earring",
			right_ear="Moldavite Earring",
			left_ring="Acumen Ring",
			right_ring="Fenrir Ring +1",
			back="Gunslinger's Cape",
		}

                --sets.Wildfire.MagicAccuracy = {ammo="Orichalc. bullet",
				--	       head="Lanun tricorne +1", neck="Stoicheion medal", ear1="Novio earring", ear2="Friomisi earring",				       body="Lanun frac", hands="Thur. gloves +1", ring1="Acumen ring", ring2="Stormsoul ring",
				--	       back="Gunslinger's cape", waist="Elanid belt", legs="Lak. trews", feet="Lanun bottes"}

								  
							  		   
									   
									   
									   
									   
									   
		--Job Ability Sets--
		sets.JA = {}
		
		sets.JA.RandomDeal = {body="Lanun Frac +1"}
							  
		sets.JA.WildCard = {feet="Commodore Bottes +2"}
							
		sets.JA.SnakeEye = {ammo="Adlivun bullet",
				    head="Lanun tricorne +1", neck="Twilight torque", ear1="Colossus's earring", ear2="Darkness earring", 			    body="Lanun frac", hands="Denali wristbands", ring1="Defending ring", ring2="Dark ring",
				    back="Mollusca mantle", waist="Flume belt", legs="Comm. culottes +2", feet="Lanun bottes"}
							
							 
		sets.JA.PhantomRoll = {ammo="Adlivun bullet",
				       head="Lanun tricorne +1", neck="Twilight torque", ear1="Colossus's earring", ear2="Darkness earring",  			       body="Lanun frac", hands="Nvrch. gants +2", ring1="Defending ring", ring2="Luzaf's ring",
				       back="Mollusca mantle", waist="Flume belt", legs="Desultor tassets", feet="Lanun bottes"}
							   
		sets.JA.TacticianRoll = {ammo="Adlivun bullet",
					 head="Lanun tricorne +1", neck="Twilight torque", ear1="Colossus's earring", ear2="Darkness earring",				 body="Nvrch. frac +2", hands="Nvrch. gants +2", ring1="Defending ring", ring2="Luzaf's ring",
					 back="Mollusca mantle", waist="Flume belt", legs="Desultor tassets", feet="Lanun bottes"}
								 
							   
		sets.JA.CourserRoll = {ammo="Adlivun bullet",
				       head="Lanun tricorne +1", neck="Twilight torque", ear1="Colossus's earring", ear2="Darkness earring",			       body="Lanun frac", hands="Nvrch. gants +2", ring1="Defending ring", ring2="Luzaf's ring",
				       back="Mollusca mantle", waist="Flume belt", legs="Desultor tassets", feet="Nvrch. bottes +2"}
							   
		sets.JA.BlitzerRoll = {ammo="Adlivun bullet",
				       head="Nvrch. tricorne +2", neck="Twilight torque", ear1="Colossus's earring", ear2="Darkness earring",			       body="Lanun frac", hands="Nvrch. gants +2", ring1="Defending ring", ring2="Luzaf's ring",
				       back="Mollusca mantle", waist="Flume belt", legs="Desultor tassets", feet="Lanun bottes"}
							   
							   
		sets.QuickDraw = {}
		sets.QuickDraw.index = {'MagicAttack'}--, 'MagicAccuracy'}
		
		QuickDraw_ind = 1
		
		sets.QuickDraw.MagicAttack = {
			ammo="Adlivun bullet",
					      head="Blood mask", neck="Stoicheion medal", ear1="Novio earring", ear2="Friomisi earring",
					      body="Mirke wardecors", hands="Schutzen mittens", ring1="Acumen ring", ring2="Demon's ring",					      back="Gunslinger's cape", waist="Aquiline belt", legs="Lak. trews", feet="Nvrch. bottes +2"}
									  
		--sets.QuickDraw.MagicAccuracy = {ammo="Omphalos bullet",
		--				head="Blood mask", neck="Arctier's torque", ear1="Psystorm earring", ear2="Lifestorm earring",				        body="Mirke wardecors", hands="Sigyn's bazubands", ring1="Moepapa ring", ring2="Hajduk ring",                                          back="Gunslinger's cape", waist="Aquiline belt", legs="Thur. tights +1", feet="Lak. bottes"}
							   
							   
							   
		sets.Luzaf = {}
		sets.Luzaf.index = {'Off','On'}
		
		Luzaf_ind = 1
		
		
		sets.Luzaf.Off = {ring1="Rajas Ring"}
		
		sets.Luzaf.On = {ring1="Luzaf's Ring"}
							   
							   
							   
							   
							   
							   
		--Utility Sets--
		sets.Utility = {}
		
		sets.Utility.PDT = {ammo="Adlivun bullet",
				    head="Whirlpool mask", neck="Wiglen gorget", ear1="Colossus's earring", ear2="Darkness earring",
				    body="Lanun frac", hands="Denali wristbands", ring1="Defending ring", ring2="Dark ring",
				    back="Mollusca mantle", waist="Flume belt", legs="Iuitl tights", feet="Lanun bottes"}
						
		sets.Utility.MDT = {ammo="Adlivun bullet",
				    head="Anwig salade", neck="Twilight torque", ear1="Merman's earring",
				    body="Wayfarer robe", hands="Denali wristbands", ring1="Defending ring", ring2="Shadow ring",
				    back="Engulfer cape", legs="Nahtirah trousers", feet="Lanun bottes"}
							
		sets.Utility.FastCast = {ammo="Adlivun bullet",
					 head="Haruspex hat", ear1="Loquac. earring",
					 body="Lanun frac", hands="Thaumas gloves", ring1="Prolix ring", ring2="Veneficium ring",
					 waist="Hurch'lan sash", legs="Blood cuisses", feet="Lanun bottes"}
								 
							  
		sets.Utility.Cure = {ammo="Adlivun bullet",
				     head="Whirlpool mask", neck="Phalaina locket", ear1="Psystorm earring", ear2="Lifestorm earring",
				     body="Wayfarer robe", hands="Iuitl wristbands", ring1="Aquasoul ring",
				     back="Tuilha cape", legs="Nahtirah trousers", feet="Iuitl gaiters"}
							 
		sets.Utility.Snapshot =  {ammo="Adlivun bullet",
					  head="Anwig salade",
					  body="Skopos jerkin", hands="Lanun gants",
					  back="Navarch's mantle", waist="Impulse belt", legs="Nahtirah trousers", feet="Iuitl gaiters"}
							 

end		
		
-------------------------------------------------------------------------------------------------------------------
-- Display Roll Information
-------------------------------------------------------------------------------------------------------------------

function define_roll_values()
    rolls = {
        ["Corsair's Roll"]   = {lucky=5, unlucky=9, bonus="Experience Points"},
        ["Ninja Roll"]       = {lucky=4, unlucky=8, bonus="Evasion"},
        ["Hunter's Roll"]    = {lucky=4, unlucky=8, bonus="Accuracy"},
        ["Chaos Roll"]       = {lucky=4, unlucky=8, bonus="Attack"},
        ["Magus's Roll"]     = {lucky=2, unlucky=6, bonus="Magic Defense"},
        ["Healer's Roll"]    = {lucky=3, unlucky=7, bonus="Cure Potency Received"},
        ["Puppet Roll"]      = {lucky=4, unlucky=8, bonus="Pet Magic Accuracy/Attack"},
        ["Choral Roll"]      = {lucky=2, unlucky=6, bonus="Spell Interruption Rate"},
        ["Monk's Roll"]      = {lucky=3, unlucky=7, bonus="Subtle Blow"},
        ["Beast Roll"]       = {lucky=4, unlucky=8, bonus="Pet Attack"},
        ["Samurai Roll"]     = {lucky=2, unlucky=6, bonus="Store TP"},
        ["Evoker's Roll"]    = {lucky=5, unlucky=9, bonus="Refresh"},
        ["Rogue's Roll"]     = {lucky=5, unlucky=9, bonus="Critical Hit Rate"},
        ["Warlock's Roll"]   = {lucky=4, unlucky=8, bonus="Magic Accuracy"},
        ["Fighter's Roll"]   = {lucky=5, unlucky=9, bonus="Double Attack Rate"},
        ["Drachen Roll"]     = {lucky=3, unlucky=7, bonus="Pet Accuracy"},
        ["Gallant's Roll"]   = {lucky=3, unlucky=7, bonus="Defense"},
        ["Wizard's Roll"]    = {lucky=5, unlucky=9, bonus="Magic Attack"},
        ["Dancer's Roll"]    = {lucky=3, unlucky=7, bonus="Regen"},
        ["Scholar's Roll"]   = {lucky=2, unlucky=6, bonus="Conserve MP"},
        ["Bolter's Roll"]    = {lucky=3, unlucky=9, bonus="Movement Speed"},
        ["Caster's Roll"]    = {lucky=2, unlucky=7, bonus="Fast Cast"},
        ["Courser's Roll"]   = {lucky=3, unlucky=9, bonus="Snapshot"},
        ["Blitzer's Roll"]   = {lucky=4, unlucky=9, bonus="Attack Delay"},
        ["Tactician's Roll"] = {lucky=5, unlucky=8, bonus="Regain"},
        ["Allies's Roll"]    = {lucky=3, unlucky=10, bonus="Skillchain Damage"},
        ["Miser's Roll"]     = {lucky=5, unlucky=7, bonus="Save TP"},
        ["Companion's Roll"] = {lucky=2, unlucky=10, bonus="Pet Regain and Regen"},
        ["Avenger's Roll"]   = {lucky=4, unlucky=8, bonus="Counter Rate"},
    }
end

function display_roll_info(spell)
    rollinfo = rolls[spell.english]
    local rollsize = (state.LuzafRing.value and 'Large') or 'Small'

    if rollinfo then
        add_to_chat(104, spell.english..' provides a bonus to '..rollinfo.bonus..'.  Roll size: '..rollsize)
        add_to_chat(104, 'Lucky roll is '..tostring(rollinfo.lucky)..', Unlucky roll is '..tostring(rollinfo.unlucky)..'.')
    end
end		
		
		
		

		--Precast Rules--
		function precast(spell)
			
			if spell.name == "Ranged" then
				equip(sets.Utility.Snapshot)
					if player.equipment.range == "Deathlocke" then            --GUN NAME NEEDED--
						equip(sets.Bullets.TP)
					end
			end
			
			if spell.action_type == 'Magic' then
				equip(sets.Utility.FastCast)
			end
	
			if spell.english == 'Fire Shot' or spell.english == 'Ice Shot' or spell.english == 'Wind Shot' or spell.english == 'Earth Shot' or spell.english == 'Thunder Shot' or spell.english == 'Water Shot' then
				equip(sets.QuickDraw[sets.QuickDraw.index[QuickDraw_ind]])
					if spell.element == world.weather_element or spell_element == world.day_element then
						equip(sets.Obi[spell.element])
					end
					if player.equipment.range == "Deathlocke" then            --GUN NAME NEEDED-- 
						equip(sets.Bullets.QD)
					end
			end
			
			if spell.english == 'Light Shot' or spell.english == 'Dark Shot' then
				equip(sets.QuickDraw.MagicAccuracy)
					if player.equipment.range == "Deathlocke" then            --GUN NAME NEEDED-- 
						equip(sets.Bullets.QD)
					end
			end
	
			if spell.english == 'Random Deal' then
				equip(sets.JA.RandomDeal)
			end
	
			if spell.english == 'Wild Card' then
				equip(sets.JA.WildCard)
			end
	
			if spell.english == 'Snake Eye' then
				equip(sets.JA.SnakeEye)
			end
	
			if spell.english == 'Fold' then
				equip(sets.JA.Fold)
			end
			
			if spell.english == "Corsair's Roll" or spell.english == "Ninja's Roll" or spell.english == "Hunter's Roll" or spell.english == "Chaos Roll" or spell.english == "Magus's Roll" or spell.english == "Healer's Roll" or spell.english == "Drachen Roll" or spell.english == "Choral Roll" or spell.english == "Monk's Roll" or spell.english == "Beast Roll" or spell.english == "Samurai Roll" or spell.english == "Evoker's Roll" or spell.english == "Rogue's Roll" or spell.english == "Warlock's Roll" or spell.english == "Fighter's Roll" or spell.english == "Puppet Roll" or spell.english == "Gallant's Roll" or spell.english == "Wizard's Roll" or spell.english == "Dancer's Roll" or spell.english == "Scholar's Roll" or spell.english == "Bolter's Roll" or spell.english == "Allies' Roll" or spell.english == "Miser's Roll" or spell.english == "Caster's Roll" or spell.english == "Companion's Roll" or spell.english == "Avenger's Roll" then
				equip(sets.JA.PhantomRoll)
			end
			
			if spell.english == "Tactician's Roll" then
				equip(sets.JA.TacticianRoll)
			end
			
			if spell.english == "Courser's Roll" then
				equip(sets.JA.CourserRoll)
			end
			
			if spell.english == "Blitzer's Roll" then
				equip(sets.JA.BlitzerRoll)
			end
			
			if spell.english == "Double-Up" then
				equip(sets.Luzaf[sets.Luzaf.index[Luzaf_ind]])
			end
			
			if spell.english == 'Requiescat' then
				equip(sets.Requiescat[sets.Requiescat.index[Requiescat_ind]])
			end
			
			if spell.english == 'Evisceration' then
				equip(sets.Evisceration[sets.Evisceration.index[Evisceration_ind]])
			end
			
			if spell.english == 'Last Stand' then
				equip(sets.LastStand[sets.LastStand.index[LastStand_ind]])
					if player.equipment.range == "Deathlocke" then            --GUN NAME NEEDED--
						equip(sets.Bullets.WS)
					end
			end
			
			if spell.english == 'Leaden Salute' then
				equip(sets.LeadenSalute[sets.LeadenSalute.index[LeadenSalute_ind]])
					if spell.element == world.weather_element or spell_element == world.day_element then
						equip(sets.Obi[spell.element])
					end
						if player.equipment.range == "Deathlocke" then            --GUN NAME NEEDED--
							equip(sets.Bullets.MWS)
						end
			end
			
			if spell.english == 'Wildfire' then
				equip(sets.Wildfire[sets.Wildfire.index[Wildfire_ind]])
					if spell.element == world.weather_element or spell_element == world.day_element then
						equip(sets.Obi[spell.element])
					end
						if player.equipment.range == "Deathlocke" then            --GUN NAME NEEDED--
							equip(sets.Bullets.MWS)
						end
			end
			
			if spell.action_type == 'Ranged Attack' and player.equipment.ammo:lower() == 'animikii bullet' then
				cancel_spell()
				add_to_chat(8,'!!!WARNING!!! Attempted to fire Animikii Bullet! Shot canceled.')
				return
			end

			if spell.type:lower() == 'weaponskill' and player.equipment.ammo:lower() == 'animikii bullet' then
				cancel_spell()
				add_to_chat(8,'!!!WARNING!!! Attempted to fire Animikii Bullet! Weaponskill canceled.')
				return
			end
		end		
		
		
		
		
		
		
		--Midcast Rules--
		function midcast(spell,act)
		
	
			if spell.english == 'Cure*' then
				equip(sets.Utility.Cure)
			end
	
			
			if spell.name == "Ranged" then
				equip(sets.RangedTP[sets.RangedTP.index[RangedTP_ind]])
			end
			
			if spell.action_type == 'Ranged Attack' and player.equipment.ammo:lower() == 'animikii bullet' then
				cancel_spell()
				add_to_chat(8,'!!!WARNING!!! Attempted to fire Animikii Bullet! Shot canceled.')
				return
			end

			if spell.type:lower() == 'weaponskill' and player.equipment.ammo:lower() == 'animikii bullet' then
				cancel_spell()
				add_to_chat(8,'!!!WARNING!!! Attempted to fire Animikii Bullet! Weaponskill canceled.')
				return
			end
			
			
		end
		
		
		
		
		
		
		--Aftercast Rules--
		function aftercast(spell)
			
			if player.status == 'Engaged' then
				equip(sets.TP[sets.TP.index[TP_ind]])
					else
						equip(sets.Idle[sets.Idle.index[Idle_ind]])
			end
		end
	
			
		
		
		
		
		
		--Misc Rules--
		function status_change(new,old)
			
			if new == 'Engaged' then
				equip(sets.TP[sets.TP.index[TP_ind]])
					else
						equip(sets.Idle[sets.Idle.index[Idle_ind]])
			end
		end
			
	
		
		function self_command(command)
		
			if command == 'toggle MTP set' then
				MeleeTP_ind = MeleeTP_ind +1
				if MeleeTP_ind > #sets.MeleeTP.index then MeleeTP_ind = 1 end
				send_command('@input /echo <----- Melee TP Set changed to '..sets.MeleeTP.index[MeleeTP_ind]..' ----->')
				equip(sets.MeleeTP[sets.MeleeTP.index[MeleeTP_ind]])
				
			elseif command == 'toggle RTP set' then
				RangedTP_ind = RangedTP_ind +1
				if RangedTP_ind > #sets.RangedTP.index then RangedTP_ind = 1 end
				send_command('@input /echo <----- Ranged TP Set changed to '..sets.RangedTP.index[RangedTP_ind]..' ----->')
				equip(sets.RangedTP[sets.RangedTP.index[RangedTP_ind]])
	
			elseif command == 'toggle Idle set' then
				Idle_ind = Idle_ind +1
				if Idle_ind > #sets.Idle.index then Idle_ind = 1 end
				send_command('@input /echo <----- Idle Set changed to '..sets.Idle.index[Idle_ind]..' ----->')
				equip(sets.Idle[sets.Idle.index[Idle_ind]])
	
			elseif command == 'toggle Req set' then
				Requiescat_ind = Requiescat_ind +1
				if Requiescat_ind > #sets.Requiescat.index then Requiescat_ind = 1 end
				send_command('@input /echo <----- Requiescat Set changed to '..sets.Requiescat.index[Requiescat_ind]..' ----->')
				
			elseif command == 'toggle Evis set' then
				Evisceration_ind = Evisceration_ind +1
				if Evisceration_ind > #sets.Evisceration.index then Evisceration_ind = 1 end
				send_command('@input /echo <----- Evisceration set changed to '..sets.Evisceration.index[Evisceration_ind]..' ----->')
				
			elseif command == 'toggle LastS set' then
				LastStand_ind = LastStand_ind +1
				if LastStand_ind > #sets.LastStand.index then LastStand_ind = 1 end
				send_command('@input /echo <----- Last Stand set changed to '..sets.LastStand.index[LastStand_ind]..' ----->')
			
			elseif command == 'toggle LeadS set' then
				LeadenSalute_ind = LeadenSalute_ind +1
				if LeadenSalute_ind > #sets.LeadenSalute.index then LeadenSalute_ind = 1 end
				send_command('@input /echo <----- Leaden Salute set changed to '..sets.LeadenSalute.index[LeadenSalute_ind]..' ----->')
			
			elseif command == 'toggle WF set' then
				Wildfire_ind = Wildfire_ind +1
				if Wildfire_ind > #sets.Wildfire.index then Wildfire_ind = 1 end
				send_command('@input /echo <----- Wildfire set changed to '..sets.Wildfire.index[Wildfire_ind]..' ----->')
				
			elseif command == 'toggle QD set' then
				QuickDraw_ind = QuickDraw_ind +1
				if QuickDraw_ind > #sets.QuickDraw.index then QuickDraw_ind = 1 end
				send_command('@input /echo <----- Quick Draw set changed to '..sets.QuickDraw.index[QuickDraw_ind]..' ----->')
				
			elseif command == 'toggle Luzaf' then
				Luzaf_ind = Luzaf_ind +1
				if Luzaf_ind > #sets.Luzaf.index then Luzaf_ind = 1 end
				send_command('@input /echo <----- Luzaf state changed to '..sets.Luzaf.index[Luzaf_ind]..' ----->')
				equip(sets.Luzaf[sets.Luzaf.index[Luzaf_ind]])
	
			elseif command == 'equip TP set' then
				equip(sets.TP[sets.TP.index[TP_ind]])
			
			elseif command == 'equip Idle set' then
				equip(sets.Idle[sets.Idle.index[Idle_ind]])
			end
			
		end