function get_sets()
        send_command("bind f9 gs c toggle TP set")
        send_command("bind f10 gs c toggle Idle set")

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

        --Idle Sets--
        sets.Idle = {}

        sets.Idle.index = {"Standard", "DT", "Cleave"}
        Idle_ind = 1

        sets.Idle.Standard = {
                head = "Rawhide Mask",
                neck = "Sanctity Necklace",
                ear1 = "Genmei Earring",
                ear2 = "Infused Earring",
                body = "Emet Harness",
                hands = "Herculean gloves",
                ring1 = "Vocane Ring",
                ring2 = "Vocane Ring",
                waist = "Flume Belt +1",
                legs = "Carmine Cuisses",
                feet = "Herculean Boots",
                back = "Aptitude Mantle"
        }

        sets.Idle.DT = {
                main = "Terra's Staff",
                sub = "Umbra strap",
                head = "Rabid Visor",
                neck = "Loricate Torque +1",
                ear1 = "Etiolation earring",
                ear2 = "Handler's earring +1",
                body = "Emet Harness",
                hands = "Garden Bangles",
                ring1 = "Dark ring",
                ring2 = "Succor ring",
                back = "Solemnity Cape",
                waist = "Flume belt +1",
                legs = "Osmium Cuisses",
                feet = "Herculean Boots"
        }

        sets.Idle.Cleave = {
                head = "Rabid Visor",
                neck = "Loricate Torque +1",
                ear1 = "Etiolation earring",
                ear2 = "Handler's earring +1",
                body = "Emet Hareness",
                hands = "Garden Bangles",
                ring1 = "Dark ring",
                ring2 = "Succor ring",
                back = "Mecistopins mantle",
                waist = "Flume belt +1",
                legs = "Osmium Cuisses",
                feet = "Herculean Boots"
        }
        --TP Sets--
        sets.TP = {}

        sets.TP.index = {"Standard", "DT", "DTAccuracy"}
        --1=Standard,2=DT, 3=DTAccuracy--

        TP_ind = 1
        sets.TP.Standard = {
                head = "Dampening Tam",
                neck = "Lissome necklace",
                ear1 = "Dudgeon Earring",
                ear2 = "Heartseeker Earring",
                body = "Rawhide Vest",
                hands = "Taeon Gloves",
                ring1 = "Enlivened Ring",
                ring2 = "Oneiros Ring",
                back = "Grounded Mantle",
                waist = "Sentry Belt",
                legs = "Obatala Subligar",
                feet = "Herculean Boots"
        }

        sets.TP.DT = {
                head = "Dampening Tam",
                neck = "Loricate Torque +1",
                ear1 = "Genmei Earring",
                ear2 = "Heartseeker Earring",
                body = "Emet harness +1",
                hands = "Taeon Gloves",
                ring1 = "Dark ring",
                ring2 = "Oneiros Ring",
                back = "Solemnity Cape",
                waist = "Flume belt +1",
                legs = "Obatala Subligar",
                feet = "Herculean Boots"
        }

        sets.TP.DTAccuracy = {
                head = "Dampening Tam",
                neck = "Loricate Torque +1",
                ear1 = "Dudgeon Earring",
                ear2 = "Heartseeker Earring",
                body = "Emet harness +1",
                hands = "Taeon Gloves",
                ring1 = "Dark ring",
                ring2 = "Mars's ring",
                back = "Solemnity Cape",
                waist = "Flume belt +1",
                legs = "Obatala Subligar",
                feet = "Herculean Boots"
        }

        --Weaponskill Sets--
        sets.WS = {}

        sets.SavageBlade = {}

        sets.SavageBlade.index = {"Attack"}
        SavageBlade_ind = 1

        sets.SavageBlade.Attack = {
                head = "Adhemar Bonnet",
                neck = "Caro Necklace",
                ear1 = "Brutal Earring",
                ear2 = "Cessance earring",
                body = "Rawhide Vest",
                hands = "Taeon Gloves",
                ring1 = "Petrov Ring",
                ring2 = "Oneiros Ring",
                back = "Buquwik Cape",
                waist = "Prosilio Belt",
                legs = "Obatala Subligar",
                feet = "Herculean Boots"
        }

        sets.SanguineBlade = {}

        sets.SanguineBlade.index = {"Attack"}
        SanguineBlade_ind = 1
        sets.SanguineBlade = {
                head = "Helios Band",
                neck = "Sanctity Necklace",
                rear = "Friomisi earring",
                ear1 = "Novio Earring",
                body = "Rawhide Vest",
                hands = "Taeon Gloves",
                ring1 = "Acumen Ring",
                ring2 = "Arvina Ringlet",
                waist = "Eschan Stone",
                back = "Cornflower cape",
                legs = "Obatala Subligar",
                feet = "Weatherspoon souliers +1"
        }

        sets.VorpalBlade = {}

        sets.VorpalBlade.index = {"Attack"}
        VorpalBlade_ind = 1
        sets.VorpalBlade = {
                head = "Dampening Tam",
                neck = "Fotia gorget",
                ear1 = "Brutal Earring",
                ear2 = "Cessance Earring",
                body = "Rawhide Vest",
                hands = "Taeon Gloves",
                ring1 = "Petrov ring",
                ring2 = "Oneiros Ring",
                back = "Lupine Cape",
                waist = "Dynamic belt",
                legs = "Quiahuiz leggings",
                feet = "Herculean Boots"
        }

        sets.Leaden = {}

        sets.Leaden.index = {"Attack"}
        Leaden_ind = 1

        sets.Leaden = {
                ammo = "Orichalcum bullet",
                head = "Pixie Hairpin +1",
                neck = "Hunai Collar",
                ear2 = "Friomisi earring",
                ear1 = "Hecate's Earring",
                body = "Rawhide Vest",
                hands = "Taeon Gloves",
                ring1 = "Acumen Ring",
                ring2 = "Arvina Ringlet",
                waist = "Eschan Stone",
                back = "Gunslinger's Cape",
                legs = "Obatala Subligar",
                feet = "Herculean Boots"
        }

        sets.WildFire = {}

        sets.WildFire.index = {"Attack"}
        WildFire_ind = 1

        sets.WildFire = {
                ammo = "Orichalcum bullet",
                head = "Herculean Helm",
                neck = "Hunai Collar",
                ear2 = "Friomisi earring",
                ear1 = "Hecate's Earring",
                body = "Rawhide Vest",
                hands = "Taeon Gloves",
                ring1 = "Acumen Ring",
                ring2 = "Arvina Ringlet",
                waist = "Eschan Stone",
                back = "Gunslinger's Cape",
                legs = "Obatala Subligar",
                feet = "Herculean Boots"
        }

        sets.LastStand = {}

        sets.LastStand.index = {"Attack"}
        LastStand_ind = 1

        sets.LastStand = {
                ammo = "Orichalcum bullet",
                head = "Adhemar Bonnet",
                neck = "Fotia gorget",
                ear1 = "Heartseeker Earring",
                ear2 = "Neritic Earring",
                body = "Rawhide Vest",
                hands = "Taeon Gloves",
                ring1 = "Longshot Ring",
                ring2 = "Arvina Ringlet",
                back = "Lupine Cape",
                waist = "Fotia Belt",
                legs = "Obatala Subligar",
                feet = "Herculean Boots"
        }

        --Ranged Attack ---
        sets.Ranged = {}
        sets.Ranged.RangedAttack = {
                ammo = "Orichalcum bullet",
                head = "Dampening Tam",
                neck = "Hunai Collar",
                ear2 = "Heartseeker Earring",
                ear1 = "Neritic Earringsa",
                body = "Rawhide Vest",
                hands = "Taeon Gloves",
                ring1 = "Longshot Ring",
                ring2 = "Arvina Ringlet",
                waist = "Eschan Stone",
                back = "Gunslinger's Cape",
                legs = "Obatala Subligar",
                feet = "Herculean Boots"
        }

        --Utility Sets--
        sets.Utility = {}

        sets.Utility.Weather = {waist = "Hachirin-no-obi"}

        sets.Utility.MB = {
                head = "Helios Band",
                body = "Rawhide Vest",
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
                ring1 = "Prolix ring",
                back = "Swith cape",
                waist = "Siegel sash",
                legs = "Haven hose",
                feet = "Herculean Boots"
        }

        sets.Utility.Phalanx = {
                head = "Haruspex hat",
                neck = "Colossus's torque",
                ear1 = "Loquac. earring",
                ear2 = "Augment. earring",
                body = "Assim. jubbah +1",
                hands = "Ayao's gages",
                ring1 = "Prolix ring",
                back = "Swith cape",
                waist = "Pythia sash +1",
                legs = "Portent pants",
                feet = "Herculean Boots"
        }

        sets.Utility.Steps = {
                head = "Dampening Tam",
                body = "Rawhide Vest",
                hands = "Rawhide Gloves",
                legs == "Obatala Subligar",
                feet = "Herculean Boots",
                neck = "Subtlety Spec.",
                waist = "Chaac Belt",
                left_ear = "Heartseeker Earring",
                right_ear = "Heartseeker Earring",
                left_ring = "Yacuruna Ring",
                right_ring = "Oneiros Ring",
                back = "Grounded Mantle"
        }

        --Job Ability Sets--

        sets.JA = {}

        sets.JA.QuickDraw = {
                ammo = "Animikii Bullet",
                head = "Herculean Helm",
                neck = "Quanpur necklace",
                ear2 = "Friomisi earring",
                ear1 = "Hecate's Earring",
                body = "Rawhide Vest",
                hands = "Taeon Gloves",
                ring1 = "Acumen Ring",
                ring2 = "Arvina Ringlet",
                waist = "Eschan Stone",
                back = "Gunslinger's Cape",
                legs = "Obatala Subligar",
                feet = "Herculean Boots"
        }

        sets.JA.PhantomRoll = {
                head = "Commodore Tricorne +2",
                neck = "Loricate Torque +1",
                ear1 = "Etiolation earring",
                ear2 = "Genmei Earring",
                body = "Emet Hareness",
                hands = "Chasseur's Gants",
                ring1 = "Luzaf's Ring",
                ring2 = "Barataria Ring",
                back = "Camulus's Mantle",
                waist = "Flume belt +1",
                legs = "Osmium Cuisses",
                feet = "Herculean Boots"
        }

        sets.JA.LightDarkShot = {
                ammo = "Animikii Bullet",
                head = "Herculean Helm",
                neck = "Quanpur necklace",
                ear2 = "Friomisi earring",
                ear1 = "Hecate's Earring",
                body = "Rawhide Vest",
                hands = "Taeon Gloves",
                ring1 = "Prolix ring",
                ring2 = "Arvina Ringlet",
                waist = "Eschan Stone",
                back = "Gunslinger's Cape",
                legs = "Obatala Subligar",
                feet = "Herculean Boots"
        }

        --Precast Sets--
        sets.precast = {}

        sets.precast.FC = {}

        sets.precast.FC.Standard = {
                head = "Psycloth Tiara",
                body = "Taeon Tabard",
                hands = "Taeon Gloves",
                legs = "Lengo Pants",
                feet = "Chelona Boots",
                neck = "Voltsurge Torque",
                waist = "Witful Belt",
                left_ear = "Etiolation Earring",
                right_ear = "Loquac. Earring",
                left_ring = "Prolix Ring",
                right_ring = "Prolix ring",
                back = "Swith Cape"
        }
        --Ninja Magic Sets--
        sets.NINMagic = {}

        sets.NINMagic.Utsusemi = {
                head = "Dampening Tam",
                neck = "Loricate Torque +1",
                ar1 = "Brutal Earring",
                ear2 = "Cessance Earring",
                body = "Emet harness +1",
                hands = "Taeon Gloves",
                ring1 = "Vocane Ring",
                ring2 = "Petrov Ring",
                back = "Solemnity Cape",
                waist = "Flume belt +1",
                legs = "Obatala Subligar",
                feet = "Herculean Boots"
        }
