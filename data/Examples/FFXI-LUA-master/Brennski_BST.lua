function get_sets()
	send_command("bind f9 gs c toggle TP set")
	send_command("bind f10 gs c toggle Idle set")
	send_command("bind f11 gs c toggle CDC set")
	send_command("bind f12 gs c toggle Req set")
	send_command("bind !f12 gs c toggle Rea set")
	send_command("bind ^` gs c toggle MB set")

	function file_unload()
		send_command("unbind ^f9")
		send_command("unbind ^f10")
		send_command("unbind ^f11")
		send_command("unbind ^f12")
		send_command("unbind ^`")

		send_command("unbind !f9")
		send_command("unbind !f10")
		send_command("unbind !f11")
		send_command("unbind !f12")

		send_command("unbind f9")
		send_command("unbind f10")
		send_command("unbind f11")
		send_command("unbind f12")
	end

	-- Idle Sets--
	sets.Idle = {}

	sets.Idle.index = {"Standard", "DT", "PetEngaged"}
	Idle_ind = 1

	sets.Idle.Standard = {
		ammo = "Demonry Core",
		head = {
			name = "Herculean Helm",
			augments = {
				"Pet: CHR+2",
				'Potency of "Cure" effect received+3%',
				'"Refresh"+2',
				'Mag. Acc.+1 "Mag.Atk.Bns."+1'
			}
		},
		neck = "Sanctity Necklace",
		ear1 = "Genmei earring",
		ear2 = "Handler's earring",
		body = "Emet Harness +1",
		hands = "Ankusa Gloves",
		ring1 = "Vocane Ring",
		ring2 = "Defending ring",
		waist = "Flume Belt +1",
		legs = "Herculean Trousers",
		feet = "Amm Greaves",
		back = "Mecistopins mantle"
	}

	sets.Idle.DT = {
		main = "Terra's Staff",
		sub = "Umbra strap",
		ammo = "Amar Cluster",
		head = {
			name = "Herculean Helm",
			augments = {
				"Pet: CHR+2",
				'Potency of "Cure" effect received+3%',
				'"Refresh"+2',
				'Mag. Acc.+1 "Mag.Atk.Bns."+1'
			}
		},
		neck = "Loricate Torque +1",
		ear1 = "Etiolation earring",
		ear2 = "Handler's earring +1",
		body = "Emet Harness +1",
		hands = "Adhemar Wristbands",
		ring1 = "Defending ring",
		ring2 = "Succor ring",
		back = "Cornflower Cape",
		waist = "Flume belt +1",
		legs = "Samnuha Tights",
		feet = "Amm Greaves"
	}

	sets.Idle.PetEngaged = {
		ammo = "Demonry Core",
		head = "Awing Salade",
		body = "Emicho Haubert +1",
		legs = {
			name = "Valor. Hose",
			augments = {
				"Pet: Accuracy+30 Pet: Rng. Acc.+30",
				'"Dbl.Atk."+1',
				"Pet: INT+6",
				"Pet: Attack+11 Pet: Rng.Atk.+11"
			}
		},
		feet = "Emicho Gambieras",
		hands = "Regimen Mittens",
		legs = "Taeon Tights",
		back = "Pastoralist's Mantle",
		neck = "Shulmanu Collar",
		left_ear = "Sabong Earring",
		right_ear = "Enmerkar Earring",
		waist = "Isa Belt"
	}

	-- TP Sets--
	sets.TP = {}

	sets.TP.index = {"Standard", "DW"}
	-- 1=Standard, 2=DW--

	TP_ind = 1
	sets.TP.Standard = {
		ammo = "Demonry Core",
		head = "Meghanada Visor +2",
		body = {
			name = "Emicho Haubert +1",
			augments = {"HP+65", "DEX+12", "Accuracy+20"}
		},
		hands = "Emicho Gauntlets +1",
		legs = {
			name = "Valor. Hose",
			augments = {
				"Accuracy+23 Attack+23",
				'"Dbl.Atk."+3',
				"VIT+4",
				"Attack+5"
			}
		},
		feet = {
			name = "Valorous Greaves",
			augments = {
				"Accuracy+25 Attack+25",
				'"Dbl.Atk."+4',
				"CHR+8",
				"Attack+6"
			}
		},
		neck = "Shulmanu Collar",
		waist = "Kentarch Belt +1",
		left_ear = "Telos Earring",
		right_ear = "Cessance Earring",
		left_ring = "Ilabrat Ring",
		right_ring = "Epona's Ring"
	}

	sets.TP.DW = {
		ammo = "Demonry Core",
		head = "Meghanada Visor +2",
		body = {
			name = "Emicho Haubert +1",
			augments = {"HP+65", "DEX+12", "Accuracy+20"}
		},
		hands = {
			name = "Emicho Gauntlets",
			augments = {
				"Accuracy+20",
				'"Dual Wield"+5',
				"Pet: Accuracy+20"
			}
		},
		legs = {
			name = "Valor. Hose",
			augments = {
				"Accuracy+23 Attack+23",
				'"Dbl.Atk."+3',
				"VIT+4",
				"Attack+5"
			}
		},
		feet = {
			name = "Valorous Greaves",
			augments = {
				"Accuracy+25 Attack+25",
				'"Dbl.Atk."+4',
				"CHR+8",
				"Attack+6"
			}
		},
		neck = "Shulmanu Collar",
		waist = "Reiki Yotai",
		left_ear = "Telos Earring",
		right_ear = "Cessance Earring",
		left_ring = "Ilabrat Ring",
		right_ring = "Epona's Ring"
	}
	-- Ready Sets---

	sets.Ready = {}

	sets.Ready.Physical = {
		main = {
			name = "Digirbalag",
			augments = {
				"Pet: VIT+8",
				"Pet: Accuracy+20 Pet: Rng. Acc.+20",
				"Pet: Attack+20 Pet: Rng.Atk.+20"
			}
		},
		sub = "Arktoi",
		ammo = "Demonry Core",
		head = {
			name = "Valorous Mask",
			augments = {
				"Pet: Mag. Acc.+11",
				'Pet: "Dbl.Atk."+2 Pet: Crit.hit rate +2',
				"Pet: Accuracy+14 Pet: Rng. Acc.+14"
			}
		},
		body = {
			name = "Acro Surcoat",
			augments = {
				"Pet: Attack+23 Pet: Rng.Atk.+23",
				'Pet: "Store TP"+4',
				"CHR+4"
			}
		},
		hands = "Regimen Mittens",
		legs = {
			name = "Valor. Hose",
			augments = {
				"Pet: Accuracy+30 Pet: Rng. Acc.+30",
				'"Dbl.Atk."+1',
				"Pet: INT+6",
				"Pet: Attack+11 Pet: Rng.Atk.+11"
			}
		},
		feet = {
			name = "Emicho Gambieras",
			augments = {
				"Pet: Accuracy+15",
				"Pet: Attack+15",
				'Pet: "Dbl. Atk."+3'
			}
		},
		neck = "Shulmanu Collar",
		waist = "Flume Belt +1",
		left_ear = "Sabong Earring",
		right_ear = "Enmerkar Earring"
	}

	sets.Ready.Magical = {
		main = "Mdomo Axe",
		sub = "Arktoi",
		ammo = "Demonry Core",
		head = {
			name = "Valorous Mask",
			augments = {
				"Pet: Mag. Acc.+11",
				'Pet: "Dbl.Atk."+2 Pet: Crit.hit rate +2',
				"Pet: Accuracy+14 Pet: Rng. Acc.+14"
			}
		},
		body = "Valorous Mail",
		legs = "Valorous Hose",
		feet = "Emicho Gambieras",
		hands = "Regimen Mittens",
		back = "Pastoralist's Mantle",
		neck = "Deino Collar",
		ear1 = "Hija Earring",
		ear2 = "Sabong Earring",
		waist = "Incarnation Sash"
	}

	-- WS Sets--
	sets.WS = {}
	sets.Ruinator = {}

	sets.Ruinator.index = {"Attack"}
	Ruinator_ind = 1

	sets.Ruinator.Attack = {
		head = "Argosy Celata +1",
		body = "Argosy Hauberk +1",
		hands = {
			name = "Argosy Mufflers +1",
			augments = {"STR+12", "DEX+12", "Attack+20"}
		},
		legs = {
			name = "Argosy Breeches +1",
			augments = {"STR+12", "DEX+12", "Attack+20"}
		},
		feet = "Argosy Sollerets +1",
		neck = "Fotia Gorget",
		waist = "Fotia Belt",
		left_ear = "Telos Earring",
		right_ear = "Moonshade Earring",
		left_ring = "Ilabrat Ring",
		right_ring = "Regal Ring"
	}

	sets.Rampage = {}

	sets.Rampage.index = {"Attack"}
	Rampage_ind = 1

	sets.Rampage.Attack = {
		head = "Argosy Celata +1",
		body = "Argosy Hauberk +1",
		hands = {
			name = "Argosy Mufflers +1",
			augments = {"STR+12", "DEX+12", "Attack+20"}
		},
		legs = {
			name = "Argosy Breeches +1",
			augments = {"STR+12", "DEX+12", "Attack+20"}
		},
		feet = "Argosy Sollerets +1",
		neck = "Fotia Gorget",
		waist = "Fotia Belt",
		left_ear = "Telos Earring",
		right_ear = "Moonshade Earring",
		left_ring = "Ilabrat Ring",
		right_ring = "Regal Ring"
	}

	sets.MistralAxe = {}

	sets.MistralAxe.index = {"Attack"}
	MistralAxe_ind = 1

	sets.MistralAxe.Attack = {
		head = {
			name = "Valorous Mask",
			augments = {
				"Accuracy+18",
				"Weapon skill damage +3%",
				"STR+4",
				"Attack+11"
			}
		},
		body = {
			name = "Valorous Mail",
			augments = {
				"Accuracy+25",
				"Weapon skill damage +4%",
				"DEX+8",
				"Attack+5"
			}
		},
		hands = "Meg. Gloves +2",
		legs = {
			name = "Valor. Hose",
			augments = {
				"Attack+27",
				"Weapon skill damage +5%",
				"DEX+8",
				"Accuracy+15"
			}
		},
		feet = {
			name = "Valorous Greaves",
			augments = {"Attack+21", "Weapon skill damage +5%"}
		},
		neck = "Caro Necklace",
		waist = "Grunfeld Rope",
		left_ear = "Ishvara Earring",
		right_ear = {
			name = "Moonshade Earring",
			augments = {"Accuracy+4", "TP Bonus +25"}
		},
		left_ring = "Ilabrat Ring",
		right_ring = "Regal Ring"
	}

	-- Utility Sets--
	sets.Utility = {}

	sets.Utility.Weather = {waist = "Hachirin-no-obi", back = "Twilight Cape"}

	sets.Utility.MB = {
		head = "Helios Band",
		body = "Samnuha Coat",
		ear1 = "Static Earring",
		ring1 = "Locus Ring",
		ring2 = "Mujin Band"
	}

	sets.Utility.Stoneskin = {
		head = "Haruspex hat",
		neck = "Stone Gorget",
		ear1 = "Loquac. earring",
		ear2 = "Earthcry earring",
		body = "Assim. jubbah +1",
		hands = "Stone Mufflers",
		ring1 = "Rahab ring",
		back = "Swith cape",
		waist = "Siegel sash",
		legs = "Haven hose",
		feet = {
			name = "Herculean Boots",
			augments = {"Accuracy+20 Attack+20", '"Triple Atk."+4'}
		}
	}

	sets.Utility.Phalanx = {
		head = "Haruspex hat",
		neck = "Colossus's torque",
		ear1 = "Loquac. earring",
		ear2 = "Augment. earring",
		body = "Assim. jubbah +1",
		hands = "Ayao's gages",
		ring1 = "Rahab ring",
		back = "Swith cape",
		waist = "Pythia sash +1",
		legs = "Portent pants",
		feet = {
			name = "Herculean Boots",
			augments = {"Accuracy+20 Attack+20", '"Triple Atk."+4'}
		}
	}

	sets.Utility.Steps = {
		ammo = "Falcon Eye",
		head = "Dampening Tam",
		body = "Adhemar Jacket",
		hands = "Rawhide Gloves",
		legs == "Samnuha Tights",
		feet = {
			name = "Herculean Boots",
			augments = {"Accuracy+20 Attack+20", '"Triple Atk."+4'}
		},
		neck = "Subtlety Spec.",
		waist = "Chaac Belt",
		left_ear = "Heartseeker Earring",
		right_ear = "Steelflash Earring",
		left_ring = "Yacuruna Ring",
		right_ring = "Epona's Ring",
		back = "Grounded Mantle"
	}

	sets.Utility.Doomed = {waist = "Gishdubar Sash", ring1 = "Saida Ring"}

	-- Ninja Magic Sets--
	sets.NINMagic = {}

	sets.NINMagic.Utsusemi = {
		head = "Dampening Tam",
		neck = "Loricate Torque +1",
		ar1 = "Brutal Earring",
		ear2 = "Cessance Earring",
		body = "Emet harness",
		hands = "Adhemar Wristbands",
		ring1 = "Vocane Ring",
		ring2 = "Petrov Ring",
		back = "Moonbeam Cape",
		waist = "Flume belt +1",
		legs = "Herculean Trousers",
		feet = {
			name = "Herculean Boots",
			augments = {"Accuracy+20 Attack+20", '"Triple Atk."+4'}
		}
	}

	-- Job Ability Sets--

	sets.JA = {}

	sets.JA.KillerInstinct = {head = "Ankusa Helm +1"}

	sets.JA.CB = {hands = "Ankusa Gloves", body = "Mirke Wardecors"}

	sets.JA.Familiar = {legs = "Ankusa Trousers"}

	sets.JA.Tame = {head = "Totemic Helm +1"}

	sets.JA.Spur = {feet = "Nukumi Ocreae +1"}

	sets.JA.Reward = {
		ammo = "Pet food Theta Biscuit",
		body = "Monster Jackcoat",
		ring1 = "Metamorph Ring",
		ring2 = "Sirona's Ring",
		feet = "Monster Gaiters"
	}

	sets.JA.ReadyPre = {sub = "Charmer's Merlin", Legs = "Desultor Tassets"}

	-- Precast Sets--
	sets.precast = {}

	sets.precast.FC = {}

	sets.precast.FC.Standard = {
		head = "Herculean Helm",
		body = "Taeon Tabard",
		hands = "Leyline Gloves",
		legs = "Orvail Pants +1",
		feet = "Amalric Nails +1",
		neck = "Voltsurge Torque",
		waist = "Witful Belt",
		left_ear = "Etiolation Earring",
		right_ear = "Loquac. Earring",
		left_ring = "Rahab Ring",
		right_ring = "Kishar Ring",
		back = "Swith Cape"
	}
	sets.precast.Ready = {}
