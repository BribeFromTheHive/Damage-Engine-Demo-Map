globals
//globals from DamageEngine:
constant boolean LIBRARY_DamageEngine=true
constant boolean DamageEngine___USE_GUI= true

constant boolean DamageEngine___USE_SCALING= DamageEngine___USE_GUI
constant boolean DamageEngine___USE_EXTRA= true
constant boolean DamageEngine___USE_ARMOR_MOD= true
constant boolean DamageEngine___USE_MELEE_RANGE= true
constant boolean DamageEngine___USE_LETHAL= true


constant integer DamageEngine___MAX_RECURSIVE_TOLERANCE= 16

constant integer DamageEngine_TYPE_CODE= 1
constant integer DamageEngine_TYPE_PURE= 2
constant real DamageEngine___DEATH_VAL= 0.405

timer DamageEngine___async= null
boolean DamageEngine___timerStarted= false

    //Values to track the original pre-spirit Link/defensive damage values
integer DamageEngine___lastInstance= 0

boolean DamageEngine___isNotNativeRecursiveDamage= true
boolean DamageEngine___waitingForDamageEventToRun= false

boolean array DamageEngine___attacksImmune
boolean array DamageEngine___damagesImmune

    //Primary triggers used to handle all damage events.
trigger DamageEngine___damagingTrigger= null
trigger DamageEngine___damagedTrigger= null
trigger DamageEngine___recursiveTrigger= null


constant integer DamageEngine_FILTER_ATTACK= 0
constant integer DamageEngine_FILTER_MELEE= 1
constant integer DamageEngine_FILTER_OTHER= 2
constant integer DamageEngine_FILTER_RANGED= 3
constant integer DamageEngine_FILTER_SPELL= 4
constant integer DamageEngine_FILTER_CODE= 5
constant integer DamageEngine_FILTER_MAX= 6
integer DamageEngine___eventFilter= DamageEngine_FILTER_OTHER


boolean DamageEngine_inception= false

boolean DamageEngine___callbacksInProgress= false
integer DamageEngine___recursiveCallbackDepth= 0
group DamageEngine___recursionSources= null
group DamageEngine___recursionTargets= null
boolean DamageEngine___recursiveCallbaksInProgress= false
boolean DamageEngine___nativeEventsCompleted= false
boolean DamageEngine___atLeastOneLethalDamageEventRegistered= false

    // Struct members made private to this library.
//endglobals from DamageEngine
//globals from FloatingTextArc:
constant boolean LIBRARY_FloatingTextArc=true
constant real FloatingTextArc___SIZE_MIN= 0.018
constant real FloatingTextArc___SIZE_BONUS= 0.012
constant real FloatingTextArc___TIME_LIFE= 1.0
constant real FloatingTextArc___TIME_FADE= 0.8
constant real FloatingTextArc___Z_OFFSET= 50
constant real FloatingTextArc___Z_OFFSET_BON= 50
constant real FloatingTextArc___VELOCITY= 2
constant real FloatingTextArc___ANGLE= bj_PI / 2
                                                                    // ANGLE_RND is true
constant boolean FloatingTextArc___ANGLE_RND= true
timer FloatingTextArc___TMR= CreateTimer()
//endglobals from FloatingTextArc
    // User-defined
integer udg_UDexGen= 0
integer array udg_UDexNext
integer array udg_UDexPrev
unit array udg_UDexUnits
integer udg_UDex= 0
integer udg_UDexWasted= 0
integer udg_UDexRecycle= 0
real udg_UnitIndexEvent= 0
real udg_DamageEvent= 0
real udg_DamageEventAmount= 0
unit udg_DamageEventSource= null
unit udg_DamageEventTarget= null
real udg_DamageEventPrevAmt= 0
real udg_DamageModifierEvent= 0
integer array udg_UMovNext
integer array udg_UMovPrev
boolean array udg_UnitMoving
real array udg_UnitMovingX
real array udg_UnitMovingY
real udg_UnitMovingEvent= 0
integer udg_DamageEventType= 0
boolean udg_IsDamageSpell= false
boolean udg_UnitIndexerEnabled= false
integer udg_DamageTypeExplosive= 0
integer udg_DamageTypeCriticalStrike= 0
integer udg_DamageTypeHeal= 0
integer udg_DamageTypeReduced= 0
integer udg_NextDamageType= 0
integer udg_DamageTypeBlocked= 0
boolean udg_DamageEventOverride= false
integer udg_DamageEventLevel= 0
integer udg_DamageEventAOE= 0
group udg_DamageEventAOEGroup= null
real udg_AOEDamageEvent= 0
unit udg_EnhancedDamageTarget= null
real udg_LethalDamageHP= 0
integer udg_DamageEventAttackT= 0
integer udg_DamageEventDamageT= 0
unit udg_AOEDamageSource= null
real udg_LethalDamageEvent= 0
integer udg_ATTACK_TYPE_CHAOS= 0
integer udg_ATTACK_TYPE_SPELLS= 0
integer udg_ATTACK_TYPE_NORMAL= 0
integer udg_ATTACK_TYPE_MAGIC= 0
integer udg_ATTACK_TYPE_PIERCE= 0
integer udg_ATTACK_TYPE_HERO= 0
integer udg_ATTACK_TYPE_SIEGE= 0
integer udg_DAMAGE_TYPE_UNKNOWN= 0
integer udg_DAMAGE_TYPE_NORMAL= 0
integer udg_DAMAGE_TYPE_ENHANCED= 0
integer udg_DAMAGE_TYPE_FIRE= 0
integer udg_DAMAGE_TYPE_COLD= 0
integer udg_DAMAGE_TYPE_LIGHTNING= 0
integer udg_DAMAGE_TYPE_POISON= 0
integer udg_DAMAGE_TYPE_DISEASE= 0
integer udg_DAMAGE_TYPE_DIVINE= 0
integer udg_DAMAGE_TYPE_MAGIC= 0
integer udg_DAMAGE_TYPE_SONIC= 0
integer udg_DAMAGE_TYPE_ACID= 0
integer udg_DAMAGE_TYPE_FORCE= 0
integer udg_DAMAGE_TYPE_DEATH= 0
integer udg_DAMAGE_TYPE_MIND= 0
integer udg_DAMAGE_TYPE_PLANT= 0
integer udg_DAMAGE_TYPE_DEFENSIVE= 0
integer udg_DAMAGE_TYPE_DEMOLITION= 0
integer udg_DAMAGE_TYPE_SLOW_POISON= 0
integer udg_DAMAGE_TYPE_SPIRIT_LINK= 0
integer udg_DAMAGE_TYPE_SHADOW_STRIKE= 0
integer udg_DAMAGE_TYPE_UNIVERSAL= 0
string array udg_DamageTypeDebugStr
string array udg_AttackTypeDebugStr
integer udg_DamageEventWeaponT= 0
string array udg_WeaponTypeDebugStr
integer udg_WEAPON_TYPE_ML_CHOP= 0
integer udg_WEAPON_TYPE_MM_CHOP= 0
integer udg_WEAPON_TYPE_MH_CHOP= 0
integer udg_WEAPON_TYPE_ML_SLICE= 0
integer udg_WEAPON_TYPE_MM_SLICE= 0
integer udg_WEAPON_TYPE_MH_SLICE= 0
integer udg_WEAPON_TYPE_MH_STAB= 0
integer udg_WEAPON_TYPE_MM_BASH= 0
integer udg_WEAPON_TYPE_MH_BASH= 0
integer udg_WEAPON_TYPE_MM_STAB= 0
integer udg_WEAPON_TYPE_WL_SLICE= 0
integer udg_WEAPON_TYPE_WM_SLICE= 0
integer udg_WEAPON_TYPE_WH_SLICE= 0
integer udg_WEAPON_TYPE_WL_BASH= 0
integer udg_WEAPON_TYPE_WM_BASH= 0
integer udg_WEAPON_TYPE_WH_BASH= 0
integer udg_WEAPON_TYPE_WM_STAB= 0
integer udg_WEAPON_TYPE_WL_STAB= 0
integer udg_WEAPON_TYPE_CL_SLICE= 0
integer udg_WEAPON_TYPE_CM_SLICE= 0
integer udg_WEAPON_TYPE_CH_SLICE= 0
integer udg_WEAPON_TYPE_AM_CHOP= 0
integer udg_WEAPON_TYPE_RH_BASH= 0
integer udg_WEAPON_TYPE_NONE= 0
boolean udg_IsDamageMelee= false
boolean udg_IsDamageRanged= false
boolean udg_IsDamageCode= false
integer udg_DamageTypeCode= 0
integer udg_DamageTypePure= 0
integer udg_DamageTypePureExplosive= 0
real udg_DamageScalingWC3= 0
string udg_AOEString
string udg_DmgStr
string array udg_ArmorTypeDebugStr
string array udg_DefenseTypeDebugStr
integer udg_DamageEventArmorT= 0
integer udg_DamageEventDefenseT= 0
integer udg_ARMOR_TYPE_NONE= 0
integer udg_ARMOR_TYPE_FLESH= 0
integer udg_ARMOR_TYPE_METAL= 0
integer udg_ARMOR_TYPE_WOOD= 0
integer udg_ARMOR_TYPE_ETHEREAL= 0
integer udg_ARMOR_TYPE_STONE= 0
integer udg_DEFENSE_TYPE_LIGHT= 0
integer udg_DEFENSE_TYPE_MEDIUM= 0
integer udg_DEFENSE_TYPE_HEAVY= 0
integer udg_DEFENSE_TYPE_FORTIFIED= 0
integer udg_DEFENSE_TYPE_NORMAL= 0
integer udg_DEFENSE_TYPE_HERO= 0
integer udg_DEFENSE_TYPE_DIVINE= 0
integer udg_DEFENSE_TYPE_UNARMORED= 0
real udg_AfterDamageEvent= 0
real udg_ReportLife= 0
real udg_DamageEventArmorPierced= 0
real udg_DamageScalingUser= 0
timer udg_Timestamp= null
attacktype array udg_CONVERTED_ATTACK_TYPE
damagetype array udg_CONVERTED_DAMAGE_TYPE
boolean udg_IsDamageAttack= false
integer udg_NextDamageWeaponT= 0
boolean udg_NextDamageIsAttack= false
boolean udg_NextDamageIsRanged= false
boolean udg_NextDamageIsMelee= false
integer udg_DamageFilterSourceT= 0
integer udg_DamageFilterTargetT= 0
integer udg_DamageFilterSourceB= 0
integer udg_DamageFilterTargetB= 0
integer udg_DamageFilterType= 0
real udg_DamageFilterMinAmount= 0
integer udg_DamageFilterAttackT= 0
integer udg_DamageFilterDamageT= 0
unit udg_DamageFilterSource= null
unit udg_DamageFilterTarget= null
integer udg_UNIT_CLASS_HERO= 0
integer udg_UNIT_CLASS_DEAD= 0
integer udg_UNIT_CLASS_STRUCTURE= 0
integer udg_UNIT_CLASS_FLYING= 0
integer udg_UNIT_CLASS_GROUND= 0
integer udg_UNIT_CLASS_ATTACKS_FLYING= 0
integer udg_UNIT_CLASS_ATTACKS_GROUND= 0
integer udg_UNIT_CLASS_MELEE= 0
integer udg_UNIT_CLASS_RANGED= 0
integer udg_UNIT_CLASS_GIANT= 0
integer udg_UNIT_CLASS_SUMMONED= 0
integer udg_UNIT_CLASS_STUNNED= 0
integer udg_UNIT_CLASS_PLAGUED= 0
integer udg_UNIT_CLASS_SNARED= 0
integer udg_UNIT_CLASS_UNDEAD= 0
integer udg_UNIT_CLASS_MECHANICAL= 0
integer udg_UNIT_CLASS_PEON= 0
integer udg_UNIT_CLASS_SAPPER= 0
integer udg_UNIT_CLASS_TOWNHALL= 0
integer udg_UNIT_CLASS_ANCIENT= 0
integer udg_UNIT_CLASS_TAUREN= 0
integer udg_UNIT_CLASS_POISONED= 0
integer udg_UNIT_CLASS_POLYMORPHED= 0
integer udg_UNIT_CLASS_SLEEPING= 0
integer udg_UNIT_CLASS_RESISTANT= 0
integer udg_UNIT_CLASS_ETHEREAL= 0
integer udg_UNIT_CLASS_MAGIC_IMMUNE= 0
integer udg_DamageFilterSourceC= 0
integer udg_DamageFilterTargetC= 0
integer udg_DamageFilterSourceI= 0
integer udg_DamageFilterTargetI= 0
integer udg_DamageFilterTargetA= 0
integer udg_DamageFilterSourceA= 0
boolean udg_RemoveDamageEvent= false
real udg_DamageFilterFailChance= 0
real udg_DamageFilterRunChance= 0
real udg_SourceDamageEvent= 0
real udg_OnDamageEvent= 0
real udg_ArmorDamageEvent= 0
real udg_ZeroDamageEvent= 0
real udg_PreDamageEvent= 0
real udg_UnitMovementInterval= 0
real udg_DmgSize= 0
real udg_DmgDuration= 0

    // Generated
trigger gg_trg_Damage_Engine_Config= null
trigger gg_trg_Damage_Engine= null
trigger gg_trg_Peasant= null
trigger gg_trg_Keeper= null
trigger gg_trg_Archimond_Healing= null
trigger gg_trg_Elemental_Healing= null
trigger gg_trg_Knight= null
trigger gg_trg_Ranged= null
trigger gg_trg_Summons= null
trigger gg_trg_Prevent_Lethal= null
trigger gg_trg_Trigger_Damage= null
trigger gg_trg_Damage_Tag= null
trigger gg_trg_Opening_Text= null
trigger gg_trg_Report_On_Off= null
trigger gg_trg_Damage_Report= null
trigger gg_trg_On_AOE= null
trigger gg_trg_Is_Unit_Moving= null
trigger gg_trg_Is_Unit_Moving_Config= null
trigger gg_trg_Unit_Indexer= null
trigger gg_trg_Attack_Damage= null
trigger gg_trg_Melee_Damage= null
trigger gg_trg_Ranged_Damage= null
trigger gg_trg_Spell_Damage= null
trigger gg_trg_Code_Damage= null
trigger gg_trg_Recursion= null
trigger gg_trg_On_Death= null
trigger gg_trg_Lotsa_Damage= null
trigger gg_trg_Untitled_Trigger_002= null
trigger gg_trg_Test_Or= null
unit gg_unit_Hamg_0006= null
unit gg_unit_Uwar_0015= null
unit gg_unit_ndmu_0035= null
unit gg_unit_Ekee_0094= null


//JASSHelper struct globals:
constant integer si__DamageTrigger=1
integer s__DamageTrigger_MOD= 1
integer s__DamageTrigger_SHIELD= 4
integer s__DamageTrigger_DAMAGE= 5
integer s__DamageTrigger_ZERO= 6
integer s__DamageTrigger_AFTER= 7
integer s__DamageTrigger_LETHAL= 8
integer s__DamageTrigger_AOE= 9
integer s__DamageTrigger_count= 9
integer s__DamageTrigger_lastRegistered= 0
integer array s__DamageTrigger_trigIndexStack
integer s__DamageTrigger_eventIndex= 0
boolean array s__DamageTrigger_filters
string array s__DamageTrigger_eventStr
real array s__DamageTrigger_weight
boolean array s__DamageTrigger_usingGUI
integer array s__DamageTrigger_next
trigger array s__DamageTrigger_rootTrig
boolean array s__DamageTrigger_DamageEngine___trigFrozen
integer array s__DamageTrigger_DamageEngine___ownRecursiveDepth
boolean array s__DamageTrigger_DamageEngine___manualRecursionRequested
boolean array s__DamageTrigger_configured
unit array s__DamageTrigger_source
unit array s__DamageTrigger_target
integer array s__DamageTrigger_sourceType
integer array s__DamageTrigger_targetType
integer array s__DamageTrigger_sourceBuff
integer array s__DamageTrigger_targetBuff
integer array s__DamageTrigger_sourceItem
integer array s__DamageTrigger_targetItem
integer array s__DamageTrigger_sourceClass
integer array s__DamageTrigger_targetClass
real array s__DamageTrigger_damageMin
real array s__DamageTrigger_failChance
integer array s__DamageTrigger_attackType
integer array s__DamageTrigger_damageType
integer array s__DamageTrigger_userType
integer s__DamageTrigger_prev= 0
trigger array s__DamageTrigger_autoTriggers
boolexpr array s__DamageTrigger_autoFuncs
integer s__DamageTrigger_autoN= 0
constant integer si__Damage=2
unit array s__Damage_sourceUnit
unit array s__Damage_targetUnit
real array s__Damage_damage
real array s__Damage_prevAmt
attacktype array s__Damage_attackType
damagetype array s__Damage_damageType
weapontype array s__Damage_weaponType
integer array s__Damage_userType
boolean array s__Damage_isAttack
boolean array s__Damage_isCode
boolean array s__Damage_isSpell
boolean array s__Damage_isMelee
boolean array s__Damage_isRanged
integer array s__Damage_eFilter
real array s__Damage_armorPierced
integer array s__Damage_armorType
integer array s__Damage_defenseType
integer s__Damage_index= 0
integer s__Damage_damageStack= 0
integer s__Damage_prepped= 0
integer s__Damage_count= 0
integer array s__Damage_stackRef
integer array s__Damage_recursiveTrig
integer array s__Damage_prevArmorT
integer array s__Damage_prevDefenseT
boolean s__Damage_threadCompleted= false
constant integer si__ArcingTextTag=3
texttag array s__ArcingTextTag_tt
real array s__ArcingTextTag_as
real array s__ArcingTextTag_ac
real array s__ArcingTextTag_t
real array s__ArcingTextTag_x
real array s__ArcingTextTag_y
string array s__ArcingTextTag_s
integer array s__ArcingTextTag_next
integer array s__ArcingTextTag_prev
integer array s__ArcingTextTag_rn
integer s__ArcingTextTag_ic= 0
real array s__ArcingTextTag_scale
real array s__ArcingTextTag_timeScale
integer s__ArcingTextTag_lastCreated= 0
trigger array st___prototype2
trigger f__arg_trigger1
string f__arg_string1
limitop f__arg_limitop1
real f__arg_real1

endglobals
native UnitAlive takes unit u returns boolean

function sc___prototype2_execute takes integer i,trigger a1,string a2,limitop a3,real a4 returns nothing
    set f__arg_trigger1=a1
    set f__arg_string1=a2
    set f__arg_limitop1=a3
    set f__arg_real1=a4

    call TriggerExecute(st___prototype2[i])
endfunction
function sc___prototype2_evaluate takes integer i,trigger a1,string a2,limitop a3,real a4 returns nothing
    set f__arg_trigger1=a1
    set f__arg_string1=a2
    set f__arg_limitop1=a3
    set f__arg_real1=a4

    call TriggerEvaluate(st___prototype2[i])

endfunction
function h__TriggerRegisterVariableEvent takes trigger a0, string a1, limitop a2, real a3 returns event
    //hook: DamageEngine_RegisterFromHook
    call sc___prototype2_evaluate(1,a0,a1,a2,a3)
return TriggerRegisterVariableEvent(a0,a1,a2,a3)
endfunction

//library DamageEngine:



