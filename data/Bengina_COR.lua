--Please ensure that all of the bullet fields are filled in properly. Also ensure that all of the annotated gun lines are filled in properly.--
--If you wish for Luzaf Ring mode to default to "on", change Luzaf_ind = 1   to Luzaf_ind = 2 --

--To toggle gearsets:
--Main command: //gs c toggle x set       where x = set name variable. Variables are as follows: --
--Idle sets: Idle, Melee TP sets: MTP, Ranged TP sets: RTP--
--Requiescat sets: Req, Last Stand sets: LastS, Leaden Salute sets: LeadS, Wildfire sets: WF--
--Quick Draw sets: QD, Luzaf Ring Mode: Luzaf--

--http://pastebin.com/u/DBentt

		send_command('bind f9 gs c toggle MTP set')
		send_command('bind f10 gs c toggle LastS set')
		send_command('bind f11 gs c toggle LeadS set')
		send_command('bind f12 gs c toggle Idle set')
		
		function file_unload()
		
		send_command('unbind f9')
        send_command('unbind f10')
        send_command('unbind f11')
        send_command('unbind f12')
		
		end
	
--function job_setup()
--	-- Whether to use Luzaf's Ring
--    state.LuzafRing = M(true, "Luzaf's Ring")
--    -- Whether a warning has been given for low ammo
--    --state.warned = M(false)
--
--    define_roll_values()
--end

function get_sets()
 		
		--Idle Sets--
		sets.Idle = {}
		
		sets.Idle.index = {'Standard','DT'}--, 'Town'}
		--1=Standard, 2=DT, 3=Town--
		
		Idle_ind = 1
		--Set this number to whichever set you want the game to default to when you load this lua. This goes for each similar line below.   ex. setting this to 2 will cause the game to equip your DT Idle set by default.--
		
		sets.Idle.Standard = {
			head="Malignance Chapeau",
			body="Meg. Cuirie +2",
			hands="Malignance Gloves",
			legs="Meg. Chausses +2",
			feet="Malignance Boots",
			neck={ name="Loricate Torque +1", augments={'Path: A',}},
			waist="Flume Belt +1",
			left_ear="Odnowa Earring +1",
			right_ear="Etiolation Earring",
			left_ring="Shneddick Ring",
			right_ring="Defending Ring",
			back="Solemnity Cape",
		}

		sets.Idle.DT = {
			head="Malignance Chapeau",
			body="Nyame Mail",
			hands="Malignance Gloves",
			legs="Nyame Flanchard",
			feet = "Malignance Boots",
			neck={ name="Loricate Torque +1", augments={'Path: A',}},
			waist="Flume Belt +1",
			left_ear="Odnowa Earring +1",
			right_ear="Etiolation Earring",
			left_ring="Shneddick Ring",
			right_ring="Defending Ring",
			back="Solemnity Cape",
			}