end

function precast(spell)
        if spell.action_type == "Magic" then
                equip(sets.precast.FC.Standard)
        end
        if spell.action_type == "Ranged Attack" then
                equip(sets.Ranged.RangedAttack)
        end

        if spell.english == "Savage Blade" then
                equip(sets.SavageBlade[sets.SavageBlade.index[SavageBlade_ind]])
        end
        if spell.english == "Vorpal Blade" then
                equip(sets.VorpalBlade)
        end

        if spell.english == "Sanguine Blade" then
                equip(sets.SanguineBlade)
                if spell.element == world.day_element or spell.element == world.weather_element then
                        equip(sets.Utility.Weather)
                end
        end

        if spell.english == "Leaden Salute" then
                equip(sets.Leaden)
                if spell.element == world.day_element or spell.element == world.weather_element then
                        equip(sets.Utility.Weather)
                end
        end

        if spell.english == "Wildfire" then
                equip(sets.WildFire)
                if spell.element == world.day_element or spell.element == world.weather_element then
                        equip(sets.Utility.Weather)
                end
        end

        if spell.english == "Last Stand" then
                equip(sets.LastStand)
        end

        if
                spell.english == "Corsair's Roll" or spell.english == "Ninja's Roll" or spell.english == "Hunter's Roll" or
                        spell.english == "Chaos Roll" or
                        spell.english == "Magus's Roll" or
                        spell.english == "Healer's Roll" or
                        spell.english == "Drachen Roll" or
                        spell.english == "Choral Roll" or
                        spell.english == "Monk's Roll" or
                        spell.english == "Beast Roll" or
                        spell.english == "Samurai Roll" or
                        spell.english == "Evoker's Roll" or
                        spell.english == "Rogue's Roll" or
                        spell.english == "Warlock's Roll" or
                        spell.english == "Fighter's Roll" or
                        spell.english == "Puppet Roll" or
                        spell.english == "Gallant's Roll" or
                        spell.english == "Wizard's Roll" or
                        spell.english == "Dancer's Roll" or
                        spell.english == "Scholar's Roll" or
                        spell.english == "Bolter's Roll" or
                        spell.english == "Allies' Roll" or
                        spell.english == "Miser's Roll" or
                        spell.english == "Caster's Roll" or
                        spell.english == "Companion's Roll" or
                        spell.english == "Avenger's Roll"
         then
                equip(sets.JA.PhantomRoll)
        end

        if
                spell.english == "Fire Shot" or spell.english == "Water Shot" or spell.english == "Thunder Shot" or
                        spell.english == "Earth Shot" or
                        spell.english == "Wind Shot" or
                        spell.english == "Ice Shot"
         then
                equip(sets.JA.QuickDraw)
                if spell.element == world.day_element or spell.element == world.weather_element then
                        equip(sets.Utility.Weather)
                end
        end

        if spell.english == "Light Shot" or spell.english == "Dark Shot" then
                equip(sets.JA.LightDarkShot)
                if spell.element == world.day_element or spell.element == world.weather_element then
                        equip(sets.Utility.Weather)
                end
        end

        if spell.english == "Box Step" or spell.english == "Quick Step" then
                equip(sets.Utility.Steps)
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
        end

        if spell.english == "Utsusemi: Ni" or spell.english == "Utsusemi: San" then
                equip(sets.NINMagic.Utsusemi)
        end
end

function aftercast(spell)
        if player.status == "Engaged" then
                equip(sets.TP[sets.TP.index[TP_ind]])
        else
                equip(sets.Idle[sets.Idle.index[Idle_ind]])
        end

        if spell.action_type == "Weaponskill" then
                add_to_chat(158, "TP Return: [" .. tostring(player.tp) .. "]")
        end
end

function status_change(new, old)
        if new == "Engaged" then
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
        elseif command == "equip TP set" then
                equip(sets.TP[sets.TP.index[TP_ind]])
        elseif command == "equip Idle set" then
                equip(sets.Idle[sets.Idle.index[Idle_ind]])
        end
end
