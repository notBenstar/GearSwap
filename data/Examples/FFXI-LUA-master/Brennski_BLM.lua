function get_sets()

    send_command('bind f9 gs c toggle Nuke set')
    send_command('bind f10 gs c toggle Idle set')
    send_command('bind f11 gs c toggle Enhancing set')

    function file_unload()

        send_command('unbind ^f9')
        send_command('unbind ^f10')
        send_command('unbind ^f11')

        send_command('unbind !f9')
        send_command('unbind !f10')
        self_command('unbind !f11')

        send_command('unbind f9')
        send_command('unbind f10')
        send_command('unbind f11')

    end

    -- Idle Sets--  
    sets.Idle = {}

    sets.Idle.index = {'Standard', 'DT', 'Death'}
    -- 1=Standard, 2 =DT , 3 = Death--
    Idle_ind = 1

    sets.Idle.Standard = {
        ammo = "Staunch Tathlum",
        main = "Lathi",
        sub = "Enki Strap",
        head = "Hike Khat",
        neck = "Loricate Torque +1",
        ear1 = "Genmei Earring",
        ear2 = "Infused Earring",
        body = "Jhakri Robe +2",
        hands = {
            name = "Merlinic Dastanas",
            augments = {
                'DEX+3',
                'Mag. Acc.+16 "Mag.Atk.Bns."+16',
                '"Refresh"+1',
            }
        },
        ring1 = "Defending ring",
        ring2 = "Vocane Ring",
        waist = "Fucho-no-obi",
        legs = "Assiduity Pants +1",
        feet = "Amalric Nails +1",
        back = "Moonbeam Cape"
    }

    sets.Idle.DT = {
        ammo = "Hagneia stone",
        main = "Lathi",
        sub = "Enki Strap",
        head = "Hike Khat",
        neck = "Loricate Torque +1",
        ear1 = "Etiolation Earring",
        ear2 = "Infused Earring",
        body = "Vrikodara Jupon",
        hands = {
            name = "Merlinic Dastanas",
            augments = {
                'DEX+3',
                'Mag. Acc.+16 "Mag.Atk.Bns."+16',
                '"Refresh"+1',
            }
        },
        ring1 = "Vocane Ring",
        ring2 = "Defending ring",
        waist = "Fucho-no-obi",
        legs = "Assiduity Pants +1",
        feet = "Amalric Nails +1",
        back = "Moonbeam Cape"
    }

    sets.Idle.Death = {
        ammo = "Strobilus",
        main = "Lathi",
        sub = "Enki Strap",
        head = "Pixie Hairpin +1",
        neck = "Sanctity Necklace",
        ear2 = "Etiolation Earring",
        ear1 = "Barkarole Earring",
        body = "Amalric Doublet",
        hands = "Amalric Gages +1",
        ring1 = "Mephitas's Ring",
        ring2 = "Defending Ring",
        waist = "Fucho-no-obi",
        back = "Taranus's Cape",
        legs = "Amalric Slops",
        feet = "Amalric Nails"
    }

    -- TP Sets--
    sets.TP = {}

    sets.TP.index = {'Standard'}
    -- 1=Standard--

    TP_ind = 1
    sets.TP.Standard = {
        main = "Lathi",
        ammo = "Staunch Tathlum",
        head = "Hike Khat",
        neck = "Sanctity Necklace",
        ear1 = "Genmei Earring",
        ear2 = "Infused Earring",
        body = "Vrikodara Jupon",
        hands = {
            name = "Merlinic Dastanas",
            augments = {
                'DEX+3',
                'Mag. Acc.+16 "Mag.Atk.Bns."+16',
                '"Refresh"+1',
            }
        },
        ring1 = "Defending ring",
        ring2 = "Vocane Ring",
        waist = "Fucho-no-obi",
        legs = "Assiduity Pants",
        feet = "Amalric Nails +1",
        back = "Moonbeam Cape"
    }

    -- WS Sets--

    sets.WS = {}

    sets.WS.Myrkr = {
        ammo = "Strobilus",
        head = "Pixie Hairpin +1",
        neck = "Sanctity Necklace",
        ear2 = "Etiolation Earring",
        ear1 = "Barkarole Earring",
        body = "Amalric Doublet",
        hands = "Amalric Gages +1",
        ring1 = "Mephitas's Ring",
        ring2 = "Rahab Ringd",
        waist = "Refoccilation Stone",
        back = "Taranus's Cape",
        legs = "Amalric Slops",
        feet = "Amalric Nails"
    }

    -- Nuke Sets---
    sets.Nuke = {}

    sets.Nuke.index = {'Standard', 'MagicBurst'}
    -- 1=Standard, 2= Magic Burst'--
    Nuke_ind = 1

    sets.Nuke.Standard = {
        main = "Lathi",
        sub = "Enki Strap",
        ammo = "Pemphredo Tathlum",
        head = {
            name = "Merlinic Hood",
            augments = {
                'Mag. Acc.+18 "Mag.Atk.Bns."+18',
                'Magic burst mdg.+7%',
                'CHR+7',
                'Mag. Acc.+12',
            }
        },
        neck = "Sanctity Necklace",
        ear2 = "Friomisi earring",
        ear1 = "Barkarole Earring",
        body = {
            name = "Merlinic Jubbah",
            augments = {
                'Mag. Acc.+23 "Mag.Atk.Bns."+23',
                'INT+7',
                'Mag. Acc.+14',
                '"Mag.Atk.Bns."+14',
            }
        },
        hands = "Jhakri Cuffs +2",
        ring1 = "Shiva Ring",
        ring2 = "Acumen Ring",
        waist = "Refoccilation Stone",
        back = "Taranus's Cape",
        legs = {
            name = "Merlinic Shalwar",
            augments = {
                'Mag. Acc.+23 "Mag.Atk.Bns."+23',
                'Mag. crit. hit dmg. +1%',
                'Mag. Acc.+11',
                '"Mag.Atk.Bns."+13',
            }
        },
        feet = {
            name = "Merlinic Crackows",
            augments = {
                'Mag. Acc.+20 "Mag.Atk.Bns."+20',
                '"Fast Cast"+3',
                'INT+10',
                '"Mag.Atk.Bns."+1',
            }
        }
    }

    sets.Nuke.MagicBurst = {
        main = "Lathi",
        sub = "Enki Strap",
        ammo = "Pemphredo Tathlum",
        neck = "Mizukage-no-Kubikazari",
        ear2 = "Friomisi earring",
        ear1 = "Barkarole Earring",
        ring1 = "Locus Ring",
        ring2 = "Mujin Band",
        waist = "Refoccilation Stone",
        back = "Taranus's Cape",
        head = {
            name = "Merlinic Hood",
            augments = {
                'Mag. Acc.+18 "Mag.Atk.Bns."+18',
                'Magic burst dmg.+7%',
                'CHR+7',
                'Mag. Acc.+12',
            }
        },
        body = {
            name = "Merlinic Jubbah",
            augments = {
                'Mag. Acc.+23 "Mag.Atk.Bns."+23',
                'INT+7',
                'Mag. Acc.+14',
                '"Mag.Atk.Bns."+14',
            }
        },
        hands = {
            name = "Amalric Gages",
            augments = {'INT+10', 'Mag. Acc.+15', '"Mag.Atk.Bns."+15',}
        },
        legs = {
            name = "Merlinic Shalwar",
            augments = {
                'Mag. Acc.+12 "Mag.Atk.Bns."+12',
                'Magic burst dmg.+8%',
                'MND+5',
                '"Mag.Atk.Bns."+12',
            }
        },
        feet = {
            name = "Merlinic Crackows",
            augments = {
                'Mag. Acc.+19 "Mag.Atk.Bns."+19',
                'Magic burst dmg.+9%',
                'MND+9',
                'Mag. Acc.+15',
            }
        },
    }

    -- Enhancing Sets--					
    sets.Enhancing = {}

    sets.Enhancing.index = {'Normal',}
    -- 1=Normal--
    Enhancing_ind = 1

    sets.Enhancing.Normal = {
        ammo = "Savant's Treatise",
        head = "Telchine Cap",
        neck = "Incanter's Torque",
        ear1 = "Andoaa Earring",
        ear2 = "Regal Earring",
        body = "Telchine Chasuble",
        hands = "Chironic Gloves",
        ring1 = "Stikini Ring",
        ring2 = "Sirona's Ring",
        waist = "Olympus Sash",
        back = "Fi follet cape +1",
        legs = "Telchine Braconi",
        feet = "Telchine Pigaches"
    }

    -- Magic Sets--
    sets.Magic = {}

    sets.Magic.Enfeebling = {
        main = "Lathi",
        ammo = "Pemphredo Tathlum",
        head = "Merlinic Hood",
        neck = "Imbodla Necklace",
        ear2 = "Dignitary's Earring",
        ear1 = "Barkarole Earring",
        body = {
            name = "Merlinic Jubbah",
            augments = {
                'Mag. Acc.+23 "Mag.Atk.Bns."+23',
                'INT+7',
                'Mag. Acc.+14',
                '"Mag.Atk.Bns."+14',
            }
        },
        hands = "Lurid Mitts",
        ring1 = "Stikini Ring",
        ring2 = "Kishar Ring",
        waist = "Luminary Sash",
        back = "Taranus's Cape",
        legs = "Psycloth Lappas",
        feet = "Skaoi Boots"
    }

    sets.Magic.Healing = {
        ammo = "Kalboron Stone",
        head = "Vanya Hood",
        neck = "Incanter's Torque",
        ear1 = "Regal Earring",
        ear2 = "Mendi. Earring",
        body = "Vrikodara Jupon",
        hands = "Telchine Gloves",
        ring1 = "Ephedra Ring",
        ring2 = "Sirona's Ring",
        waist = "Luminary Sash",
        back = "Solemnity Cape",
        legs = "Psycloth Lappas",
        feet = "Vanya Clogs"
    }

    sets.Magic.Regen = {
        ammo = "Savant's Treatise",
        head = "Arbatel Bonnet",
        neck = "Incanter's Torque ",
        ear1 = "Regal Earring",
        ear2 = "Regal Earring",
        body = "Telchine Chasuble",
        hands = "Telchine Gloves",
        ring1 = "Stikini Ring",
        ring2 = "Kishar Ring",
        waist = "Luminary Sash",
        back = "Taranus's Cape",
        legs = "Telchine Braconi",
        feet = "Telchine Pigaches"
    }

    sets.Magic.Dark = {
        ammo = "Pemphredo Tathlum",
        head = "Pixie Hairpin +1",
        neck = "Incanter's Torque",
        ear2 = "Friomisi earring",
        ear1 = "Barkarole Earring",
        body = {
            name = "Merlinic Jubbah",
            augments = {
                'Mag. Acc.+23 "Mag.Atk.Bns."+23',
                'INT+7',
                'Mag. Acc.+14',
                '"Mag.Atk.Bns."+14',
            }
        },
        hands = "Amalric Gages +1",
        ring1 = "Evanescence Ring",
        ring2 = "Archon Ring",
        waist = "Refoccilation Stone",
        back = "Taranus's Cape",
        legs = {
            name = "Merlinic Shalwar",
            augments = {
                'Mag. Acc.+23 "Mag.Atk.Bns."+23',
                'Mag. crit. hit dmg. +1%',
                'Mag. Acc.+11',
                '"Mag.Atk.Bns."+13',
            }
        },
        feet = "Merlinic Crackows"
    }

    sets.Magic.Death = {
        ammo = "Strobilus",
        head = "Pixie Hairpin +1",
        neck = "Mizukage-no-Kubikazari",
        ear2 = "Static Earring",
        ear1 = "Barkarole Earring",
        body = "Amalric Doublet",
        hands = "Amalric Gages +1",
        ring1 = "Mephitas's Ring",
        ring2 = "Mujin Band",
        waist = "Refoccilation Stone",
        back = "Taranus's Cape",
        legs = {
            name = "Merlinic Shalwar",
            augments = {
                'Mag. Acc.+12 "Mag.Atk.Bns."+12',
                'Magic burst mdg.+8%',
                'MND+5',
                '"Mag.Atk.Bns."+12',
            }
        },
        feet = "Amalric Nails"
    }

    sets.Magic.Stun = {
        ammo = "Pemphredo Tathlum",
        head = {
            name = "Merlinic Hood",
            augments = {'"Fast Cast"+5', 'Mag. Acc.+10',}
        },
        neck = "Voltsurge Torque",
        waist = "Luminary Sash",
        left_ear = "Etiolation Earring",
        right_ear = "Loquac. Earring",
        left_ring = "Rahab Ring",
        right_ring = "Kishar Ring",
        feet = {
            name = "Merlinic Crackows",
            augments = {
                'Mag. Acc.+20 "Mag.Atk.Bns."+20',
                '"Fast Cast"+3',
                'INT+10',
                '"Mag.Atk.Bns."+1',
            }
        },
        body = {
            name = "Merlinic Jubbah",
            augments = {
                'Accuracy+6',
                '"Fast Cast"+6',
                'MND+8',
                'Mag. Acc.+15',
                '"Mag.Atk.Bns."+5',
            }
        },
        legs = "Psycloth Lappas",
        back = "Lugh's Cape"
    }

    -- Precast Sets--
    sets.precast = {}

    sets.precast.FC = {}

    sets.precast.FC.Standard = {
        ammo = "Sapience Orb",
        head = {
            name = "Merlinic Hood",
            augments = {'"Fast Cast"+5', 'Mag. Acc.+10',}
        },
        body = {
            name = "Merlinic Jubbah",
            augments = {
                'Accuracy+6',
                '"Fast Cast"+6',
                'MND+8',
                'Mag. Acc.+15',
                '"Mag.Atk.Bns."+5',
            }
        },
        hands = {
            name = "Merlinic Dastanas",
            augments = {
                '"Mag.Atk.Bns."+25',
                '"Fast Cast"+7',
                'Mag. Acc.+13',
            }
        },
        legs = "Psycloth Lappas",
        feet = {
            name = "Merlinic Crackows",
            augments = {'"Fast Cast"+6', '"Mag.Atk.Bns."+12',}
        },
        neck = "Voltsurge Torque",
        waist = "Witful Belt",
        left_ear = "Etiolation Earring",
        right_ear = "Loquac. Earring",
        left_ring = "Rahab Ring",
        right_ring = "Kishar Ring",
        back = "Swith Cape"
    }

    sets.precast.FC.Death = {
        ammo = "Sapience Orb",
        head = {
            name = "Merlinic Hood",
            augments = {'"Fast Cast"+5', 'Mag. Acc.+10',}
        },
        body = "Amalric Doublet",
        hands = {
            name = "Merlinic Dastanas",
            augments = {
                '"Mag.Atk.Bns."+25',
                '"Fast Cast"+7',
                'Mag. Acc.+13',
            }
        },
        legs = "Psycloth Lappas",
        feet = "Amalric Nails +1",
        neck = "Voltsurge Torque",
        waist = "Witful Belt",
        left_ear = "Etiolation Earring",
        right_ear = "Loquac. Earring",
        ring2 = "Rahab Ring",
        ring1 = "Mephitas's Ring",
        back = "Swith Cape"
    }

    -- Utility and JA Sets --					
    sets.Utility = {}

    sets.Utility.Weather = {waist = "Hachirin-no-obi"}

    sets.Utility.Klima = {feet = "Arbatel Loafers +1"}

    sets.Utility.DrainAspir = {
        ammo = "Strobilus",
        head = "Pixie Hairpin +1",
        neck = "Sanctity Necklace",
        ear2 = "Friomisi earring",
        ear1 = "Barkarole Earring",
        body = {
            name = "Merlinic Jubbah",
            augments = {
                'Mag. Acc.+23 "Mag.Atk.Bns."+23',
                'INT+7',
                'Mag. Acc.+14',
                '"Mag.Atk.Bns."+14',
            }
        },
        hands = "Amalric Gages +1",
        ring1 = "Evanescence Ring",
        ring2 = "Mephitas's Ring",
        waist = "Fucho-no-obi",
        back = "Taranus's Cape",
        legs = "Merlinic Shalwar",
        feet = "Merlinic Crackcrows"
    }

    sets.Utility.Doomed = {waist = "Gishdubar Sash", ring1 = "Saida Ring"}
    -- WS Sets--

    sets.WS = {}
