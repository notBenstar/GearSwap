-- Get Sets: Everything in this section is run as soon as you change jobs.
function get_sets()
	sets = {}
	petcast = false
	-- Regular Sets --
	sets.Idle = { 
			ammo="Sihirik",
			head="Sulevia's Mask +1",
			body="Sulevia's Plate. +1",
			hands="Sulev. Gauntlets +1",
			legs="Sulevi. Cuisses +1",
			feet="Sulev. Leggings +1",
			neck="Sanctity Necklace",
			waist="Flume Belt +1",
			left_ear="Infused Earring",
			right_ear="Etiolation Earring",
			left_ring="Shneddick Ring",
			right_ring="Defending Ring",
			back={ name="Mecisto. Mantle", augments={'Cap. Point+50%','Attack+2','DEF+1',}}
				}
	sets.TP = {	
			ammo="Ginsen",
			head="Flam. Zucchetto +2",
			body={ name="Valorous Mail", augments={'Pet: INT+5','"Conserve MP"+2','Quadruple Attack +3','Accuracy+9 Attack+9',}},
			hands="Sulev. Gauntlets +1",
			legs="Sulevi. Cuisses +1",
			feet="Flam. Gambieras +2",
			neck="Shulmanu Collar",
			waist="Ioskeha Belt",
			left_ear="Sherida Earring",
			right_ear="Telos Earring",
			left_ring="Petrov Ring",
			right_ring="Hetairoi Ring",
			back={ name="Mecisto. Mantle", augments={'Cap. Point+50%','Attack+2','DEF+1',}}
				}

	-- Can add a set for each WS by making a new set: sets.WS["Stardiver"] or sets.WS["Camlann's Torment"] for example
	sets.WS = {}
	sets.WS["Default"]	= {	
			ammo="Ginsen",
			head="Flam. Zucchetto +2",
			body={ name="Valorous Mail", augments={'Pet: INT+5','"Conserve MP"+2','Quadruple Attack +3','Accuracy+9 Attack+9',}},
			hands="Sulev. Gauntlets +1",
			legs="Sulevi. Cuisses +1",
			feet="Flam. Gambieras +2",
			neck="Fotia Gorget",
			waist="Fotia Belt",
			left_ear="Sherida Earring",
			right_ear="Telos Earring",
			left_ring="Petrov Ring",
			right_ring="Begrudging Ring",
			back={ name="Mecisto. Mantle", augments={'Cap. Point+50%','Attack+2','DEF+1',}}
				}

    -- Job Ability Sets --
	sets.JA = {}
	sets.JA.Jump = { 
			ammo="Ginsen",
			head="Sulevia's Mask +1",
			neck="Combatant's Torque",
			ear1="Telos Earring",
			ear2="Cessance Earring",
			body="Pelt. Plackart +1",
			hands="Emi. Gauntlets +1",
			ring1="Rajas Ring",
			ring2="Petrov Ring",
			back="Brigantia's Mantle",
			waist="Ioskeha Belt",
			legs="Valor. Hose",
			feet="Valorous Greaves"
				}
	
	sets.JA.Angon = {
			ammo="Angon",
			ear1="Dragoon's Earring",
			hands="Ptero. Fin. G. +1"
				}
	-- Angon, Relic Hands, and that dumb earring in Mamook if you feel like it
	
	sets.JA.AncientCircle = {legs="Vishap Brais +1"} 
	-- Ancient Circle normally: 3 minute duration, Damage+15% DT-15% DragonKiller+15% against Dragons (10% vs. NMs)
	-- Ancient Circle with AF1: 4.5 minute duration, Damage+17% DT-17% DragonKiller+17% against Dragons (11% vs. NMs)
	
	sets.JA.SpiritLink = {
			head="Vishap Armet +1",
			ear1="Pratik Earring",
			hands="Pel. Vambraces +1",
			feet="Ptero. Greaves +1"
				}
	-- Spirit Link/Empathy gear go here; note that Relic Feet will cause a 100% Wyvern to still drain HP (unless leveling up
	
	sets.JA.SpiritSurge = {neck="Chanoix's Gorget",ear1="Anastasi Earring",ear2="Lancer's Earring",
					body="Ptero. Mail +1",hands="Despair Fin. Gaunt.", 
					back="Updraft Mantle",legs="Vishap Brais +1",feet="Ptero. Greaves +1"} 
	-- Augmented Relic Body affects duration; Wyvern Max HP affects Spirit Surge's Max HP effect on you
	
	sets.JA.SteadyWing = {neck="Chanoix's Gorget",ear1="Anastasi Earring",ear2="Lancer's Earring",
					body="Emicho Haubert",hands="Despair Fin. Gaunt.", 
					back="Updraft Mantle",legs="Vishap Brais +1",feet="Ptero. Greaves +1"} 
	-- Wyvern Max HP strongly affects Steady Wing's Stoneskin effect
	
	-- Casting Sets --
	sets.FastCast = {ammo="Impatiens", 
					 head="Vishap Armet +1",neck="Baetyl Pendant",ear1="Etiolation Earring",ear2="Loquac. Earring",
					 body="Jumalik Mail",hands="Leyline Gloves",	ring1="Lebeche Ring",ring2="Weather. Ring",
																							feet="Carmine Greaves +1"}
	-- Can add more FC and Quick Magic here for spells; AF1 Head recommended in case of GearSwap error, at least for faster spells
	
	sets.Midcast = {ammo="Staunch Tathlum", 
					head="Vishap Armet +1",neck="Twilight Torque",ear1="Etiolation Earring",ear2="Ethereal Earring",
					body="Jumalik Mail",hands="Founder's Gauntlets",ring1="Meridian Ring",ring2="Weather. Ring",
					back="Xucau Mantle",waist="Glassblower's Belt",legs="Founder's Hose",feet="Amm Greaves"}
	-- AF1 Head strongly advised for Healing Breath trigger
	-- HP or defensive stuff for Healing Breath; can use Fast Cast or Magic Acc. or whatever if you want too
	
	sets.Breath = {
			ammo="Staunch Tathlum",
			head="Ptero. Armet +1",
			neck="Lancer's Torque",
			ear1="Anastasi Earring",
			ear2="Lancer's Earring",
			body="Emicho Haubert",
			hands="Despair Fin. Gaunt.",
			back="Updraft Mantle",
			waist="Glassblower's Belt",
			legs="Vishap Brais +1",
			feet="Ptero. Greaves +1"
			}
	-- Healing Breath is modified by Wyvern Max HP and Wyvern: Breath+
	-- Elemental Breaths are modified by Wyvern Current HP, Wyvern: Breath+, and Pet: Magic Accuracy
	-- Remove Status Breaths are presumably affected by nothing
end


-- Precast: JA and WS should be defined here, Fast Cast and such for magic. 
function precast(spell)
	if spell.type == "WeaponSkill" then
		if sets.WS[spell.name] then -- If you made a set for a WS and then use it,
		equip(sets.WS[spell.name])  -- it'll equip that set for that WS only
		else
		equip(sets.WS["Default"]) -- otherwise, it'll use this set instead
		end
	elseif spell.action_type == 'Magic' then 
		equip(sets.FastCast)
	elseif spell.name == 'Dismiss' and pet.hpp < 100 then		
		cancel_spell() -- Dismiss resets the Call Wyvern recast IF your Wyvern is at 100% HP; sorry to anyone who just wanted to kill their wyvern for the fun of it
		windower.add_to_chat(50,'  '..pet.name..' is below full HP (<pethpp>), cancelling Dismiss!')
	elseif spell.name == 'Call Wyvern' then
		if pet.isvalid then
		cancel_spell() -- Uses Spirit Link instead when your Wyvern is already present
		send_command('input /ja "Spirit Link" <me>')
		else
		equip(sets.JA.SpiritSurge) -- Relic Body goes here; can just use Spirit Surge set if you have it augmented
		end
	elseif spell.name == 'Spirit Surge' then
		equip(sets.JA.SpiritSurge)
	elseif spell.name == 'Steady Wing' then
		equip(sets.JA.SteadyWing)
	elseif spell.name == 'Angon' then
		equip(sets.JA.Angon)
	elseif spell.name == 'Ancient Circle' then
		equip(sets.JA.AncientCircle)
	elseif spell.name == 'Spirit Link' then
		if pet.isvalid then
			equip(sets.JA.SpiritLink)
		else
			cancel_spell() -- Uses Call Wyvern instead when your Wyvern isn't present
			send_command('input /ja "Call Wyvern" <me>')
		end
	elseif string.find(spell.name,"Jump") then -- Any spell or ability with the word Jump in it
		if not pet.isvalid then -- If you don't have a pet
			if spell.name == "Spirit Jump" then -- Forces Spirit Jump into regular Jump when Wyvern is dead
				cancel_spell()
				send_command('input /ja "Jump" <t>')
				return
			elseif spell.name == "Soul Jump" then -- Forces Soul Jump into High Jump when Wyvern is dead
				cancel_spell()
				send_command('input /ja "High Jump" <t>')
				return
			end
		end
		equip(sets.JA.Jump)
	end
end            
 
-- Midcast: For magic, this section affects your spell's potency, accuracy, etc. Unnecessary for JA/WS.
function midcast(spell)
	if spell.action_type == 'Magic' then 
        equip(sets.Midcast)
	end
end

-- Pet Change: Occurs when your Pet is summoned or killed.
function pet_change(pet,gain)
	if gain == false and pet.name then
		-- General announcement for when your Wyvern is killed, Dimissed, or eaten by Spirit Surge
		windower.add_to_chat(50,' *** '..string.upper(pet.name)..' IS DEAD YO ***')
	end
end

-- Pet Midcast: If GearSwap sees your pet readying a WS, this occurs
function pet_midcast(spell)
	if string.find(spell.name,' Breath') then
		petcast = true
		equip_current()		
		windower.send_command('wait 1.2;gs c petcast')
		-- Wyvern Breath Delay: 1.25s http://forum.square-enix.com/ffxi/threads/47481
		-- pet_aftercast won't run if your Wyvern's WS is interrupted (disengaging, stunned, Amnesia, etc.), so I recommend this
	end
end
 
-- Aftercast: Occurs following the use of any WS, JA, Spell, Item, or Ranged Attack
function aftercast(spell)
	equip_current()
end

-- Status Change: When Engaging, Disengaging, Resting, Standing Up, etc.
function status_change()
	equip_current()
end

-- Pet Status Change
function pet_status_change(new,old)
	if new ~= "Engaged" then
	petcast = false
	end
end

-- A custom function that equips a set based on whether you're engaged or not.
function equip_current()
	if player.status == 'Engaged' then
		equip(sets.TP)
	else
		equip(sets.Idle)
	end
	if petcast == true then 
		equip(sets.Breath) -- This will equip your Breath gear on top of whichever other set you're currently wearing.
	end
end
 
-- Manual commands sent in-game with //gs c <command>
function self_command(command)
	if command == 'petcast' and petcast then -- This command reverts to your regular gear 1.2 seconds after a Breath by default
		petcast = false
		equip_current() 
	end
end