//GUI Vars:



    function s__DamageTrigger_checkItem takes unit u,integer id returns boolean
        local integer i
        if IsUnitType(u, UNIT_TYPE_HERO) then
            set i=UnitInventorySize(u)
            loop
                exitwhen i <= 0
                set i=i - 1
                if GetItemTypeId(UnitItemInSlot(u, i)) == id then
                    return true
                endif
            endloop
        endif
        return false
    endfunction


    function s__DamageTrigger_checkConfig takes integer this returns boolean

        //call BJDebugMsg("Checking configuration")

        if s__DamageTrigger_sourceType[this] != 0 and GetUnitTypeId(udg_DamageEventSource) != s__DamageTrigger_sourceType[this] then
        elseif s__DamageTrigger_targetType[this] != 0 and GetUnitTypeId(udg_DamageEventTarget) != s__DamageTrigger_targetType[this] then
        elseif s__DamageTrigger_sourceBuff[this] != 0 and GetUnitAbilityLevel(udg_DamageEventSource, s__DamageTrigger_sourceBuff[this]) == 0 then
        elseif s__DamageTrigger_targetBuff[this] != 0 and GetUnitAbilityLevel(udg_DamageEventTarget, s__DamageTrigger_targetBuff[this]) == 0 then
        elseif s__DamageTrigger_failChance[this] > 0.00 and GetRandomReal(0.00, 1.00) <= s__DamageTrigger_failChance[this] then
        elseif s__DamageTrigger_userType[this] != 0 and udg_DamageEventType != s__DamageTrigger_userType[this] then
        elseif s__DamageTrigger_source[this] != null and s__DamageTrigger_source[this] != udg_DamageEventSource then
        elseif s__DamageTrigger_target[this] != null and s__DamageTrigger_target[this] != udg_DamageEventTarget then
        elseif s__DamageTrigger_attackType[this] >= 0 and s__DamageTrigger_attackType[this] != udg_DamageEventAttackT then
        elseif s__DamageTrigger_damageType[this] >= 0 and s__DamageTrigger_damageType[this] != udg_DamageEventDamageT then
        elseif s__DamageTrigger_sourceItem[this] != 0 and not s__DamageTrigger_checkItem(udg_DamageEventSource , s__DamageTrigger_sourceItem[this]) then
        elseif s__DamageTrigger_targetItem[this] != 0 and not s__DamageTrigger_checkItem(udg_DamageEventTarget , s__DamageTrigger_targetItem[this]) then
        elseif s__DamageTrigger_sourceClass[this] >= 0 and not IsUnitType(udg_DamageEventSource, ConvertUnitType(s__DamageTrigger_sourceClass[this])) then
        elseif s__DamageTrigger_targetClass[this] >= 0 and not IsUnitType(udg_DamageEventTarget, ConvertUnitType(s__DamageTrigger_targetClass[this])) then
        elseif udg_DamageEventAmount >= s__DamageTrigger_damageMin[this] then
            //call BJDebugMsg("Configuration passed")
            return true
        endif
        //call BJDebugMsg("Checking failed")
        return false
    endfunction

    //The below variables are to be treated as constant






    //The below variables are to be treated as private

    //configuration variables:

    // getter:
    function s__DamageTrigger__get_runChance takes integer this returns real
        return 1.00 - s__DamageTrigger_failChance[this]
    endfunction

    // setter:
    function s__DamageTrigger__set_runChance takes integer this,real chance returns nothing
        set s__DamageTrigger_failChance[this]=1.00 - chance
    endfunction

    function s__DamageTrigger_configure takes integer this returns nothing
        set s__DamageTrigger_attackType[this]=udg_DamageFilterAttackT
        set s__DamageTrigger_damageType[this]=udg_DamageFilterDamageT
        set s__DamageTrigger_source[this]=udg_DamageFilterSource
        set s__DamageTrigger_target[this]=udg_DamageFilterTarget
        set s__DamageTrigger_sourceType[this]=udg_DamageFilterSourceT
        set s__DamageTrigger_targetType[this]=udg_DamageFilterTargetT
        set s__DamageTrigger_sourceItem[this]=udg_DamageFilterSourceI
        set s__DamageTrigger_targetItem[this]=udg_DamageFilterTargetI
        set s__DamageTrigger_sourceClass[this]=udg_DamageFilterSourceC
        set s__DamageTrigger_targetClass[this]=udg_DamageFilterTargetC
        set s__DamageTrigger_userType[this]=udg_DamageFilterType
        set s__DamageTrigger_damageMin[this]=udg_DamageFilterMinAmount
        set s__DamageTrigger_failChance[this]=1.00 - ( udg_DamageFilterRunChance - udg_DamageFilterFailChance )

        if udg_DamageFilterSourceA > 0 then
            set s__DamageTrigger_sourceBuff[this]=udg_DamageFilterSourceA
            set udg_DamageFilterSourceA=0
        else
            set s__DamageTrigger_sourceBuff[this]=udg_DamageFilterSourceB
        endif

        if udg_DamageFilterTargetA > 0 then
            set s__DamageTrigger_targetBuff[this]=udg_DamageFilterTargetA
            set udg_DamageFilterTargetA=0
        else
            set s__DamageTrigger_targetBuff[this]=udg_DamageFilterTargetB
        endif

        set udg_DamageFilterSource=null
        set udg_DamageFilterTarget=null

        //These handles can have a valid value of 0, so we need to distinguish them.
        set udg_DamageFilterAttackT=- 1
        set udg_DamageFilterDamageT=- 1
        set udg_DamageFilterSourceC=- 1
        set udg_DamageFilterTargetC=- 1

        set udg_DamageFilterSourceT=0
        set udg_DamageFilterTargetT=0
        set udg_DamageFilterType=0
        set udg_DamageFilterSourceB=0
        set udg_DamageFilterTargetB=0
        set udg_DamageFilterSourceI=0
        set udg_DamageFilterTargetI=0
        
        set udg_DamageFilterMinAmount=0.00
        set udg_DamageFilterFailChance=0.00
        set udg_DamageFilterRunChance=1.00

        set s__DamageTrigger_configured[this]=true
    endfunction

    function s__DamageTrigger_setGUIFromStruct takes boolean full returns nothing
        set udg_DamageEventAmount=s__Damage_damage[s__Damage_index]
        set udg_DamageEventAttackT=GetHandleId(s__Damage_attackType[s__Damage_index])
        set udg_DamageEventDamageT=GetHandleId(s__Damage_damageType[s__Damage_index])
        set udg_DamageEventWeaponT=GetHandleId(s__Damage_weaponType[s__Damage_index])
        set udg_DamageEventType=s__Damage_userType[s__Damage_index]
        

            set udg_DamageEventArmorPierced=s__Damage_armorPierced[s__Damage_index]
            set udg_DamageEventArmorT=s__Damage_armorType[s__Damage_index]
            set udg_DamageEventDefenseT=s__Damage_defenseType[s__Damage_index]

        if full then
            set udg_DamageEventSource=s__Damage_sourceUnit[s__Damage_index]
            set udg_DamageEventTarget=s__Damage_targetUnit[s__Damage_index]
            set udg_DamageEventPrevAmt=s__Damage_prevAmt[s__Damage_index]
            set udg_IsDamageAttack=s__Damage_isAttack[s__Damage_index]
            set udg_IsDamageCode=s__Damage_isCode[s__Damage_index]
            set udg_IsDamageSpell=s__Damage_isSpell[s__Damage_index]
            
//ignored textmacro command: ATTACK_INDEXER_GUI_VARS()


                set udg_IsDamageMelee=s__Damage_isMelee[s__Damage_index]
                set udg_IsDamageRanged=s__Damage_isRanged[s__Damage_index]

        endif
    endfunction

    function s__DamageTrigger_setStructFromGUI takes nothing returns nothing
        set s__Damage_damage[s__Damage_index]=udg_DamageEventAmount
        set s__Damage_attackType[s__Damage_index]=ConvertAttackType(udg_DamageEventAttackT)
        set s__Damage_damageType[s__Damage_index]=ConvertDamageType(udg_DamageEventDamageT)
        set s__Damage_weaponType[s__Damage_index]=ConvertWeaponType(udg_DamageEventWeaponT)
        set s__Damage_userType[s__Damage_index]=udg_DamageEventType
        

            set s__Damage_armorPierced[s__Damage_index]=udg_DamageEventArmorPierced
            set s__Damage_armorType[s__Damage_index]=udg_DamageEventArmorT
            set s__Damage_defenseType[s__Damage_index]=udg_DamageEventDefenseT

    endfunction

    function s__DamageTrigger_getVerboseStr takes string eventName returns string
        if eventName == "Modifier" or eventName == "Mod" then
            return "udg_DamageModifierEvent"
        endif
        return "udg_" + eventName + "DamageEvent"
    endfunction

    function s__DamageTrigger_getStrIndex takes string var,real lbs returns integer
        local integer root= R2I(lbs)
        if ( var == "udg_DamageModifierEvent" and root < 4 ) or var == "udg_PreDamageEvent" then
            set root=s__DamageTrigger_MOD
        elseif var == "udg_DamageModifierEvent" or var == "udg_ArmorDamageEvent" then
            set root=s__DamageTrigger_SHIELD
        elseif ( var == "udg_DamageEvent" and root == 2 or root == 0 ) or var == "udg_ZeroDamageEvent" then
            set root=s__DamageTrigger_ZERO
        elseif var == "udg_DamageEvent" or var == "udg_OnDamageEvent" then
            set root=s__DamageTrigger_DAMAGE
        elseif var == "udg_AfterDamageEvent" then
            set root=s__DamageTrigger_AFTER
        elseif var == "udg_LethalDamageEvent" then
            set root=s__DamageTrigger_LETHAL
        elseif var == "udg_AOEDamageEvent" or var == "udg_SourceDamageEvent" then
            set root=s__DamageTrigger_AOE
        else
            set root=0
//ignored textmacro command: DAMAGE_EVENT_REG_PLUGIN_GDD()
//ignored textmacro command: DAMAGE_EVENT_REG_PLUGIN_PDD()
//ignored textmacro command: DAMAGE_EVENT_REG_PLUGIN_01()
//ignored textmacro command: DAMAGE_EVENT_REG_PLUGIN_02()
//ignored textmacro command: DAMAGE_EVENT_REG_PLUGIN_03()
//ignored textmacro command: DAMAGE_EVENT_REG_PLUGIN_04()
//ignored textmacro command: DAMAGE_EVENT_REG_PLUGIN_05()
        endif
        return root
    endfunction

    function s__DamageTrigger_toggleAllFilters takes integer this,boolean flag returns nothing
        set s__DamageTrigger_filters[this + DamageEngine_FILTER_ATTACK]=flag
        set s__DamageTrigger_filters[this + DamageEngine_FILTER_MELEE]=flag
        set s__DamageTrigger_filters[this + DamageEngine_FILTER_OTHER]=flag
        set s__DamageTrigger_filters[this + DamageEngine_FILTER_RANGED]=flag
        set s__DamageTrigger_filters[this + DamageEngine_FILTER_SPELL]=flag
        set s__DamageTrigger_filters[this + DamageEngine_FILTER_CODE]=flag
    endfunction

    function s__DamageTrigger__set_filter takes integer this,integer opId returns nothing
        set this=this * DamageEngine_FILTER_MAX
        if opId == DamageEngine_FILTER_OTHER then
            call s__DamageTrigger_toggleAllFilters(this,true)
        else
            if opId == DamageEngine_FILTER_ATTACK then
                set s__DamageTrigger_filters[this + DamageEngine_FILTER_ATTACK]=true
                set s__DamageTrigger_filters[this + DamageEngine_FILTER_MELEE]=true
                set s__DamageTrigger_filters[this + DamageEngine_FILTER_RANGED]=true
            else
                set s__DamageTrigger_filters[this + opId]=true
            endif
        endif
    endfunction

    function s__DamageTrigger_registerVerbose takes trigger whichTrig,string var,real lbs,boolean GUI,integer filt returns integer
        local integer index= s__DamageTrigger_getStrIndex(var , lbs)
        local integer i= 0
        local integer id= 0

        if index == 0 then
            return 0
        elseif s__DamageTrigger_rootTrig[s__DamageTrigger_lastRegistered] == whichTrig and s__DamageTrigger_usingGUI[s__DamageTrigger_lastRegistered] then
            //allows GUI to register multiple different types of Damage filters to the same trigger
            set s__DamageTrigger_filters[s__DamageTrigger_lastRegistered * DamageEngine_FILTER_MAX + filt]=true
            return 0
        endif

        set DamageEngine___atLeastOneLethalDamageEventRegistered=DamageEngine___atLeastOneLethalDamageEventRegistered or index == s__DamageTrigger_LETHAL

        if s__DamageTrigger_trigIndexStack[0] == 0 then
            set s__DamageTrigger_count=s__DamageTrigger_count + 1 //List runs from index 10 and up
            set id=s__DamageTrigger_count
        else
            set id=s__DamageTrigger_trigIndexStack[0]
            set s__DamageTrigger_trigIndexStack[0]=s__DamageTrigger_trigIndexStack[id]
        endif
        set s__DamageTrigger_lastRegistered=id
        call s__DamageTrigger__set_filter(id,filt)
        set s__DamageTrigger_rootTrig[id]=whichTrig
        set s__DamageTrigger_usingGUI[id]=GUI
        set s__DamageTrigger_weight[id]=lbs
        set s__DamageTrigger_eventStr[id]=var

        //Next 2 lines added to fix a bug when using manual vJass configuration,
        //discovered and solved by lolreported
        set s__DamageTrigger_attackType[id]=- 1
        set s__DamageTrigger_damageType[id]=- 1

        //they will probably bug out with class types as well, so I should add them, just in case:
        set s__DamageTrigger_sourceClass[id]=- 1
        set s__DamageTrigger_targetClass[id]=- 1

        loop
            set i=s__DamageTrigger_next[index]
            exitwhen i == 0 or lbs < s__DamageTrigger_weight[i]
            set index=i
        endloop
        set s__DamageTrigger_next[index]=id
        set s__DamageTrigger_next[id]=i

        //call BJDebugMsg("Registered " + I2S(id) + " to " + I2S(index) + " and before " + I2S(i))
        return s__DamageTrigger_lastRegistered
    endfunction

    function s__DamageTrigger_registerTrigger takes trigger t,string var,real lbs returns integer
        return s__DamageTrigger_registerVerbose(t , s__DamageTrigger_getVerboseStr(var) , lbs , false , DamageEngine_FILTER_OTHER)
    endfunction

    function s__DamageTrigger_getIndex takes trigger t,string eventName,real lbs returns integer
        local integer index= s__DamageTrigger_getStrIndex(s__DamageTrigger_getVerboseStr(eventName) , lbs)
        loop
            set s__DamageTrigger_prev=index
            set index=s__DamageTrigger_next[index]
            exitwhen index == 0 or s__DamageTrigger_rootTrig[index] == t
        endloop
        return index
    endfunction

    function s__DamageTrigger_unregisterByIndex takes integer this,boolean reset returns boolean
        if this == 0 then
            return false
        endif
        set s__DamageTrigger_next[s__DamageTrigger_prev]=s__DamageTrigger_next[this]

        set s__DamageTrigger_trigIndexStack[this]=s__DamageTrigger_trigIndexStack[0]
        set s__DamageTrigger_trigIndexStack[0]=this

        if reset then
            call s__DamageTrigger_configure(this)
            set s__DamageTrigger_configured[this]=false
            call s__DamageTrigger_toggleAllFilters((this * DamageEngine_FILTER_MAX),false)
        endif
        return true
    endfunction

    function s__DamageTrigger_unregister takes trigger t,string eventName,real lbs,boolean reset returns boolean
        return s__DamageTrigger_unregisterByIndex(s__DamageTrigger_getIndex(t , eventName , lbs),reset)
    endfunction

    function s__DamageTrigger_DamageEngine___run takes integer this returns nothing
        local integer cat= this
        local integer d= s__Damage_index


            local boolean structUnset= false
            local boolean guiUnset= false
            local boolean mod= cat <= s__DamageTrigger_DAMAGE


        if DamageEngine___callbacksInProgress then
            return
        endif
        set DamageEngine___callbacksInProgress=true
        call DisableTrigger(DamageEngine___damagingTrigger)
        call DisableTrigger(DamageEngine___damagedTrigger)
        call EnableTrigger(DamageEngine___recursiveTrigger)
        //call BJDebugMsg("Start of event running")
        loop
            set this=s__DamageTrigger_next[this]
            exitwhen this == 0
            exitwhen cat == s__DamageTrigger_MOD and ( udg_DamageEventOverride or udg_DamageEventType == DamageEngine_TYPE_PURE )
            exitwhen cat == s__DamageTrigger_SHIELD and udg_DamageEventAmount <= 0.00


                exitwhen cat == s__DamageTrigger_LETHAL and udg_LethalDamageHP > DamageEngine___DEATH_VAL


            set s__DamageTrigger_eventIndex=this
            if ( not s__DamageTrigger_DamageEngine___trigFrozen[this] ) and s__DamageTrigger_filters[this * DamageEngine_FILTER_MAX + s__Damage_eFilter[d]] and IsTriggerEnabled(s__DamageTrigger_rootTrig[this]) and ( ( not s__DamageTrigger_configured[this] ) or ( s__DamageTrigger_checkConfig(this) ) ) and ( cat != s__DamageTrigger_AOE or udg_DamageEventAOE > 1 or s__DamageTrigger_eventStr[this] == "udg_SourceDamageEvent" ) then

                    if mod then
                        if s__DamageTrigger_usingGUI[this] then
                            if guiUnset then
                                set guiUnset=false
                                call s__DamageTrigger_setGUIFromStruct(false)
                            endif
//ignored textmacro command: DAMAGE_EVENT_FILTER_PLUGIN_PDD()
                        elseif structUnset then
                            set structUnset=false
                            call s__DamageTrigger_setStructFromGUI()
                        endif
                    endif

//ignored textmacro command: DAMAGE_EVENT_FILTER_PLUGIN_01()
//ignored textmacro command: DAMAGE_EVENT_FILTER_PLUGIN_02()
//ignored textmacro command: DAMAGE_EVENT_FILTER_PLUGIN_03()
//ignored textmacro command: DAMAGE_EVENT_FILTER_PLUGIN_04()
//ignored textmacro command: DAMAGE_EVENT_FILTER_PLUGIN_05()

                //JASS users who do not use actions can modify the below block to just evaluate.
                //It should not make any perceptable difference in terms of performance.
                if TriggerEvaluate(s__DamageTrigger_rootTrig[this]) then
                    call TriggerExecute(s__DamageTrigger_rootTrig[this])
                endif
//ignored textmacro command: DAMAGE_EVENT_MOD_PLUGIN_01()
//ignored textmacro command: DAMAGE_EVENT_MOD_PLUGIN_02()
//ignored textmacro command: DAMAGE_EVENT_MOD_PLUGIN_03()
//ignored textmacro command: DAMAGE_EVENT_MOD_PLUGIN_04()
//ignored textmacro command: DAMAGE_EVENT_MOD_PLUGIN_05()

                    if mod then
                        if s__DamageTrigger_usingGUI[this] then
//ignored textmacro command: DAMAGE_EVENT_MOD_PLUGIN_PDD()
                            if cat != s__DamageTrigger_MOD then
                                set s__Damage_damage[d]=udg_DamageEventAmount
                            else
                                set structUnset=true
                            endif
                        elseif cat != s__DamageTrigger_MOD then
                            set udg_DamageEventAmount=s__Damage_damage[d]
                        else
                            set guiUnset=true
                        endif
                    endif
                    if udg_RemoveDamageEvent then
                        set udg_RemoveDamageEvent=false
                        call s__DamageTrigger_unregisterByIndex(this,true)
                    endif

            endif
        endloop


            if structUnset then
                call s__DamageTrigger_setStructFromGUI()
            endif
            if guiUnset then
                call s__DamageTrigger_setGUIFromStruct(false)
            endif




        //call BJDebugMsg("End of event running")

        call DisableTrigger(DamageEngine___recursiveTrigger)
        call EnableTrigger(DamageEngine___damagingTrigger)
        call EnableTrigger(DamageEngine___damagedTrigger)
        set DamageEngine___callbacksInProgress=false
    endfunction



    function s__DamageTrigger__staticgetindex takes code callback returns trigger
        local integer i= 0
        local boolexpr b= Filter(callback)
        loop
            if i == s__DamageTrigger_autoN then
                set s__DamageTrigger_autoTriggers[i]=CreateTrigger()
                set s__DamageTrigger_autoFuncs[i]=b
                call TriggerAddCondition(s__DamageTrigger_autoTriggers[i], b)
                exitwhen true
            endif
            set i=i + 1
            exitwhen b == s__DamageTrigger_autoFuncs[i]
        endloop
        return s__DamageTrigger_autoTriggers[i]
    endfunction