end

function precast(spell)

    if spell.skill == 'Elemental Magic' then
        equip(sets.precast.FC.Standard)
    elseif spell.skill == 'Enfeebling Magic' then
        equip(sets.precast.FC.Standard)
    elseif spell.skill == 'Enhancing Magic' then
        equip(sets.precast.FC.Standard)
    elseif spell.skill == 'Dark Magic' then
        equip(sets.precast.FC.Standard)
    elseif spell.skill == 'Healing Magic' then
        equip(sets.precast.FC.Standard)
    elseif spell.english == 'Stun' then
        equip(sets.Magic.Stun)
    elseif spell.english == 'Death' then
        equip(sets.precast.FC.Death)
    elseif spell.type == 'Magic' then
        equip(sets.precast.FC.Standard)
    elseif spell.english == 'Myrkr' then
        equip(sets.WS.Myrkr)
    end

end

function midcast(spell, act)

    if spell.english == 'Stun' then equip(sets.Magic.Stun) end

    if spell.skill == 'Enhancing Magic' then
        equip(sets.Enhancing[sets.Enhancing.index[Enhancing_ind]])
    end

    if spell.skill == 'Healing Magic' then equip(sets.Magic.Healing) end

    if spell.skill == 'Dark Magic' then equip(sets.Magic.Dark) end

    if spell.skill == 'Enfeebling Magic' then equip(sets.Magic.Enfeebling) end

    if spell.english == 'Death' then
        equip(sets.Magic.Death)
        if spell.element == world.day_element or spell.element == world.weather_element then
            equip(set_combine(sets.Magic.Death, sets.Utility.Weather))
        end
    end

    if spell.skill == 'Elemental Magic' then
        equip(sets.Nuke[sets.Nuke.index[Nuke_ind]])
        if spell.element == world.day_element or spell.element == world.weather_element then
            equip(set_combine(
                sets.Nuke[sets.Nuke.index[Nuke_ind]],
                sets.Utility.Weather
            ))
        end
    end

    if spell.english == 'Regen' or spell.english == 'Regen II' or spell.english == 'Regen III' or spell.english == 'Regen IV' or spell.english == 'Regen V' then equip(sets.Magic.Regen) end

    if spell.english == 'Drain' or spell.english == 'Drain II' or spell.english == 'Aspir II' or spell.english == 'Aspir' then equip(sets.Utility.DrainAspir) end
