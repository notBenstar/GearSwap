--Source lua from here.
--https://github.com/Kinematics/GearSwap-Jobs/blob/master/THF.lua
--Refer to that lua for questions on what does what and whats missing. 
--
--Broke the lua down to the bare bones
--BIND BUTTONS line32 *** f9 to flee ***  ***f10 to switch TH MODES ***
--TH mode cycle is: None(wont equip th), Tag(equips for initial hit), 
--------------SATA(equips for SATA and initial hit), Fulltime(always on)
--Gear Sets are available for: TH, SA, TA, JA, FC, WS, M.WS, Idle, Melee
--EDIT line 43-75 for your gear. 
-- Put pasted gear between {} 
--GEAR SETS are marked with --  
function get_sets()
    mote_include_version = 2
    include('Mote-Include.lua')
end
 
function job_setup()
    state.Buff['Sneak Attack'] = buffactive['sneak attack'] or false
    state.Buff['Trick Attack'] = buffactive['trick attack'] or false
    state.Buff['Feint'] = buffactive['feint'] or false
    include('Mote-TreasureHunter')
    info.default_ja_ids = S{35, 204}
    info.default_u_ja_ids = S{201, 202, 203, 205, 207}
end
 
function user_setup()
--TARGET MODES (deleted them to normal only)
    state.OffenseMode:options('Normal')
    state.WeaponskillMode:options('Normal')
--BIND BUTTONS   *** f9 to flee ***  ***f10 to switch TH MODES ***
    send_command('bind f9 input /ja "Flee" <me>')
    send_command('bind f10 gs c cycle treasuremode')
end
 
function user_unload()
    send_command('unbind ^`')
    send_command('unbind !-')
end
 
function init_gear_sets()
----------------------------------------GEAR SETS START HERE------------------------------------------------------
--TH
    sets.TreasureHunter = {}
--SA
    sets.buff['Sneak Attack'] = {}
--TA
    sets.buff['Trick Attack'] = {}
--TH tagging abilies
    sets.precast.Step = sets.TreasureHunter
    sets.precast.Flourish1 = sets.TreasureHunter
    sets.precast.JA.Provoke = sets.TreasureHunter
--JA
    sets.precast.JA['Collaborator'] = {}
    sets.precast.JA['Accomplice'] = {}
    sets.precast.JA['Flee'] = {}
    sets.precast.JA['Hide'] = {}
    sets.precast.JA['Steal'] = {}
    sets.precast.JA['Despoil'] = {}
    sets.precast.JA['Perfect Dodge'] = {}
    sets.precast.JA['Feint'] = {}
    sets.precast.JA['Sneak Attack'] = sets.buff['Sneak Attack']
    sets.precast.JA['Trick Attack'] = sets.buff['Trick Attack']
--FC
    sets.precast.FC = {}
--WS
    sets.precast.WS = {
	ammo="Jukukik feather",
    head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet={ name="Herculean Boots", augments={'Attack+25','MND+4','Quadruple Attack +2','Accuracy+10 Attack+10',}},
    neck="Clotharius Torque",
    waist="Windbuffet Belt +1",
    left_ear="Sherida Earring",
	right_ear="Moonshade Earring",
    left_ring="Epona's Ring",
    right_ring="Ilabrat Ring",
    back={ name="Canny Cape", augments={'DEX+5','AGI+2','"Dual Wield"+2','Crit. hit damage +1%',}}
	}
--MAGIC AOE WS
    sets.precast.WS['Aeolian Edge'] = {}
--add 2 dashes below to remove TH from AE
    sets.precast.WS['Aeolian Edge'].TH = set_combine(sets.precast.WS['Aeolian Edge'], sets.TreasureHunter)
--IDLE  (basically add movement+ to melee set)
    sets.idle = {
	ammo="Yamarang",
    head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet="Jute Boots",
    neck="Clotharius Torque",
    waist="Windbuffet Belt +1",
    left_ear="Suppanomimi",
    right_ear="Brutal Earring",
    left_ring="Shneddick Ring",
    right_ring="Defending Ring",
    back={ name="Canny Cape", augments={'DEX+5','AGI+2','"Dual Wield"+2','Crit. hit damage +1%',}}
	--main={ name="Malevolence", augments={'INT+10','Mag. Acc.+10','"Mag.Atk.Bns."+10','"Fast Cast"+5',}},
    --sub={ name="Malevolence", augments={'INT+7','Mag. Acc.+3','"Mag.Atk.Bns."+5','"Fast Cast"+2',}},
    --ammo="Hydrocera",
    --head={ name="Herculean Helm", augments={'"Dbl.Atk."+1','DEX+1','"Refresh"+2','Accuracy+19 Attack+19','Mag. Acc.+7 "Mag.Atk.Bns."+7',}},
    --body={ name="Samnuha Coat", augments={'Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+5','"Dual Wield"+5',}},
    --hands={ name="Herculean Gloves", augments={'Magic dmg. taken -1%','Magic burst dmg.+1%','"Refresh"+2','Accuracy+5 Attack+5',}},
    --legs={ name="Herculean Trousers", augments={'Pet: Attack+10 Pet: Rng.Atk.+10','"Cure" potency +3%','"Refresh"+2','Mag. Acc.+4 "Mag.Atk.Bns."+4',}},
    --feet={ name="Herculean Boots", augments={'Mag. Acc.+4','"Dbl.Atk."+1','"Refresh"+2','Mag. Acc.+9 "Mag.Atk.Bns."+9',}},
    --neck="Sanctity Necklace",
    --waist="Eschan Stone",
    --left_ear="Loquac. Earring",
    --right_ear="Etiolation Earring",
    --left_ring="Lebeche Ring",
    --right_ring="Metamorph Ring",
    --back="Solemnity Cape"
	}