//ignored textmacro command: DAMAGE_EVENT_USER_STRUCT_PLUGIN_01()
//ignored textmacro command: DAMAGE_EVENT_USER_STRUCT_PLUGIN_02()
//ignored textmacro command: DAMAGE_EVENT_USER_STRUCT_PLUGIN_03()
//ignored textmacro command: DAMAGE_EVENT_USER_STRUCT_PLUGIN_04()
//ignored textmacro command: DAMAGE_EVENT_USER_STRUCT_PLUGIN_05()















    function s__Damage__get_source takes nothing returns unit
        return udg_DamageEventSource
    endfunction

    function s__Damage__get_target takes nothing returns unit
        return udg_DamageEventTarget
    endfunction

    function s__Damage__get_amount takes nothing returns real
        return s__Damage_damage[s__Damage_index]
    endfunction

    function s__Damage__set_amount takes real r returns nothing
        set s__Damage_damage[s__Damage_index]=r
    endfunction


        function s__Damage_setArmor takes integer this,boolean reset returns nothing
            local real pierce
            local integer at
            local integer dt

            if reset then
                set pierce=udg_DamageEventArmorPierced
                set at=s__Damage_prevArmorT[s__Damage_index]
                set dt=s__Damage_prevDefenseT[s__Damage_index]
                set udg_DamageEventArmorPierced=0.00
                set s__Damage_armorPierced[this]=0.00
            else
                set pierce=- udg_DamageEventArmorPierced
                set at=udg_DamageEventArmorT
                set dt=udg_DamageEventDefenseT
            endif

            if not ( pierce == 0.00 ) then //Changed from != to not == due to bug reported by BLOKKADE
                call BlzSetUnitArmor(udg_DamageEventTarget, BlzGetUnitArmor(udg_DamageEventTarget) + pierce)
            endif

            if s__Damage_prevArmorT[s__Damage_index] != udg_DamageEventArmorT then
                call BlzSetUnitIntegerField(udg_DamageEventTarget, UNIT_IF_ARMOR_TYPE, at)
            endif
            if s__Damage_prevDefenseT[s__Damage_index] != udg_DamageEventDefenseT then
                call BlzSetUnitIntegerField(udg_DamageEventTarget, UNIT_IF_DEFENSE_TYPE, dt)
            endif
        endfunction



        function s__Damage_onAOEEnd takes nothing returns nothing
            call s__DamageTrigger_DamageEngine___run(s__DamageTrigger_AOE)
            set udg_DamageEventAOE=1
            set udg_DamageEventLevel=1
            set udg_EnhancedDamageTarget=null
            set udg_AOEDamageSource=null
            call GroupClear(udg_DamageEventAOEGroup)
        endfunction


    function s__Damage_afterDamage takes nothing returns nothing
        if udg_DamageEventDamageT != 0 and not ( udg_DamageEventPrevAmt == 0.00 ) then
            call s__DamageTrigger_DamageEngine___run(s__DamageTrigger_AFTER)
            set udg_DamageEventDamageT=0
            set udg_DamageEventPrevAmt=0.00
        endif
    endfunction

    function s__Damage_runDamagingEvents takes integer this,boolean natural returns boolean


            set s__Damage_armorType[this]=BlzGetUnitIntegerField(s__Damage_targetUnit[this], UNIT_IF_ARMOR_TYPE)
            set s__Damage_defenseType[this]=BlzGetUnitIntegerField(s__Damage_targetUnit[this], UNIT_IF_DEFENSE_TYPE)
            set s__Damage_prevArmorT[this]=s__Damage_armorType[this]
            set s__Damage_prevDefenseT[this]=s__Damage_defenseType[this]
            set s__Damage_armorPierced[this]=0.00


        set s__Damage_index=this
        call s__DamageTrigger_setGUIFromStruct(true)

        call GroupAddUnit(DamageEngine___recursionSources, udg_DamageEventSource)
        call GroupAddUnit(DamageEngine___recursionTargets, udg_DamageEventTarget)

//ignored textmacro command: DAMAGE_EVENT_PRE_VARS_PLUGIN_01()
//ignored textmacro command: DAMAGE_EVENT_PRE_VARS_PLUGIN_02()
//ignored textmacro command: DAMAGE_EVENT_PRE_VARS_PLUGIN_03()
//ignored textmacro command: DAMAGE_EVENT_PRE_VARS_PLUGIN_04()
//ignored textmacro command: DAMAGE_EVENT_PRE_VARS_PLUGIN_05()

        // Using not == instead of !=; the idea is to eliminate floating point bugs when two numbers are very close to 0,
        // because JASS uses a less-strict comparison for checking if a number is equal than when it is unequal.
        if not ( udg_DamageEventAmount == 0.00 ) then
            set udg_DamageEventOverride=udg_DamageEventDamageT == 0

            call s__DamageTrigger_DamageEngine___run(s__DamageTrigger_MOD)





            if natural then
                call BlzSetEventAttackType(s__Damage_attackType[this])
                call BlzSetEventDamageType(s__Damage_damageType[this])
                call BlzSetEventWeaponType(s__Damage_weaponType[this])
                call BlzSetEventDamage(udg_DamageEventAmount)
            endif


                call s__Damage_setArmor(this,false)


            return false
        endif
        return true //return value is based on whether the event is a 0 damage event (true) or not (false).
    endfunction

    function s__Damage_unfreeze takes nothing returns nothing
        local integer i= s__Damage_damageStack

        loop
            exitwhen i == 0
            set i=i - 1
            set s__DamageTrigger_DamageEngine___trigFrozen[s__Damage_recursiveTrig[s__Damage_stackRef[i]]]=false
            set s__DamageTrigger_DamageEngine___ownRecursiveDepth[s__Damage_recursiveTrig[s__Damage_stackRef[i]]]=0
        endloop

        call EnableTrigger(DamageEngine___damagingTrigger)
        call EnableTrigger(DamageEngine___damagedTrigger)

        set DamageEngine___recursiveCallbaksInProgress=false
        set s__Damage_damageStack=0
        set s__Damage_prepped=0
        set DamageEngine___callbacksInProgress=false
        set DamageEngine___recursiveCallbackDepth=0
        call GroupClear(DamageEngine___recursionSources)
        call GroupClear(DamageEngine___recursionTargets)

        //call BJDebugMsg("Cleared up the groups")
    endfunction

    function s__Damage_runAfterDamageEvents takes nothing returns nothing
        local integer i= 0
        local integer exit

        if DamageEngine___nativeEventsCompleted then
            set DamageEngine___nativeEventsCompleted=false
            call s__Damage_afterDamage()
        endif

        if DamageEngine___isNotNativeRecursiveDamage and not DamageEngine___recursiveCallbaksInProgress then
            if s__Damage_damageStack != 0 then
                set DamageEngine___recursiveCallbaksInProgress=true
                loop
                
                    set DamageEngine___recursiveCallbackDepth=DamageEngine___recursiveCallbackDepth + 1
                    set exit=s__Damage_damageStack
                    loop
                        set s__Damage_prepped=s__Damage_stackRef[i]

                        if UnitAlive(s__Damage_targetUnit[s__Damage_prepped]) then

                            // We don't need to trigger `damagingTrigger` itself, so just call its handler directly.
                            call s__Damage_runDamagingEvents(s__Damage_prepped,false)

                            if s__Damage_damage[s__Damage_prepped] > 0.00 then
                                call DisableTrigger(DamageEngine___damagingTrigger) // Disallow `damagingTrigger` because we only want `damageTrigger` to run.
                                call EnableTrigger(DamageEngine___damagedTrigger) // Re-enable `damagedTrigger` in case the user forgot to do so.

                                set DamageEngine___waitingForDamageEventToRun=true

                                call UnitDamageTarget(s__Damage_sourceUnit[s__Damage_prepped], s__Damage_targetUnit[s__Damage_prepped], s__Damage_damage[s__Damage_prepped], s__Damage_isAttack[s__Damage_prepped], s__Damage_isRanged[s__Damage_prepped], s__Damage_attackType[s__Damage_prepped], s__Damage_damageType[s__Damage_prepped], s__Damage_weaponType[s__Damage_prepped])
                            else
                                if udg_DamageEventDamageT != 0 then
                                    //No native events run at all in this case
                                    call s__DamageTrigger_DamageEngine___run(s__DamageTrigger_DAMAGE)
                                endif

                                if s__Damage_damage[s__Damage_prepped] < 0.00 then
                                
                                    call SetWidgetLife(s__Damage_targetUnit[s__Damage_prepped], GetWidgetLife(s__Damage_targetUnit[s__Damage_prepped]) - s__Damage_damage[s__Damage_prepped])
                                endif


                                    call s__Damage_setArmor(s__Damage_prepped,true)

                            endif
                            call s__Damage_afterDamage()
                        endif
                        set i=i + 1
                        exitwhen i == exit
                    endloop
                    exitwhen i == s__Damage_damageStack
                endloop
            endif
            call s__Damage_unfreeze()
        endif
    endfunction

    function s__Damage_failsafeClear takes nothing returns nothing

            call s__Damage_setArmor(s__Damage_index,true)

        set DamageEngine___isNotNativeRecursiveDamage=true
        set DamageEngine___recursiveCallbaksInProgress=false

        set DamageEngine___waitingForDamageEventToRun=false

        if udg_DamageEventDamageT != 0 then
            call s__DamageTrigger_DamageEngine___run(s__DamageTrigger_DAMAGE)
            set DamageEngine___nativeEventsCompleted=true
        endif

        call s__Damage_runAfterDamageEvents()
    endfunction

    function s__Damage__set_enabled takes boolean b returns nothing
        if b then
            if DamageEngine___callbacksInProgress then
                call EnableTrigger(DamageEngine___recursiveTrigger)
            else
                call EnableTrigger(DamageEngine___damagingTrigger)
                call EnableTrigger(DamageEngine___damagedTrigger)
            endif
        else
            if DamageEngine___callbacksInProgress then
                call DisableTrigger(DamageEngine___recursiveTrigger)
            else
                call DisableTrigger(DamageEngine___damagingTrigger)
                call DisableTrigger(DamageEngine___damagedTrigger)
            endif
        endif
    endfunction

    function s__Damage__get_enabled takes nothing returns boolean
        return IsTriggerEnabled(DamageEngine___damagingTrigger)
    endfunction


    function s__Damage_asyncCallbackSafeCallback takes nothing returns nothing
        if DamageEngine___waitingForDamageEventToRun then
        
            call s__Damage_failsafeClear()
        else
            set DamageEngine___isNotNativeRecursiveDamage=true
            set DamageEngine___recursiveCallbaksInProgress=false
            call s__Damage_runAfterDamageEvents()
        endif


            call s__Damage_onAOEEnd()


        set s__Damage_threadCompleted=true
    endfunction

    function s__Damage_asyncCallback takes nothing returns nothing
        set DamageEngine___callbacksInProgress=false
        call s__Damage__set_enabled(true)
    
        call ForForce(bj_FORCE_PLAYER[0], function s__Damage_asyncCallbackSafeCallback)

        if not s__Damage_threadCompleted then
            //call BJDebugMsg("DamageEngine issue: thread crashed!")
            call s__Damage_unfreeze()
        else
            set s__Damage_threadCompleted=false
        endif

        set s__Damage_count=0
        set s__Damage_index=0
        set DamageEngine___timerStarted=false

        //call BJDebugMsg("Timer wrapped up")
    endfunction

    function s__Damage_addRecursive takes integer this returns nothing
        local integer currentIndex

        if not ( s__Damage_damage[this] == 0.00 ) then

            set currentIndex=s__DamageTrigger_eventIndex

            set s__Damage_recursiveTrig[this]=currentIndex

            if not s__Damage_isCode[this] then
            
                set s__Damage_isCode[this]=true
                set s__Damage_userType[this]=DamageEngine_TYPE_CODE
            endif

            set DamageEngine_inception=DamageEngine_inception or s__DamageTrigger_DamageEngine___manualRecursionRequested[currentIndex]

            if DamageEngine___recursiveCallbaksInProgress and IsUnitInGroup(s__Damage_sourceUnit[this], DamageEngine___recursionSources) and IsUnitInGroup(s__Damage_targetUnit[this], DamageEngine___recursionTargets) then
                if not DamageEngine_inception then
                    set s__DamageTrigger_DamageEngine___trigFrozen[currentIndex]=true

                elseif not s__DamageTrigger_DamageEngine___trigFrozen[currentIndex] then
                    
                    set s__DamageTrigger_DamageEngine___manualRecursionRequested[currentIndex]=true

                    if s__DamageTrigger_DamageEngine___ownRecursiveDepth[currentIndex] < DamageEngine___recursiveCallbackDepth then

                        set s__DamageTrigger_DamageEngine___ownRecursiveDepth[currentIndex]=s__DamageTrigger_DamageEngine___ownRecursiveDepth[currentIndex] + 1

                        if s__DamageTrigger_DamageEngine___ownRecursiveDepth[currentIndex] >= DamageEngine___MAX_RECURSIVE_TOLERANCE then
                            set s__DamageTrigger_DamageEngine___trigFrozen[currentIndex]=true
                        endif
                    endif
                endif
            endif

            // push the reference to the top of the damage stack.
            set s__Damage_stackRef[s__Damage_damageStack]=this
            set s__Damage_damageStack=s__Damage_damageStack + 1

            //call BJDebugMsg("damageStack: " + I2S(damageStack) + " ownRecursiveDepth: " + I2S(currentIndex.ownRecursiveDepth) + " recursiveCallbackDepth: " + I2S(recursiveCallbackDepth))
        endif
        set DamageEngine_inception=false
    endfunction

    function s__Damage_clearNexts takes nothing returns nothing
        set udg_NextDamageIsAttack=false
        set udg_NextDamageType=0
        set udg_NextDamageWeaponT=0


            set udg_NextDamageIsMelee=false
            set udg_NextDamageIsRanged=false

    endfunction

    function s__Damage_create takes unit src,unit tgt,real amt,boolean isAttack,attacktype at,damagetype dt,weapontype wt returns integer
        local integer d= s__Damage_count + 1
        set s__Damage_count=d
        
        set s__Damage_sourceUnit[d]=src
        set s__Damage_targetUnit[d]=tgt
        set s__Damage_damage[d]=amt
        set s__Damage_prevAmt[d]=amt

        set s__Damage_damageType[d]=dt
        set s__Damage_attackType[d]=at
        set s__Damage_weaponType[d]=wt

        set s__Damage_isAttack[d]=udg_NextDamageIsAttack or isAttack
        set s__Damage_isSpell[d]=s__Damage_attackType[d] == null and not s__Damage_isAttack[d]
        return d
    endfunction

    function s__Damage_createFromEvent takes nothing returns integer
        local integer d= s__Damage_create(GetEventDamageSource() , GetTriggerUnit() , GetEventDamage() , BlzGetEventIsAttack() , BlzGetEventAttackType() , BlzGetEventDamageType() , BlzGetEventWeaponType())

        set s__Damage_isCode[d]=udg_NextDamageType != 0 or udg_NextDamageIsAttack or udg_NextDamageIsRanged or udg_NextDamageIsMelee or s__Damage_damageType[d] == DAMAGE_TYPE_MIND or udg_NextDamageWeaponT != 0 or ( s__Damage_damageType[d] == DAMAGE_TYPE_UNKNOWN and not ( s__Damage_damage[d] == 0.00 ) )

        if s__Damage_isCode[d] then
            if udg_NextDamageType != 0 then
                set s__Damage_userType[d]=udg_NextDamageType
            else
                set s__Damage_userType[d]=DamageEngine_TYPE_CODE
            endif


                set s__Damage_isMelee[d]=udg_NextDamageIsMelee
                set s__Damage_isRanged[d]=udg_NextDamageIsRanged


            set s__Damage_eFilter[d]=DamageEngine_FILTER_CODE

            if udg_NextDamageWeaponT != 0 then
                set s__Damage_weaponType[d]=ConvertWeaponType(udg_NextDamageWeaponT)
                set udg_NextDamageWeaponT=0
            endif
        else
            set s__Damage_userType[d]=0

            if s__Damage_damageType[d] == DAMAGE_TYPE_NORMAL and s__Damage_isAttack[d] then

                // Added in version 5.A in order to allow an optional external 
                // Attack Indexer system to reset the event weapon type to normal.
//ignored textmacro command: ATTACK_INDEXER_ADJUSTMENTS()


                    set s__Damage_isMelee[d]=IsUnitType(s__Damage_sourceUnit[d], UNIT_TYPE_MELEE_ATTACKER)
                    set s__Damage_isRanged[d]=IsUnitType(s__Damage_sourceUnit[d], UNIT_TYPE_RANGED_ATTACKER)

                    if s__Damage_isMelee[d] and s__Damage_isRanged[d] then
                        // Melee units always play a sound when damaging in WC3, 
                        // so this is an easy check.
                        set s__Damage_isMelee[d]=s__Damage_weaponType[d] != null

                        // In the case where a unit is both ranged and melee,
                        // the ranged attack plays no sound.
                        set s__Damage_isRanged[d]=not s__Damage_isMelee[d]
                    endif

                    if s__Damage_isMelee[d] then
                        set s__Damage_eFilter[d]=DamageEngine_FILTER_MELEE
                    elseif s__Damage_isRanged[d] then
                        set s__Damage_eFilter[d]=DamageEngine_FILTER_RANGED
                    else
                        set s__Damage_eFilter[d]=DamageEngine_FILTER_ATTACK
                    endif



            else
                if s__Damage_isSpell[d] then
                    set s__Damage_eFilter[d]=DamageEngine_FILTER_SPELL
                else
                    set s__Damage_eFilter[d]=DamageEngine_FILTER_OTHER
                endif


                    // Spells are neither melee nor ranged.
                    set s__Damage_isMelee[d]=false
                    set s__Damage_isRanged[d]=false

            endif
        endif
        call s__Damage_clearNexts()
        return d
    endfunction

    function s__Damage_onRecursiveDamageCallback takes nothing returns boolean
        local integer d= s__Damage_createFromEvent()
        call s__Damage_addRecursive(d)
        call BlzSetEventDamage(0.00)
        return false
    endfunction

    function s__Damage_onDamagingCallback takes nothing returns boolean
        local integer d= s__Damage_createFromEvent()

        //call BJDebugMsg("Pre-damage event running for " + GetUnitName(GetTriggerUnit()))

        if DamageEngine___timerStarted then
            if DamageEngine___waitingForDamageEventToRun then
                //WarCraft 3 didn't run the DAMAGED event despite running the DAMAGING event.

                if s__Damage_damageType[d] == DAMAGE_TYPE_SPIRIT_LINK or s__Damage_damageType[d] == DAMAGE_TYPE_DEFENSIVE or s__Damage_damageType[d] == DAMAGE_TYPE_PLANT then
                    set DamageEngine___waitingForDamageEventToRun=false
                    set DamageEngine___lastInstance=s__Damage_index
                    set DamageEngine___isNotNativeRecursiveDamage=false
                else
                    call s__Damage_failsafeClear() //Not an overlapping event - just wrap it up
                endif
            else
                call s__Damage_runAfterDamageEvents() //wrap up any previous damage index
            endif


                if s__Damage_sourceUnit[d] != udg_AOEDamageSource then

                    call s__Damage_onAOEEnd()
                    set udg_AOEDamageSource=s__Damage_sourceUnit[d]
                    set udg_EnhancedDamageTarget=s__Damage_targetUnit[d]

                elseif s__Damage_targetUnit[d] == udg_EnhancedDamageTarget then

                    set udg_DamageEventLevel=udg_DamageEventLevel + 1

                elseif not IsUnitInGroup(s__Damage_targetUnit[d], udg_DamageEventAOEGroup) then
                    set udg_DamageEventAOE=udg_DamageEventAOE + 1
                endif

        else
            call TimerStart(DamageEngine___async, 0.00, false, function s__Damage_asyncCallback)
            set DamageEngine___timerStarted=true


                set udg_AOEDamageSource=s__Damage_sourceUnit[d]
                set udg_EnhancedDamageTarget=s__Damage_targetUnit[d]

        endif


            call GroupAddUnit(udg_DamageEventAOEGroup, s__Damage_targetUnit[d])


        if s__Damage_runDamagingEvents(d,true) then
            call s__DamageTrigger_DamageEngine___run(s__DamageTrigger_ZERO)
            set DamageEngine___isNotNativeRecursiveDamage=true
            call s__Damage_runAfterDamageEvents()
        endif

        set DamageEngine___waitingForDamageEventToRun=DamageEngine___lastInstance == 0 or DamageEngine___attacksImmune[udg_DamageEventAttackT] or DamageEngine___damagesImmune[udg_DamageEventDamageT] or not IsUnitType(udg_DamageEventTarget, UNIT_TYPE_MAGIC_IMMUNE)

        return false
    endfunction

    function s__Damage_onDamagedCallback takes nothing returns boolean
        local real r= GetEventDamage()
        local integer d= s__Damage_index

        //call BJDebugMsg("Second damage event running for " + GetUnitName(GetTriggerUnit()))

        if s__Damage_prepped > 0 then
            set s__Damage_prepped=0
        elseif DamageEngine___callbacksInProgress or s__Damage_prevAmt[d] == 0.00 then
            return false
        elseif DamageEngine___waitingForDamageEventToRun then
            set DamageEngine___waitingForDamageEventToRun=false
        else
            
            call s__Damage_afterDamage()
            set s__Damage_index=DamageEngine___lastInstance
            set DamageEngine___lastInstance=0
            set d=s__Damage_index

        
            set DamageEngine___isNotNativeRecursiveDamage=true

            call s__DamageTrigger_setGUIFromStruct(true)
        endif


            call s__Damage_setArmor(d,true)



            if not ( udg_DamageEventAmount == 0.00 ) and not ( r == 0.00 ) then
                set udg_DamageScalingWC3=r / udg_DamageEventAmount
            elseif udg_DamageEventAmount > 0.00 then
                set udg_DamageScalingWC3=0.00
            else
                set udg_DamageScalingWC3=1.00
                if udg_DamageEventPrevAmt == 0.00 then
                    set udg_DamageScalingUser=0.00
                else
                    set udg_DamageScalingUser=udg_DamageEventAmount / udg_DamageEventPrevAmt
                endif
            endif

        set udg_DamageEventAmount=r
        set s__Damage_damage[d]=r