end

function aftercast(spell)
    if player.status == 'Engaged' then
        equip(sets.TP[sets.TP.index[TP_ind]])

    else
        equip(sets.Idle[sets.Idle.index[Idle_ind]])
    end
    if buffactive['doom'] then equip(sets.Utility.Doom) end
    if buffactive['terror'] or buffactive['stun'] or buffactive['sleep'] then equip(sets.TP.DT) end

end

function status_change(new, old)
    if player.status == 'Engaged' then
        equip(sets.TP[sets.TP.index[TP_ind]])

    else
        equip(sets.Idle[sets.Idle.index[Idle_ind]])
    end
end

function self_command(command)
    if command == 'toggle Nuke set' then
        Nuke_ind = Nuke_ind + 1
        if Nuke_ind > #sets.Nuke.index then Nuke_ind = 1 end
        send_command('@input /echo <----- Nuke Set changed to ' .. sets.Nuke.index[Nuke_ind] .. ' ----->')
        equip(sets.Nuke[sets.Nuke.index[Nuke_ind]])
    elseif command == 'toggle Idle set' then
        Idle_ind = Idle_ind + 1
        if Idle_ind > #sets.Idle.index then Idle_ind = 1 end
        send_command('@input /echo <----- Idle Set changed to ' .. sets.Idle.index[Idle_ind] .. ' ----->')
        equip(sets.Idle[sets.Idle.index[Idle_ind]])
    elseif command == 'toggle Enhancing set' then
        Enhancing_ind = Enhancing_ind + 1
        if Enhancing_ind > #sets.Enhancing.index then Enhancing_ind = 1 end
        send_command('@input /echo <----- Enhancing Set changed to ' .. sets.Enhancing.index[Enhancing_ind] .. ' ---->')
        equip(sets.Enhancing[sets.Enhancing.index[Enhancing_ind]])
    elseif command == 'equip TP set' then
        equip(sets.TP[sets.TP.index[TP_ind]])
    elseif command == 'equip Idle set' then
        equip(sets.Idle[sets.Idle.index[Idle_ind]])
    end
end