--
--		sets.Idle.Town = {
--			ammo="Adlivun Bullet",
--			head="Blood Mask", 
--			neck="Wiglen gorget", 
--			ear1="Colossus's earring", 
--			ear2="Darkness earring",
--			body="Kheper jacket", 
--			hands="Denali wristbands", 
--			ring1="Defending ring", 
--			ring2="Sheltered ring",
--			back="Engulfer cape", 
--			waist="Flume belt", 
--			legs="Iuitl tights", 
--			feet="Skd. jambeaux +1",
--		}
							  						  
							  
							  
							  
							  
							  
		--Melee TP Sets--
		sets.MeleeTP = {}
		
		sets.MeleeTP.index = {'Standard','Accuracy','DT'}--, 'DTAccuracy'}
		--1=Standard, 2=Accuracy, 3=DT, 4=DTAccuracy--
		
		MeleeTP_ind = 1
		
		sets.MeleeTP.Standard = {
			hhead="Mummu Bonnet +1",
			body="Mummu Jacket +1",
			hands="Mummu Wrists +1",
			legs="Mummu Kecks +1",
			feet="Mummu Gamash. +1",
			neck="Defiant Collar",
			waist="Grunfeld Rope",
			left_ear="Assuage Earring",
			right_ear="Odnowa Earring",
			left_ring="Petrov Ring",
			right_ring="Mummu Ring",
			back={ name="Mecisto. Mantle", augments={'Cap. Point+27%','HP+25','Mag. Acc.+1','DEF+2',}}
		}
		
		sets.MeleeTP.Accuracy = {
			head="Malignance Chapeau",
			body={ name="Lanun Frac +3", augments={'Enhances "Loaded Deck" effect',}},
			hands="Malignance Gloves",
			legs="Nyame Flanchard",
			feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
			neck="Clotharius Torque",
			waist="Reiki Yotai",
			left_ear="Telos Earring",
			right_ear="Suppanomimi",
			left_ring="Petrov Ring",
			right_ring="Epona's Ring",
			back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}}
		}
							
						
		--sets.MeleeTP.Accuracy = {ammo="Adlivun bullet",
		--			 head="Whirlpool mask", neck="Asperity necklace", ear1="Dudgeon earring", ear2="Heartseeker earring",				 body="Thaumas coat", hands="Lak. gants", ring1="Epona's ring", ring2="Apate ring",
		--			 back="Letalis mantle", waist="Hurch'lan sash", legs="Iuitl tights", feet="Lanun bottes"}
		--						
		--						
		sets.MeleeTP.DT = {
			head="Malignance Chapeau",
			body="Nyame Mail",
			hands="Malignance Gloves",
			legs="Nyame Flanchard",
			feet="Nyame Sollerets",
			neck="Clotharius Torque",
			waist="Reiki Yotai",
			left_ear="Telos Earring",
			right_ear="Suppanomimi",
			left_ring="Ilabrat Ring",
			right_ring="Epona's Ring",
			back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}}
		}
		--				   
		--sets.MeleeTP.DTAccuracy = {ammo="Adlivun bullet",
		--			   head="Whirlpool mask", neck="Twilight torque", ear1="Dudgeon earring", ear2="Heartseeker earring"				   body="Lanun frac", hands="Lak. gants", ring1="Defending ring", ring2="Dark ring",
		--			   back="Letalis mantle", waist="Hurch'lan sash", legs="Iuitl tights", feet="Lanun bottes"}
								   
								   
								   
								   
								   
								   
		--Melee WS Sets--
		sets.Requiescat = {}
		
		sets.Requiescat.index = {'Attack','Accuracy'}
		
		Requiescat_ind = 1
		
		sets.Requiescat.Attack = {
			head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
			body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
			hands="Meg. Gloves +2",
			legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
			feet={ name="Herculean Boots", augments={'Attack+25','MND+4','Quadruple Attack +2','Accuracy+10 Attack+10',}},
			neck="Fotia Gorget",
			waist="Fotia Belt",
			left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
			right_ear="Zennaroi Earring",
			left_ring="Apate ring",
			right_ring="Epona's Ring",
			back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}}
		}
								  
		--sets.Requiescat.Accuracy = {ammo="Adlivun bullet",
		--			    head="Whirlpool mask", neck="Soil gorget", ear1="Bladeborn earring", ear2="Steelflash earring",				    body="Manibozho jerkin", hands="Iuitl wristbands", ring1="Epona's ring", ring2="Aquasoul ring",					    back="Letalis mantle", waist="Soil belt", legs="Manibozho brais", feet="Manibozho boots"}
									
									
									
									  
									  
									  
									  
									  
									  
		--Ranged TP Sets--
		sets.RangedTP = {}
		
		sets.RangedTP.index = {'Standard'}--, 'Accuracy'}
		--1=Standard, 2=Accuracy--
		
		RangedTP_ind = 1
		
		sets.RangedTP.Standard = {
			head="Malignance Chapeau",
			body="Meg. Cuirie +2",
			hands="Malignance Gloves",
			legs="Meg. Chausses +2",
			feet="Meg. Jam. +2",
			neck="Iskur Gorget",
			waist="Yemaya Belt",
			left_ear="Telos Earring",
			right_ear="Enervating Earring",
			left_ring="Dingir Ring",
			right_ring="Ilabrat Ring",
			back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}}
		}
								  
		--sets.RangedTP.Accuracy = {ammo="Adlivun bullet",
		--			  head="Laksamana's hat", neck="Arctier's torque", ear1="Volley earring", ear2="Clearview earring",				  body="Lak. frac +1", hands="Sigyn's bazubands", ring1="Moepapa ring", ring2="Hajduk ring",
		--			  back="Gunslinger's cape", waist="Elanid belt", legs="Thur. tights +1", feet="Lak. bottes"}
								
									  
									  
		sets.Bullets = {}
		
		sets.Bullets.TP = {}
		
		sets.Bullets.QD = {}
		
		sets.Bullets.WS = {}
		
		sets.Bullets.MWS = {}
									  
		
		sets.SavageBlade = {
			head={ name="Herculean Helm", augments={'Accuracy+14','Weapon skill damage +3%','STR+10','Attack+15',}},
			body="Laksa. Frac +3",
			hands="Meg. Gloves +2",
			legs="Nyame Flanchard",
			feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
			neck={ name="Comm. Charm +1", augments={'Path: A',}},
			waist={ name="Sailfi Belt +1", augments={'Path: A',}},
			left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
			right_ear="Ishvara Earring",
			left_ring="Rufescent Ring",
			right_ring="Apate Ring",
			back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
		}						  
									  
									  
									  
		--Ranged WS Sets--
		sets.Detonator = {}
		
		sets.Detonator.index = {'Attack'}--,'Accuracy'}
		
		Detonator_ind = 1
		
		sets.Detonator.Attack = {
			--ammo="Orichalc. Bullet",
			head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Damage taken-1%','INT+1','"Mag.Atk.Bns."+15',}},
			body={ name="Samnuha Coat", augments={'Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+5','"Dual Wield"+5',}},
			hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
			legs={ name="Herculean Trousers", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +1%','MND+8','Mag. Acc.+3',}},
			feet={ name="Herculean Boots", augments={'Mag. Acc.+19 "Mag.Atk.Bns."+19','INT+9','Mag. Acc.+12','"Mag.Atk.Bns."+10',}},
			neck="Fotia Gorget",
			waist="Fotia Belt",
			left_ear="Friomisi Earring",
			right_ear="Hecate's Earring",
			left_ring="Garuda Ring",
			right_ring="Garuda Ring",
			back="Camulus's Mantle",
		}
		
		
		
		
		sets.LastStand = {}
		sets.LastStand.index = {'Attack'}--,'Accuracy'}
		
		LastStand_ind = 1
		
		sets.LastStand.Attack = {
			--ammo="Adlivun Bullet",
			head="Meghanada Visor",
			body="Meghanada Cuirie",
			hands="Meg. gloves +1",
			legs={ name="Adhemar Kecks", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
			neck="Fotia Gorget",
			waist="Fotia Belt",
			left_ear="Ishvara Earring",
			right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
			left_ring="Dingir Ring",
			right_ring="Ilabrat Ring",
			back="Camulus's Mantle",
		}
								  
		--sets.LastStand.Accuracy = {ammo="Adlivun bullet",
		--			   head="Laksamana's hat", neck="Light gorget", ear1="Volley earring", ear2="Clearview earring",
		--			   body="Lak. frac +1", hands="Sigyn's bazubands", ring1="Moepapa ring", ring2="Hajduk ring",
		--			   back="Gunslinger's cape", waist="Light belt", legs="Thur. tights +1", feet="Lak. bottes"}
								   
								   
		sets.LeadenSalute = {}
		sets.LeadenSalute.index = {'MagicAttack'}--,'MagicAccuracy'}
		
		LeadenSalute_ind = 1
		
		sets.LeadenSalute.MagicAttack = {
			head="Pixie Hairpin +1",
			body={ name="Lanun Frac +3", augments={'Enhances "Loaded Deck" effect',}},
			hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
			legs={ name="Herculean Trousers", augments={'Mag. Acc.+19 "Mag.Atk.Bns."+19','Weapon skill damage +5%','Mag. Acc.+2',}},
			feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
			neck={ name="Comm. Charm +1", augments={'Path: A',}},
			waist="Eschan Stone",
			left_ear="Friomisi Earring",
			right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
			left_ring="Archon Ring",
			right_ring="Dingir Ring",
			back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}}
		}
								  
										   
										   
		sets.Wildfire = {}
		sets.Wildfire.index = {'MagicAttack'}--,'MagicAccuracy'}
		
		Wildfire_ind = 1
		
		sets.Wildfire.MagicAttack = {
			--ammo="Orichalc. Bullet",
			head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Damage taken-1%','INT+1','"Mag.Atk.Bns."+15',}},
			body={ name="Samnuha Coat", augments={'Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+5','"Dual Wield"+5',}},
			hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
			legs={ name="Herculean Trousers", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +1%','MND+8','Mag. Acc.+3',}},
			feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
			neck="Sanctity necklace",
			waist="Fotia Belt",
			left_ear="Friomisi Earring",
			right_ear="Hecate's Earring",
			left_ring="Garuda Ring",
			right_ring="Garuda Ring",
			back="Camulus's Mantle",
		}

                --sets.Wildfire.MagicAccuracy = {ammo="Orichalc. bullet",
				--	       head="Lanun tricorne +1", neck="Stoicheion medal", ear1="Novio earring", ear2="Friomisi earring",				       body="Lanun frac", hands="Thur. gloves +1", ring1="Acumen ring", ring2="Stormsoul ring",
				--	       back="Gunslinger's cape", waist="Elanid belt", legs="Lak. trews", feet="Lanun bottes"}

								  
							  		   
									   
									   
									   
									   
									   
		--Job Ability Sets--
		sets.JA = {}
		
		sets.JA.RandomDeal = {body="Lanun Frac +3"}
							  
		sets.JA.WildCard = {feet="Lanun Bottes +3"}
							
		sets.JA.SnakeEye = {
			--range={ name="Compensator", augments={'DMG:+15','Rng.Acc.+15','Rng.Atk.+15',}},
			head={ name="Lanun Tricorne", augments={'Enhances "Winning Streak" effect',}},
			body="Meg. Cuirie +2",
			hands="Chasseur's Gants +1",
			legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
			feet="Meg. Jam. +2",
			neck="Regal Necklace",
			waist="Flume Belt +1",
			left_ear="Odnowa Earring +1",
			right_ear="Etiolation Earring",
			left_ring="Luzaf's Ring",
			right_ring="Barataria Ring",
			back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
		}
							
							 
		sets.JA.PhantomRoll = {
			--range={ name="Compensator", augments={'DMG:+15','Rng.Acc.+15','Rng.Atk.+15',}},
			head={ name="Lanun Tricorne", augments={'Enhances "Winning Streak" effect',}},
			body="Meg. Cuirie +2",
			hands="Chasseur's Gants +1",
			legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
			feet="Meg. Jam. +2",
			neck="Regal Necklace",
			waist="Flume Belt +1",
			left_ear="Odnowa Earring +1",
			right_ear="Etiolation Earring",
			left_ring="Luzaf's Ring",
			right_ring="Barataria Ring",
			back="Camulus's Mantle",
			}
							   
		sets.JA.TacticianRoll = {
			--range={ name="Compensator", augments={'DMG:+15','Rng.Acc.+15','Rng.Atk.+15',}},
			head={ name="Lanun Tricorne", augments={'Enhances "Winning Streak" effect',}},
			body="Meg. Cuirie +2",
			hands="Chasseur's Gants +1",
			legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
			feet="Meg. Jam. +2",
			neck="Regal Necklace",
			waist="Flume Belt +1",
			left_ear="Odnowa Earring +1",
			right_ear="Etiolation Earring",
			left_ring="Luzaf's Ring",
			right_ring="Barataria Ring",
			back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
			}
								 
							   
		sets.JA.CourserRoll = {
			--range={ name="Compensator", augments={'DMG:+15','Rng.Acc.+15','Rng.Atk.+15',}},
			head={ name="Lanun Tricorne", augments={'Enhances "Winning Streak" effect',}},
			body="Meg. Cuirie +2",
			hands="Chasseur's Gants +1",
			legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
			feet="Meg. Jam. +2",
			neck="Regal Necklace",
			waist="Flume Belt +1",
			left_ear="Odnowa Earring +1",
			right_ear="Etiolation Earring",
			left_ring="Luzaf's Ring",
			right_ring="Barataria Ring",
			back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
			}
							   
		sets.JA.BlitzerRoll = {
			--range={ name="Compensator", augments={'DMG:+15','Rng.Acc.+15','Rng.Atk.+15',}},
			head={ name="Lanun Tricorne", augments={'Enhances "Winning Streak" effect',}},
			body="Meg. Cuirie +2",
			hands="Chasseur's Gants +1",
			legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
			feet="Meg. Jam. +2",
			neck="Regal Necklace",
			waist="Flume Belt +1",
			left_ear="Odnowa Earring +1",
			right_ear="Etiolation Earring",
			left_ring="Luzaf's Ring",
			right_ring="Barataria Ring",
			back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
			}
							   
							   
		sets.QuickDraw = {}
		sets.QuickDraw.index = {'MagicAttack'}--, 'MagicAccuracy'}
		
		QuickDraw_ind = 1
		
		sets.QuickDraw.MagicAttack = {
			head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Damage taken-1%','INT+1','"Mag.Atk.Bns."+15',}},
			body={ name="Lanun Frac +3", augments={'Enhances "Loaded Deck" effect',}},
			hands={ name="Herculean Gloves", augments={'Pet: Accuracy+20 Pet: Rng. Acc.+20','Pet: AGI+8','Accuracy+14 Attack+14','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
			legs={ name="Nyame Flanchard", augments={'Path: B',}},
			feet="Nyame Sollerets",
			neck={ name="Comm. Charm +1", augments={'Path: A',}},
			waist="Eschan Stone",
			left_ear="Friomisi Earring",
			right_ear="Hecate's Earring",
			left_ring="Arvina Ringlet +1",
			right_ring="Dingir Ring",
			back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}}
			}
									  
		--sets.QuickDraw.MagicAccuracy = {ammo="Omphalos bullet",
		--				head="Blood mask", neck="Arctier's torque", ear1="Psystorm earring", ear2="Lifestorm earring",				        body="Mirke wardecors", hands="Sigyn's bazubands", ring1="Moepapa ring", ring2="Hajduk ring",                                          back="Gunslinger's cape", waist="Aquiline belt", legs="Thur. tights +1", feet="Lak. bottes"}
							   
							   
							   
		sets.Luzaf = {}
		sets.Luzaf.index = {'Off','On'}
		
		Luzaf_ind = 1
		
		
		sets.Luzaf.Off = {ring1="Apate ring"}
		
		sets.Luzaf.On = {ring1="Luzaf's Ring"}
							   
							   
		sets.Obi = {}
		
		sets.Obi.all = {waist="Hachirin-no-Obi"}					   
							   
							   
							   
		--Utility Sets--
		sets.Utility = {}
								 
		sets.Utility.Snapshot =  {
			head="Chass. Tricorne +1",
			hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
			legs={ name="Adhemar Kecks", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
			feet="Meg. Jam. +2",
			neck={ name="Comm. Charm +1", augments={'Path: A',}},
			waist="Yemaya Belt"
		}
							 

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
						equip(sets.Obi.all)
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
			
			---------------------Display Roll Information---------------------
			
			if spell.english == "Corsair's Roll" then
			add_to_chat(8,'Corsair Roll Lucky=5, Unlucky=9, Bonus="Experience Points"')
			end
			if spell.english == "Ninja Roll" then
			add_to_chat(8,'Ninja Roll Lucky=4, Unlucky=8, Bonus="Evasion"')
			end
			if spell.english == "Hunter's Roll" then
			add_to_chat(8,'Hunter Roll Lucky=4, Unlucky=8, Bonus="Accuracy"')
			end
			if spell.english == "Chaos Roll" then
			add_to_chat(8,'Chaos Roll Lucky=4, Unlucky=8, Bonus="Attack"')
			end
			if spell.english == "Puppet Roll" then
			add_to_chat(8,'Puppet Roll Lucky=4, Unlucky=8, Bonus="Pet Magic Accuracy/Attack"')
			end
			if spell.english == "Beast Roll" then
			add_to_chat(8,'Beast Roll Lucky=4, Unlucky=8, Bonus="Pet Attack"')
			end
			if spell.english == "Warlock's Roll" then
			add_to_chat(8,'Warlock Roll Lucky=4, Unlucky=8, Bonus="Magic Accuracy"')
			end
			if spell.english == "Avenger's Roll" then
			add_to_chat(8,'Avenger Roll Lucky=4, Unlucky=8, Bonus="Counter Rate"')
			end
			if spell.english == "Blitzer's Roll" then
			add_to_chat(8,'Blitzer Roll Lucky=4, Unlucky=9, Bonus="Attack Delay"')
			end
			if spell.english == "Magus's Roll" then
			add_to_chat(8,'Magus Roll Lucky=2, Unlucky=6, Bonus="Magic Defense"')
			end
			if spell.english == "Bolter's Roll" then
			add_to_chat(8,'Bolter Roll Lucky=3, Unlucky=9, Bonus="Movement Speed"')
			end
			if spell.english == "Caster's Roll" then
			add_to_chat(8,'Caster Roll Lucky=2, Unlucky=7, Bonus="Fast Cast"')
			end
			if spell.english == "Courser's Roll" then
			add_to_chat(8,'Courser Roll Lucky=3, Unlucky=9, Bonus="Snapshot"')
			end
			if spell.english == "Tactician's Roll" then
			add_to_chat(8,'Tactician Roll Lucky=5, Unlucky=8, Bonus="Regain"')
			end
			if spell.english == "Allies's Roll" then
			add_to_chat(8,'Allies Roll Lucky=3, Unlucky=10, Bonus="Skillchain Damage"')
			end
			if spell.english == "Miser's Roll" then
			add_to_chat(8,'Miser Roll Lucky=5, Unlucky=7, Bonus="Save TP"')
			end
			if spell.english == "Companion's Roll" then
			add_to_chat(8,'Companion Roll Lucky=2, Unlucky=10, Bonus="Pet Regain and Regen"')
			end
			if spell.english == "Dancer's Roll" then
			add_to_chat(8,'Dancer Roll Lucky=3, Unlucky=7, Bonus="Regen"')
			end
			if spell.english == "Healer's Roll" then
			add_to_chat(8,'Healer Roll Lucky=3, Unlucky=7, Bonus="Cure Potency Received"')
			end
			if spell.english == "Monk's Roll" then
			add_to_chat(8,'Monk Roll Lucky=3, Unlucky=7, Bonus="Subtle Blow"')
			end
			if spell.english == "Drachen's Roll" then
			add_to_chat(8,'Drachen Roll Lucky=3, Unlucky=7, Bonus="Pet Accuracy"')
			end
			if spell.english == "Gallant's Roll" then
			add_to_chat(8,'Gallant Roll Lucky=3, Unlucky=7, Bonus="Defense"')
			end
			if spell.english == "Choral Roll" then
			add_to_chat(8,'Choral Roll Lucky=2, Unlucky=6, Bonus="Spell Interruption Rate"')
			end
			if spell.english == "Samurai Roll" then
			add_to_chat(8,'Samurai Roll Lucky=2, Unlucky=6, Bonus="Store TP"')
			end
			if spell.english == "Scholar's Roll" then
			add_to_chat(8,'Scholar Roll Lucky=2, Unlucky=6, Bonus="Conserve MP"')
			end
			if spell.english == "Evoker's Roll" then
			add_to_chat(8,'Evoker Roll Lucky=5, Unlucky=9, Bonus="Refresh"')
			end
			if spell.english == "Rogue's Roll" then
			add_to_chat(8,'Rogue Roll Lucky=5, Unlucky=9, Bonus="Critical Hit Rate"')
			end
			if spell.english == "Fighter's Roll" then
			add_to_chat(8,'Fighter Roll Lucky=5, Unlucky=9, Bonus="Double Attack Rate"')
			end
			if spell.english == "Wizard's Roll" then
			add_to_chat(8,'Wizard Roll Lucky=5, Unlucky=9, Bonus="Magic Attack"')
			end
			
			---------------------Display Roll Information---------------------
			
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
			
			if spell.english == 'Detonator' then
				equip(sets.Detonator[sets.Detonator.index[Detonator_ind]])
			end
			
			if spell.english == "Savage Blade" then
				equip(sets.SavageBlade)
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
						equip(sets.Obi.all)
					end
						if player.equipment.range == "Deathlocke" then            --GUN NAME NEEDED--
							equip(sets.Bullets.MWS)
						end
			end
			
			if spell.english == 'Wildfire' then
				equip(sets.Wildfire[sets.Wildfire.index[Wildfire_ind]])
					if spell.element == world.weather_element or spell_element == world.day_element then
						equip(sets.Obi.all)
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
				equip(sets.MeleeTP[sets.MeleeTP.index[MeleeTP_ind]])
					else
						equip(sets.Idle[sets.Idle.index[Idle_ind]])
			end
		end
	
			
		
		
		
		
		
		--Misc Rules--
		function status_change(new,old)
			
			if new == 'Engaged' then
				equip(sets.MeleeTP[sets.MeleeTP.index[MeleeTP_ind]])
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
				equip(sets.LastStand[sets.LastStand.index[LastStand_ind]])
				
			elseif command == 'toggle LeadS set' then
				LeadenSalute_ind = LeadenSalute_ind +1
				if LeadenSalute_ind > #sets.LeadenSalute.index then LeadenSalute_ind = 1 end
				send_command('@input /echo <----- Leaden Salute set changed to '..sets.LeadenSalute.index[LeadenSalute_ind]..' ----->')
				equip(sets.LeadenSalute[sets.LeadenSalute.index[LeadenSalute_ind]])
			
			elseif command == 'toggle WF set' then
				Wildfire_ind = Wildfire_ind +1
				if Wildfire_ind > #sets.Wildfire.index then Wildfire_ind = 1 end
				send_command('@input /echo <----- Wildfire set changed to '..sets.Wildfire.index[Wildfire_ind]..' ----->')
				equip(sets.Wildfire[sets.Wildfire.index[Wildfire_ind]])
				
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