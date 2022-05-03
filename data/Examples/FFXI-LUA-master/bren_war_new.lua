--TP set toggle input: //gs c toggle TP set----1 Standard, 2 Solo, 3 Marches, 4 AccuracyLite, 5 AccuracyMax, 6 DT, 7 DTAccuracy--
--Idle set toggle input: //gs c toggle Idle set----1 Standard, 2 DT--
enmity_spells = S{"Provoke","Animated Flourish"}
function get_sets()
	 send_command('bind f10 gs c toggle Idle set')
	 send_command('bind f9 gs c toggle TP set')
	 send_command('bind f11 gs c equip DT set')
         function file_unload()
    
        send_command('unbind ^f9')
        send_command('unbind ^f10')
		send_command('unbind ^f11')

        send_command('unbind !f9')
        send_command('unbind !f10')
		send_command('unbind !f11')
		
        send_command('unbind f9')
        send_command('unbind f10')
		send_command('unbind f11')
 
        end
	--Idle Sets--	
	sets.Idle = {}
	
	sets.Idle.index = {'Standard','DT'}
	Idle_ind = 1
	Gear_Debug = 0
	Bravura = 0
	Chango = 0
	Sleeping_Mode = 1
	CurrentTP = 0
	TPBonus = 0
	
	DA_Back = {name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}}
	WSD_Back = {name="Cichol's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+5','Weapon skill damage +10%',}}
	Crit_Back = {name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}}
	STR_Back = {name="Cichol's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+5','Weapon skill damage +10%',}}
	Acc_Head = {name="Valorous Mask", augments={'Accuracy+30','"Store TP"+4','AGI+10','Attack+13',}}
	TH_Head = {name="Valorous Mask", augments={'INT+6','"Dbl.Atk."+1','"Treasure Hunter"+1','Accuracy+6 Attack+6','Mag. Acc.+16 "Mag.Atk.Bns."+16',}}
	WS_Head = {name="Valorous Mask", augments={'Accuracy+25 Attack+25','Enmity+2','STR+12','Accuracy+6',}}
	WSD_Head = {name="Valorous Mask", augments={'Accuracy+17 Attack+17','Weapon skill damage +4%','STR+8','Accuracy+9','Attack+2',}}
	TP_Legs = {name="Odyssean Cuisses", augments={'Accuracy+16 Attack+16','"Store TP"+7','DEX+2','Attack+8',}}
	TP_Body = {name="Valorous Mail", augments={'Accuracy+20 Attack+20','"Store TP"+8','Accuracy+12','Attack+8',}}
	WSD_Legs ={name="Valor. Hose", augments={'Attack+27','Weapon skill damage +5%','DEX+8','Accuracy+15',}}
	WSD_Hands ={ name="Valorous Mitts", augments={'Accuracy+17 Attack+17','Weapon skill damage +3%','VIT+9','Accuracy+3','Attack+12',}}
	
	sets.Idle.Standard = {ammo="Staunch Tathlum",
			    head=TH_Head,neck="Sanctity Necklace", 
				ear1="Genmei earring", ear2="Infused Earring",
                body="Souveran Cuirass",hands="Sulev. Gauntlets +2",ring2="Defending ring",ring1="Vocane Ring",
                waist="Flume Belt +1",legs="Sulevia's Cuisses +2",feet="Hermes' Sandals", back ="Moonbeam Cape"}
						  
	sets.Idle.DT = {ammo="Staunch Tathlum",
			    head="Sulevia's Mask +2",neck="Loricate Torque +1", ear1="Genmei earring", ear2="Hearty Earring",
                body="Souveran Cuirass",hands="Sulev. Gauntlets +2",ring1="Vocane Ring",ring2="Defending Ring",
                back="Moonbeam Cape",waist="Flume belt +1",legs="Sulevia's Cuisses +2",feet="Sulevia's Leggings +2"}}							
							
							
	
	
	--TP Sets--
	sets.TP = {}

	sets.TP.index = {'Standard', 'OH', 'Chango', 'AccuracyLite', 'AccuracyFull', 'DT', 'DTAM', 'H2H','Zulfiqar', "DW"}
	--1=Standard, 2=One Handed, 3=Chango Set, 4=AccuracyLite, 5=AccuracyFull, 6=DT, 7=DT After Math, 8=H2H, 9=Zulfiqar, 10=DW --
	Melee_Default = 1
	TP_ind = 1
	
	sets.TP.Standard = {ammo="Yetshila",
			    head="Flamma zucchetto +1",neck="Lissome Necklace", ear1="Brutal earring", ear2="Telos earring",
			    body=TP_Body,hands="Flam. Manopolas +1",ring1="Niqmaddu ring",ring2="Petrov ring",
			    back=DA_Back,waist="Ioskeha belt",legs="Pummeler's cuisses +3",feet="Pummeler's calligae +3"}
						
	sets.TP.OH = {ammo="Ginsen",
			    head="Argosy celata +1",neck="Lissome Necklace", ear1="Brutal earring", ear2="Cessance earring",
			    body="Valorous mail",hands="Argosy mufflers +1",ring1="Petrov ring",ring2="Chirich ring",
			    back=DA_Back,waist="Ioskeha belt",legs="Pummeler's cuisses +3",feet="Pummeler's calligae +3"}
				
	sets.TP.Chango = {ammo="Ginsen",
			    head="Flamma zucchetto +1",neck="Lissome necklace", ear1="Brutal earring", ear2="Cessance earring",
			    body=TP_Body,hands="Flam. Manopolas +1",ring1="Niqmaddu ring",ring2="Hetairoi ring",
			    back=DA_Back,waist="Ioskeha belt",legs="Pummeler's cuisses +3",feet="Pummeler's calligae +3"}
				
	sets.TP.H2H = {ammo="Yetshila",
			    head="Flamma zucchetto +1",neck="Lissome necklace", ear1="Brutal earring", ear2="Cessance earring",
			    body=TP_Body,hands="Flam. Manopolas +1",ring1="Niqmaddu ring",ring2="Hetairoi ring",
			    back=DA_Back,waist="Ioskeha belt",legs="Pummeler's cuisses +3",feet="Pummeler's calligae +3"}

	sets.TP.Zulfiqar = {ammo="Ginsen",
			    head="Flamma zucchetto +1",neck="Lissome necklace", ear1="Brutal earring", ear2="Cessance earring",
			    body="Valorous mail",hands="Sulevia's gauntlets +2",ring1="Niqmaddu ring",ring2="Hetairoi ring",
			    back=DA_Back,waist="Ioskeha belt",legs="Pummeler's cuisses +3",feet="Pummeler's calligae +3"}
	
					
	sets.TP.AccuracyLite = {ammo="Ginsen",
			    head=Acc_Head,neck="Lissome necklace", ear1="Dignitary's earring", ear2="Telos earring",
			    body=TP_Body,hands="Flam. Manopolas +1",ring1="Regal Ring",ring2="Chirich ring",
			    back=DA_Back,waist="Ioskeha belt",legs="Pummeler's cuisses +3",feet="Pummeler's Calligae +3""}
	
	sets.TP.AccuracyFull = {ammo="Seething bomblet +1",
			    head=Acc_Head,neck="Subtlety spectacles", ear1="Dignitary's earring", ear2="Telos earring",
			    body=TP_Body,hands="Flam. Manopolas +1",ring1="Regal Ring",ring2="Chirich ring",
			    back=DA_Back,waist="Kentarch belt +1",legs="Pummeler's cuisses +3",	feet="Pummeler's Calligae +3"}
				
	sets.TP.DT = {ammo="Staunch Tathlum",
			    head="Sulevia's mask +1",neck="Loricate torque +1", ear1="Hearty earring", ear2="Telos earring",
		        body="Souveran cuirass +1",hands="Sulevia's gauntlets +2",ring1="Vocane ring",ring2="Defending Ring",
			    back=DA_Back,waist="Ioskeha belt",legs="Sulevia's cuisses +2",feet="Amm greaves"}					
							
	sets.TP.DTAM = {ammo="Staunch Tathlum",
			    head="Flamma zucchetto +1",neck="Loricate torque +1", ear1="Cessance earring", ear2="Telos earring",
			    body="Souveran cuirass",hands="Sulv. Gauntlets +2",ring1="Niqmaddu ring",ring2="Defending Ring",
			    back=DA_Back,waist="Ioskeha belt",legs="Pummeler's cuisses +3",	feet="Pummeler's Calligae +3"}
	
	sets.TP.DW = {ammo="Yetshila",
			    head="Flamma zucchetto +1",neck="Lissome necklace", ear1="Suppanomimi",ear2="Cessance earring",
			    body=TP_Body,hands="Flam. Manopolas +1",ring1="Niqmaddu ring",ring2="Hetairoi ring",
			    back=DA_Back,waist="Ioskeha belt",legs="Pummeler's cuisses +3",feet="Pummeler's calligae +3"}
	
				  
	
	
	--Weaponskill Sets--
	sets.WS = {}		
	
	sets.UpheavalA = {ammo="Knobkierrie",
			     head=WSD_Head,neck="Fotia gorget",ear1="Ishvara earring",ear2="Moonshade earring",
			 	 body="Pummeler's lorica +3",hands=WSD_Hands,ring1="Niqmaddu ring",ring2="Regal ring",
			   	 back=WSD_Back,waist="Fotia belt",legs=WSD_Legs,feet="Sulevia's leggings +2"}
	
	sets.UpheavalB = {ammo="Knobkierrie",
			     head="Sulevia's Mask +2",neck="Fotia gorget",ear1="Telos earring",ear2="Moonshade earring",
			 	 body="Pummeler's lorica +3",hands="Sulevia's gauntlets +2",ring1="Niqmaddu ring",ring2="Regal ring",
			   	 back=WSD_Back,waist="Fotia belt",legs="Sulevia's cuisses +2",feet="Pummeler's calligae +3"}
				  
	sets.UF = {ammo="Yetshila",
			    head="Argosy celata +1",neck="Rancor collar",ear1="Telos earring",ear2="Moonshade earring",
			 	body=TP_Body,hands="Argosy mufflers +1",ring1="Niqmaddu ring",ring2="Regal ring",
			   	back=Crit_Back,waist="Grunfeld rope",legs="Argosy breeches +1",feet="Valorous greaves"}
	
	sets.RR = {ammo="Yetshila",
			    head="Boii mask +1",neck="Fotia gorget",ear1="Telos earring",ear2="Cessance earring",
			 	body=TP_Body,hands="Flamma manopolas +1",ring1="Niqmaddu ring",ring2="Begrudging ring",
			   	back=Crit_Back,waist="Grunfeld rope",legs="Argosy breeches +1",feet="Pummeler's calligae +3"}
				
	sets.Steelcyclone = {ammo="Knobkierrie",
			    head=WSD_Head,neck="Fotia gorget",ear1="Moonshade earring",ear2="Telos earring",
			 	body="Pummeler's lorica +3",hands=WSD_Hands,ring1="Niqmaddu ring",ring2="Regal ring",
			   	back=STR_Back,waist="Fotia belt",legs=WSD_Legs,feet="Sulevia's leggings +2"}
	
	sets.Break = {ammo="Pemphredo tathlum",
			    head="Flamma Zucchetto +1",neck="Sanctity necklace",ear1="Dignitary's earring",ear2="Telos earring",
			 	body="Flamma korazin +1",hands="Flamma manopolas +1",ring1="Regal ring",ring2="Weatherspoon ring",
			   	back=STR_Back,waist="Eschan stone",legs="Flamma dirs +1",feet="Flamma gambieras +1"}
				
	sets.KingsJusticeA = {ammo="Seething bomblet +1",
			    head="Argosy celata +1",neck="Fotia gorget",ear1="Brutal earring",ear2="Moonshade earring",
			 	body="Pummeler's lorica +3",hands="Argosy mufflers +1",ring1="Niqmaddu ring",ring2="Regal ring",
			   	back=DA_Back,waist="Grunfeld rope",legs="Argosy breeches +1",feet="Pummeler's calligae +3"}
	
	sets.KingsJusticeB = {ammo="Seething bomblet +1",
			    head=WSD_Head,neck="Fotia gorget",ear1="Brutal earring",ear2="Moonshade earring",
			 	body="Pummeler's lorica +3",hands="Argosy mufflers +1",ring1="Niqmaddu ring",ring2="Regal ring",
			   	back=STR_Back,waist="Grunfeld rope",legs="Argosy breeches +1",feet="Pummeler's calligae +3"}
				
	sets.FellCleave = {ammo="Knobkierrie",
			    head=WSD_Head,neck="Fotia gorget",ear1="Ishvara earring",ear2="Moonshade earring",
			 	body="Pummeler's lorica +3",hands=WSD_Hands,ring1="Ifrit ring +1",ring2="Regal ring",
			   	back=STR_Back,waist="Fotia belt",legs="Argosy breeches +1",feet="Sulevia's leggings +2"}
	
	sets.MT = 	{ammo="Knobkierrie",	
			    head=WSD_Head,neck="Fotia Gorget",ear1="Ishvara earring", ear2="Telos Earring",
			 	body="Pummeler's lorica +3",hands=WSD_Hands,ring1="Niqmaddu ring",ring2="Regal ring",
			   	back=STR_Back,waist="Fotia Belt",legs=WSD_Legs,feet="Sulevia's leggings +2"}	
	
	sets.Savage = {ammo="Knobkierrie",
			    head=WSD_Head,neck="Fotia gorget",ear1="Ishvara earring",ear2="Moonshade earring",
			 	body="Pummeler's lorica +3",hands=WSD_Hands,ring1="Niqmaddu ring",ring2="Regal Ring",
			   	back=STR_Back,waist="Grunfeld rope",legs=WSD_Legs,feet="Sulevia's leggings +2"}
	
	
	sets.SavageCrit = {ammo="Knobkierrie",
			    head=WSD_Head,neck="Fotia gorget",ear1="Ishvara earring",ear2="Moonshade earring",
			 	body="Pummeler's lorica +3",hands=WSD_Hands,ring1="Niqmaddu ring",ring2="Regal ring",
			   	back=STR_Back,waist="Prosilio belt +1",legs=WSD_Legs,feet="Boii calligae +1"}
				
	
	sets.Sanguine = {ammo="Knobkierrie",
			    head="Pixie hairpin +1",neck="Baetyl pendant",ear1="Friomisi earring",ear2="Crematio earring",
			 	body="Founder's breastplate",hands="Founder's Gauntlets",ring1="Shiva ring +1",ring2="Archon ring",
			   	back=STR_Back,waist="Eschan stone",legs="Eschite cuisses",feet="Founder's greaves"}	
				
	sets.Requiescat = {ammo="Seething bomblet +1",
			    head=WS_Head,neck="Fotia Gorget",ear1="Brutal earring",ear2="Moonshade earring",
			 	body=TP_Body,hands="Valorous mitts",ring1="Ifrit ring +1",ring2="Regal ring",
			   	back=DA_Back,waist="Fotia belt",legs=TP_Legs,feet="Pummeler's calligae +3"}			
	
				
	sets.Vorpal = {ammo="Yetshila",
			    head="Argosy celata +1",neck="Fotia Gorget",ear1="Brutal earring",ear2="Moonshade earring",
			 	body=TP_Body,hands="Argosy mufflers +1",ring1="Niqmaddu ring",ring2="Begrudging ring",
			   	back=Crit_Back,waist="Fotia belt",legs="Argosy breeches +1",feet="Pummeler's calligae +3"}
	
	sets.Rampage = {ammo="Yetshila",
			    head="Argosy celata +1",neck="Fotia Gorget",ear1="Brutal earring",ear2="Moonshade earring",
			 	body=TP_Body,hands="Argosy mufflers +1",ring1="Niqmaddu ring",ring2="Begrudging ring",
			   	back=Crit_Back,waist="Fotia belt",legs="Argosy breeches +1",feet="Pummeler's calligae +3"}
				
	sets.Ruinator = {ammo="Seething bomblet +1",
			    head="Argosy Celata +1",neck="Fotia Gorget",ear1="Brutal earring",ear2="Moonshade earring",
			 	body=TP_Body,hands="Argosy mufflers +1",ring1="Niqmaddu ring",ring2="Regal ring",
			   	back=DA_Back,waist="Fotia belt",legs="Argosy breeches +1",feet="Pummeler's calligae +3"}	
				
	sets.Cloud = {ammo="Knobkierrie",
			    head="Jumalik helm",neck="Baetyl pendant",ear1="Friomisi earring",ear2="Moonshade earring",
			 	body="Founder's breastplate",hands="Founder's Gauntlets",ring1="Shiva ring +1",ring2="Acumen ring",
			   	back=STR_Back,waist="Eschan stone",legs="Eschite cuisses",feet="Founder's greaves"}	
				
	sets.Mistral = {ammo="Knobkierrie",	
			    head=WSD_Head,neck="Fotia Gorget",ear1="Ishvara earring", ear2="Moonshade earring",
			 	body="Pummeler's lorica +3",hands=WSD_Hands,ring1="Niqmaddu ring",ring2="Regal Ring",
			   	back=STR_Back,waist="Prosilio Belt +1",legs=WSD_Legs,feet="Sulevia's leggings +2"}
				
	sets.MistralCrit = {ammo="Knobkierrie",
			    head=WSD_Head,neck="Fotia gorget",ear1="Ishvara earring",ear2="Moonshade earring",
			 	body="Pummeler's lorica +3",hands=WSD_Hands,ring1="Niqmaddu ring",ring2="Ifrit ring +1",
			   	back=STR_Back,waist="Prosilio belt +1",legs=WSD_Legs,feet="Boii calligae +1"}
	
	sets.Decimation = {ammo="Seething bomblet +1",
			    head="Argosy Celata +1",neck="Fotia gorget",ear1="Cessance earring",ear2="Moonshade earring",
			 	body=TP_Body,hands="Argosy mufflers +1",ring1="Niqmaddu ring",ring2="Regal ring",
			   	back=DA_Back,waist="Fotia belt",legs="Argosy breeches +1",feet="Pummeler's calligae +3"}		  
								  
	sets.Resolution = {ammo="Seething bomblet +1",
			    head="Argosy Celata +1",neck="Fotia gorget",ear1="Moonshade earring",ear2="Cessance earring",
			 	body=TP_Body,hands="Argosy mufflers +1",ring1="Niqmaddu ring",ring2="Regal ring",
			   	back=DA_Back,waist="Fotia belt",legs="Argosy breeches +1",feet="Pummeler's calligae +3"}
	
	sets.Scourge = {ammo="Knobkierrie",	
			    head=WSD_Head,neck="Lissome Necklace",ear1="Cessance earring", ear2="Telos earring",
			 	body="Pummeler's lorica +3",hands=WSD_Hands,ring1="Petrov ring",ring2="Regal ring",
			   	back=STR_Back,waist="Fotia Belt",legs=WSD_Legs,feet="Sulevia's Leggings +2"}		
	
	sets.Shockwave = {ammo="Knobkierrie",
			    head=WSD_Head,neck="Fotia Gorget",ear1="Brutal earring",ear2="Moonshade earring",
			 	body=TP_Body,hands=WSD_Hands,ring1="Niqmaddu ring",ring2="Regal ring",
				back=STR_Back,waist="Fotia belt",legs=WSD_Legs,feet="Pummeler's Calligae +3"}
				
	sets.Groundstrike = {ammo="Knobkierrie",	
			    head=WS_Head,neck="Fotia Gorget",ear1="Ishvara earring",ear2="Moonshade earring",
			 	body="Pummeler's lorica +3",hands=WSD_Hands,ring1="Niqmaddu ring",ring2="Regal ring",
			   	back=STR_Back,waist="Fotia belt",legs=WSD_Legs,feet="Valorous greaves"}
	
	sets.CrescentMoon = {ammo="Knobkierrie",	
			    head=WSD_Head,neck="Fotia Gorget",ear1="Ishvara earring",ear2="Moonshade earring",
			 	body="Pummeler's lorica +3",hands=WSD_Hands,ring1="Niqmaddu ring",ring2="Regal ring",
			   	back=STR_Back,waist="Fotia belt",legs=WSD_Legs,feet="Sulevia's Leggings +2"}
	
	sets.Herculean = {ammo="Knobkierrie",
			    head="Jumalik helm",neck="Baetyl pendant",ear1="Friomisi earring",ear2="Crematio earring",
			 	body="Founder's breastplate",hands="Founder's Gauntlets",ring1="Shiva ring +1",ring2="Regal ring",
			   	back=WSD_Back,waist="Eschan stone",legs="Eschite cuisses",feet="Founder's greaves"}
					
	sets.Evisceration = {ammo="Yetshila",
			    head="Boii mask +1",neck="Fotia Gorget",ear1="Brutal earring",ear2="Cessance earring",
			 	body=TP_Body,hands="Flamma manopolas +1",ring1="Niqmaddu ring",ring2="Begrudging ring",
			   	back=Crit_Back,waist="Fotia belt",legs="Argosy breeches +1",feet="Pummeler's calligae +3"}
					
	sets.Truestrike = {ammo="Yetshila",
			    head="Argosy celata +1",neck="Fotia gorget",ear1="Ishvara earring",ear2="Moonshade earring",
			 	body="Pummeler's lorica +3",hands="Argosy mufflers +1",ring1="Niqmaddu ring",ring2="Regal Ring",
			   	back=STR_Back,waist="Fotia belt",legs=WSD_Legs,feet="Boii calligae +1"}
				
	sets.Judgment = {ammo="Knobkierrie",
			    head=WSD_Head,neck="Fotia gorget",ear1="Ishvara earring",ear2="Moonshade earring",
			 	body="Pummeler's lorica +3",hands=WSD_Hands,ring1="Regal Ring",ring2="Rufescent ring",
			   	back=STR_Back,waist="Prosilio belt +1",legs=WSD_Legs,feet="Sulevia's leggings +2"}
				
	sets.BH = {ammo="Knobkierrie",
			    head=WSD_Head,neck="Fotia gorget",ear1="Ishvara earring",ear2="Moonshade earring",
			 	body="Odyssean chestplate",hands=WSD_Hands,ring1="Regal Ring",ring2="Rufescent ring",
			   	back=STR_Back,waist="Prosilio belt +1",legs=WSD_Legs,feet="Sulevia's leggings +2"}			
	
	sets.Hexa = {ammo="Yetshila",
			    head="Boii mask +1",neck="Fotia Gorget",ear1="Brutal earring",ear2="Moonshade earring",
			 	body="Pummeler's lorica +3",hands="Flamma manopolas +1",ring1="Niqmaddu ring",ring2="Begrudging ring",
			   	back=Crit_Back,waist="Fotia belt",legs="Pummeler's cuisses +3",feet="Pummeler's calligae +3"}
	
	sets.Penta = {ammo="Seething bomblet +1",
			    head="Argosy Celata +1",neck="Fotia gorget",ear1="Moonshade earring",ear2="Cessance earring",
			 	body=TP_Body,hands="Argosy mufflers +1",ring1="Niqmaddu ring",ring2="Regal ring",
			   	back=DA_Back,waist="Grunfeld rope",legs="Argosy breeches +1",feet="Pummeler's calligae +3"}
				
	sets.StarDiver = {ammo="Seething bomblet +1",
			    head="Argosy Celata +1",neck="Fotia gorget",ear1="Moonshade earring",ear2="Cessance earring",
			 	body=TP_Body,hands="Argosy mufflers +1",ring1="Niqmaddu ring",ring2="Regal ring",
			   	back=DA_Back,waist="Fotia belt",legs="Argosy breeches +1",feet="Pummeler's calligae +3"}
	
	sets.Sonic = {ammo="Knobkierrie",
			    head="Argosy Celata +1",neck="Fotia gorget",ear1="Moonshade earring",ear2="Cessance earring",
			 	body=TP_Body,hands="Argosy mufflers +1",ring1="Niqmaddu ring",ring2="Regal ring",
			   	back=STR_Back,waist="Fotia belt",legs="Argosy breeches +1",feet="Pummeler's calligae +3"}
	
	sets.Wheeling = {ammo="Knobkierrie",
			    head=WSD_Head,neck="Fotia gorget",ear1="Moonshade earring",ear2="Ishvara earring",
			 	body="Pummeler's lorica +3",hands="Argosy mufflers +1",ring1="Niqmaddu ring",ring2="Regal ring",
			   	back=STR_Back,waist="Fotia belt",legs="Argosy breeches +1",feet="Sulevia's leggings +2"}
	
	sets.CR = 	{ammo="Knobkierrie",	
			    head=WSD_Head,neck="Fotia Gorget",ear1="Ishvara earring", ear2="Telos Earring",
			 	body="Pummeler's lorica +3",hands=WSD_Hands,ring1="Niqmaddu ring",ring2="Regal ring",
			   	back=STR_Back,waist="Fotia Belt",legs=WSD_Legs,feet="Sulevia's leggings +2"}	
				
	sets.Retribution = {ammo="Knobkierrie",
			    head=WSD_Head,neck="Fotia gorget",ear1="Ishvara earring",ear2="Moonshade earring",
			 	body="Pummeler's lorica +3",hands=WSD_Hands,ring1="Niqmaddu ring",ring2="Regal Ring",
			   	back=STR_Back,waist="Fotia belt",legs=WSD_Legs,feet="Sulevia's leggings +2"}
				
	sets.FullSwing = {ammo="Knobkierrie",
			    head=WSD_Head,neck="Fotia gorget",ear1="Ishvara earring",ear2="Moonshade earring",
			 	body="Pummeler's lorica +3",hands=WSD_Hands,ring1="Niqmaddu ring",ring2="Regal Ring",
			   	back=STR_Back,waist="Fotia belt",legs=WSD_Legs,feet="Sulevia's leggings +2"}
				
	sets.TK = {ammo="Knobkierrie",
			     head=WSD_Head,neck="Fotia gorget",ear1="Ishvara earring",ear2="Moonshade earring",
			 	 body="Pummeler's lorica +3",hands=WSD_Hands,ring1="Niqmaddu ring",ring2="Regal ring",
			   	 back=STR_Back,waist="Fotia belt",legs=WSD_Legs,feet="Sulevia's leggings +2"}
				 
	sets.DK = {ammo="Knobkierrie",
			     head=WSD_Head,neck="Fotia gorget",ear1="Ishvara earring",ear2="Moonshade earring",
			 	 body="Pummeler's lorica +3",hands=WSD_Hands,ring1="Niqmaddu ring",ring2="Regal ring",
			   	 back=WSD_Back,waist="Caudata belt",legs=WSD_Legs,feet="Sulevia's leggings +2"}
				 
	sets.RF = {ammo="Seething bomblet +1",
			    head="Argosy Celata +1",neck="Caro necklace",ear1="Moonshade earring",ear2="Cessance earring",
			 	body=TP_Body,hands="Argosy mufflers +1",ring1="Niqmaddu ring",ring2="Regal ring",
			   	back=DA_Back,waist="Grunfeld rope",legs="Argosy breeches +1",feet="Pummeler's calligae +3"}
				
	
	
	--Job Ability Sets--
       
        sets.JA = {}
               
		sets.JA.Berserk ={back = "Cichol's Mantle",feet = "Agoge Calligae", body = "Pumm. Lorica +3"}

		sets.JA.Aggressor = { body = "Agoge Lorcia", head ="Pummeler's mask +2"}
		
		sets.JA.Warcry = {head = "Agoge Mask"}		
		
		sets.JA.MightyStrikes = {hands = "Warrior's Muffler +2"}
		
		sets.JA.Ret ={feet = "Ravager's Calligae +1"}
		
		sets.JA.BloodRage ={body ="Ravager's Lorica +2"}
		
		sets.JA.Tomahawk = {ammo = "Throwing Tomahawk",
						feet = "Agoge Calligae", waist ="Chaac Belt", 
						head={ name="Valorous Mask", augments={'INT+6','"Dbl.Atk."+1','"Treasure Hunter"+1','Accuracy+6 Attack+6','Mag. Acc.+16 "Mag.Atk.Bns."+16',}}}
				
	sets.Utility = {}
	sets.Utility.Sleeping = {neck="Opo-Opo Necklace"}
	
	sets.Utility.Doomed = {waist="Gishdubar Sash", ring1 ="Saida Ring"}
		
			
	sets.enmity = {ammo="Sapience Orb",	ear2 ="Friomisi Earring", back ="Weard Mantle",waist ="Trance belt",
				   ring2="Supershear Ring",neck = "Unmoving Collar",hands="Souveran Handschuhs",feet="Souveran Schuhs",body="Souveran Cuirass",
				   ring1="Petrov Ring",legs="Souveran Diechlings +1",head="Souveran Schaller"}
			
			
	--Precast Sets--
	sets.precast = {}
	sets.fastcast = {ammo="Staunch Tathlum",
			    head="Cizin helm +1",neck="Loricate torque +1", ear1="Loquac. Earring", ear2="Sanare Earring",
			    body="Odyssean chestplate",hands="Leyline Gloves",ring1="Weatherspoon ring",ring2="Defending ring",
			    back="Xucau mantle",waist="Flume belt",legs="Eschite cuisses",feet="Odyssean greaves"}
	sets.midcast = {ammo="Staunch Tathlum",
			    head="Sulevia's mask +1",neck="Loricate torque +1", ear1="Hearty earring", ear2="Sanare earring",
		        body="Souveran cuirass +1",hands="Sulevia's gauntlets +2",ring1="Moonbeam ring",ring2="Defending Ring",
			    back="Agema cape",waist="Ioskeha belt",legs="Sulevia's cuisses +2",feet="Amm greaves"}
	
	sets.AF1 = {main="Bravura",body="Pummeler's lorica +3",head="Pummeler's Mask +3"}
	sets.AF2 = {main="Ragnarok",sub="Utu Grip",body="Agoge Lorica +1",head="Agoge mask +1",hands="Agoge mufflers +1",feet="Agoge Calligae +1",}
	sets.AF3 = {main="Chango",ammo="Thr. Tomahawk",body="Boii lorica +1",}
	
end



function precast(spell)
	if spell.action_type == 'Magic' then
		equip(sets.fastcast)	
		send_command('@input /echo Fastcast Set')
	end		
	
	if player.equipment.main == 'Chango' then
		TPBonus = 500
	else
		TPBonus = 0
	end
	
	if buffactive['Warcry'] then
		TPBonus = TPBonus + 700
	end
	
	--if player.equipment.left_ear == 'Moonshade Earring' or player.equipment.right_ear == 'Moonshade Earring' then
	--	TPBonus = TPBonus + 250
	--end
	
	
				
	if spell.type == 'WeaponSkill' then
		
		---Great Axe Weapon Skills---
		
		if 	spell.english == 'Upheaval' then			
				TPBonus = TPBonus + 250
				CurrentTP = player.tp + TPBonus
				send_command('@input /echo TP Bonus '..TPBonus.. ' CurrentTP '..CurrentTP)
				
				if CurrentTP > 2000 then
				equip(sets.UpheavalA)
				send_command('@input /echo Upheaval WSD Set')
				else
				equip(sets.UpheavalB)
				send_command('@input /echo Upheaval DA Set')
				end				
			elseif spell.english == 'Ukko\'s Fury' then		
				equip(sets.UF)
				send_command('@input /echo UF Set')
			elseif spell.english == 'Metatron Torment' then		
				equip(sets.MT)
				send_command('@input /echo MT Set')	
			elseif spell.english == 'Fell Cleave' then		
				equip(sets.FellCleave)
				send_command('@input /echo FC Set')
			elseif spell.english == 'King\'s Justice' then		
				equip(sets.KingsJusticeA)
				send_command('@input /echo KJ Set')
			elseif spell.english == 'Steel Cyclone' then
				equip(sets.Steelcyclone)
				send_command('@input /echo Steel Cyclone Set')
			elseif spell.english == 'Full Break' or spell.name == 'Armor Break' or spell.name == 'Shield Break' or spell.name == 'Weapon Break' or spell.name == 'Leg Sweep' then
				equip(sets.Break)
				send_command('@input /echo Break Set')
--			elseif spell.english == 'Raging Rush' then
--				equip(sets.RR)
--				send_command('@input /echo Raging Rush Set')

		---Great Sword Weapon Skills---		
			
			elseif spell.english == 'Resolution' then
				equip(sets.Resolution)			
				if world.day == 'Lightningsday' or world.day == 'Windsday' or world.day == 'Earthsday' then
					equip({head="Gavialis Helm"})
					send_command('@input /echo Resolution Day Set')		
				else
					send_command('@input /echo Resolution Set')		
				end
			elseif spell.english == 'Scourge' then		
				equip(sets.Scourge)
				send_command('@input /echo Scourge Set')
			elseif spell.english == 'Ground Strike' then		
				equip(sets.Groundstrike)
				send_command('@input /echo Ground Strike Set')
			elseif spell.english == 'Crescent Moon' then		
				equip(sets.CrescentMoon)
				send_command('@input /echo CM Set')
			elseif spell.english == 'Shockwave' then
				equip(sets.Shockwave)
				send_command('@input /echo Shockwave Set')
			elseif spell.english == "Herculean Slash" then
				equip(sets.Herculean)
				send_command('@input /echo Herculean Set')			
		
		---Axe Weapon Skills---
		
			elseif spell.english == 'Ruinator' then
				equip(sets.Ruinator)
				if world.day == 'Iceday' or world.day == 'Windsday' or world.day == 'Watersday' then
					equip({head="Gavialis Helm"})
					send_command('@input /echo Ruinator Day Set')		
				else				
					send_command('@input /echo Ruinator Set')
				end
			elseif spell.english == 'Mistral Axe' then
				if buffactive['Sneak Attack'] then
					equip(sets.MistralCrit)
					send_command('@input /echo Mistral Crit Set')
				else
					equip(sets.Mistral)
					send_command('@input /echo Mistral Set')		
				end			
			elseif spell.english == "Cloudsplitter" or spell.english == "Red Lotus Blade" or spell.english == "Seraph Blade" then
				equip(sets.Cloud)
				send_command('@input /echo Magic WS Set')
			elseif spell.english == 'Decimation' then
				equip(sets.Decimation)
				if world.day == 'Lightsday' or world.day == 'Firesday' or world.day == 'Watersday' then
					equip({head="Gavialis Helm"})
					send_command('@input /echo Decimation Day Set')		
				else				
					send_command('@input /echo Decimation Set')
				end		
			elseif spell.english == 'Rampage' then
				equip(sets.Rampage)
				if world.day == 'Earthsday' then
					equip({head="Gavialis Helm"})
					send_command('@input /echo Rampage Day Set')		
				else				
					send_command('@input /echo Rampage Set')
				end
				
		---Sword Weapon Skills---
		
			elseif spell.english == 'Savage Blade' then
				if buffactive['Sneak Attack'] then
					equip(sets.SavageCrit)
					send_command('@input /echo Savage Blade Crit Set')
				else
					equip(sets.Savage)
					send_command('@input /echo Savage Blade Set')		
				end
			elseif spell.english == 'Requiescat' then
				equip(sets.Requiescat)
				if world.day == 'Darksday' or world.day == 'Earthsday' then
					equip({head="Gavialis Helm"})
					send_command('@input /echo Requiescat Day Set')		
				else				
					send_command('@input /echo Requiescat Set')
				end
			elseif spell.english == "Sanguine Blade" then
				equip(sets.Sanguine)
				send_command('@input /echo Sanguine Blade Set')
			elseif spell.english == "Vorpal Blade" then		
				equip(sets.Vorpal)
				if world.day == 'Lightningsday' or world.day == 'Earthsday' then
					equip({head="Gavialis Helm"})
					send_command('@input /echo Vorpal Day Set')		
				else			
					send_command('@input /echo Vorpal Blade Set')
				end
			
		---Club Weapon Skills---
			
			elseif spell.english == 'Black Halo' then
				equip(sets.BH)
				send_command('@input /echo BH Set')			
			elseif spell.english == 'Judgment' then		
				equip(sets.Judgment)
				send_command('@input /echo Judgment Set')
			elseif spell.english == 'True Strike' then
				equip(sets.Truestrike)
				send_command('@input /echo TS Set')
			elseif spell.english == 'Hexa Strike' then
				equip(sets.Hexa)
				send_command('@input /echo Hexa Set')
		
		---Pole Arm Weapon Skills---
			
			elseif spell.english == 'Penta Thrust' then
				equip(sets.Penta)
				send_command('@input /echo Penta Set')
			elseif spell.english == 'Stardiver' then
				equip(sets.StarDiver)
				send_command('@input /echo StarDiver Set')
			elseif spell.english == 'Sonic Thrust' then
				equip(sets.Sonic)
				send_command('@input /echo Sonic Thrust Set')
			elseif spell.english == 'Wheeling Thrust' then
				equip(sets.Wheeling)
				send_command('@input /echo Wheeling Thrust Set')
		
		---Scythe Weapon Skills---
			
			elseif spell.english == 'Cross Reaper' then
				equip(sets.CR)
				send_command('@input /echo CR Set')
			
		---Dagger Weapon Skills---
		
			elseif spell.english == 'Evisceration' then
				equip(sets.Evisceration)
				send_command('@input /echo Evisceration Set')
		
		---Staff Weapon Skills---
		
			elseif spell.english == 'Retribution' then
				equip(sets.Retribution)
				send_command('@input /echo Retribution Set')
			elseif spell.english == 'Full Swing' then
				equip(sets.FullSwing)
				send_command('@input /echo Full Swing Set')
			---H2H Weapon Skills---
		
			elseif spell.english == 'Raging Fists' then
				equip(sets.RF)
				send_command('@input /echo RF Set')
			elseif spell.english == 'Tornado Kick' then
				equip(sets.TK)
				send_command('@input /echo TK Set')
			elseif spell.english == 'Dragon Kick' then
				equip(sets.DK)
				send_command('@input /echo DK Set')
			else
		end
	end
--JA Sets--
	if spell.type == 'JobAbility' then
		if spell.english == "Provoke" or spell.english == "Animated Flourish" or spell.english == "Flash" or spell.english == "stun" then
			equip(sets.enmity)
			send_command('@input /echo Enmity Set')
		elseif spell.english =='Berserk' then
			equip(set_combine(sets.Utility.Enmity,sets.JA.Berserk))
		elseif spell.english =='Aggressor' then
			equip(set_combine(sets.Utility.Enmity,sets.JA.Aggressor))
		elseif spell.english =='Warcry' then
			equip(set_combine(sets.Utility.Enmity,sets.JA.Warcry))
		elseif spell.english =='Tomahawk' then
			equip(set_combine(sets.Utility.Enmity,sets.JA.Tomahawk))
		elseif spell.english =='Bloodrage' then
			equip(set_combine(sets.Utility.Enmity,sets.JA.BloodRage))
		elseif spell.english =='Mighty Strikes' then
			equip(set_combine(sets.Utility.Enmity,sets.JA.MightyStrikes))
		end	
	end	
end
	
function midcast(spell,act)
	if spell.action_type == 'Magic' then
		if spell.name == 'Utsusemi: Ichi' or spell.name == 'Utsusemi: Ni' then
			equip(sets.midcast)
			send_command('@input /echo Midcast DT Set')
		else
		end
	else
	end
	
end

function aftercast(spell)
	if player.status == 'Engaged' then
		if player.equipment.main == 'Bravura' and buffactive["Aftermath"] then
			TP_ind = 7
			equip(sets.TP[sets.TP.index[TP_ind]])
			send_command('@input /echo Bravura DT Set')
			if buffactive['doom'] then
					equip(sets.Utility.Doom)
				end
				if buffactive['terror'] or buffactive['stun'] or buffactive['sleep']	then 
					equip(sets.TP.DT)
				end
		else
			equip(sets.TP[sets.TP.index[TP_ind]])
			send_command('@input /echo TP Set')
			if buffactive['doom'] then
					equip(sets.Utility.Doom)
				end
				if buffactive['terror'] or buffactive['stun'] or buffactive['sleep']	then 
					equip(sets.TP.DT)
				end
		end
	else
		if Gear_Debug == 0 then
			equip(sets.Idle.Standard)
			if Sleeping_Mode == 1 then
			equip({neck="Opo-opo Necklace"})
			else
			equip(sets.Idle.Standard)
			send_command('@input /echo Idle Set')
			end
		else		
		end
	end
	if spell.interrupted == true then
		equip(sets.TP[sets.TP.index[TP_ind]])
		send_command('@input /echo WS failed using Set')
	end
end

function status_change(new,old)
	if new == 'Engaged' then
		equip(sets.TP[sets.TP.index[TP_ind]])
	else
		equip(sets.Idle.Standard)		
	end
end

function self_command(command)	
	if command == 'equip TP set' then
		if player.equipment.main == 'Chango' then
			TP_ind = 3
			equip(sets.TP[sets.TP.index[TP_ind]])
			send_command('@input /echo Chango Set')
		elseif player.equipment.main == 'Zulfiqar' then
			TP_ind = 9
			equip(sets.TP[sets.TP.index[TP_ind]])
			send_command('@input /echo Zulfiqar Set')
		elseif player.equipment.main == 'Exalted Spear' then
			TP_ind = 3
			equip(sets.TP[sets.TP.index[TP_ind]])
			send_command('@input /echo Spear Set')
		else
			TP_ind = 1
			equip(sets.TP[sets.TP.index[TP_ind]])
			send_command('@input /echo TP Set')
		end
	elseif command == 'equip Idle set' then		
		equip(sets.Idle.Standard)
		send_command('@input /echo Idle Set')
	elseif command == 'equip OH set' then		
		TP_ind = 2		
		equip(sets.TP[sets.TP.index[TP_ind]])
		send_command('@input /echo OH Set')
	elseif command == 'equip OHAcc set' then		
		TP_ind = 3		
		equip(sets.TP[sets.TP.index[TP_ind]])
		send_command('@input /echo OHAcc Set')
	elseif command == 'equip H2H set' then		
		TP_ind = 8		
		equip(sets.TP[sets.TP.index[TP_ind]])
		send_command('@input /echo H2H Set')
	elseif command == 'equip Zulfiqar set' then		
		TP_ind = 9		
		equip(sets.TP[sets.TP.index[TP_ind]])
		send_command('@input /echo Zulfiqar Set')
	elseif command == 'equip DW set' then		
		TP_ind = 10		
		equip(sets.TP[sets.TP.index[TP_ind]])
		send_command('@input /echo DW Set')
	elseif command == 'equip DT set' then
		if player.equipment.main == 'Bravura' and buffactive["Aftermath"] then
			TP_ind = 7
			equip(sets.TP[sets.TP.index[TP_ind]])
			send_command('@input /echo Bravura DT Set')
		else			
			TP_ind = 6		
			equip(sets.TP[sets.TP.index[TP_ind]])
			send_command('@input /echo DT Set')	
		end
	elseif command == 'equip DTAM set' then		
		TP_ind = 7		
		equip(sets.TP[sets.TP.index[TP_ind]])
		send_command('@input /echo DTAM Set')		
	elseif command == 'equip Acc_Lite set' then		
		TP_ind = 4		
		equip(sets.TP[sets.TP.index[TP_ind]])
		send_command('@input /echo Acc_lite Set')
	elseif command == 'equip Acc_Full set' then		
		TP_ind = 5		
		equip(sets.TP[sets.TP.index[TP_ind]])
		send_command('@input /echo Acc_Full Set')
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

windower.register_event('zone change', function()
    equip(sets.Idle.Standard)	
end)