//ignored textmacro command: DAMAGE_EVENT_VARS_PLUGIN_GDD()
//ignored textmacro command: DAMAGE_EVENT_VARS_PLUGIN_PDD()
//ignored textmacro command: DAMAGE_EVENT_VARS_PLUGIN_01()
//ignored textmacro command: DAMAGE_EVENT_VARS_PLUGIN_02()
//ignored textmacro command: DAMAGE_EVENT_VARS_PLUGIN_03()
//ignored textmacro command: DAMAGE_EVENT_VARS_PLUGIN_04()
//ignored textmacro command: DAMAGE_EVENT_VARS_PLUGIN_05()

        if udg_DamageEventAmount > 0.00 then

            call s__DamageTrigger_DamageEngine___run(s__DamageTrigger_SHIELD)






                if DamageEngine___atLeastOneLethalDamageEventRegistered or udg_DamageEventType < 0 then
                    set udg_LethalDamageHP=GetWidgetLife(udg_DamageEventTarget) - udg_DamageEventAmount

                    if udg_LethalDamageHP <= DamageEngine___DEATH_VAL then
                        if DamageEngine___atLeastOneLethalDamageEventRegistered then
                            call s__DamageTrigger_DamageEngine___run(s__DamageTrigger_LETHAL)

                            set udg_DamageEventAmount=GetWidgetLife(udg_DamageEventTarget) - udg_LethalDamageHP
                            set s__Damage_damage[d]=udg_DamageEventAmount
                        endif
                        if udg_DamageEventType < 0 and udg_LethalDamageHP <= DamageEngine___DEATH_VAL then
                            call SetUnitExploded(udg_DamageEventTarget, true)
                        endif
                    endif
                endif



                if udg_DamageEventPrevAmt == 0.00 or udg_DamageScalingWC3 == 0.00 then
                    set udg_DamageScalingUser=0.00
                else
                    set udg_DamageScalingUser=udg_DamageEventAmount / udg_DamageEventPrevAmt / udg_DamageScalingWC3
                endif

        endif

        if udg_DamageEventDamageT != 0 then
            call s__DamageTrigger_DamageEngine___run(s__DamageTrigger_DAMAGE)
        endif

        call BlzSetEventDamage(udg_DamageEventAmount)

        set DamageEngine___nativeEventsCompleted=true

        if udg_DamageEventAmount == 0.00 then
            call s__Damage_runAfterDamageEvents()
        endif

        // This return statement was needed years ago to avoid potential crashes on Mac.
        // I am not sure if that's still a thing.
        return false
    endfunction

    function s__Damage_apply takes unit src,unit tgt,real amt,boolean a,boolean r,attacktype at,damagetype dt,weapontype wt returns integer
        local integer d

        if udg_NextDamageType == 0 then
           set udg_NextDamageType=DamageEngine_TYPE_CODE
        endif

        if DamageEngine___callbacksInProgress then
            set d=s__Damage_create(src , tgt , amt , a , at , dt , wt)
            set s__Damage_isCode[d]=true
            set s__Damage_eFilter[d]=DamageEngine_FILTER_CODE

            set s__Damage_userType[d]=udg_NextDamageType


                if not s__Damage_isSpell[d] then
                    set s__Damage_isRanged[d]=udg_NextDamageIsRanged or r
                    set s__Damage_isMelee[d]=not s__Damage_isRanged[d]
                endif


            call s__Damage_addRecursive(d)
        else
            call UnitDamageTarget(src, tgt, amt, a, r, at, dt, wt)

            set d=s__Damage_index

            call s__Damage_runAfterDamageEvents()
        endif

        call s__Damage_clearNexts()

        return d
    endfunction

    function s__Damage_applySpell takes unit src,unit tgt,real amt,damagetype dt returns integer
        return s__Damage_apply(src , tgt , amt , false , false , null , dt , null)
    endfunction

    function s__Damage_applyAttack takes unit src,unit tgt,real amt,boolean ranged,attacktype at,weapontype wt returns integer
        return s__Damage_apply(src , tgt , amt , true , ranged , at , DAMAGE_TYPE_NORMAL , wt)
    endfunction


    function s__Damage_onInit takes nothing returns nothing
        set DamageEngine___async=CreateTimer()

        set DamageEngine___recursionSources=CreateGroup()
        set DamageEngine___recursionTargets=CreateGroup()

        set DamageEngine___damagingTrigger=CreateTrigger()
        set DamageEngine___damagedTrigger=CreateTrigger()
        set DamageEngine___recursiveTrigger=CreateTrigger() //Moved from globals block as per request of user Ricola3D

        call TriggerRegisterAnyUnitEventBJ(DamageEngine___damagingTrigger, EVENT_PLAYER_UNIT_DAMAGING)
        call TriggerAddCondition(DamageEngine___damagingTrigger, Filter(function s__Damage_onDamagingCallback))

        call TriggerRegisterAnyUnitEventBJ(DamageEngine___damagedTrigger, EVENT_PLAYER_UNIT_DAMAGED)
        call TriggerAddCondition(DamageEngine___damagedTrigger, Filter(function s__Damage_onDamagedCallback))

        //For recursion
        call TriggerRegisterAnyUnitEventBJ(DamageEngine___recursiveTrigger, EVENT_PLAYER_UNIT_DAMAGING)
        call TriggerAddCondition(DamageEngine___recursiveTrigger, Filter(function s__Damage_onRecursiveDamageCallback))
        call DisableTrigger(DamageEngine___recursiveTrigger) //starts disabled. Will be enabled during recursive event handling.

            
        set DamageEngine___attacksImmune[0]=false //ATTACK_TYPE_NORMAL
        set DamageEngine___attacksImmune[1]=true //ATTACK_TYPE_MELEE
        set DamageEngine___attacksImmune[2]=true //ATTACK_TYPE_PIERCE
        set DamageEngine___attacksImmune[3]=true //ATTACK_TYPE_SIEGE
        set DamageEngine___attacksImmune[4]=false //ATTACK_TYPE_MAGIC
        set DamageEngine___attacksImmune[5]=true //ATTACK_TYPE_CHAOS
        set DamageEngine___attacksImmune[6]=true //ATTACK_TYPE_HERO

        set DamageEngine___damagesImmune[0]=true //DAMAGE_TYPE_UNKNOWN
        set DamageEngine___damagesImmune[4]=true //DAMAGE_TYPE_NORMAL
        set DamageEngine___damagesImmune[5]=true //DAMAGE_TYPE_ENHANCED
        set DamageEngine___damagesImmune[8]=false //DAMAGE_TYPE_FIRE
        set DamageEngine___damagesImmune[9]=false //DAMAGE_TYPE_COLD
        set DamageEngine___damagesImmune[10]=false //DAMAGE_TYPE_LIGHTNING
        set DamageEngine___damagesImmune[11]=true //DAMAGE_TYPE_POISON
        set DamageEngine___damagesImmune[12]=true //DAMAGE_TYPE_DISEASE
        set DamageEngine___damagesImmune[13]=false //DAMAGE_TYPE_DIVINE
        set DamageEngine___damagesImmune[14]=false //DAMAGE_TYPE_MAGIC
        set DamageEngine___damagesImmune[15]=false //DAMAGE_TYPE_SONIC
        set DamageEngine___damagesImmune[16]=true //DAMAGE_TYPE_ACID
        set DamageEngine___damagesImmune[17]=false //DAMAGE_TYPE_FORCE
        set DamageEngine___damagesImmune[18]=false //DAMAGE_TYPE_DEATH
        set DamageEngine___damagesImmune[19]=false //DAMAGE_TYPE_MIND
        set DamageEngine___damagesImmune[20]=false //DAMAGE_TYPE_PLANT
        set DamageEngine___damagesImmune[21]=false //DAMAGE_TYPE_DEFENSIVE
        set DamageEngine___damagesImmune[22]=true //DAMAGE_TYPE_DEMOLITION
        set DamageEngine___damagesImmune[23]=true //DAMAGE_TYPE_SLOW_POISON
        set DamageEngine___damagesImmune[24]=false //DAMAGE_TYPE_SPIRIT_LINK
        set DamageEngine___damagesImmune[25]=false //DAMAGE_TYPE_SHADOW_STRIKE
        set DamageEngine___damagesImmune[26]=true //DAMAGE_TYPE_UNIVERSAL
    endfunction

//ignored textmacro command: DAMAGE_EVENT_STRUCT_PLUGIN_DMGPKG()
//ignored textmacro command: DAMAGE_EVENT_STRUCT_PLUGIN_01()
//ignored textmacro command: DAMAGE_EVENT_STRUCT_PLUGIN_02()
//ignored textmacro command: DAMAGE_EVENT_STRUCT_PLUGIN_03()
//ignored textmacro command: DAMAGE_EVENT_STRUCT_PLUGIN_04()
//ignored textmacro command: DAMAGE_EVENT_STRUCT_PLUGIN_05()


// Called from the GUI configuration trigger once the assignments are in place.
function DamageEngine_DebugStr takes nothing returns nothing
    local integer i= 0
    loop
        set udg_CONVERTED_ATTACK_TYPE[i]=ConvertAttackType(i)
        exitwhen i == 6
        set i=i + 1
    endloop

    set i=0
    loop
        set udg_CONVERTED_DAMAGE_TYPE[i]=ConvertDamageType(i)
        exitwhen i == 26
        set i=i + 1
    endloop

    set udg_AttackTypeDebugStr[0]="SPELLS" //ATTACK_TYPE_NORMAL in JASS
    set udg_AttackTypeDebugStr[1]="NORMAL" //ATTACK_TYPE_MELEE in JASS
    set udg_AttackTypeDebugStr[2]="PIERCE"
    set udg_AttackTypeDebugStr[3]="SIEGE"
    set udg_AttackTypeDebugStr[4]="MAGIC"
    set udg_AttackTypeDebugStr[5]="CHAOS"
    set udg_AttackTypeDebugStr[6]="HERO"
    set udg_DamageTypeDebugStr[0]="UNKNOWN"
    set udg_DamageTypeDebugStr[4]="NORMAL"
    set udg_DamageTypeDebugStr[5]="ENHANCED"
    set udg_DamageTypeDebugStr[8]="FIRE"
    set udg_DamageTypeDebugStr[9]="COLD"
    set udg_DamageTypeDebugStr[10]="LIGHTNING"
    set udg_DamageTypeDebugStr[11]="POISON"
    set udg_DamageTypeDebugStr[12]="DISEASE"
    set udg_DamageTypeDebugStr[13]="DIVINE"
    set udg_DamageTypeDebugStr[14]="MAGIC"
    set udg_DamageTypeDebugStr[15]="SONIC"
    set udg_DamageTypeDebugStr[16]="ACID"
    set udg_DamageTypeDebugStr[17]="FORCE"
    set udg_DamageTypeDebugStr[18]="DEATH"
    set udg_DamageTypeDebugStr[19]="MIND"
    set udg_DamageTypeDebugStr[20]="PLANT"
    set udg_DamageTypeDebugStr[21]="DEFENSIVE"
    set udg_DamageTypeDebugStr[22]="DEMOLITION"
    set udg_DamageTypeDebugStr[23]="SLOW_POISON"
    set udg_DamageTypeDebugStr[24]="SPIRIT_LINK"
    set udg_DamageTypeDebugStr[25]="SHADOW_STRIKE"
    set udg_DamageTypeDebugStr[26]="UNIVERSAL"
    set udg_WeaponTypeDebugStr[0]="NONE" //WEAPON_TYPE_WHOKNOWS in JASS
    set udg_WeaponTypeDebugStr[1]="METAL_LIGHT_CHOP"
    set udg_WeaponTypeDebugStr[2]="METAL_MEDIUM_CHOP"
    set udg_WeaponTypeDebugStr[3]="METAL_HEAVY_CHOP"
    set udg_WeaponTypeDebugStr[4]="METAL_LIGHT_SLICE"
    set udg_WeaponTypeDebugStr[5]="METAL_MEDIUM_SLICE"
    set udg_WeaponTypeDebugStr[6]="METAL_HEAVY_SLICE"
    set udg_WeaponTypeDebugStr[7]="METAL_MEDIUM_BASH"
    set udg_WeaponTypeDebugStr[8]="METAL_HEAVY_BASH"
    set udg_WeaponTypeDebugStr[9]="METAL_MEDIUM_STAB"
    set udg_WeaponTypeDebugStr[10]="METAL_HEAVY_STAB"
    set udg_WeaponTypeDebugStr[11]="WOOD_LIGHT_SLICE"
    set udg_WeaponTypeDebugStr[12]="WOOD_MEDIUM_SLICE"
    set udg_WeaponTypeDebugStr[13]="WOOD_HEAVY_SLICE"
    set udg_WeaponTypeDebugStr[14]="WOOD_LIGHT_BASH"
    set udg_WeaponTypeDebugStr[15]="WOOD_MEDIUM_BASH"
    set udg_WeaponTypeDebugStr[16]="WOOD_HEAVY_BASH"
    set udg_WeaponTypeDebugStr[17]="WOOD_LIGHT_STAB"
    set udg_WeaponTypeDebugStr[18]="WOOD_MEDIUM_STAB"
    set udg_WeaponTypeDebugStr[19]="CLAW_LIGHT_SLICE"
    set udg_WeaponTypeDebugStr[20]="CLAW_MEDIUM_SLICE"
    set udg_WeaponTypeDebugStr[21]="CLAW_HEAVY_SLICE"
    set udg_WeaponTypeDebugStr[22]="AXE_MEDIUM_CHOP"
    set udg_WeaponTypeDebugStr[23]="ROCK_HEAVY_BASH"
    set udg_DefenseTypeDebugStr[0]="LIGHT"
    set udg_DefenseTypeDebugStr[1]="MEDIUM"
    set udg_DefenseTypeDebugStr[2]="HEAVY"
    set udg_DefenseTypeDebugStr[3]="FORTIFIED"
    set udg_DefenseTypeDebugStr[4]="NORMAL" //Typically deals flat damage to all armor types
    set udg_DefenseTypeDebugStr[5]="HERO"
    set udg_DefenseTypeDebugStr[6]="DIVINE"
    set udg_DefenseTypeDebugStr[7]="UNARMORED"
    set udg_ArmorTypeDebugStr[0]="NONE" //ARMOR_TYPE_WHOKNOWS in JASS, added in 1.31
    set udg_ArmorTypeDebugStr[1]="FLESH"
    set udg_ArmorTypeDebugStr[2]="METAL"
    set udg_ArmorTypeDebugStr[3]="WOOD"
    set udg_ArmorTypeDebugStr[4]="ETHEREAL"
    set udg_ArmorTypeDebugStr[5]="STONE"
    
    // Added 25 July 2017 to allow detection of things like Bash or Pulverize or AOE spread
    set udg_DamageEventAOE=1
    set udg_DamageEventLevel=1

    set udg_ATTACK_TYPE_SPELLS=0
    set udg_ATTACK_TYPE_NORMAL=1
    set udg_ATTACK_TYPE_PIERCE=2
    set udg_ATTACK_TYPE_SIEGE=3
    set udg_ATTACK_TYPE_MAGIC=4
    set udg_ATTACK_TYPE_CHAOS=5
    set udg_ATTACK_TYPE_HERO=6
    // -
    set udg_DAMAGE_TYPE_UNKNOWN=0
    set udg_DAMAGE_TYPE_NORMAL=4
    set udg_DAMAGE_TYPE_ENHANCED=5
    set udg_DAMAGE_TYPE_FIRE=8
    set udg_DAMAGE_TYPE_COLD=9
    set udg_DAMAGE_TYPE_LIGHTNING=10
    set udg_DAMAGE_TYPE_POISON=11
    set udg_DAMAGE_TYPE_DISEASE=12
    set udg_DAMAGE_TYPE_DIVINE=13
    set udg_DAMAGE_TYPE_MAGIC=14
    set udg_DAMAGE_TYPE_SONIC=15
    set udg_DAMAGE_TYPE_ACID=16
    set udg_DAMAGE_TYPE_FORCE=17
    set udg_DAMAGE_TYPE_DEATH=18
    set udg_DAMAGE_TYPE_MIND=19
    set udg_DAMAGE_TYPE_PLANT=20
    set udg_DAMAGE_TYPE_DEFENSIVE=21
    set udg_DAMAGE_TYPE_DEMOLITION=22
    set udg_DAMAGE_TYPE_SLOW_POISON=23
    set udg_DAMAGE_TYPE_SPIRIT_LINK=24
    set udg_DAMAGE_TYPE_SHADOW_STRIKE=25
    set udg_DAMAGE_TYPE_UNIVERSAL=26
    
    
    
    set udg_WEAPON_TYPE_NONE=0

    // Metal Light/Medium/Heavy
    set udg_WEAPON_TYPE_ML_CHOP=1
    set udg_WEAPON_TYPE_MM_CHOP=2
    set udg_WEAPON_TYPE_MH_CHOP=3
    set udg_WEAPON_TYPE_ML_SLICE=4
    set udg_WEAPON_TYPE_MM_SLICE=5
    set udg_WEAPON_TYPE_MH_SLICE=6
    set udg_WEAPON_TYPE_MM_BASH=7
    set udg_WEAPON_TYPE_MH_BASH=8
    set udg_WEAPON_TYPE_MM_STAB=9
    set udg_WEAPON_TYPE_MH_STAB=10

    // Wood Light/Medium/Heavy
    set udg_WEAPON_TYPE_WL_SLICE=11
    set udg_WEAPON_TYPE_WM_SLICE=12
    set udg_WEAPON_TYPE_WH_SLICE=13
    set udg_WEAPON_TYPE_WL_BASH=14
    set udg_WEAPON_TYPE_WM_BASH=15
    set udg_WEAPON_TYPE_WH_BASH=16
    set udg_WEAPON_TYPE_WL_STAB=17
    set udg_WEAPON_TYPE_WM_STAB=18

    // Claw Light/Medium/Heavy
    set udg_WEAPON_TYPE_CL_SLICE=19
    set udg_WEAPON_TYPE_CM_SLICE=20
    set udg_WEAPON_TYPE_CH_SLICE=21

    // Axe Medium
    set udg_WEAPON_TYPE_AM_CHOP=22

    // Rock Heavy
    set udg_WEAPON_TYPE_RH_BASH=23


    set udg_ARMOR_TYPE_NONE=0
    set udg_ARMOR_TYPE_FLESH=1
    set udg_ARMOR_TYPE_METAL=2
    set udg_ARMOR_TYPE_WOOD=3
    set udg_ARMOR_TYPE_ETHEREAL=4
    set udg_ARMOR_TYPE_STONE=5

    set udg_DEFENSE_TYPE_LIGHT=0
    set udg_DEFENSE_TYPE_MEDIUM=1
    set udg_DEFENSE_TYPE_HEAVY=2
    set udg_DEFENSE_TYPE_FORTIFIED=3
    set udg_DEFENSE_TYPE_NORMAL=4
    set udg_DEFENSE_TYPE_HERO=5
    set udg_DEFENSE_TYPE_DIVINE=6
    set udg_DEFENSE_TYPE_UNARMORED=7



    set udg_UNIT_CLASS_HERO=0
    set udg_UNIT_CLASS_DEAD=1
    set udg_UNIT_CLASS_STRUCTURE=2

    set udg_UNIT_CLASS_FLYING=3
    set udg_UNIT_CLASS_GROUND=4

    set udg_UNIT_CLASS_ATTACKS_FLYING=5
    set udg_UNIT_CLASS_ATTACKS_GROUND=6

    set udg_UNIT_CLASS_MELEE=7
    set udg_UNIT_CLASS_RANGED=8

    set udg_UNIT_CLASS_GIANT=9
    set udg_UNIT_CLASS_SUMMONED=10
    set udg_UNIT_CLASS_STUNNED=11
    set udg_UNIT_CLASS_PLAGUED=12
    set udg_UNIT_CLASS_SNARED=13

    set udg_UNIT_CLASS_UNDEAD=14
    set udg_UNIT_CLASS_MECHANICAL=15
    set udg_UNIT_CLASS_PEON=16
    set udg_UNIT_CLASS_SAPPER=17
    set udg_UNIT_CLASS_TOWNHALL=18
    set udg_UNIT_CLASS_ANCIENT=19

    set udg_UNIT_CLASS_TAUREN=20
    set udg_UNIT_CLASS_POISONED=21
    set udg_UNIT_CLASS_POLYMORPHED=22
    set udg_UNIT_CLASS_SLEEPING=23
    set udg_UNIT_CLASS_RESISTANT=24
    set udg_UNIT_CLASS_ETHEREAL=25
    set udg_UNIT_CLASS_MAGIC_IMMUNE=26

    set udg_DamageFilterAttackT=- 1
    set udg_DamageFilterDamageT=- 1
    set udg_DamageFilterSourceC=- 1
    set udg_DamageFilterTargetC=- 1
    set udg_DamageFilterRunChance=1.00