end

function precast(spell)
	if spell.action_type == "Magic" then
		equip(sets.precast.FC.Standard)
	elseif spell.english == "Ruinator" then
		equip(sets.Ruinator[sets.Ruinator.index[Ruinator_ind]])
	elseif spell.english == "Mistral Axe" or spell.english == "Cloudsplitter" then
		equip(sets.MistralAxe[sets.MistralAxe.index[MistralAxe_ind]])
	elseif spell.english == "Rampage" or spell.english == "Decimation" then
		equip(sets.Rampage[sets.Rampage.index[Rampage_ind]])
	elseif spell.english == "Box Step" then
		equip(sets.Utility.Steps)
	elseif spell.english == "Spur" then
		equip(sets.JA.Spur)
	elseif spell.english == "Tame" then
		equip(sets.JA.Tame)
	elseif spell.english == "Reward" then
		equip(sets.JA.Reward)
	elseif spell.english == "Call Beast" or spell.english == "Bestial Loyalty" then
		equip(sets.JA.CB)
	elseif spell.english == "Familiar" then
		equip(sets.JA.Familiar)
	elseif spell.english == "Ready" then
		equip(sets.Precast.Ready)
	end
end

function midcast(spell, act)
	if spell.english == "Utsusemi: Ichi" then
		equip(sets.NINMagic.Utsusemi)
		if buffactive["Copy Image (3)"] then
			send_command("@wait 0.3; input //cancel Copy Image*")
		end
		if buffactive["Copy Image (2)"] then
			send_command("@wait 0.3; input //cancel Copy Image*")
		end
		if buffactive["Copy Image (1)"] then
			send_command("@wait 0.3; input //cancel Copy Image*")
		end
		if buffactive["Copy Image"] then
			send_command("@wait 0.3; input //cancel Copy Image*")
		end
	elseif spell.english == "Utsusemi: Ni" or spell.english == "Utsusemi: San" then
		equip(sets.NINMagic.Utsusemi)
	elseif
		spell.english == "Cursed Sphere" or spell.english == "Venom" or spell.english == "Toxic Spit" or
			spell.english == "Venom Spray" or
			spell.english == "Bubble Shower" or
			spell.english == "Fireball" or
			spell.english == "Plague Breath" or
			spell.english == "Snow Cloud" or
			spell.english == "Acid Spray" or
			spell.english == "Silence Gas" or
			spell.english == "Dark Spore" or
			spell.english == "Charged Whisker" or
			spell.english == "Purulent Ooze" or
			spell.english == "Aqua Breath" or
			spell.english == "Stink Bomb" or
			spell.english == "Nectarous Deluge" or
			spell.english == "Nepenthic Plunge" or
			spell.english == "Foul Waters" or
			spell.english == "Dust Cloud" or
			spell.english == "Sheep Song" or
			spell.english == "Scream" or
			spell.english == "Dream Flower" or
			spell.english == "Roar" or
			spell.english == "Gloeosuccus" or
			spell.english == "Palsy Pollen" or
			spell.english == "Soporific" or
			spell.english == "Geist Wall" or
			spell.english == "Numbing Noise" or
			spell.english == "Spoil" or
			spell.english == "Hi-Freq Field" or
			spell.english == "Sandpit" or
			spell.english == "Sandblast" or
			spell.english == "Filamented Hold" or
			spell.english == "Spore" or
			spell.english == "Infrasonics" or
			spell.english == "Chaotic Eye" or
			spell.english == "Blaster" or
			spell.english == "Intimidate" or
			spell.english == "Noisome Powder" or
			spell.english == "TP Drainkiss" or
			spell.english == "Jettatura" or
			spell.english == "Spider Web" or
			spell.english == "Corrosive Ooze" or
			spell.english == "Molting Plumage" or
			spell.english == "Swooping Frenzy" or
			spell.english == "Pestilent Plume"
	 then
		equip(sets.Ready.Magical)
	elseif
		spell.english == "Sic" or spell.english == "Whirl Claws" or spell.english == "Dust Cloud" or
			spell.english == "Foot Kick" or
			spell.english == "Sheep Song" or
			spell.english == "Sheep Charge" or
			spell.english == "Lamb Chop" or
			spell.english == "Rage" or
			spell.english == "Head Butt" or
			spell.english == "Scream" or
			spell.english == "Dream Flower" or
			spell.english == "Wild Oats" or
			spell.english == "Leaf Dagger" or
			spell.english == "Claw Cyclone" or
			spell.english == "Razor Fang" or
			spell.english == "Roar" or
			spell.english == "Gloeosuccus" or
			spell.english == "Palsy Pollen" or
			spell.english == "Soporific" or
			spell.english == "Cursed Sphere" or
			spell.english == "Venom" or
			spell.english == "Geist Wall" or
			spell.english == "Toxic Spit" or
			spell.english == "Numbing Noise" or
			spell.english == "Nimble Snap" or
			spell.english == "Cyclotail" or
			spell.english == "Spoil" or
			spell.english == "Rhino Guard" or
			spell.english == "Rhino Attack" or
			spell.english == "Power Attack" or
			spell.english == "Hi-Freq Field" or
			spell.english == "Sandpit" or
			spell.english == "Sandblast" or
			spell.english == "Venom Spray" or
			spell.english == "Mandibular Bite" or
			spell.english == "Metallic Body" or
			spell.english == "Bubble Shower" or
			spell.english == "Bubble Curtain" or
			spell.english == "Scissor Guard" or
			spell.english == "Big Scissors" or
			spell.english == "Grapple" or
			spell.english == "Spinning Top" or
			spell.english == "Double Claw" or
			spell.english == "Filamented Hold" or
			spell.english == "Frog Kick" or
			spell.english == "Queasyshroom" or
			spell.english == "Silence Gas" or
			spell.english == "Numbshroom" or
			spell.english == "Spore" or
			spell.english == "Dark Spore" or
			spell.english == "Shakeshroom" or
			spell.english == "Blockhead" or
			spell.english == "Secretion" or
			spell.english == "Fireball" or
			spell.english == "Tail Blow" or
			spell.english == "Plague Breath" or
			spell.english == "Brain Crush" or
			spell.english == "Infrasonics" or
			spell.english == "??? Needles" or
			spell.english == "Needleshot" or
			spell.english == "Chaotic Eye" or
			spell.english == "Blaster" or
			spell.english == "Scythe Tail" or
			spell.english == "Ripper Fang" or
			spell.english == "Chomp Rush" or
			spell.english == "Intimidate" or
			spell.english == "Recoil Dive" or
			spell.english == "Water Wall" or
			spell.english == "Snow Cloud" or
			spell.english == "Wild Carrot" or
			spell.english == "Sudden Lunge" or
			spell.english == "Spiral Spin" or
			spell.english == "Noisome Powder" or
			spell.english == "Wing Slap" or
			spell.english == "Beak Lunge" or
			spell.english == "Suction" or
			spell.english == "Drainkiss" or
			spell.english == "Acid Mist" or
			spell.english == "TP Drainkiss" or
			spell.english == "Back Heel" or
			spell.english == "Jettatura" or
			spell.english == "Choke Breath" or
			spell.english == "Fantod" or
			spell.english == "Charged Whisker" or
			spell.english == "Purulent Ooze" or
			spell.english == "Corrosive Ooze" or
			spell.english == "Tortoise Stomp" or
			spell.english == "Harden Shell" or
			spell.english == "Aqua Breath" or
			spell.english == "Sensilla Blades" or
			spell.english == "Tegmina Buffet" or
			spell.english == "Molting Plumage" or
			spell.english == "Swooping Frenzy" or
			spell.english == "Pentapeck" or
			spell.english == "Sweeping Gouge" or
			spell.english == "Zealous Snort" or
			spell.english == "Somersault " or
			spell.english == "Tickling Tendrils" or
			spell.english == "Stink Bomb" or
			spell.english == "Nectarous Deluge" or
			spell.english == "Nepenthic Plunge" or
			spell.english == "Pecking Flurry" or
			spell.english == "Pestilent Plume" or
			spell.english == "Foul Waters" or
			spell.english == "Spider Web" or
			spell.english == "Sickle Slash" or
			spell.english == "Frogkick" or
			spell.english == "Ripper Fang" or
			spell.english == "Scythe Tail" or
			spell.english == "Chomp Rush"
	 then
		equip(sets.Ready.Physical)
	end