-- MELEE
    sets.engaged = {
	ammo="Yamarang",
    head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet={ name="Herculean Boots", augments={'Attack+25','MND+4','Quadruple Attack +2','Accuracy+10 Attack+10',}},
    neck="Clotharius Torque",
    waist="Windbuffet Belt +1",
    left_ear="Sherida Earring",
	right_ear="Telos Earring",
    left_ring="Epona's Ring",
    right_ring="Gere Ring",
    back={ name="Canny Cape", augments={'DEX+5','AGI+2','"Dual Wield"+2','Crit. hit damage +1%',}}
	}
end
----------------------------------------GEAR SETS END HERE---------------------------------------------------------
 
-----------------------------------------------------IGNORE BELOW------------------------------
function job_post_precast(spell, action, spellMap, eventArgs)
    if spell.english == 'Aeolian Edge' and state.TreasureMode.value ~= 'None' then
        equip(sets.TreasureHunter)
    elseif spell.english=='Sneak Attack' or spell.english=='Trick Attack' or spell.type == 'WeaponSkill' then
        if state.TreasureMode.value == 'SATA' or state.TreasureMode.value == 'Fulltime' then
            equip(sets.TreasureHunter)
        end
    end
end
 
function job_post_midcast(spell, action, spellMap, eventArgs)
    if state.TreasureMode.value ~= 'None' and spell.action_type == 'Ranged Attack' then
        equip(sets.TreasureHunter)
    end
end
 
function job_aftercast(spell, action, spellMap, eventArgs)
    if spell.type == 'WeaponSkill' and not spell.interrupted then
        state.Buff['Sneak Attack'] = false
        state.Buff['Trick Attack'] = false
        state.Buff['Feint'] = false
    end
end
 
function job_post_aftercast(spell, action, spellMap, eventArgs)
    check_buff('Feint', eventArgs)
end
 
function job_buff_change(buff, gain)
    if state.Buff[buff] ~= nil then
        if not midaction() then
            handle_equipping_gear(player.status)
        end
    end
end
 
function get_custom_wsmode(spell, spellMap, defaut_wsmode)
    local wsmode
 
    if state.Buff['Sneak Attack'] then
        wsmode = 'SA'
    end
    if state.Buff['Trick Attack'] then
        wsmode = (wsmode or '') .. 'TA'
    end
 
    return wsmode
end
 
function customize_idle_set(idleSet)
    if player.hpp < 80 then
        idleSet = set_combine(idleSet, sets.ExtraRegen)
    end
 
    return idleSet
end
 
function customize_melee_set(meleeSet)
    if state.TreasureMode.value == 'Fulltime' then
        meleeSet = set_combine(meleeSet, sets.TreasureHunter)
    end
 
    return meleeSet
end
 
function job_update(cmdParams, eventArgs)
    th_update(cmdParams, eventArgs)
end
 
function display_current_job_state(eventArgs)
    local msg = 'Melee'
     
    if state.CombatForm.has_value then
        msg = msg .. ' (' .. state.CombatForm.value .. ')'
    end
     
    msg = msg .. ': '
     
    msg = msg .. state.OffenseMode.value
    if state.HybridMode.value ~= 'Normal' then
        msg = msg .. '/' .. state.HybridMode.value
    end
    msg = msg .. ', WS: ' .. state.WeaponskillMode.value
     
    if state.DefenseMode.value ~= 'None' then
        msg = msg .. ', ' .. 'Defense: ' .. state.DefenseMode.value .. ' (' .. state[state.DefenseMode.value .. 'DefenseMode'].value .. ')'
    end
     
    if state.Kiting.value == true then
        msg = msg .. ', Kiting'
    end
 
    if state.PCTargetMode.value ~= 'default' then
        msg = msg .. ', Target PC: '..state.PCTargetMode.value
    end
 
    if state.SelectNPCTargets.value == true then
        msg = msg .. ', Target NPCs'
    end
     
    msg = msg .. ', TH: ' .. state.TreasureMode.value
 
    add_to_chat(122, msg)
 
    eventArgs.handled = true
end
 
function check_buff(buff_name, eventArgs)
    if state.Buff[buff_name] then
        equip(sets.buff[buff_name] or {})
        if state.TreasureMode.value == 'SATA' or state.TreasureMode.value == 'Fulltime' then
            equip(sets.TreasureHunter)
        end
        eventArgs.handled = true
    end
end
 
function th_action_check(category, param)
    if category == 2 or
        (category == 3 and param == 30) or
        (category == 6 and info.default_ja_ids:contains(param)) or
        (category == 14 and info.default_u_ja_ids:contains(param))
        then return true
    end
end