endfunction

function DamageEngine_RegisterFromHook takes trigger whichTrig,string var,limitop op,real value returns nothing
    call s__DamageTrigger_registerVerbose(whichTrig , var , value , true , GetHandleId(op))
endfunction
//processed hook: hook TriggerRegisterVariableEvent DamageEngine_RegisterFromHook

function TriggerRegisterDamageEngineEx takes trigger whichTrig,string eventName,real value,integer opId returns integer
    return s__DamageTrigger_registerVerbose(whichTrig , s__DamageTrigger_getVerboseStr(eventName) , value , false , opId)
endfunction

function TriggerRegisterDamageEngine takes trigger whichTrig,string eventName,real value returns integer
    return s__DamageTrigger_registerTrigger(whichTrig , eventName , value)
endfunction

function RegisterDamageEngineEx takes code callback,string eventName,real value,integer opId returns integer
    return TriggerRegisterDamageEngineEx(s__DamageTrigger__staticgetindex(callback) , eventName , value , opId)
endfunction

//Similar to TriggerRegisterDamageEvent, but takes code instead of trigger as the first argument.
function RegisterDamageEngine takes code callback,string eventName,real value returns integer
    return RegisterDamageEngineEx(callback , eventName , value , DamageEngine_FILTER_OTHER)
endfunction






//library DamageEngine ends
//library FloatingTextArc:
    
        
        
        
        function s__ArcingTextTag_update takes nothing returns nothing
            local integer this=s__ArcingTextTag_next[0]
            local real p
            loop
                set p=Sin(bj_PI * ( s__ArcingTextTag_t[this] / s__ArcingTextTag_timeScale[this] ))
                set s__ArcingTextTag_t[this]=s__ArcingTextTag_t[this] - 0.03125
                set s__ArcingTextTag_x[this]=s__ArcingTextTag_x[this] + s__ArcingTextTag_ac[this]
                set s__ArcingTextTag_y[this]=s__ArcingTextTag_y[this] + s__ArcingTextTag_as[this]
                call SetTextTagPos(s__ArcingTextTag_tt[this], s__ArcingTextTag_x[this], s__ArcingTextTag_y[this], FloatingTextArc___Z_OFFSET + FloatingTextArc___Z_OFFSET_BON * p)
                call SetTextTagText(s__ArcingTextTag_tt[this], s__ArcingTextTag_s[this], ( FloatingTextArc___SIZE_MIN + FloatingTextArc___SIZE_BONUS * p ) * s__ArcingTextTag_scale[this])
                if s__ArcingTextTag_t[this] <= 0 then
                    set s__ArcingTextTag_tt[this]=null
                    set s__ArcingTextTag_next[s__ArcingTextTag_prev[this]]=s__ArcingTextTag_next[this]
                    set s__ArcingTextTag_prev[s__ArcingTextTag_next[this]]=s__ArcingTextTag_prev[this]
                    set s__ArcingTextTag_rn[this]=s__ArcingTextTag_rn[0]
                    set s__ArcingTextTag_rn[0]=this
                    if s__ArcingTextTag_next[0] == 0 then
                        call PauseTimer(FloatingTextArc___TMR)
                    endif
                endif
                set this=s__ArcingTextTag_next[this]
                exitwhen this == 0
            endloop
        endfunction
        
        function s__ArcingTextTag_createEx takes string s,unit u,real duration,real size,player p returns integer
            local integer this= s__ArcingTextTag_rn[0]

                local real a= GetRandomReal(0, 2 * bj_PI)



            if this == 0 then
                set s__ArcingTextTag_ic=s__ArcingTextTag_ic + 1
                set this=s__ArcingTextTag_ic
            else
                set s__ArcingTextTag_rn[0]=s__ArcingTextTag_rn[this]
            endif
            
            set s__ArcingTextTag_scale[this]=size
            set s__ArcingTextTag_timeScale[this]=RMaxBJ(duration, 0.001)
            
            set s__ArcingTextTag_next[this]=0
            set s__ArcingTextTag_prev[this]=s__ArcingTextTag_prev[0]
            set s__ArcingTextTag_next[s__ArcingTextTag_prev[0]]=this
            set s__ArcingTextTag_prev[0]=this
            
            set s__ArcingTextTag_s[this]=s
            set s__ArcingTextTag_x[this]=GetUnitX(u)
            set s__ArcingTextTag_y[this]=GetUnitY(u)
            set s__ArcingTextTag_t[this]=FloatingTextArc___TIME_LIFE
            set s__ArcingTextTag_as[this]=Sin(a) * FloatingTextArc___VELOCITY
            set s__ArcingTextTag_ac[this]=Cos(a) * FloatingTextArc___VELOCITY
            
            if IsUnitVisible(u, p) then
                set s__ArcingTextTag_tt[this]=CreateTextTag()
                call SetTextTagPermanent(s__ArcingTextTag_tt[this], false)
                call SetTextTagLifespan(s__ArcingTextTag_tt[this], FloatingTextArc___TIME_LIFE * duration)
                call SetTextTagFadepoint(s__ArcingTextTag_tt[this], FloatingTextArc___TIME_FADE * duration)
                call SetTextTagText(s__ArcingTextTag_tt[this], s, FloatingTextArc___SIZE_MIN * size)
                call SetTextTagPos(s__ArcingTextTag_tt[this], s__ArcingTextTag_x[this], s__ArcingTextTag_y[this], FloatingTextArc___Z_OFFSET)
            else
                set s__ArcingTextTag_tt[this]=null
            endif
            
            if s__ArcingTextTag_prev[this] == 0 then
                call TimerStart(FloatingTextArc___TMR, 0.03125, true, function s__ArcingTextTag_update)
            endif
            
            set s__ArcingTextTag_lastCreated=this
            
            return this
        endfunction
        function s__ArcingTextTag_create takes string s,unit u returns integer
            return s__ArcingTextTag_createEx(s , u , FloatingTextArc___TIME_LIFE , 1.00 , GetLocalPlayer())
        endfunction

//library FloatingTextArc ends
//===========================================================================
// 
// Damage Engine Demo Map
// 
//   Warcraft III map script
//   Generated by the Warcraft III World Editor
//   Map Author: Bribe
// 
//===========================================================================

//***************************************************************************
//*
//*  Global Variables
//*
//***************************************************************************


function InitGlobals takes nothing returns nothing
    local integer i= 0
    set udg_UDexGen=0
    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_UDexNext[i]=0
        set i=i + 1
    endloop

    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_UDexPrev[i]=0
        set i=i + 1
    endloop

    set udg_UDex=0
    set udg_UDexWasted=0
    set udg_UDexRecycle=0
    set udg_UnitIndexEvent=0
    set udg_DamageEvent=0
    set udg_DamageEventAmount=0
    set udg_DamageEventPrevAmt=0
    set udg_DamageModifierEvent=0
    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_UMovNext[i]=0
        set i=i + 1
    endloop

    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_UMovPrev[i]=0
        set i=i + 1
    endloop

    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_UnitMoving[i]=false
        set i=i + 1
    endloop

    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_UnitMovingX[i]=0
        set i=i + 1
    endloop

    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_UnitMovingY[i]=0
        set i=i + 1
    endloop

    set udg_UnitMovingEvent=0
    set udg_DamageEventType=0
    set udg_IsDamageSpell=false
    set udg_UnitIndexerEnabled=false
    set udg_DamageTypeExplosive=0
    set udg_DamageTypeCriticalStrike=0
    set udg_DamageTypeHeal=0
    set udg_DamageTypeReduced=0
    set udg_NextDamageType=0
    set udg_DamageTypeBlocked=0
    set udg_DamageEventOverride=false
    set udg_DamageEventLevel=0
    set udg_DamageEventAOE=0
    set udg_DamageEventAOEGroup=CreateGroup()
    set udg_AOEDamageEvent=0
    set udg_LethalDamageHP=0
    set udg_DamageEventAttackT=0
    set udg_DamageEventDamageT=0
    set udg_LethalDamageEvent=0
    set udg_ATTACK_TYPE_CHAOS=0
    set udg_ATTACK_TYPE_SPELLS=0
    set udg_ATTACK_TYPE_NORMAL=0
    set udg_ATTACK_TYPE_MAGIC=0
    set udg_ATTACK_TYPE_PIERCE=0
    set udg_ATTACK_TYPE_HERO=0
    set udg_ATTACK_TYPE_SIEGE=0
    set udg_DAMAGE_TYPE_UNKNOWN=0
    set udg_DAMAGE_TYPE_NORMAL=0
    set udg_DAMAGE_TYPE_ENHANCED=0
    set udg_DAMAGE_TYPE_FIRE=0
    set udg_DAMAGE_TYPE_COLD=0
    set udg_DAMAGE_TYPE_LIGHTNING=0
    set udg_DAMAGE_TYPE_POISON=0
    set udg_DAMAGE_TYPE_DISEASE=0
    set udg_DAMAGE_TYPE_DIVINE=0
    set udg_DAMAGE_TYPE_MAGIC=0
    set udg_DAMAGE_TYPE_SONIC=0
    set udg_DAMAGE_TYPE_ACID=0
    set udg_DAMAGE_TYPE_FORCE=0
    set udg_DAMAGE_TYPE_DEATH=0
    set udg_DAMAGE_TYPE_MIND=0
    set udg_DAMAGE_TYPE_PLANT=0
    set udg_DAMAGE_TYPE_DEFENSIVE=0
    set udg_DAMAGE_TYPE_DEMOLITION=0
    set udg_DAMAGE_TYPE_SLOW_POISON=0
    set udg_DAMAGE_TYPE_SPIRIT_LINK=0
    set udg_DAMAGE_TYPE_SHADOW_STRIKE=0
    set udg_DAMAGE_TYPE_UNIVERSAL=0
    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_DamageTypeDebugStr[i]=""
        set i=i + 1
    endloop

    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_AttackTypeDebugStr[i]=""
        set i=i + 1
    endloop

    set udg_DamageEventWeaponT=0
    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_WeaponTypeDebugStr[i]=""
        set i=i + 1
    endloop

    set udg_WEAPON_TYPE_ML_CHOP=0
    set udg_WEAPON_TYPE_MM_CHOP=0
    set udg_WEAPON_TYPE_MH_CHOP=0
    set udg_WEAPON_TYPE_ML_SLICE=0
    set udg_WEAPON_TYPE_MM_SLICE=0
    set udg_WEAPON_TYPE_MH_SLICE=0
    set udg_WEAPON_TYPE_MH_STAB=0
    set udg_WEAPON_TYPE_MM_BASH=0
    set udg_WEAPON_TYPE_MH_BASH=0
    set udg_WEAPON_TYPE_MM_STAB=0
    set udg_WEAPON_TYPE_WL_SLICE=0
    set udg_WEAPON_TYPE_WM_SLICE=0
    set udg_WEAPON_TYPE_WH_SLICE=0
    set udg_WEAPON_TYPE_WL_BASH=0
    set udg_WEAPON_TYPE_WM_BASH=0
    set udg_WEAPON_TYPE_WH_BASH=0
    set udg_WEAPON_TYPE_WM_STAB=0
    set udg_WEAPON_TYPE_WL_STAB=0
    set udg_WEAPON_TYPE_CL_SLICE=0
    set udg_WEAPON_TYPE_CM_SLICE=0
    set udg_WEAPON_TYPE_CH_SLICE=0
    set udg_WEAPON_TYPE_AM_CHOP=0
    set udg_WEAPON_TYPE_RH_BASH=0
    set udg_WEAPON_TYPE_NONE=0
    set udg_IsDamageMelee=false
    set udg_IsDamageRanged=false
    set udg_IsDamageCode=false
    set udg_DamageTypeCode=0
    set udg_DamageTypePure=0
    set udg_DamageTypePureExplosive=0
    set udg_DamageScalingWC3=0
    set udg_AOEString=""
    set udg_DmgStr=""
    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_ArmorTypeDebugStr[i]=""
        set i=i + 1
    endloop

    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_DefenseTypeDebugStr[i]=""
        set i=i + 1
    endloop

    set udg_DamageEventArmorT=0
    set udg_DamageEventDefenseT=0
    set udg_ARMOR_TYPE_NONE=0
    set udg_ARMOR_TYPE_FLESH=0
    set udg_ARMOR_TYPE_METAL=0
    set udg_ARMOR_TYPE_WOOD=0
    set udg_ARMOR_TYPE_ETHEREAL=0
    set udg_ARMOR_TYPE_STONE=0
    set udg_DEFENSE_TYPE_LIGHT=0
    set udg_DEFENSE_TYPE_MEDIUM=0
    set udg_DEFENSE_TYPE_HEAVY=0
    set udg_DEFENSE_TYPE_FORTIFIED=0
    set udg_DEFENSE_TYPE_NORMAL=0
    set udg_DEFENSE_TYPE_HERO=0
    set udg_DEFENSE_TYPE_DIVINE=0
    set udg_DEFENSE_TYPE_UNARMORED=0
    set udg_AfterDamageEvent=0
    set udg_ReportLife=0
    set udg_DamageEventArmorPierced=0
    set udg_DamageScalingUser=0
    set udg_Timestamp=CreateTimer()
    set udg_IsDamageAttack=false
    set udg_NextDamageWeaponT=0
    set udg_NextDamageIsAttack=false
    set udg_NextDamageIsRanged=false
    set udg_NextDamageIsMelee=false
    set udg_DamageFilterType=0
    set udg_DamageFilterMinAmount=0
    set udg_DamageFilterAttackT=0
    set udg_DamageFilterDamageT=0
    set udg_UNIT_CLASS_HERO=0
    set udg_UNIT_CLASS_DEAD=0
    set udg_UNIT_CLASS_STRUCTURE=0
    set udg_UNIT_CLASS_FLYING=0
    set udg_UNIT_CLASS_GROUND=0
    set udg_UNIT_CLASS_ATTACKS_FLYING=0
    set udg_UNIT_CLASS_ATTACKS_GROUND=0
    set udg_UNIT_CLASS_MELEE=0
    set udg_UNIT_CLASS_RANGED=0
    set udg_UNIT_CLASS_GIANT=0
    set udg_UNIT_CLASS_SUMMONED=0
    set udg_UNIT_CLASS_STUNNED=0
    set udg_UNIT_CLASS_PLAGUED=0
    set udg_UNIT_CLASS_SNARED=0
    set udg_UNIT_CLASS_UNDEAD=0
    set udg_UNIT_CLASS_MECHANICAL=0
    set udg_UNIT_CLASS_PEON=0
    set udg_UNIT_CLASS_SAPPER=0
    set udg_UNIT_CLASS_TOWNHALL=0
    set udg_UNIT_CLASS_ANCIENT=0
    set udg_UNIT_CLASS_TAUREN=0
    set udg_UNIT_CLASS_POISONED=0
    set udg_UNIT_CLASS_POLYMORPHED=0
    set udg_UNIT_CLASS_SLEEPING=0
    set udg_UNIT_CLASS_RESISTANT=0
    set udg_UNIT_CLASS_ETHEREAL=0
    set udg_UNIT_CLASS_MAGIC_IMMUNE=0
    set udg_DamageFilterSourceC=0
    set udg_DamageFilterTargetC=0
    set udg_RemoveDamageEvent=false
    set udg_DamageFilterFailChance=0
    set udg_DamageFilterRunChance=0
    set udg_SourceDamageEvent=0
    set udg_OnDamageEvent=0
    set udg_ArmorDamageEvent=0
    set udg_ZeroDamageEvent=0
    set udg_PreDamageEvent=0
    set udg_UnitMovementInterval=0
    set udg_DmgSize=0
    set udg_DmgDuration=0
endfunction

//***************************************************************************
//*
//*  Custom Script Code
//*
//***************************************************************************
//***************************************************************************
//*  Arcing TT by Maker
// Arcing Text Tag v1.0.2.0 by Maker with added API by Bribe and features proposed by Ugabunda and Kusanagi Kuro
// 
// Added API in 1.0.1.0:
//   public static ArcingTextTag lastCreated
//   - Get the last created ArcingTextTag
//   public real scaling
//   - Set the size ratio of the texttag - 1.00 is the default
//   public real timeScaling
//   - Set the duration ratio of the texttag - 1.00 is the default

//***************************************************************************
//*
//*  Items
//*
//***************************************************************************

function CreateAllItems takes nothing returns nothing
    local integer itemID

    call BlzCreateItemWithSkin('brac', - 292.2, - 302.3, 'brac')
    call BlzCreateItemWithSkin('gldo', - 225.1, - 494.8, 'gldo')
    call BlzCreateItemWithSkin('ocor', - 163.7, - 540.3, 'ocor')
    call BlzCreateItemWithSkin('ofir', - 5.5, - 463.1, 'ofir')
    call BlzCreateItemWithSkin('ofro', - 145.2, - 422.6, 'ofro')
    call BlzCreateItemWithSkin('oli2', - 90.5, - 503.7, 'oli2')
    call BlzCreateItemWithSkin('oslo', 59.3, - 502.3, 'oslo')
    call BlzCreateItemWithSkin('oven', - 685.2, 25.7, 'oven')
endfunction

//***************************************************************************
//*
//*  Unit Creation
//*
//***************************************************************************