end

function aftercast(spell)
	if player.status == "Engaged" then
		equip(sets.TP[sets.TP.index[TP_ind]])
	elseif buffactive["doom"] or buffactive["curse"] then
		equip(sets.Utility.Doom)
	elseif buffactive["terror"] or buffactive["stun"] or buffactive["sleep"] then
		equip(sets.TP.DT)
	else
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
	end
end

function status_change(new, old)
	if player.status == "Engaged" then
		equip(sets.TP[sets.TP.index[TP_ind]])
	else
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
	end
end
function self_command(command)
	if command == "toggle TP set" then
		TP_ind = TP_ind + 1
		if TP_ind > #sets.TP.index then
			TP_ind = 1
		end
		send_command("@input /echo <----- TP Set changed to " .. sets.TP.index[TP_ind] .. " ----->")
		equip(sets.TP[sets.TP.index[TP_ind]])
	elseif command == "toggle Idle set" then
		Idle_ind = Idle_ind + 1
		if Idle_ind > #sets.Idle.index then
			Idle_ind = 1
		end
		send_command("@input /echo <----- Idle Set changed to " .. sets.Idle.index[Idle_ind] .. " ----->")
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
	elseif command == "toggle Req set" then
		Requiescat_ind = Requiescat_ind + 1
		if Requiescat_ind > #sets.Requiescat.index then
			Requiescat_ind = 1
		end
		send_command("@input /echo <----- Requiescat Set changed to " .. sets.Requiescat.index[Requiescat_ind] .. " ----->")
	elseif command == "toggle CDC set" then
		ChantDuCygne_ind = ChantDuCygne_ind + 1
		if ChantDuCygne_ind > #sets.ChantDuCygne.index then
			ChantDuCygne_ind = 1
		end
		send_command(
			"@input /echo <----- Chant du Cygne Set changed to " .. sets.ChantDuCygne.index[ChantDuCygne_ind] .. " ----->"
		)
	elseif command == "toggle Rea set" then
		Realmrazer_ind = Realmrazer_ind + 1
		if Realmrazer_ind > #sets.Realmrazer.index then
			Realmrazer_ind = 1
		end
		send_command("@input /echo <----- Realmrazer Set changed to " .. sets.Realmrazer.index[Realmrazer_ind] .. " ----->")
	elseif command == "toggle MB set" then
		Burst_ind = Burst_ind + 1
		if Burst_ind > #sets.Burst.index then
			Burst_ind = 1
		end
		send_command("@input /echo [MB Set changed to " .. sets.Burst.index[Burst_ind] .. "]")
	elseif command == "equip TP set" then
		equip(sets.TP[sets.TP.index[TP_ind]])
	elseif command == "equip Idle set" then
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
	end
end
