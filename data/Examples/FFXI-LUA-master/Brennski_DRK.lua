--TP set toggle input: //gs c toggle TP set----1 Standard, 2 Solo, 3 Marches, 4 AccuracyLite, 5 AccuracyMax, 6 DT, 7 DTAccuracy--
--Idle set toggle input: //gs c toggle Idle set----1 Standard, 2 DT--
--Requiescat set toggle input: //gs c toggle Req set----1 Attack, 2 Accuracy--
--Chant du Cygne set toggle input: //gs c toggle CDC set----1 Attack, 2 Accuracy--
Absorb_Spells = S{"Absorb-STR","Absorb-DEX","Absorb-VIT","Absorb-MND","Absorb-INT","Absorb-CHR","Absorb-ACC"}
Drain_Spells = S{"Drain","Drain II","Aspir","Aspir II","Absorb-TP"}

function get_sets()
		send_command('bind f10 gs c toggle Idle set')
	 send_command('bind f9 gs c equip TP set')
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
	Killer_Mode = 0
	DA_Back ={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}}
	WSD_Back={ name="Ankou's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','Accuracy+10','Weapon skill damage +10%',}}
	STR_Back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Accuracy+10','Weapon skill damage +10%',}}
	INT_Back={ name="Ankou's Mantle", augments={'INT+20','Accuracy+20 Attack+20','INT+10','"Dbl.Atk."+10'}}
	
	Acc_Head = "Flam. Zucchetto +2"
	TH_Head = {name="Valorous Mask", augments={'INT+6','"Dbl.Atk."+1','"Treasure Hunter"+1','Accuracy+6 Attack+6','Mag. Acc.+16 "Mag.Atk.Bns."+16',}}
	WS_Head = {name="Valorous Mask", augments={'Accuracy+25 Attack+25','Enmity+2','STR+12','Accuracy+6',}}	
	TP_Legs = {name="Odyssean Cuisses", augments={'Accuracy+16 Attack+16','"Store TP"+7','DEX+2','Attack+8',}}
	TP_Body = "Emicho Haubert +1"
	WSD_Legs ={ name="Odyssean Cuisses", augments={'Accuracy+20','Weapon skill damage +4%','VIT+5',}}
	WSD_Hands ="Odyssean gauntlets",
	WSD_Body ={ name="Valorous Mail", augments={'Accuracy+25','Weapon skill damage +4%','DEX+8','Attack+5',}}
	WSD_Head ={ name="Valorous Mask", augments={'Accuracy+18','Weapon skill damage +3%','STR+4','Attack+11',}}

	
	sets.Idle.Standard = {ammo="Staunch Tathlum",
			    head=TH_Head,neck="Coatl Gorget +1", ear1="Hearty earring", ear2="Infused earring",
		        body="Tartarus Platemail",hands="Sulevia's gauntlets +2",ring1="Vocane Ring",ring2="Defending Ring",
			    back="Moonbeam cape",waist="Flume Belt +1",legs="Carmine cuisses +1",feet="Amm greaves"}
						  
	sets.Idle.DT = {ammo="Staunch Tathlum",
			    head="Sulevia's mask +2",neck="Loricate torque +1", ear1="Hearty earring", ear2="Sanare earring",
		        body="Tartarus Platemail",hands="Sulevia's gauntlets +2",ring1="Vocan Ring",ring2="Defending Ring",
			    back="Moonbeam cape",waist="Flume Belt +1",legs="Sulevia's cuisses +2",feet="Amm greaves"}							
							
							
	
	
	--TP Sets--
	sets.TP = {}

	sets.TP.index = {'Standard', 'DW', 'Anguta', 'AccuracyLite', 'AccuracyFull', 'DT'}
	--1=Standard, 2=DW, 3=Anguta, 4=AccuracyLite, 5=AccuracyFull, 6=DT
	TP_ind = 1
	
	sets.TP.Standard = {ammo="Ginsen",
			    head=Acc_Head,neck="Lissome Necklace", ear1="Telos earring", ear2="Cessance earring",
			    body=TP_Body,hands="Emicho Gauntlets +1",ring1="Niqmaddu ring",ring2="Flamma ring",
			    back=DA_Back,waist="Ioskeha belt +1",legs=TP_Legs,feet="Flam. Gambieras +2"}
	
	sets.TP.DW ={ammo="Ginsen",
			    head=Acc_Head,neck="Lissome Necklace", ear1="Suppanomimi", ear2="Cessance earring",
			    body=TP_Body,hands="Emicho Gauntlets +1",ring1="Flamma ring",ring2="Niqmaddu ring",
			    back=DA_Back,waist="Ioskeha belt +1",legs="Carmine cuisses +1",feet="Carmine greaves +1"}		
	
	sets.TP.Anguta = {ammo="Ginsen",
			    head=Acc_Head,neck="Ainia collar", ear1="Telos earring", ear2="Cessance earring",
			    body=TP_Body,hands="Emicho Gauntlets +1",ring1="Niqmaddu ring",ring2="Flamma ring",
			    back=DA_Back,waist="Ioskeha belt +1",legs=TP_Legs,feet="Flam. Gambieras +2"}
				
--	sets.TP.Anguta = {ammo="Hasty pinion +1",
--			    head="Flamma zucchetto +1",neck="Lissome Necklace", ear1="Brutal earring", ear2="Cessance earring",
--			    body="Valorous mail",hands="Sulevia's gauntlets +2",ring1="Niqmaddu ring",ring2="Hetairoi ring",
--			    back=DA_Back,waist="Ioskeha belt +1",legs="Argosy Breeches +1",feet="Flamma gambieras +1"}
	
					
	sets.TP.AccuracyLite = {ammo="Ginsen",
			    head=DA_Head,neck="Lissome Necklace", ear1="Brutal earring", ear2="Cessance earring",
			    body=TP_Body,hands="Emicho Gauntlets +1",ring1="Niqmaddu ring",ring2="Flamma ring",
			    back=DA_Back,waist="Ioskeha belt +1",legs=TP_Legs,feet="Flam. Gambieras +2",}
	
	sets.TP.AccuracyFull = {ammo="Ginsen",
			    head=Acc_Head,neck="Lissome Necklace", ear1="Brutal earring", ear2="Cessance earring",
			    body=TP_Body,hands="Emicho Gauntlets +1",ring1="Niqmaddu ring",ring2="Flamma ring",
			    back=DA_Back,waist="Ioskeha belt +1",legs=TP_Legs,feet="Flam. Gambieras +2",}
				
	sets.TP.DT = {ammo="Staunch Tathlum",
			    head="Sulevia's mask +2",neck="Loricate torque +1", ear1="Hearty earring", ear2="Sanare earring",
		        body="Tartarus Platemail",hands="Sulevia's gauntlets +2",ring1="Niqmaddu ring",ring2="Defending Ring",
			    back="Moonbeam cape",waist="Ioskeha belt +1",legs="Sulevia's cuisses +2",feet="Amm greaves"}	

				  
	
	
	--Weaponskill Sets--
	sets.WS = {}			
	  		  
	sets.Resolution = {ammo="Seething bomblet +1",
			    head="Flam. Zucchetto +2",neck="Fotia gorget",ear1="Moonshade earring",ear2="Cessance earring",
			 	body="Argosy Hauberk +1",hands="Argosy mufflers +1",ring1="Niqmaddu ring",ring2="Regal ring",
			   	back=DA_Back,waist="Fotia belt",legs="Argosy breeches +1",feet="Flam. Gambieras +2"}
	
	sets.Scourge = {ammo="Knobkierrie",	
			    head=WSD_Head,neck="Lissome Necklace",ear1="Ishvara Earring", ear2="Moonshade earring",
			 	body=WSD_Body,hands=WSD_Hands,ring1="Flamma ring",ring2="Regal ring",
			   	back=STR_Back,waist="Fotia Belt",legs=WSD_Legs,feet="Sulevia's Leggings +2"}
				
	sets.Shockwave =  {ammo="Knobkierrie",
			    head=WSD_Head,neck="Fotia Gorget",ear1="Brutal earring",ear2="Moonshade earring",
			 	body=""Argosy Hauberk +1"",hands="Odyssean gauntlets",ring1="Niqmaddu ring",ring2="Regal ring",
				back=STR_Back,waist="Fotia belt",legs=WSD_Legs,feet="Flam. Gambieras +2"}
	
	sets.Torcleaver = {ammo="Knobkierrie",	
			    head=WSD_Head,neck="Fotia Gorget",ear1="Ishvara Earring", ear2="Moonshade earring",
			 	body=WSD_Body,hands=WSD_Hands,ring1="Flamma ring",ring2="Regal ring",
			   	back=STR_Back,waist="Fotia Belt",legs=WSD_Legs,feet="Sulevia's Leggings +2"}
				 
	sets.Quietus = {ammo="Knobkierrie",	
			    head=WSD_Head,neck="Fotia Gorget",ear1="Ishvara Earring", ear2="Moonshade earring",
			 	body=WSD_Body,hands=WSD_Hands,ring1="Flamma ring",ring2="Regal ring",
			   	back=STR_Back,waist="Fotia Belt",legs=WSD_Legs,feet="Sulevia's Leggings +2"}
				
	sets.Insurgency = {ammo="Knobkierrie",
			    head="Ratri sallet",neck="Fotia gorget", ear1="Telos earring",ear2="Moonshade earring",
			    body=WSD_Body,hands="Ratri gadlings",ring1="Niqmaddu ring",ring2="Regal ring",
			    back=DA_Back,waist="Caudata belt",legs="Argosy Breeches +1",feet="Valorous greaves"}
				\
	sets.Entropy = {ammo="Pemphredo tathlum",
			    head="Ignominy burgonet +3",neck="Fotia gorget", ear1="Brutal earring",ear2="Moonshade earring",
			    body=WSD_Body,hands="Regal captain's gloves",ring1="Niqmaddu ring",ring2="Mujin band",
			    back=INT_Back,waist="Fotia belt",legs="Argosy Breeches +1",feet="Flamma gambieras +1"}
				
	sets.CR = {ammo="Knobkierrie",	
			    head=WSD_Head,neck="Fotia Gorget",ear1="Ishvara Earring", ear2="Moonshade earring",
			 	body=WSD_Body,hands=WSD_Hands,ring1="Flamma ring",ring2="Regal ring",
			   	back=STR_Back,waist="Fotia Belt",legs=WSD_Legs,feet="Sulevia's Leggings +2"}
	sets.Infernal = {ammo="Knobkierrie",
			    head="Pixie hairpin +1",neck="Deviant necklace",ear1="Friomisi earring",ear2="Crematio earring",
			 	body="Founder's breastplate",hands="Founder's Gauntlets",ring1="Shiva ring +1",ring2="Archon ring",
			   	back=WSD_Back,waist="Eschan stone",legs="Eschite cuisses",feet="Founder's greaves"}
	
	sets.Herculean = {ammo="Knobkierrie",
			    head="Jumalik helm",neck="Deviant necklace",ear1="Friomisi earring",ear2="Crematio earring",
			 	body="Founder's breastplate",hands="Founder's Gauntlets",ring1="Shiva ring +1",ring2="Acumen ring",
			   	back=WSD_Back,waist="Eschan stone",legs="Eschite cuisses",feet="Founder's greaves"}
				
	sets.Savage = {ammo="Knobkierrie",	
			    head=WSD_Head,neck="Caro Necklace",ear1="Ishvara Earring", ear2="Moonshade earring",
			 	body=WSD_Body,hands=WSD_Hands,ring1="Flamma ring",ring2="Regal ring",
			   	back=STR_Back,waist="Gurnfeld Rope",legs=WSD_Legs,feet="Sulevia's Leggings +2"}
				
	sets.Vorpal = {ammo="Yetshila",
			    head=Acc_Head,neck="Fotia Gorget",ear1="Cessance earring",ear2="Moonshade earring",
			 	body="Argosy Hauberk +1",hands="Argosy mufflers +1",ring1="Niqmaddu ring",ring2="Begrudging ring",
			   	back=DA_Back,waist="Fotia belt",legs="Argosy Breeches +1",feet="Valorous greaves"}
	
	sets.Upheaval = {ammo="Knobkierrie",
			     head=WSD_Head,neck="Fotia gorget",ear1="Moonshade earring",ear2="Cessance earring",
			 	 body=WSD_Body,hands="Sulevia's gauntlets +2",ring1="Niqmaddu ring",ring2="Regal ring",
			   	 back=WSD_Back,waist="Ioskeha belt +1",legs="Argosy Breeches +1",feet="Sulevia's leggings +2"}
				 
	sets.FellCleave = {ammo="Knobkierrie",
			    head=WSD_Head,neck="Fotia gorget",ear1="Ishvara earring",ear2="Moonshade earring",
			 	body=WSD_Body,hands="Odyssean gauntlets",ring1="Niqmaddu ring",ring2="Regal ring",
			   	back=STR_Back,waist="Fotia belt",legs="Argosy breeches +1",feet="Sulevia's leggings +2"}
	
	--Job Ability Sets--
	
	sets.JA = {}		
			
	--Precast Sets--
	sets.precast = {ammo="Impatiens",head="Carmine mask +1",ear1="Loquacious earring",body="Odyssean chestplate",hands="Leyline gloves",ring1="Weatherspoon ring",
				ring2="Kishar ring",waist="Witful belt",legs="Eschite cuisses",feet="Carmine greaves +1"}
					
	sets.precast.dark = {ammo="Impatiens",head="Carmine mask +1",ear1="Loquacious earring",body="Odyssean chestplate",hands="Leyline gloves",ring1="Weatherspoon ring",
				ring2="Kishar ring",waist="Witful belt",legs="Eschite cuisses",feet="Carmine greaves +1"}
					
	sets.Absorb = {ammo="Pemphredo tathlum",head="Ignominy burgonet +3",neck="Erra Pendant",ear1="Dark earring",ear2="Hirudinea earring",
			 	 body="Carmine scale mail",hands="Pavor Gauntlets",ring1="Evanescence ring",ring2="Kishar ring",
			   	 back="Chuparrosa mantle",waist="Eschan stone",legs="Eschite cuisses",feet="Ratri sollerets"}
	
	sets.Dark = {ammo="Pemphredo tathlum",head="Ignominy burgonet +3",neck="Erra Pendant",ear1="Dark earring",ear2="Hirudinea earring",
			 	 body="Carmine scale mail",hands="Fallen's finger gauntlets +1",ring1="Evanescence ring",ring2="Stikini ring",
			   	 back="Niht mantle",waist="Eschan stone",legs="Eschite cuisses",feet="Ignominy sollerets +1"}
	
	sets.Drain = {ammo="Pemphredo tathlum",head="Ignominy burgonet +3",neck="Erra Pendant",ear1="Dark earring",ear2="Hirudinea earring",
			 	 body="Carmine scale mail",hands="Fallen's finger gauntlets +1",ring1="Evanescence ring",ring2="Archon ring",
			   	 back="Niht mantle",waist="Eschan stone",legs="Eschite cuisses",feet="Ratri sollerets"}
	
	sets.Drain3 = {ammo="Pemphredo tathlum",head="Fallen's burgeonet +1",neck="Erra Pendant",ear1="Dark earring",ear2="Hirudinea earring",
			 	 body="Carmine scale mail",hands="Fallen's finger gauntlets +1",ring1="Evanescence ring",ring2="Archon ring",
			   	 back="Niht mantle",waist="Eschan stone",legs="Heathen's flanchard +1",feet="Ratri sollerets"}
	
end



function precast(spell)
	if spell.action_type == 'Magic' then
		if spell.skill == 'Dark Magic' then
			equip(sets.precast.dark)
			send_command('@input /echo Dark FC Set')
		else
			equip(sets.precast)
			send_command('@input /echo Precast Set')
		end
	end	
	
	if spell.english == 'Resolution' then
			equip(sets.Resolution)			
			send_command('@input /echo Resolution Set')					
		elseif spell.english == 'Scourge' then		
			equip(sets.Scourge)
			send_command('@input /echo Scourge Set')		
		elseif spell.english == 'Shockwave' then
			equip(sets.Shockwave)
			send_command('@input /echo Shockwave Set')
		elseif spell.english == 'Torcleaver' then
			equip(sets.Torcleaver)
			send_command('@input /echo Torcleaver Set')
		elseif spell.english == 'Quietus' then
			equip(sets.Quietus)
			send_command('@input /echo Quietus Set')
		elseif spell.english == 'Entropy' then
			equip(sets.Entropy)
			send_command('@input /echo Entropy Set')
		elseif spell.english == 'Cross Reaper' then
			equip(sets.CR)
			send_command('@input /echo CR Set')
		elseif spell.english == 'Insurgency' then
			equip(sets.Insurgency)
			send_command('@input /echo Insurgency Set')
		elseif spell.english == 'Infernal Scythe' then
			equip(sets.Infernal)
			send_command('@input /echo Infernal Set')
		elseif spell.english == 'Herculean Slash' then
			equip(sets.Herculean)
			send_command('@input /echo Herculean Set')
		elseif spell.english == 'Fell Cleave' then
			equip(sets.FellCleave)
			send_command('@input /echo Fell Cleave Set')
		elseif spell.english == 'Upheaval' then
			equip(sets.Upheaval)
			send_command('@input /echo Upheaval Set')			
		elseif spell.english == 'Savage Blade' then
			equip(sets.Savage)
			send_command('@input /echo Savage Blade Set')
		elseif spell.english == "Vorpal Blade" then		
			equip(sets.Vorpal)			
		elseif spell.english == 'Last Resort' then
			equip({back=="Ankou's mantle",feet="Fallen's sollerets +1"})
		elseif spell.english == 'Diabolic Eye' then
			equip({hands="Fallen's finger gauntlets +1"})		
		elseif spell.english == "Dark Seal" then
			equip({head="Fallen's burgeonet +1"})
		elseif spell.english == "Arcane Circle" then
			equip({feet="Ignominy sollerets +1"})
		elseif spell.english == "Weapon Bash" then
			equip({hands="Ignominy gauntlets +2"})
		elseif spell.english == "Nether Void" then
			equip({legs="Heathen's flanchard +1"})
		elseif spell.english == "Blood Weapon" then
			equip({body="Fallen's cuirass +1"})
		elseif spell.english == 'Lunge' or spell.english == 'Swipe' then
			equip(sets.Infernal)
			send_command('@input /echo Lunge Set')
	end	
	
end
	
function midcast(spell,act)
	if spell.skill == 'Dark Magic' then
		if Absorb_Spells:contains(spell.name) then
			equip(sets.Absorb)
			send_command('@input /echo Absorb Set')
			if spell.name == "Absorb-TP" then
				equip({hands="Bale gauntlets +2"})
			end
			if buffactive["Dark Seal"] then
				equip({head="Fallen's burgeonet +1"})
				send_command('@input /echo DS Head')
			end
			if buffactive["Nether Void"] then
				equip({legs="Heathen's flanchard +1"})
				send_command('@input /echo NV Legs')
			end
			weathercheck(spell.element)
		elseif Drain_Spells:contains(spell.name) then
			equip(sets.Drain)
			send_command('@input /echo Drain Set')
			if buffactive['Dark Seal'] then
					equip({head="Fallen's burgeonet +1"})
					send_command('@input /echo DS Head')
			end
			if buffactive['Nether Void'] then
				equip({legs="Heathen's flanchard +1"})
				send_command('@input /echo NV Legs')
			end
			weathercheck(spell.element)
		elseif spell.name == "Dread Spikes" then
			equip(sets.Dark)
			equip({body="Bale cuirass +2"})
			send_command('@input /echo Dread Spikes Set')
		elseif spell.name == "Endark II" then
			equip(sets.Dark)
			send_command('@input /echo Endark Set')
		elseif spell.name == "Drain III" then
			equip(sets.Drain3)
			send_command('@input /echo Drain III Set')
		else
			equip(sets.Dark)
			send_command('@input /echo Dark Set')
			weathercheck(spell.element)
		end
	elseif spell.skill == 'Enfeebling Magic' then
	elseif spell.skill == 'Elemental Magic' then
	end
end

function aftercast(spell)
	if player.status == 'Engaged' then
		if player.equipment.main == 'Anguta' then			
			equip(sets.TP[sets.TP.index[TP_ind]])
			send_command('@input /echo Anguta Set')
		else
			equip(sets.TP[sets.TP.index[TP_ind]])
			send_command('@input /echo TP Set')
		end
		if Killer_Mode == 1 and buffactive["Arcane Circle"] then			
			equip({body="Founder's breastplate"})
			send_command('@input /echo Killer TP Set')		
		end
	else
		if Gear_Debug == 0 then
			equip(sets.Idle.Standard)
			send_command('@input /echo Idle Set')
		else
		end
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
		if player.equipment.main == 'Anguta' then
			TP_ind = 3
			equip(sets.TP[sets.TP.index[TP_ind]])
			send_command('@input /echo Anguta Set')
		else
			TP_ind = 1
			equip(sets.TP[sets.TP.index[TP_ind]])
			send_command('@input /echo TP Set')
		end
		
		if Killer_Mode == 1 and buffactive["Arcane Circle"] then			
			equip({body="Founder's breastplate"})
			send_command('@input /echo Killer TP Set')		
		end
		
	elseif command == 'equip Idle set' then		
		equip(sets.Idle.Standard)
		send_command('@input /echo Idle Set')
	elseif command == 'equip DW set' then		
		TP_ind = 2		
		equip(sets.TP[sets.TP.index[TP_ind]])
		send_command('@input /echo DW Set')
	elseif command == 'equip DT set' then		
		TP_ind = 6		
		equip(sets.TP[sets.TP.index[TP_ind]])
		send_command('@input /echo DT Set')	
	elseif command == 'equip DTAM set' then		
		TP_ind = 7		
		equip(sets.TP[sets.TP.index[TP_ind]])
		send_command('@input /echo DTAM Set')		
	elseif command == 'equip Acc_Lite set' then		
		TP_ind = 4		
		equip(sets.TP[sets.TP.index[TP_ind]])
		send_command('@input /echo Acc_lite Set')				
	elseif command == 'change Killer mode' then
		if Killer_Mode == 0 then
			Killer_Mode = 1
			send_command('@input /echo Killer Mode Set to 1')
		else
			Killer_Mode = 0
			send_command('@input /echo Killer Mode Set to 0')
		end
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

function weathercheck(spell_element)
	if spell_element == world.weather_element or spell_element == world.day_element then
		equip({waist="Hachirin-no-Obi"})
		send_command('@input /echo Using Element Obi')
	else		
	end
end