//===========================================================================
function CreateUnitsForPlayer0 takes nothing returns nothing
    local player p= Player(0)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=BlzCreateUnitWithSkin(p, 'hpea', - 459.5, 69.4, 248.749, 'hpea')
    set u=BlzCreateUnitWithSkin(p, 'hfoo', - 166.1, 189.3, 181.350, 'hfoo')
    set u=BlzCreateUnitWithSkin(p, 'hkni', 92.5, - 114.4, 40.772, 'hkni')
    set u=BlzCreateUnitWithSkin(p, 'hrif', 56.2, 152.0, 281.248, 'hrif')
    set u=BlzCreateUnitWithSkin(p, 'hmtm', - 156.7, - 142.5, 233.269, 'hmtm')
    set gg_unit_Hamg_0006=BlzCreateUnitWithSkin(p, 'Hamg', - 330.7, - 133.2, 56.020, 'Hamg')
    call SetHeroLevel(gg_unit_Hamg_0006, 10, false)
    call SetUnitState(gg_unit_Hamg_0006, UNIT_STATE_MANA, 705)
    call SelectHeroSkill(gg_unit_Hamg_0006, 'AHbz')
    call SelectHeroSkill(gg_unit_Hamg_0006, 'AHbz')
    call SelectHeroSkill(gg_unit_Hamg_0006, 'AHbz')
    call SelectHeroSkill(gg_unit_Hamg_0006, 'AHwe')
    call SelectHeroSkill(gg_unit_Hamg_0006, 'AHwe')
    call SelectHeroSkill(gg_unit_Hamg_0006, 'AHwe')
    call SelectHeroSkill(gg_unit_Hamg_0006, 'AHab')
    call SelectHeroSkill(gg_unit_Hamg_0006, 'AHab')
    call SelectHeroSkill(gg_unit_Hamg_0006, 'AHab')
    call SelectHeroSkill(gg_unit_Hamg_0006, 'AHmt')
    set u=BlzCreateUnitWithSkin(p, 'Hblm', 204.6, 74.3, 238.430, 'Hblm')
    call SetHeroLevel(u, 10, false)
    call SetUnitState(u, UNIT_STATE_MANA, 690)
    call SelectHeroSkill(u, 'AHfs')
    call SelectHeroSkill(u, 'AHfs')
    call SelectHeroSkill(u, 'AHfs')
    call SelectHeroSkill(u, 'AHbn')
    call SelectHeroSkill(u, 'AHbn')
    call SelectHeroSkill(u, 'AHbn')
    call SelectHeroSkill(u, 'AHdr')
    call SelectHeroSkill(u, 'AHdr')
    call SelectHeroSkill(u, 'AHdr')
    call SelectHeroSkill(u, 'AHpx')
    set gg_unit_Uwar_0015=BlzCreateUnitWithSkin(p, 'Uwar', - 335.7, 130.1, 220.140, 'Uwar')
    call SetHeroLevel(gg_unit_Uwar_0015, 10, false)
    call SelectHeroSkill(gg_unit_Uwar_0015, 'ANdp')
    call SelectHeroSkill(gg_unit_Uwar_0015, 'ANdp')
    call SelectHeroSkill(gg_unit_Uwar_0015, 'ANdp')
    call SelectHeroSkill(gg_unit_Uwar_0015, 'ANrc')
    call SelectHeroSkill(gg_unit_Uwar_0015, 'ANrc')
    call SelectHeroSkill(gg_unit_Uwar_0015, 'ANrc')
    call SelectHeroSkill(gg_unit_Uwar_0015, 'AHbh')
    call SelectHeroSkill(gg_unit_Uwar_0015, 'AHbh')
    call SelectHeroSkill(gg_unit_Uwar_0015, 'AHbh')
    call SelectHeroSkill(gg_unit_Uwar_0015, 'ANfd')
    set u=BlzCreateUnitWithSkin(p, 'ospw', - 180.4, - 284.9, 86.037, 'ospw')
    set u=BlzCreateUnitWithSkin(p, 'Nngs', 245.4, - 149.6, 353.390, 'Nngs')
    call SetHeroLevel(u, 10, false)
    call SelectHeroSkill(u, 'ANfl')
    call SelectHeroSkill(u, 'ANfl')
    call SelectHeroSkill(u, 'ANfl')
    call SelectHeroSkill(u, 'ANfa')
    call SelectHeroSkill(u, 'ANfa')
    call SelectHeroSkill(u, 'ANfa')
    call SelectHeroSkill(u, 'ANms')
    call SelectHeroSkill(u, 'ANms')
    call SelectHeroSkill(u, 'ANms')
    call IssueImmediateOrder(u, "manashieldon")
    call SelectHeroSkill(u, 'ANto')
    set u=BlzCreateUnitWithSkin(p, 'uban', 118.1, 239.1, 129.230, 'uban')
    call IssueImmediateOrder(u, "curseon")
    set u=BlzCreateUnitWithSkin(p, 'hmpr', - 537.7, - 19.2, 150.166, 'hmpr')
    set gg_unit_ndmu_0035=BlzCreateUnitWithSkin(p, 'ndmu', 329.9, - 7.7, 249.360, 'ndmu')
    set u=BlzCreateUnitWithSkin(p, 'Obla', - 415.4, - 277.1, 221.330, 'Obla')
    call SetHeroLevel(u, 10, false)
    set u=BlzCreateUnitWithSkin(p, 'Udre', - 23.2, 295.8, 113.740, 'Udre')
    call SetHeroLevel(u, 10, false)
    set u=BlzCreateUnitWithSkin(p, 'emtg', 426.8, 179.8, 60.789, 'emtg')
    set u=BlzCreateUnitWithSkin(p, 'hgry', 150.9, - 256.2, 234.708, 'hgry')
    set u=BlzCreateUnitWithSkin(p, 'edot', - 272.6, 293.5, 177.457, 'edot')
    set u=BlzCreateUnitWithSkin(p, 'uabo', 26.1, - 307.3, 112.449, 'uabo')
    set u=BlzCreateUnitWithSkin(p, 'Ulic', 298.5, - 387.6, 270.030, 'Ulic')
    call SetHeroLevel(u, 10, false)
    call SetUnitState(u, UNIT_STATE_MANA, 300)
    set u=BlzCreateUnitWithSkin(p, 'Ntin', 464.0, - 405.8, 333.350, 'Ntin')
    call SetHeroLevel(u, 10, false)
    call SetUnitState(u, UNIT_STATE_MANA, 720)
    call SelectHeroSkill(u, 'ANsy')
    call SelectHeroSkill(u, 'ANsy')
    call SelectHeroSkill(u, 'ANsy')
    call SelectHeroSkill(u, 'ANcs')
    call SelectHeroSkill(u, 'ANcs')
    call SelectHeroSkill(u, 'ANcs')
    call SelectHeroSkill(u, 'ANeg')
    call SelectHeroSkill(u, 'ANeg')
    call SelectHeroSkill(u, 'ANeg')
    call SelectHeroSkill(u, 'ANrg')
    set u=BlzCreateUnitWithSkin(p, 'edry', 515.2, 5.9, 103.000, 'edry')
    set u=BlzCreateUnitWithSkin(p, 'Otch', - 572.3, 206.4, 153.540, 'Otch')
    call SetHeroLevel(u, 10, false)
    call SetUnitState(u, UNIT_STATE_MANA, 375)
    call SelectHeroSkill(u, 'AOsh')
    call SelectHeroSkill(u, 'AOsh')
    call SelectHeroSkill(u, 'AOsh')
    call SelectHeroSkill(u, 'AOws')
    call SelectHeroSkill(u, 'AOws')
    call SelectHeroSkill(u, 'AOws')
    call SelectHeroSkill(u, 'AOae')
    call SelectHeroSkill(u, 'AOae')
    call SelectHeroSkill(u, 'AOae')
    call SelectHeroSkill(u, 'AOre')
    set u=BlzCreateUnitWithSkin(p, 'Ucrl', - 607.8, - 137.7, 180.900, 'Ucrl')
    call SetHeroLevel(u, 10, false)
    call SetUnitState(u, UNIT_STATE_MANA, 420)
    call SelectHeroSkill(u, 'AUim')
    call SelectHeroSkill(u, 'AUim')
    call SelectHeroSkill(u, 'AUim')
    call SelectHeroSkill(u, 'AUts')
    call SelectHeroSkill(u, 'AUts')
    call SelectHeroSkill(u, 'AUts')
    call SelectHeroSkill(u, 'AUcb')
    call SelectHeroSkill(u, 'AUcb')
    call SelectHeroSkill(u, 'AUcb')
    call IssueImmediateOrder(u, "Carrionscarabsoff")
    call SelectHeroSkill(u, 'AUls')
    set u=BlzCreateUnitWithSkin(p, 'Nfir', 483.9, - 182.1, 271.491, 'Nfir')
    call SetHeroLevel(u, 10, false)
    set u=BlzCreateUnitWithSkin(p, 'oshm', - 338.8, 480.6, 89.267, 'oshm')
    set u=BlzCreateUnitWithSkin(p, 'Nplh', 110.0, 407.4, 257.810, 'Nplh')
    call SetHeroLevel(u, 10, false)
    call SelectHeroSkill(u, 'ANrf')
    call SelectHeroSkill(u, 'ANrf')
    call SelectHeroSkill(u, 'ANrf')
    call SelectHeroSkill(u, 'ANht')
    call SelectHeroSkill(u, 'ANht')
    call SelectHeroSkill(u, 'ANht')
    call SelectHeroSkill(u, 'ANca')
    call SelectHeroSkill(u, 'ANca')
    call SelectHeroSkill(u, 'ANca')
    call SelectHeroSkill(u, 'ANdo')
    set gg_unit_Ekee_0094=BlzCreateUnitWithSkin(p, 'Ekee', 394.1, 462.2, 275.610, 'Ekee')
    call SetHeroLevel(gg_unit_Ekee_0094, 10, false)
    call SelectHeroSkill(gg_unit_Ekee_0094, 'AEer')
    call SelectHeroSkill(gg_unit_Ekee_0094, 'AEer')
    call SelectHeroSkill(gg_unit_Ekee_0094, 'AEer')
    call SelectHeroSkill(gg_unit_Ekee_0094, 'AEfn')
    call SelectHeroSkill(gg_unit_Ekee_0094, 'AEfn')
    call SelectHeroSkill(gg_unit_Ekee_0094, 'AEfn')
    call SelectHeroSkill(gg_unit_Ekee_0094, 'AEah')
    call SelectHeroSkill(gg_unit_Ekee_0094, 'AEah')
    call SelectHeroSkill(gg_unit_Ekee_0094, 'AEah')
    call SelectHeroSkill(gg_unit_Ekee_0094, 'AEtq')
endfunction

//===========================================================================
function CreateNeutralHostileBuildings takes nothing returns nothing
    local player p= Player(PLAYER_NEUTRAL_AGGRESSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=BlzCreateUnitWithSkin(p, 'nntg', - 384.0, - 2816.0, 270.000, 'nntg')
endfunction

//===========================================================================
function CreateNeutralHostile takes nothing returns nothing
    local player p= Player(PLAYER_NEUTRAL_AGGRESSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=BlzCreateUnitWithSkin(p, 'nskm', 1849.2, 1303.6, 194.816, 'nskm')
    set u=BlzCreateUnitWithSkin(p, 'nogm', - 500.3, - 2651.0, 94.815, 'nogm')
    set u=BlzCreateUnitWithSkin(p, 'nogm', - 467.5, 1716.1, 299.529, 'nogm')
    set u=BlzCreateUnitWithSkin(p, 'nogm', - 2311.1, - 29.8, 35.619, 'nogm')
    set u=BlzCreateUnitWithSkin(p, 'nogm', 1883.3, - 36.6, 358.484, 'nogm')
    set u=BlzCreateUnitWithSkin(p, 'nnwq', 3106.9, 2383.9, 52.187, 'nnwq')
    set u=BlzCreateUnitWithSkin(p, 'nmrl', 2930.3, 2967.8, 277.699, 'nmrl')
    set u=BlzCreateUnitWithSkin(p, 'nmrl', 3013.2, 2928.8, 23.281, 'nmrl')
    set u=BlzCreateUnitWithSkin(p, 'nmrl', 3067.5, 2825.8, 276.282, 'nmrl')
    set u=BlzCreateUnitWithSkin(p, 'nmrl', 2814.2, 2956.2, 160.109, 'nmrl')
    set u=BlzCreateUnitWithSkin(p, 'nmrl', 2928.1, 2827.9, 196.617, 'nmrl')
    set u=BlzCreateUnitWithSkin(p, 'nmrl', 3012.0, 2719.3, 291.092, 'nmrl')
    set u=BlzCreateUnitWithSkin(p, 'nmrl', 3090.0, 2963.1, 168.316, 'nmrl')
    set u=BlzCreateUnitWithSkin(p, 'nmrl', 2725.4, 2984.1, 256.055, 'nmrl')
    set u=BlzCreateUnitWithSkin(p, 'nmrr', 2923.4, 2725.2, 200.836, 'nmrr')
    set u=BlzCreateUnitWithSkin(p, 'nmrr', 2842.0, 2855.8, 353.177, 'nmrr')
    set u=BlzCreateUnitWithSkin(p, 'nomg', 3052.1, 2642.3, 308.967, 'nomg')
    set u=BlzCreateUnitWithSkin(p, 'nomg', 2631.9, 2963.1, 237.059, 'nomg')
    set u=BlzCreateUnitWithSkin(p, 'nogm', 2735.9, 2806.8, 154.022, 'nogm')
    set u=BlzCreateUnitWithSkin(p, 'nogr', 2802.6, 2713.4, 327.359, 'nogr')
    set u=BlzCreateUnitWithSkin(p, 'nogr', 2889.5, 2579.8, 65.030, 'nogr')
    set u=BlzCreateUnitWithSkin(p, 'nbdo', 2959.4, 357.0, 202.979, 'nbdo')
    set u=BlzCreateUnitWithSkin(p, 'nrdk', 887.9, - 1943.6, 284.774, 'nrdk')
    set u=BlzCreateUnitWithSkin(p, 'nkog', 2930.4, 476.4, 280.522, 'nkog')
    set u=BlzCreateUnitWithSkin(p, 'nkog', 2683.1, 405.6, 73.468, 'nkog')
    set u=BlzCreateUnitWithSkin(p, 'nkog', - 1254.6, - 1466.2, 36.460, 'nkog')
    call IssueImmediateOrder(u, "autodispelon")
    set u=BlzCreateUnitWithSkin(p, 'nfsh', 2491.9, 2864.6, 12.481, 'nfsh')
    set u=BlzCreateUnitWithSkin(p, 'nfsh', 2626.2, 2652.6, 69.216, 'nfsh')
    set u=BlzCreateUnitWithSkin(p, 'nfsh', 2717.5, 2584.6, 318.185, 'nfsh')
    set u=BlzCreateUnitWithSkin(p, 'nfsh', 2856.8, 2446.6, 20.600, 'nfsh')
    set u=BlzCreateUnitWithSkin(p, 'nfsh', 2907.8, 2373.1, 161.218, 'nfsh')
    set u=BlzCreateUnitWithSkin(p, 'ngnb', 3028.8, 2297.5, 234.181, 'ngnb')
    set u=BlzCreateUnitWithSkin(p, 'ngnb', 2792.8, 2329.9, 31.290, 'ngnb')
    set u=BlzCreateUnitWithSkin(p, 'ugho', 2125.9, - 209.5, 357.410, 'ugho')
    set u=BlzCreateUnitWithSkin(p, 'ngnb', 2680.7, 2471.9, 179.291, 'ngnb')
    set u=BlzCreateUnitWithSkin(p, 'ngnb', 2597.7, 2528.3, 307.242, 'ngnb')
    set u=BlzCreateUnitWithSkin(p, 'ngnb', 2497.3, 2624.1, 204.088, 'ngnb')
    set u=BlzCreateUnitWithSkin(p, 'ngnb', 2224.4, 2818.9, 154.912, 'ngnb')
    set u=BlzCreateUnitWithSkin(p, 'nogl', 3187.9, 2816.2, 165.921, 'nogl')
    set u=BlzCreateUnitWithSkin(p, 'nggr', 2569.5, - 2142.5, 242.322, 'nggr')
    set u=BlzCreateUnitWithSkin(p, 'nsbm', - 2278.5, - 2364.2, 330.600, 'nsbm')
    set u=BlzCreateUnitWithSkin(p, 'nglm', - 2423.1, 1561.7, 256.473, 'nglm')
    set u=BlzCreateUnitWithSkin(p, 'ngsp', - 2026.1, 1675.8, 305.671, 'ngsp')
    set u=BlzCreateUnitWithSkin(p, 'nggr', 2042.2, 2903.2, 36.355, 'nggr')
    set u=BlzCreateUnitWithSkin(p, 'nmrm', 3164.6, 2127.2, 277.128, 'nmrm')
    set u=BlzCreateUnitWithSkin(p, 'nmrm', 2291.9, 2596.1, 74.720, 'nmrm')
    set u=BlzCreateUnitWithSkin(p, 'nmrm', 3195.4, 1941.2, 218.690, 'nmrm')
    set u=BlzCreateUnitWithSkin(p, 'nmrm', 1933.9, 2728.6, 336.522, 'nmrm')
    set u=BlzCreateUnitWithSkin(p, 'nrwm', 2996.2, 2805.7, 16.491, 'nrwm')
    set u=BlzCreateUnitWithSkin(p, 'nrdk', 3226.5, 2375.1, 289.993, 'nrdk')
    set u=BlzCreateUnitWithSkin(p, 'nrdk', 2524.2, 2842.9, 206.033, 'nrdk')
    set u=BlzCreateUnitWithSkin(p, 'ngrk', 3022.1, 2130.5, 197.969, 'ngrk')
    set u=BlzCreateUnitWithSkin(p, 'ngrk', 2429.7, 2517.3, 154.275, 'ngrk')
    set u=BlzCreateUnitWithSkin(p, 'ngrk', 2365.5, 2774.4, 220.008, 'ngrk')
    set u=BlzCreateUnitWithSkin(p, 'ngnv', 2317.1, 2903.2, 40.673, 'ngnv')
    set u=BlzCreateUnitWithSkin(p, 'ngnv', 2952.6, 2197.3, 200.979, 'ngnv')
    set u=BlzCreateUnitWithSkin(p, 'Emoo', 2992.1, 2510.7, 196.990, 'Emoo')
    call SetHeroLevel(u, 10, false)
    call SelectHeroSkill(u, 'AEst')
    call SelectHeroSkill(u, 'AEst')
    call SelectHeroSkill(u, 'AEst')
    call SelectHeroSkill(u, 'AHfa')
    call SelectHeroSkill(u, 'AHfa')
    call SelectHeroSkill(u, 'AHfa')
    call IssueImmediateOrder(u, "flamingarrows")
    call SelectHeroSkill(u, 'AEar')
    call SelectHeroSkill(u, 'AEar')
    call SelectHeroSkill(u, 'AEar')
    call SelectHeroSkill(u, 'AEsf')
    set u=BlzCreateUnitWithSkin(p, 'nspb', - 1289.3, - 1541.8, 27.785, 'nspb')
    set u=BlzCreateUnitWithSkin(p, 'nspg', - 1176.2, - 1570.7, 308.604, 'nspg')
    set u=BlzCreateUnitWithSkin(p, 'nspg', - 1138.7, - 1504.5, 354.814, 'nspg')
    set u=BlzCreateUnitWithSkin(p, 'ngna', - 1272.4, - 1606.4, 219.415, 'ngna')
    set u=BlzCreateUnitWithSkin(p, 'ngna', - 1210.1, - 1662.8, 190.542, 'ngna')
    set u=BlzCreateUnitWithSkin(p, 'nmrl', - 1054.6, - 1553.4, 344.223, 'nmrl')
    set u=BlzCreateUnitWithSkin(p, 'nmrl', - 1191.1, - 1443.6, 4.757, 'nmrl')
endfunction

//===========================================================================
function CreatePlayerBuildings takes nothing returns nothing
endfunction

//===========================================================================
function CreatePlayerUnits takes nothing returns nothing
    call CreateUnitsForPlayer0()
endfunction

//===========================================================================
function CreateAllUnits takes nothing returns nothing
    call CreateNeutralHostileBuildings()
    call CreatePlayerBuildings()
    call CreateNeutralHostile()
    call CreateUnitsForPlayer0() // INLINED!!
endfunction

//***************************************************************************
//*
//*  Triggers
//*
//***************************************************************************

//===========================================================================
// Trigger: Damage Engine Config
//===========================================================================
function Trig_Damage_Engine_Config_Actions takes nothing returns nothing
    // You can add extra classifications here if you want to differentiate between your triggered damage
    // Use DamageTypeExplosive (or any negative value damage type) if you want a unit killed by that damage to explode
    // -
    // The pre-defined type Code might be set by Damage Engine if Unit - Damage Target is detected and the user didn't define a type of their own.
    // "Pure" is especially important because it overrides both the Damage Engine as well as WarCraft 3 damage modification.
    // I therefore gave the user "Explosive Pure" in case one wants to combine the functionality of the two.
    // -
    set udg_DamageTypePureExplosive=- 2
    set udg_DamageTypeExplosive=- 1
    set udg_DamageTypeCode=1
    set udg_DamageTypePure=2
    // -
    // The following types are custom for the user only and do not have any significance to Damage Engine
    // other than telling it that the damage source is 'code' if setting NextDamageType to one of them
    // -
    set udg_DamageTypeHeal=3
    set udg_DamageTypeBlocked=4
    set udg_DamageTypeReduced=5
    set udg_DamageTypeCriticalStrike=6
    // -
    // Inform the DamageEngine source code to initialize the debug strings.
    // This cannot be done during library/struct initialization because InitGlobals had not been called yet.
    // Due to weird GUI-vJass conflicts, I created Total Initialization for Lua.
    // -
    call DamageEngine_DebugStr()
endfunction

//===========================================================================
function InitTrig_Damage_Engine_Config takes nothing returns nothing
    set gg_trg_Damage_Engine_Config=CreateTrigger()
    call TriggerAddAction(gg_trg_Damage_Engine_Config, function Trig_Damage_Engine_Config_Actions)
endfunction

//===========================================================================
// Trigger: Damage Engine
//===========================================================================



//===========================================================================

//===========================================================================
// Trigger: Peasant
//===========================================================================
function Trig_Peasant_Actions takes nothing returns nothing
//textmacro instance: DAMAGE_TRIGGER_CONFIG()
    if not s__DamageTrigger_configured[s__DamageTrigger_eventIndex] then
//end of: DAMAGE_TRIGGER_CONFIG()
    set udg_DamageFilterSourceT='hpea'
//textmacro instance: DAMAGE_TRIGGER_CONFIG_END()
        call s__DamageTrigger_configure(s__DamageTrigger_eventIndex)
    endif
    if not s__DamageTrigger_checkConfig(s__DamageTrigger_eventIndex) then
        return
    endif
//end of: DAMAGE_TRIGGER_CONFIG_END()
    set udg_DamageEventAmount=0.00
    set udg_DamageEventArmorT=udg_ARMOR_TYPE_NONE
    set udg_DamageEventWeaponT=udg_WEAPON_TYPE_NONE
    set udg_DamageEventOverride=true
endfunction

//===========================================================================
function InitTrig_Peasant takes nothing returns nothing
    set gg_trg_Peasant=CreateTrigger()
    call h__TriggerRegisterVariableEvent(gg_trg_Peasant, "udg_PreDamageEvent", LESS_THAN, - 100.00)
    call TriggerAddAction(gg_trg_Peasant, function Trig_Peasant_Actions)
endfunction

//===========================================================================
// Trigger: Keeper
//===========================================================================
function Trig_Keeper_Actions takes nothing returns nothing
//textmacro instance: DAMAGE_TRIGGER_CONFIG()
    if not s__DamageTrigger_configured[s__DamageTrigger_eventIndex] then
//end of: DAMAGE_TRIGGER_CONFIG()
    set udg_DamageFilterTarget=gg_unit_Ekee_0094
//textmacro instance: DAMAGE_TRIGGER_CONFIG_END()
        call s__DamageTrigger_configure(s__DamageTrigger_eventIndex)
    endif
    if not s__DamageTrigger_checkConfig(s__DamageTrigger_eventIndex) then
        return
    endif
//end of: DAMAGE_TRIGGER_CONFIG_END()
    set udg_DamageEventAmount=0.00
    set udg_DamageEventOverride=true
    set udg_DamageEventArmorT=udg_ARMOR_TYPE_NONE
    set udg_DamageEventWeaponT=udg_WEAPON_TYPE_NONE
endfunction

//===========================================================================
function InitTrig_Keeper takes nothing returns nothing
    set gg_trg_Keeper=CreateTrigger()
    call h__TriggerRegisterVariableEvent(gg_trg_Keeper, "udg_PreDamageEvent", EQUAL, - 69.00)
    call TriggerAddAction(gg_trg_Keeper, function Trig_Keeper_Actions)
endfunction

//===========================================================================
// Trigger: Archimond Healing
//===========================================================================
function Trig_Archimond_Healing_Actions takes nothing returns nothing
//textmacro instance: DAMAGE_TRIGGER_CONFIG()
    if not s__DamageTrigger_configured[s__DamageTrigger_eventIndex] then
//end of: DAMAGE_TRIGGER_CONFIG()
    set udg_DamageFilterSource=gg_unit_Uwar_0015
//textmacro instance: DAMAGE_TRIGGER_CONFIG_END()
        call s__DamageTrigger_configure(s__DamageTrigger_eventIndex)
    endif
    if not s__DamageTrigger_checkConfig(s__DamageTrigger_eventIndex) then
        return
    endif
//end of: DAMAGE_TRIGGER_CONFIG_END()
    set udg_DamageEventAmount=( 0.00 - udg_DamageEventAmount )
    set udg_DamageEventDamageT=udg_DAMAGE_TYPE_UNIVERSAL
    set udg_DamageEventAttackT=udg_ATTACK_TYPE_SPELLS
    set udg_DamageEventOverride=true
endfunction

//===========================================================================
function InitTrig_Archimond_Healing takes nothing returns nothing
    set gg_trg_Archimond_Healing=CreateTrigger()
    call h__TriggerRegisterVariableEvent(gg_trg_Archimond_Healing, "udg_PreDamageEvent", LESS_THAN, - 9000.00)
    call TriggerAddAction(gg_trg_Archimond_Healing, function Trig_Archimond_Healing_Actions)
endfunction

//===========================================================================
// Trigger: Elemental Healing
//===========================================================================
function Trig_Elemental_Healing_Actions takes nothing returns nothing
//textmacro instance: DAMAGE_TRIGGER_CONFIG()
    if not s__DamageTrigger_configured[s__DamageTrigger_eventIndex] then
//end of: DAMAGE_TRIGGER_CONFIG()
    set udg_DamageFilterTarget=gg_unit_Hamg_0006
    set udg_DamageFilterSourceT='hwt3'
//textmacro instance: DAMAGE_TRIGGER_CONFIG_END()
        call s__DamageTrigger_configure(s__DamageTrigger_eventIndex)
    endif
    if not s__DamageTrigger_checkConfig(s__DamageTrigger_eventIndex) then
        return
    endif
//end of: DAMAGE_TRIGGER_CONFIG_END()
    set udg_DamageEventAmount=( 0.00 - udg_DamageEventAmount )
    set udg_DamageEventDamageT=udg_DAMAGE_TYPE_UNIVERSAL
    set udg_DamageEventAttackT=udg_ATTACK_TYPE_SPELLS
    set udg_DamageEventOverride=true
endfunction

//===========================================================================
function InitTrig_Elemental_Healing takes nothing returns nothing
    set gg_trg_Elemental_Healing=CreateTrigger()
    call h__TriggerRegisterVariableEvent(gg_trg_Elemental_Healing, "udg_PreDamageEvent", LESS_THAN, - 1.00)
    call TriggerAddAction(gg_trg_Elemental_Healing, function Trig_Elemental_Healing_Actions)
endfunction

//===========================================================================
// Trigger: Knight
//===========================================================================
function Trig_Knight_Actions takes nothing returns nothing
//textmacro instance: DAMAGE_TRIGGER_CONFIG()
    if not s__DamageTrigger_configured[s__DamageTrigger_eventIndex] then
//end of: DAMAGE_TRIGGER_CONFIG()
    set udg_DamageFilterSourceT='hkni'
    set udg_DamageFilterRunChance=0.50
//textmacro instance: DAMAGE_TRIGGER_CONFIG_END()
        call s__DamageTrigger_configure(s__DamageTrigger_eventIndex)
    endif
    if not s__DamageTrigger_checkConfig(s__DamageTrigger_eventIndex) then
        return
    endif
//end of: DAMAGE_TRIGGER_CONFIG_END()
    set udg_DamageEventType=udg_DamageTypeCriticalStrike
    set udg_DamageEventAmount=( udg_DamageEventAmount * 4.00 )
    set udg_DamageEventArmorPierced=50.00
endfunction

//===========================================================================
function InitTrig_Knight takes nothing returns nothing
    set gg_trg_Knight=CreateTrigger()
    call h__TriggerRegisterVariableEvent(gg_trg_Knight, "udg_PreDamageEvent", LESS_THAN, 1.00)
    call TriggerAddAction(gg_trg_Knight, function Trig_Knight_Actions)
endfunction

//===========================================================================
// Trigger: Ranged
//===========================================================================
function Trig_Ranged_Func002C takes nothing returns boolean
    if ( not ( udg_UnitMoving[GetUnitUserData(udg_DamageEventTarget)] == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Ranged_Actions takes nothing returns nothing
    if ( Trig_Ranged_Func002C() ) then
        set udg_DamageEventAmount=( udg_DamageEventAmount * 0.50 )
    else
        set udg_DamageEventDefenseT=udg_DEFENSE_TYPE_UNARMORED
        set udg_DamageEventArmorT=udg_ARMOR_TYPE_NONE
        set udg_DamageEventArmorPierced=BlzGetUnitArmor(udg_DamageEventTarget)
    endif
endfunction

//===========================================================================
function InitTrig_Ranged takes nothing returns nothing
    set gg_trg_Ranged=CreateTrigger()
    call h__TriggerRegisterVariableEvent(gg_trg_Ranged, "udg_PreDamageEvent", GREATER_THAN_OR_EQUAL, 1.00)
    call TriggerAddAction(gg_trg_Ranged, function Trig_Ranged_Actions)
endfunction

//===========================================================================
// Trigger: Summons
//
// This trigger sets the damage based on certain conditions of the attack.
//===========================================================================
function Trig_Summons_Actions takes nothing returns nothing
//textmacro instance: DAMAGE_TRIGGER_CONFIG()
    if not s__DamageTrigger_configured[s__DamageTrigger_eventIndex] then
//end of: DAMAGE_TRIGGER_CONFIG()
    set udg_DamageFilterTargetC=udg_UNIT_CLASS_SUMMONED
//textmacro instance: DAMAGE_TRIGGER_CONFIG_END()
        call s__DamageTrigger_configure(s__DamageTrigger_eventIndex)
    endif
    if not s__DamageTrigger_checkConfig(s__DamageTrigger_eventIndex) then
        return
    endif
//end of: DAMAGE_TRIGGER_CONFIG_END()
    call UnitDamageTargetBJ(udg_DamageEventTarget, udg_DamageEventSource, udg_DamageEventAmount, udg_CONVERTED_ATTACK_TYPE[udg_DamageEventAttackT], udg_CONVERTED_DAMAGE_TYPE[udg_DamageEventDamageT])
    set udg_DamageEventAmount=( udg_DamageEventAmount * 2.00 )
endfunction

//===========================================================================
function InitTrig_Summons takes nothing returns nothing
    set gg_trg_Summons=CreateTrigger()
    call h__TriggerRegisterVariableEvent(gg_trg_Summons, "udg_ArmorDamageEvent", LESS_THAN, 0.00)
    call TriggerAddAction(gg_trg_Summons, function Trig_Summons_Actions)
endfunction

//===========================================================================
// Trigger: Prevent Lethal
//===========================================================================
function Trig_Prevent_Lethal_Actions takes nothing returns nothing
//textmacro instance: DAMAGE_TRIGGER_CONFIG()
    if not s__DamageTrigger_configured[s__DamageTrigger_eventIndex] then
//end of: DAMAGE_TRIGGER_CONFIG()
    set udg_DamageFilterTarget=gg_unit_ndmu_0035
//textmacro instance: DAMAGE_TRIGGER_CONFIG_END()
        call s__DamageTrigger_configure(s__DamageTrigger_eventIndex)
    endif
    if not s__DamageTrigger_checkConfig(s__DamageTrigger_eventIndex) then
        return
    endif
//end of: DAMAGE_TRIGGER_CONFIG_END()
    set udg_LethalDamageHP=1.00
endfunction

//===========================================================================
function InitTrig_Prevent_Lethal takes nothing returns nothing
    set gg_trg_Prevent_Lethal=CreateTrigger()
    call h__TriggerRegisterVariableEvent(gg_trg_Prevent_Lethal, "udg_LethalDamageEvent", EQUAL, 0.00)
    call TriggerAddAction(gg_trg_Prevent_Lethal, function Trig_Prevent_Lethal_Actions)
endfunction

//===========================================================================
// Trigger: Trigger Damage
//===========================================================================
function Trig_Trigger_Damage_Func002A takes nothing returns nothing
    set udg_NextDamageType=udg_DamageTypeCode
    call UnitDamageTargetBJ(GetEnumUnit(), GetEnumUnit(), 1.00, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_UNIVERSAL)
endfunction

function Trig_Trigger_Damage_Actions takes nothing returns nothing
    set bj_wantDestroyGroup=true
    call ForGroupBJ(GetUnitsSelectedAll(Player(0)), function Trig_Trigger_Damage_Func002A)
endfunction

//===========================================================================
function InitTrig_Trigger_Damage takes nothing returns nothing
    set gg_trg_Trigger_Damage=CreateTrigger()
    call TriggerRegisterPlayerChatEvent(gg_trg_Trigger_Damage, Player(0), "damage", true)
    call TriggerAddAction(gg_trg_Trigger_Damage, function Trig_Trigger_Damage_Actions)
endfunction

//===========================================================================
// Trigger: Damage Tag
//===========================================================================
function Trig_Damage_Tag_Func006Func004Func004Func004Func001Func006Func002C takes nothing returns boolean
    if ( not ( udg_IsDamageRanged == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Damage_Tag_Func006Func004Func004Func004Func001Func006C takes nothing returns boolean
    if ( not ( udg_IsDamageSpell == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Damage_Tag_Func006Func004Func004Func004Func001C takes nothing returns boolean
    if ( not ( udg_DamageScalingUser < 0.60 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Damage_Tag_Func006Func004Func004Func004C takes nothing returns boolean
    if ( not ( udg_DamageEventAmount > 0.99 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Damage_Tag_Func006Func004Func004C takes nothing returns boolean
    if ( not ( udg_DamageScalingUser >= 1.50 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Damage_Tag_Func006Func004C takes nothing returns boolean
    if ( not ( udg_DamageEventAmount < - 0.99 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Damage_Tag_Func006Func005Func001C takes nothing returns boolean
    if ( not ( udg_DamageScalingWC3 == 0.00 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Damage_Tag_Func006Func005C takes nothing returns boolean
    if ( not ( GetUnitTypeId(udg_DamageEventSource) == 'hpea' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Damage_Tag_Func006C takes nothing returns boolean
    if ( not ( udg_DamageEventAmount < 0.01 ) ) then
        return false
    endif
    if ( not ( udg_DamageEventAmount > - 0.01 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Damage_Tag_Actions takes nothing returns nothing
    set udg_ReportLife=GetUnitStateSwap(UNIT_STATE_LIFE, udg_DamageEventTarget)
    set udg_DmgStr="|cffffffff"
    set udg_DmgDuration=1.00
    set udg_DmgSize=1.00
    if ( Trig_Damage_Tag_Func006C() ) then
        // A block or near-block
        set udg_DmgSize=0.60
        set udg_DmgDuration=0.60
        if ( Trig_Damage_Tag_Func006Func005C() ) then
            set udg_DmgStr="|c00AAAAAADODGED!|r"
        else
            if ( Trig_Damage_Tag_Func006Func005Func001C() ) then
                set udg_DmgStr=( "|c00AAAAAABlocked " + ( I2S(R2I(( udg_DamageEventPrevAmt * udg_DamageScalingUser ))) + "!|r" ) )
            else
                set udg_DmgStr=( "|c00AAAAAABlocked " + ( I2S(R2I(( udg_DamageEventPrevAmt * udg_DamageScalingWC3 ))) + "!|r" ) )
            endif
        endif
    else
        if ( Trig_Damage_Tag_Func006Func004C() ) then
            // Heal
            set udg_DmgSize=0.80
            set udg_DmgDuration=0.80
            set udg_DmgStr=( "|cff00ff00+" + ( I2S(R2I(( 0.00 - udg_DamageEventAmount ))) + "!|r" ) )
        else
            if ( Trig_Damage_Tag_Func006Func004Func004C() ) then
                // User-triggered Critical Strike
                set udg_DmgSize=1.50
                set udg_DmgDuration=1.50
                set udg_DmgStr=( "|cffff0000" + ( I2S(R2I(udg_DamageEventAmount)) + "!|r" ) )
            else
                if ( Trig_Damage_Tag_Func006Func004Func004Func004C() ) then
                    if ( Trig_Damage_Tag_Func006Func004Func004Func004Func001C() ) then
                        // User reduced damage
                        set udg_DmgSize=0.70
                        set udg_DmgDuration=0.70
                        set udg_DmgStr=( "|cff808000" + ( I2S(R2I(udg_DamageEventAmount)) + "|r" ) )
                    else
                        // Normal sequence
                        if ( Trig_Damage_Tag_Func006Func004Func004Func004Func001Func006C() ) then
                            set udg_DmgStr=( "|cff3264c8" + ( I2S(R2I(udg_DamageEventAmount)) + "|r" ) )
                        else
                            if ( Trig_Damage_Tag_Func006Func004Func004Func004Func001Func006Func002C() ) then
                                set udg_DmgStr=( "|cffffff00" + ( I2S(R2I(udg_DamageEventAmount)) + "|r" ) )
                            else
                                set udg_DmgStr=( udg_DmgStr + ( I2S(R2I(udg_DamageEventAmount)) + "|r" ) )
                            endif
                        endif
                    endif
                else
                endif
            endif
        endif
    endif
    call s__ArcingTextTag_createEx(udg_DmgStr , udg_DamageEventTarget , udg_DmgDuration , udg_DmgSize , GetLocalPlayer())
endfunction

//===========================================================================
function InitTrig_Damage_Tag takes nothing returns nothing
    set gg_trg_Damage_Tag=CreateTrigger()
    call h__TriggerRegisterVariableEvent(gg_trg_Damage_Tag, "udg_OnDamageEvent", EQUAL, 1.00)
    call TriggerAddAction(gg_trg_Damage_Tag, function Trig_Damage_Tag_Actions)
endfunction

//===========================================================================
// Trigger: Opening Text
//===========================================================================
function Trig_Opening_Text_Actions takes nothing returns nothing
    call DisplayTimedTextToForce(GetPlayersAll(), 120.00, "TRIGSTR_008")
    call StartTimerBJ(udg_Timestamp, false, 604800.00)
endfunction

//===========================================================================
function InitTrig_Opening_Text takes nothing returns nothing
    set gg_trg_Opening_Text=CreateTrigger()
    call TriggerRegisterTimerEventSingle(gg_trg_Opening_Text, 0.00)
    call TriggerAddAction(gg_trg_Opening_Text, function Trig_Opening_Text_Actions)
endfunction

//===========================================================================
// Trigger: Report On Off
//===========================================================================
function Trig_Report_On_Off_Func001C takes nothing returns boolean
    if ( not ( IsTriggerEnabled(gg_trg_Damage_Report) == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Report_On_Off_Actions takes nothing returns nothing
    if ( Trig_Report_On_Off_Func001C() ) then
        call EnableTrigger(gg_trg_Damage_Report)
        call EnableTrigger(gg_trg_On_AOE)
        call DisplayTextToForce(GetPlayersAll(), "TRIGSTR_062")
    else
        call DisableTrigger(gg_trg_Damage_Report)
        call DisableTrigger(gg_trg_On_AOE)
        call DisplayTextToForce(GetPlayersAll(), "TRIGSTR_063")
    endif
endfunction

//===========================================================================
function InitTrig_Report_On_Off takes nothing returns nothing
    set gg_trg_Report_On_Off=CreateTrigger()
    call TriggerRegisterPlayerChatEvent(gg_trg_Report_On_Off, Player(0), "report", true)
    call TriggerAddAction(gg_trg_Report_On_Off, function Trig_Report_On_Off_Actions)
endfunction

//===========================================================================
// Trigger: Damage Report
//===========================================================================
function Trig_Damage_Report_Func006Func001Func001C takes nothing returns boolean
    if ( not ( udg_IsDamageSpell == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Damage_Report_Func006Func001Func002Func001C takes nothing returns boolean
    if ( not ( udg_IsDamageMelee == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Damage_Report_Func006Func001Func002C takes nothing returns boolean
    if ( not ( udg_IsDamageRanged == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Damage_Report_Func006Func001C takes nothing returns boolean
    if ( not ( udg_IsDamageAttack == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Damage_Report_Func006C takes nothing returns boolean
    if ( not ( udg_IsDamageCode == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Damage_Report_Func012C takes nothing returns boolean
    if ( not ( udg_DamageEventLevel > 1 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Damage_Report_Actions takes nothing returns nothing
    // Set the above condition to True Equal to False to disable the in-game damage analysis
    call DisplayTextToForce(GetPlayersAll(), ( "==============" + ( R2S(TimerGetElapsed(udg_Timestamp)) + "==============" ) ))
    if ( Trig_Damage_Report_Func006C() ) then
        set udg_DmgStr=( " Code dmg type: " + I2S(udg_DamageEventType) )
    else
        if ( Trig_Damage_Report_Func006Func001C() ) then
            if ( Trig_Damage_Report_Func006Func001Func002C() ) then
                set udg_DmgStr=" Ranged dmg"
            else
                if ( Trig_Damage_Report_Func006Func001Func002Func001C() ) then
                    set udg_DmgStr=" Melee dmg"
                else
                    set udg_DmgStr=" Spell attack dmg"
                endif
            endif
        else
            if ( Trig_Damage_Report_Func006Func001Func001C() ) then
                set udg_DmgStr=" Spell dmg"
            else
                set udg_DmgStr=" Splash dmg"
            endif
        endif
    endif
    call DisplayTextToForce(GetPlayersAll(), ( "|n" + ( GetUnitName(udg_DamageEventSource) + ( " => " + ( GetUnitName(udg_DamageEventTarget) + ( "" + ( R2S(udg_DamageEventPrevAmt) + ( " => " + ( R2S(udg_DamageEventAmount) + udg_DmgStr ) ) ) ) ) ) ) ))
    call DisplayTextToForce(GetPlayersAll(), ( "ATTACK_TYPE_" + ( udg_AttackTypeDebugStr[udg_DamageEventAttackT] + ( " DAMAGE_TYPE_ " + ( udg_DamageTypeDebugStr[udg_DamageEventDamageT] + ( " WEAPON_TYPE_" + udg_WeaponTypeDebugStr[udg_DamageEventWeaponT] ) ) ) ) ))
    call DisplayTextToForce(GetPlayersAll(), ( "Armor Type " + ( udg_ArmorTypeDebugStr[udg_DamageEventArmorT] + ( " Defense Type " + udg_DefenseTypeDebugStr[udg_DamageEventDefenseT] ) ) ))
    call DisplayTextToForce(GetPlayersAll(), ( "Life chanaged from " + ( R2S(udg_ReportLife) + ( " to " + R2S(GetUnitStateSwap(UNIT_STATE_LIFE, udg_DamageEventTarget)) ) ) ))
    call DisplayTextToForce(GetPlayersAll(), ( "WarCraft 3 increased the damage by  " + ( R2S(( 100.00 * ( udg_DamageScalingWC3 - 1.00 ) )) + ( "% and the user increased it by " + ( R2S(( 100.00 * ( udg_DamageScalingUser - 1.00 ) )) + "%." ) ) ) ))
    if ( Trig_Damage_Report_Func012C() ) then
        call DisplayTextToForce(GetPlayersAll(), "TRIGSTR_058")
    else
    endif
endfunction

//===========================================================================
function InitTrig_Damage_Report takes nothing returns nothing
    set gg_trg_Damage_Report=CreateTrigger()
    call DisableTrigger(gg_trg_Damage_Report)
    call h__TriggerRegisterVariableEvent(gg_trg_Damage_Report, "udg_AfterDamageEvent", EQUAL, 0.00)
    call h__TriggerRegisterVariableEvent(gg_trg_Damage_Report, "udg_ZeroDamageEvent", EQUAL, 0.00)
    call TriggerAddAction(gg_trg_Damage_Report, function Trig_Damage_Report_Actions)
endfunction

//===========================================================================
// Trigger: On AOE
//===========================================================================
function Trig_On_AOE_Func002A takes nothing returns nothing
    set udg_AOEString=( udg_AOEString + ( GetUnitName(GetEnumUnit()) + ", " ) )
endfunction

function Trig_On_AOE_Actions takes nothing returns nothing
    set udg_AOEString=( GetUnitName(udg_AOEDamageSource) + " has dealt AOE damage to " )
    call ForGroupBJ(udg_DamageEventAOEGroup, function Trig_On_AOE_Func002A)
    call DisplayTextToForce(GetPlayersAll(), ( SubStringBJ(udg_AOEString, 1, ( StringLength(udg_AOEString) - 2 )) + "." ))
endfunction

//===========================================================================
function InitTrig_On_AOE takes nothing returns nothing
    set gg_trg_On_AOE=CreateTrigger()
    call DisableTrigger(gg_trg_On_AOE)
    call h__TriggerRegisterVariableEvent(gg_trg_On_AOE, "udg_AOEDamageEvent", EQUAL, 1.00)
    call TriggerAddAction(gg_trg_On_AOE, function Trig_On_AOE_Actions)
endfunction

//===========================================================================
// Trigger: Is Unit Moving
//
// Use "UnitMoving[(Custom value of Unit)] Equal to true" to check if a unit is moving.
// Use the event "UnitMovingEvent Equal to 1.00" to detect when a unit starts moving. Use the event "UnitMovingEvent Equal to 2.00" to detect when one stops moving.
// In either event, the unit that has started moving is "UDexUnits[UDex]".
//===========================================================================
function IsUnitMovementTracked takes integer i returns boolean
    return udg_UMovPrev[i] != 0 or udg_UMovNext[0] == i
endfunction

function UnitMovementRegister takes nothing returns boolean
    local integer i= udg_UDex
    if not IsUnitMovementTracked(i) and TriggerEvaluate(gg_trg_Is_Unit_Moving_Config) then
        set udg_UMovPrev[udg_UMovNext[0]]=i
        set udg_UMovNext[i]=udg_UMovNext[0]
        set udg_UMovNext[0]=i
        set udg_UnitMovingX[i]=GetUnitX(udg_UDexUnits[i])
        set udg_UnitMovingY[i]=GetUnitY(udg_UDexUnits[i])
    endif
    return false
endfunction

function UnitMovementUnregister takes nothing returns boolean
    local integer i= udg_UDex
    if IsUnitMovementTracked(i) then
        set udg_UnitMoving[i]=false
        set udg_UMovNext[udg_UMovPrev[i]]=udg_UMovNext[i]
        set udg_UMovPrev[udg_UMovNext[i]]=udg_UMovPrev[i]
        set udg_UMovPrev[i]=0
    endif
    return false
endfunction

function RunUnitMovementEvent takes integer i,real e returns nothing
    local integer pdex= udg_UDex
    if e == 1.00 then
        set udg_UnitMoving[i]=true
    else
        set udg_UnitMoving[i]=false
    endif
    set udg_UDex=i
    set udg_UnitMovingEvent=e
    set udg_UnitMovingEvent=0.00
    set udg_UDex=pdex
endfunction

//===========================================================================
// This function runs periodically to check if units are actually moving.
// 
function UnitMovementTracker takes nothing returns nothing
    local integer i= 0
    local integer n
    local real x
    local real y
    loop
        set i=udg_UMovNext[i]
        exitwhen i == 0
        set x=GetUnitX(udg_UDexUnits[i])
        set y=GetUnitY(udg_UDexUnits[i])
        if x != udg_UnitMovingX[i] or y != udg_UnitMovingY[i] then
            set udg_UnitMovingX[i]=x
            set udg_UnitMovingY[i]=y
            if not udg_UnitMoving[i] then
                if GetUnitTypeId(udg_UDexUnits[i]) != 0 then
                    call RunUnitMovementEvent(i , 1.00)
                else
                    set n=udg_UDex
                    set udg_UDex=i
                    set i=udg_UMovPrev[i] //avoid skipping checks
                    call UnitMovementUnregister()
                    set udg_UDex=n
                endif
            endif
        elseif udg_UnitMoving[i] then
            call RunUnitMovementEvent(i , 2.00)
        endif
    endloop
endfunction

//===========================================================================
function InitTrig_Is_Unit_Moving takes nothing returns nothing
    local trigger t= CreateTrigger()
    call h__TriggerRegisterVariableEvent(t, "udg_UnitIndexEvent", EQUAL, 1.00)
    call TriggerAddCondition(t, Filter(function UnitMovementRegister))
    
    set t=CreateTrigger()
    call h__TriggerRegisterVariableEvent(t, "udg_UnitIndexEvent", EQUAL, 2.00)
    call TriggerAddCondition(t, Filter(function UnitMovementUnregister))
    
    if gg_trg_Is_Unit_Moving_Config != null then
        call TriggerExecute(gg_trg_Is_Unit_Moving_Config)
    else
        call ExecuteFunc("Trig_Is_Unit_Moving_Config_Actions")
    endif
    call TimerStart(CreateTimer(), udg_UnitMovementInterval, true, function UnitMovementTracker)
endfunction
//===========================================================================
// Trigger: Is Unit Moving Config
//===========================================================================
function Trig_Is_Unit_Moving_Config_Conditions takes nothing returns boolean
    if ( not ( GetUnitDefaultMoveSpeed(udg_UDexUnits[udg_UDex]) != 0.00 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Is_Unit_Moving_Config_Actions takes nothing returns nothing
    // Units who do not pass the above conditions will not be allowed to be registered by the system.
    // One can add exceptions such as with buildings who have the ability to uproot.
    //  
    // Here you can configure how frequently the check occurs.
    // NOTES: This should not be lower than any movement systems in your map.
    // Slower checks improve performance, but I wouldn't slow it much more than this.
    //  
    set udg_UnitMovementInterval=0.10
    //  
    // Do not enable the disabled lines as they simply exist to make the variable copying easier
endfunction

//===========================================================================
function InitTrig_Is_Unit_Moving_Config takes nothing returns nothing
    set gg_trg_Is_Unit_Moving_Config=CreateTrigger()
    call TriggerAddCondition(gg_trg_Is_Unit_Moving_Config, Condition(function Trig_Is_Unit_Moving_Config_Conditions))
    call TriggerAddAction(gg_trg_Is_Unit_Moving_Config, function Trig_Is_Unit_Moving_Config_Actions)
endfunction

//===========================================================================
// Trigger: Unit Indexer
//
// **IMPORTANT**
// If you have GUI UnitEvent in your map, delete this trigger.
// =============================================
// Unit Indexer gives you an array-safe (1-8190) custom value for units, eliminating the need for hashtables to store unit-specific data.
// Just use "Set MyArrayData[(Custom value of Unit)] = (Some data)".
// --------
// If you want to get the unit assigned to an index (reverse lookup) use "UDexUnits[(Index)]".
// --------
// If you want to detect when an index is created or when it is released, use "UnitIndexEvent Equal to 1.00" (created) or "UnitIndexEvent Equal to 2.00" (released). The index being created/released is called "UDex".
// --------
// You can enable/disable Unit Indexer to protect some of your undesirable units from being indexed like this:
// Trigger - Turn off Unit Indexer <gen>
// Unit - Create 1 Dummy for (Triggering player) at TempPoint facing 0.00 degrees
// Trigger - Turn on Unit Indexer <gen>
// --------
// If you want to use a Map Initialization trigger that uses custom value of units, to make sure that UnitIndexer initializes first, use the event "UnitIndexEvent Equal to 3.00". Otherwise the custom value of units may be zero.
// --------
// Advanced:
// --------
// If you want to lock the index of a unit, use "Set UnitIndexLock[(Index)] = (UnitIndexLock[(Index)] + 1)". This will prevent the index from being recycled. If you want to unlock it and allow it to be recycled, run the Unit Indexer <gen> trigger.
// Note: Make sure if you add a lock that you will eventually remove the lock, otherwise the index will never be recycled.
//===========================================================================
function Trig_Unit_Indexer_Func005C takes nothing returns boolean
    if ( not ( GetUnitUserData(udg_UDexUnits[udg_UDex]) == 0 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Unit_Indexer_Func014Func003C takes nothing returns boolean
    if ( not ( udg_UDexWasted == 32 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Unit_Indexer_Func014Func005C takes nothing returns boolean
    if ( not ( udg_UDexRecycle == 0 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Unit_Indexer_Func014C takes nothing returns boolean
    if ( not ( udg_UnitIndexerEnabled == true ) ) then
        return false
    endif
    if ( not ( GetUnitUserData(GetFilterUnit()) == 0 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Unit_Indexer_Actions takes nothing returns nothing
        call ExecuteFunc("InitializeUnitIndexer")
    endfunction
     
    function ClearUnitIndex takes nothing returns nothing
    if ( Trig_Unit_Indexer_Func005C() ) then
        set udg_UDexNext[udg_UDexPrev[udg_UDex]]=udg_UDexNext[udg_UDex]
        set udg_UDexPrev[udg_UDexNext[udg_UDex]]=udg_UDexPrev[udg_UDex]
        set udg_UDexPrev[udg_UDex]=0
        set udg_UnitIndexEvent=0.00
        set udg_UnitIndexEvent=2.00
        set udg_UDexUnits[udg_UDex]=null
        set udg_UDexNext[udg_UDex]=udg_UDexRecycle
        set udg_UDexRecycle=udg_UDex
    else
    endif
    endfunction
     
    function IndexUnit takes nothing returns boolean
        local integer pdex= udg_UDex
        local integer ndex
    // -
    // You can customize the following block - if conditions are false the (Matching unit) won't be indexed.
    // -
    if ( Trig_Unit_Indexer_Func014C() ) then
        set udg_UDexWasted=( udg_UDexWasted + 1 )
        if ( Trig_Unit_Indexer_Func014Func003C() ) then
            set udg_UDexWasted=0
            set udg_UDex=udg_UDexNext[0]
            loop
                exitwhen udg_UDex == 0
                set ndex=udg_UDexNext[udg_UDex]
                call ClearUnitIndex()
                set udg_UDex=ndex
            endloop
        else
        endif
        if ( Trig_Unit_Indexer_Func014Func005C() ) then
            set udg_UDex=( udg_UDexGen + 1 )
            set udg_UDexGen=udg_UDex
        else
            set udg_UDex=udg_UDexRecycle
            set udg_UDexRecycle=udg_UDexNext[udg_UDex]
        endif
        set udg_UDexUnits[udg_UDex]=GetFilterUnit()
        call SetUnitUserData(udg_UDexUnits[udg_UDex], udg_UDex)
        set udg_UDexPrev[udg_UDexNext[0]]=udg_UDex
        set udg_UDexNext[udg_UDex]=udg_UDexNext[0]
        set udg_UDexNext[0]=udg_UDex
        set udg_UnitIndexEvent=0.00
        set udg_UnitIndexEvent=1.00
        set udg_UDex=pdex
    else
    endif
        return false
    endfunction
     
    function InitializeUnitIndexer takes nothing returns nothing
        local integer i= bj_MAX_PLAYER_SLOTS
        local boolexpr b= Filter(function IndexUnit)
        local region re= CreateRegion()
        local trigger t= GetTriggeringTrigger()
        local rect r= GetWorldBounds()
        call RegionAddRect(re, r)
        call TriggerRegisterEnterRegion(t, re, b)
        call TriggerClearActions(t)
        call TriggerAddAction(t, function ClearUnitIndex)
    set udg_UnitIndexerEnabled=true
        loop
            set i=i - 1
            call GroupEnumUnitsOfPlayer(bj_lastCreatedGroup, Player(i), b)
            exitwhen i == 0
        endloop
        call RemoveRect(r)
        set re=null
        set r=null
        set t=null
        set b=null
    set udg_UnitIndexEvent=3.00
endfunction

//===========================================================================
function InitTrig_Unit_Indexer takes nothing returns nothing
    set gg_trg_Unit_Indexer=CreateTrigger()
    call TriggerAddAction(gg_trg_Unit_Indexer, function Trig_Unit_Indexer_Actions)
endfunction

//===========================================================================
// Trigger: Recursion
//===========================================================================
function Trig_Recursion_Actions takes nothing returns nothing
endfunction

//===========================================================================
function InitTrig_Recursion takes nothing returns nothing
    set gg_trg_Recursion=CreateTrigger()
    call DisableTrigger(gg_trg_Recursion)
    call h__TriggerRegisterVariableEvent(gg_trg_Recursion, "udg_DamageEvent", EQUAL, 1.00)
    call TriggerAddAction(gg_trg_Recursion, function Trig_Recursion_Actions)
endfunction

//===========================================================================
function InitCustomTriggers takes nothing returns nothing
    call InitTrig_Damage_Engine_Config()
    //Function not found: call InitTrig_Damage_Engine()
    call InitTrig_Peasant()
    call InitTrig_Keeper()
    call InitTrig_Archimond_Healing()
    call InitTrig_Elemental_Healing()
    call InitTrig_Knight()
    call InitTrig_Ranged()
    call InitTrig_Summons()
    call InitTrig_Prevent_Lethal()
    call InitTrig_Trigger_Damage()
    call InitTrig_Damage_Tag()
    call InitTrig_Opening_Text()
    call InitTrig_Report_On_Off()
    call InitTrig_Damage_Report()
    call InitTrig_On_AOE()
    call InitTrig_Is_Unit_Moving()
    call InitTrig_Is_Unit_Moving_Config()
    call InitTrig_Unit_Indexer()
    call InitTrig_Recursion()
endfunction

//===========================================================================
function RunInitializationTriggers takes nothing returns nothing
    call ConditionalTriggerExecute(gg_trg_Damage_Engine_Config)
    call ConditionalTriggerExecute(gg_trg_Unit_Indexer)
endfunction

//***************************************************************************
//*
//*  Upgrades
//*
//***************************************************************************

function InitUpgrades_Player0 takes nothing returns nothing
    call SetPlayerTechResearched(Player(0), 'Ruba', 2)
    call SetPlayerTechResearched(Player(0), 'Rhrt', 1)
    call SetPlayerTechResearched(Player(0), 'Rhpt', 2)
    call SetPlayerTechResearched(Player(0), 'Rhst', 2)
    call SetPlayerTechResearched(Player(0), 'Robs', 1)
    call SetPlayerTechResearched(Player(0), 'Rovs', 1)
    call SetPlayerTechResearched(Player(0), 'Rowd', 2)
    call SetPlayerTechResearched(Player(0), 'Rost', 2)
    call SetPlayerTechResearched(Player(0), 'Robk', 1)
    call SetPlayerTechResearched(Player(0), 'Robf', 1)
    call SetPlayerTechResearched(Player(0), 'Rugf', 1)
    call SetPlayerTechResearched(Player(0), 'Ruac', 1)
    call SetPlayerTechResearched(Player(0), 'Rusf', 1)
    call SetPlayerTechResearched(Player(0), 'Rune', 2)
    call SetPlayerTechResearched(Player(0), 'Rusl', 1)
    call SetPlayerTechResearched(Player(0), 'Rusm', 1)
    call SetPlayerTechResearched(Player(0), 'Ruex', 1)
    call SetPlayerTechResearched(Player(0), 'Remg', 1)
    call SetPlayerTechResearched(Player(0), 'Reib', 1)
    call SetPlayerTechResearched(Player(0), 'Remk', 1)
    call SetPlayerTechResearched(Player(0), 'Recb', 1)
    call SetPlayerTechResearched(Player(0), 'Repb', 1)
    call SetPlayerTechResearched(Player(0), 'Resi', 1)
    call SetPlayerTechResearched(Player(0), 'Reeb', 1)
    call SetPlayerTechResearched(Player(0), 'Reec', 1)
    call SetPlayerTechResearched(Player(0), 'Rews', 1)
    call SetPlayerTechResearched(Player(0), 'Rnsw', 2)
    call SetPlayerTechResearched(Player(0), 'Rows', 1)
    call SetPlayerTechResearched(Player(0), 'Rorb', 1)
    call SetPlayerTechResearched(Player(0), 'Rolf', 1)
    call SetPlayerTechResearched(Player(0), 'Rotr', 1)
    call SetPlayerTechResearched(Player(0), 'Rosp', 3)
    call SetPlayerTechResearched(Player(0), 'Rufb', 1)
    call SetPlayerTechResearched(Player(0), 'Rusp', 1)
    call SetPlayerTechResearched(Player(0), 'Rupc', 1)
    call SetPlayerTechResearched(Player(0), 'Rehs', 1)
    call SetPlayerTechResearched(Player(0), 'Rers', 1)
endfunction

function InitUpgrades takes nothing returns nothing
    call InitUpgrades_Player0()
endfunction

//***************************************************************************
//*
//*  Players
//*
//***************************************************************************

function InitCustomPlayerSlots takes nothing returns nothing

    // Player 0
    call SetPlayerStartLocation(Player(0), 0)
    call SetPlayerColor(Player(0), ConvertPlayerColor(0))
    call SetPlayerRacePreference(Player(0), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(0), true)
    call SetPlayerController(Player(0), MAP_CONTROL_USER)

endfunction

function InitCustomTeams takes nothing returns nothing
    // Force: TRIGSTR_002
    call SetPlayerTeam(Player(0), 0)

endfunction

//***************************************************************************
//*
//*  Main Initialization
//*
//***************************************************************************

//===========================================================================
function main takes nothing returns nothing
    call SetCameraBounds(- 3328.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), - 3584.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 3328.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 3072.0 - GetCameraMargin(CAMERA_MARGIN_TOP), - 3328.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 3072.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 3328.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), - 3584.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
    call SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
    call NewSoundEnvironment("Default")
    call SetAmbientDaySound("LordaeronSummerDay")
    call SetAmbientNightSound("LordaeronSummerNight")
    call SetMapMusic("Music", true, 0)
    call InitUpgrades_Player0() // INLINED!!
    call CreateAllItems()
    call CreateAllUnits()
    call InitBlizzard()

call ExecuteFunc("jasshelper__initstructs471320250")

    call InitGlobals()
    call InitCustomTriggers()
    call RunInitializationTriggers()

endfunction

//***************************************************************************
//*
//*  Map Configuration
//*
//***************************************************************************

function config takes nothing returns nothing
    call SetMapName("TRIGSTR_003")
    call SetMapDescription("")
    call SetPlayers(1)
    call SetTeams(1)
    call SetGamePlacement(MAP_PLACEMENT_USE_MAP_SETTINGS)

    call DefineStartLocation(0, - 128.0, 0.0)

    // Player setup
    call InitCustomPlayerSlots()
    call SetPlayerSlotAvailable(Player(0), MAP_CONTROL_USER)
    call InitGenericPlayerSlots()
endfunction




//Struct method generated initializers/callers:
function sa___prototype2_DamageEngine_RegisterFromHook takes nothing returns boolean
    call DamageEngine_RegisterFromHook(f__arg_trigger1,f__arg_string1,f__arg_limitop1,f__arg_real1)
    return true
endfunction

function jasshelper__initstructs471320250 takes nothing returns nothing
    set st___prototype2[1]=CreateTrigger()
    call TriggerAddAction(st___prototype2[1],function sa___prototype2_DamageEngine_RegisterFromHook)
    call TriggerAddCondition(st___prototype2[1],Condition(function sa___prototype2_DamageEngine_RegisterFromHook))




    call ExecuteFunc("s__Damage_onInit")
endfunction

