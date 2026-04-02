-- DPEmotes forked by TayMcKenzieNZ requires you to be on the latest FiveM Gamebuild for all emotes to function.
-- If an emote does not work, you may be on an older gamebuild.
-- To get a higher gamebuild, see ReadMe on github repositorty
DP = {}

-- EXPRESSIONS --

DP.Expressions = {
    ["Angry"] = {
        "Expression",
        "mood_angry_1"
    },
    ["Drunk"] = {
        "Expression",
        "mood_drunk_1"
    },
    ["Dumb"] = {
        "Expression",
        "pose_injured_1"
    },
    ["Electrocuted"] = {
        "Expression",
        "electrocuted_1"
    },
    ["Grumpy"] = {
        "Expression",
        "effort_1"
    },
    ["Grumpy2"] = {
        "Expression",
        "mood_drivefast_1"
    },
    ["Grumpy3"] = {
        "Expression",
        "pose_angry_1"
    },
    ["Happy"] = {
        "Expression",
        "mood_happy_1"
    },
    ["Injured"] = {
        "Expression",
        "mood_injured_1"
    },
    ["Joyful"] = {
        "Expression",
        "mood_dancing_low_1"
    },
    ["Mouthbreather"] = {
        "Expression",
        "smoking_hold_1"
    },
    ["Never Blink"] = {
        "Expression",
        "pose_normal_1"
    },
    ["One Eye"] = {
        "Expression",
        "pose_aiming_1"
    },
    ["Shocked"] = {
        "Expression",
        "shocked_1"
    },
    ["Shocked2"] = {
        "Expression",
        "shocked_2"
    },
    ["Sleeping"] = {
        "Expression",
        "mood_sleeping_1"
    },
    ["Sleeping2"] = {
        "Expression",
        "dead_1"
    },
    ["Sleeping3"] = {
        "Expression",
        "dead_2"
    },
    ["Smug"] = {
        "Expression",
        "mood_smug_1"
    },
    ["Speculative"] = {
        "Expression",
        "mood_aiming_1"
    },
    ["Stressed"] = {
        "Expression",
        "mood_stressed_1"
    },
    ["Sulking"] = {
        "Expression",
        "mood_sulk_1"
    },
    ["Weird"] = {
        "Expression",
        "effort_2"
    },
    ["Weird2"] = {
        "Expression",
        "effort_3"
    },
}


--- WALKSTYLES ---

DP.Walks = {
    -- The key shouldn't have any other uppercase letter than the first one!
    -- The first letter HAS to be uppercase!
    -- First element of array is the walk animation
    -- Second element is the label, this is optional
    ["Alien"] = {
        "move_m@alien"
    },
    ["Armored"] = {
        "anim_group_move_ballistic"
    },
    ["Arrogant"] = {
        "move_f@arrogant@a"
    },
    ["Ttyy"] = {
        "move_m@Ttyy"
    },
    ["Casual"] = {
        "move_m@casual@a"
    },
    ["Casual2"] = {
        "move_m@casual@b",
        "Casual 2"
    },
    ["Casual3"] = {
        "move_m@casual@c",
        "Casual 3"
    },
    ["Casual4"] = {
        "move_m@casual@d",
        "Casual 4"
    },
    ["Casual5"] = {
        "move_m@casual@e",
        "Casual 5"
    },
    ["Casual6"] = {
        "move_m@casual@f",
        "Casual 6"
    },
    ["Chichi"] = {
        "move_f@chichi"
    },
    ["Confident"] = {
        "move_m@confident"
    },
    ["Cop"] = {
        "move_m@business@a"
    },
    ["Cop2"] = {
        "move_m@business@b",
        "Cop 2"
    },
    ["Cop3"] = {
        "move_m@business@c",
        "Cop 3"
    },
    ["Defaultfemale"] = {
        "move_f@multiplayer",
        "Default Female"
    },
    ["Defaultmale"] = {
        "move_m@multiplayer",
        "Default Male"
    },
    ["Drunk"] = {
        "move_m@drunk@a"
    },
    ["Drunk2"] = {
        "move_m@buzzed",
        "Drunk 2"
    },
    ["Drunk3"] = {
        "move_m@drunk@verydrunk",
        "Drunk 3"
    },
    ["Drunk4"] = {
        "move_m@drunk@slightlydrunk",
        "Drunk 4"
    },
    ["Femme"] = {
        "move_f@femme@"
    },
    ["Fire"] = {
        "move_characters@franklin@fire"
    },
    ["Fire2"] = {
        "move_characters@michael@fire",
        "Fire 2"
    },
    ["Fire3"] = {
        "move_m@fire",
        "Fire 3"
    },
    ["Flee"] = {
        "move_f@flee@a"
    },
    ["Franklin"] = {
        "move_p_m_one"
    },
    ["Gangster"] = {
        "move_m@gangster@generic"
    },
    ["Gangster2"] = {
        "move_m@gangster@ng",
        "Gangster 2"
    },
    ["Gangster3"] = {
        "move_m@gangster@var_e",
        "Gangster 3"
    },
    ["Gangster4"] = {
        "move_m@gangster@var_f",
        "Gangster 4"
    },
    ["Gangster5"] = {
        "move_m@gangster@var_i",
        "Gangster 5"
    },
    ["Grooving"] = {
        "anim@move_m@grooving@"
    },
    ["Guard"] = {
        "move_m@prison_gaurd"
    },
    ["Handcuffs"] = {
        "move_m@prisoner_cuffed"
    },
    ["Heels"] = {
        "move_f@heels@c"
    },
    ["Heels2"] = {
        "move_f@heels@d",
        "Heels 2"
    },
    ["Hiking"] = {
        "move_m@hiking"
    },
    ["Hipster"] = {
        "move_m@hipster@a"
    },
    ["Hobo"] = {
        "move_m@hobo@a"
    },
    ["Hurry"] = {
        "move_f@hurry@a"
    },
    ["Janitor"] = {
        "move_p_m_zero_janitor"
    },
    ["Janitor2"] = {
        "move_p_m_zero_slow",
        "Janitor 2"
    },
    ["Jog"] = {
        "move_m@jog@"
    },
    ["Lemar"] = {
        "anim_group_move_lemar_alley"
    },
    ["Lester"] = {
        "move_heist_lester"
    },
    ["Lester2"] = {
        "move_lester_caneup",
        "Lester 2"
    },
    ["Maneater"] = {
        "move_f@maneater"
    },
    ["Michael"] = {
        "move_ped_bucket"
    },
    ["Money"] = {
        "move_m@money"
    },
    ["Muscle"] = {
        "move_m@muscle@a"
    },
    ["Posh"] = {
        "move_m@posh@"
    },
    ["Posh2"] = {
        "move_f@posh@",
        "Posh 2"
    },
    ["Quick"] = {
        "move_m@quick"
    },
    ["Runner"] = {
        "female_fast_runner"
    },
    ["Sad"] = {
        "move_m@sad@a"
    },
    ["Sassy"] = {
        "move_m@sassy"
    },
    ["Sassy2"] = {
        "move_f@sassy",
        "Sassy 2"
    },
    ["Scared"] = {
        "move_f@scared"
    },
    ["Sexy"] = {
        "move_f@sexy@a"
    },
    ["Shady"] = {
        "move_m@shadyped@a"
    },
    ["Slow"] = {
        "move_characters@jimmy@slow@"
    },
    ["Swagger"] = {
        "move_m@swagger"
    },
    ["Tough"] = {
        "move_m@tough_guy@"
    },
    ["Tough2"] = {
        "move_f@tough_guy@",
        "Tough 2"
    },
    ["Trash"] = {
        "clipset@move@trash_fast_turn"
    },
    ["Trash2"] = {
        "missfbi4prepp1_garbageman",
        "Trash 2"
    },
    ["Trevor"] = {
        "move_p_m_two"
    },
    ["Wide"] = {
        "move_m@bag"
    },
    ["Chubbymale"] = {
        "move_chubby",
        "Chubby Male"
    },
    -- male
    ["Chubbyfemale"] = {
        "move_f@chubby@a",
        "Chubby Female"
    },
    -- female
    ["Depressed"] = {
        "move_m@depressed@a"
    },
    ["Depressed2"] = {
        "move_m@depressed@b",
        "Depressed 2"
    },

    -- I cant get these to work for some reason, if anyone knows a fix, let me know
    -- ? The break menu part should be that the game can't find the anim dict and loop for it infinitely
    -- ["Caution"] = {"move_m@caution"}, -- breaks menu
    -- ["Chubby"] = {"anim@move_m@chubby@a"}, -- breaks menu
    -- ["Crazy"] = {"move_m@crazy"},-- breaks menu
    -- ["Joy"] = {"move_m@joy@a"},-- breaks menu
    -- ["Power"] = {"move_m@power"},-- breaks menu
    -- ["Wading"] = {"move_m@wading"} -- breaks menu
    -- ["Depressed 3"] = {"move_m@depressed@c" }, -- breaks menu
    -- ["Depressed 4"] = {"move_m@depressed@d" }, -- breaks menu
    -- ["Caution"] = {"move_m@caution" },-- breaks menu
    -- ["Crazy"] = {"move_m@crazy" }, -- breaks menu
    -- ["Joy"] = {"move_m@joy@a" }, -- breaks menu
    -- ["Power"] = {"move_m@power" }, -- breaks menu
    -- ["Power Walk"] = {"move_m@powerwalk" }, -- breaks menu
    -- ["Tired"] = {"move_m@tired" }, -- breaks menu
    -- -- ["Wading"] = {"move_m@wading"},-- breaks menu
}


--- SHARED EMOTES ---

DP.Shared = {
    --[emotename] = {dictionary, animation, displayname, targetemotename, additionalanimationoptions}
    -- you dont have to specify targetemoteanem, if you do dont it will just play the same animation on both.
    -- targetemote is used for animations that have a corresponding animation to the other player.
 
 
    -----------------------------------------NEW Ttyy----------------------------------------------
    ["cuddle"] = {"tigerle@custom@couple@cuddle1a", "tigerle_couple_cuddle1a", "~g~! NEW EMOTES~g~ Cuddle", "cuddle2", AnimationOptions =
     {
         EmoteMoving = false,
         EmoteLoop = true,
         Atatchto = true,
         xPos = 0.0,
         yPos = 0.0,
         zPos = 0.0,
         xRot = 0.0,
         yRot = 0.0,
         zRot = 0.0,
    }},
    ["cuddle2"] = {"tigerle@custom@couple@cuddle1b", "tigerle_couple_cuddle1b", "~g~! NEW EMOTES~g~ Cuddle 2", "cuddle", AnimationOptions =
     {
         EmoteMoving = false,
         EmoteLoop = true,
         Atatchto = true,
         xPos = 0.0,
         yPos = 0.0,
         zPos = 0.0,
         xRot = 0.0,
         yRot = 0.0,
         zRot = 0.0,
    }},
    ["standcuddle"] = {"tigerle@custom@couple@standcuddle_a", "tigerle_couple_standcuddle_a", "~g~! NEW EMOTES~g~ Stand Cuddle", "standcuddle2", AnimationOptions =
    {
        EmoteMoving = false,
        EmoteLoop = true,
        Atatchto = true,
        xPos = 0.0,
        yPos = 0.35,
        zPos = 0.0,
        xRot = 0.0,
        yRot = 0.0,
        zRot = 180.0,
    }},
    ["standcuddle2"] = {"tigerle@custom@couple@standcuddle_b", "tigerle_couple_standcuddle_b", "~g~! NEW EMOTES~g~ Stand Cuddle 2", "standcuddle", AnimationOptions =
    {
        EmoteMoving = false,
        EmoteLoop = true,
        Atatchto = true,
        xPos = 0.0,
        yPos = 0.35,
        zPos = 0.0,
        xRot = 0.0,
        yRot = 0.0,
        zRot = 180.0,
    }},
    ["kissing"] = {"tigerle@custom@couple@kissing1a", "tigerle_couple_kissing1a", "~g~! NEW EMOTES~g~ Kissing", "kissing2", AnimationOptions =
     {
         EmoteMoving = false,
         EmoteLoop = true,
         Atatchto = true,
         xPos = 0.0,
         yPos = 0.0,
         zPos = 0.0,
         xRot = 0.0,
         yRot = 0.0,
         zRot = 0.0,
     }},
    ["kissing2"] = {"tigerle@custom@couple@kissing1b", "tigerle_couple_kissing1b", "~g~! NEW EMOTES~g~ Kissing 2", "kissing", AnimationOptions =
     {
         EmoteMoving = false,
         EmoteLoop = true,
         Atatchto = true,
         xPos = 0.0,
         yPos = 0.0,
         zPos = 0.0,
         xRot = 0.0,
         yRot = 0.0,
         zRot = 0.0,
     }},
     ["kissing3"] = {"tigerle@custom@couple@kissing2a", "tigerle_couple_kissing2a", "~g~! NEW EMOTES~g~ Kissing 3", "kissing4", AnimationOptions =
     {
         EmoteMoving = false,
         EmoteLoop = true,
         Atatchto = true,
         xPos = 0.0,
         yPos = 0.0,
         zPos = 0.0,
         xRot = 0.0,
         yRot = 0.0,
         zRot = 0.0,
     }},
    ["kissing4"] = {"tigerle@custom@couple@kissing2b", "tigerle_couple_kissing2b", "~g~! NEW EMOTES~g~ Kissing 4", "kissing3", AnimationOptions =
     {
         EmoteMoving = false,
         EmoteLoop = true,
         Atatchto = true,
         xPos = 0.0,
         yPos = 0.0,
         zPos = 0.0,
         xRot = 0.0,
         yRot = 0.0,
         zRot = 0.0,
     }},
    ["laying"] = {"tigerle@custom@couple@laying1a", "tigerle_couple_laying1a", "~g~! NEW EMOTES~g~ Laying", "laying2", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
       Atatchto = true,
       xPos = 0.0,
       yPos = 0.0,
       zPos = 0.0,
       xRot = 0.0,
       yRot = 0.0,
       zRot = 0.0,
    }},
    ["laying2"] = {"tigerle@custom@couple@laying1b", "tigerle_couple_laying1b", "~g~! NEW EMOTES~g~ Laying 2", "laying", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
       Atatchto = true,
       xPos = 0.0,
       yPos = 0.0,
       zPos = 0.0,
       xRot = 0.0,
       yRot = 0.0,
       zRot = 0.0,
    }},
 
    ["receiveblowjob"] = {"misscarsteal2pimpsex","pimpsex_punter","Receive Blowjob","giveblowjob", AnimationOptions = 
    {
       EmoteMoving = false,
       EmoteDuration = 30000,
       SyncOffsetFront = 0.63
       
    }},
 
    ["giveblowjob"] = {"misscarsteal2pimpsex","pimpsex_hooker","Give Blowjob","receiveblowjob", AnimationOptions = 
    {
       EmoteMoving = false,
       EmoteDuration = 30000,
       SyncOffsetFront = 0.63
    }},
 
    ["streetsexmale"] = {"misscarsteal2pimpsex","shagloop_pimp","Street Sex Male","streetsexfemale", AnimationOptions = 
    {
       EmoteMoving = false,
       EmoteLoop = true,
       SyncOffsetFront = 0.50
    }},
    ["streetsexfemale"] = {"misscarsteal2pimpsex","shagloop_hooker","Street Sex Female","streetsexmale", AnimationOptions = 
    {
       EmoteMoving = false,
       EmoteLoop = true,
       SyncOffsetFront = 0.50
    }},
 
    ["pback"] = {"anim@arena@celeb@flat@paired@no_props@","piggyback_c_player_a","Offer Piggy Back","pback2", AnimationOptions = 
    {
       EmoteMoving = true,
       EmoteLoop = true,
    }},
 
    ["pback2"] = {"anim@arena@celeb@flat@paired@no_props@","piggyback_c_player_b","Be Piggy Backed","pback",AnimationOptions = {
       EmoteMoving = false,
       EmoteLoop = true,
       Attachto = true,
       bone = 0,
       xPos = 0.0,
       yPos = -0.07,
       zPos = 0.4,
       xRot = 0.0,
       yRot = 0.0,
       zRot = 0.0,
    }},
    ["cprs"] = {"mini@cpr@char_a@cpr_str","cpr_pumpchest","Give CPR","cprs2",AnimationOptions = 
    {
       EmoteLoop = true,
       StartDelay = 250,
    }},
    ["cprs2"] = {"mini@cpr@char_b@cpr_str","cpr_pumpchest","Get CPR","cprs",AnimationOptions = 
    {
       EmoteLoop = true,
       Attachto = true,
       xPos = 0.35,
       yPos = 0.8,
       zPos = 0.0,
       xRot = 0.0,
       yRot = 0.0,
       zRot = 270.0,
    }},
    ["cprs3"] = {"missheistfbi3b_ig8_2","cpr_loop_paramedic","Give CPR 2","cprs4",AnimationOptions = 
    {
       EmoteLoop = true,
       StartDelay = 250,
    }},
    ["cprs4"] = {"missheistfbi3b_ig8_2","cpr_loop_victim","Get CPR 2","cprs3",AnimationOptions = 
    {
       EmoteLoop = true,
       Attachto = true,
       xPos = 0.35,
       yPos = 0.65,
       zPos = 0.0,
       xRot = 0.0,
       yRot = 0.0,
       zRot = 270.0,
    }},
    ["hostage"] = {"anim@gangops@hostage@","perp_idle","Take hostage","hostage2",AnimationOptions = 
    {
       EmoteMoving = true,
       EmoteLoop = true,
    }},
    ["hostage2"] = {"anim@gangops@hostage@","victim_idle","Be hostage","hostage", AnimationOptions = 
    {
       EmoteLoop = true,
       Attachto = true,
       xPos = -0.3,
       yPos = 0.1,
       zPos = 0.0,
       xRot = 0.0,
       yRot = 0.0,
       zRot = 0.0,
    }},
    ["search"] = {"custom@police","police","Search","search2", AnimationOptions = 
    {
       EmoteMoving = true,
       EmoteLoop = false,
    }},
    ["search2"] = {"missfam5_yoga","a2_pose","Be searched","search", AnimationOptions = 
    {
       EmoteMoving = true,
       EmoteLoop = false,
       -- EmoteDuration = 9700,
       Attachto = true,
       xPos = 0.0,
       yPos = 0.5,
       zPos = 0.0,
       xRot = 0.0,
       yRot = 0.0,
       zRot = 0.0,
    }},
    ["followa"] = {"dollie_mods@follow_me_001","follow_me_001","Follow A (Front)","followb",AnimationOptions = 
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["followb"] = {"dollie_mods@follow_me_002","follow_me_002","Follow B (Back)","followa",AnimationOptions = 
    {
       EmoteLoop = true,
       Attachto = true,
       xPos = 0.078,
       yPos = 0.018,
       zPos = 0.00,
       xRot = 0.00,
       yRot = 0.00,
       zRot = 0.00,
    }},
    ["kiss"] = {"hs3_ext-20","cs_lestercrest_3_dual-20","Kiss","kiss2",AnimationOptions = {
       EmoteMoving = false,
       EmoteDuration = 10000,
       SyncOffsetFront = 0.08
    }},
    ["kiss2"] = {"hs3_ext-20","csb_georginacheng_dual-20","Kiss 2","kiss",AnimationOptions = 
    {
       EmoteMoving = false,
       EmoteDuration = 10000,
       SyncOffsetFront = 0.08
    }},
    ["kiss3"] = {"hs3_ext-19","cs_lestercrest_3_dual-19","Kiss 3","kiss4",AnimationOptions = 
    {
       EmoteMoving = false,
       EmoteDuration = 10000,
       SyncOffsetFront = 0.08
    }},
 
    ["kiss4"] = {"hs3_ext-19","csb_georginacheng_dual-19","Kiss 4","kiss3",AnimationOptions = 
    {
       EmoteMoving = false,
       EmoteDuration = 10000,
       SyncOffsetFront = 0.08
    }},
 
    ["coupleanim"] = {"anim@scripted@robbery@tun_prep_uni_ig1_couple@","action_var_01_bank_manager","Couple Drinking (Wine Glasses)","coupleanim2",AnimationOptions = 
    {
       Prop = 'p_wine_glass_s',
       PropBone = 60309,
       PropPlacement = {
          -0.0500,
          -0.0100,
          -0.1700,
          0.0,
          0.0,
          0.0,
       },
       EmoteMoving = false,
       EmoteLoop = true,
    }},
 
    ["coupleanim2"] = {"anim@scripted@robbery@tun_prep_uni_ig1_couple@","action_var_01_female","Couple Drinking F (Wine Glasses)","coupleanim",AnimationOptions = 
       {
          Prop = 'p_wine_glass_s',
          PropBone = 28422,
          PropPlacement = {
             0.0,
             0.0,
             0.0,
             0.0,
             0.0,
             0.0,
       },
       SyncOffsetSide = -0.04125,
       SyncOffsetFront = 0.11,
       EmoteMoving = false,
       EmoteLoop = true,
    }},
 
    ["handshake"] = {"mp_ped_interaction", "handshake_guy_a", "Handshake", "handshake2", AnimationOptions =
    {
        EmoteMoving = true,
        EmoteDuration = 3000,
        SyncOffsetFront = 0.9
    }},
    ["handshake2"] = {"mp_ped_interaction", "handshake_guy_b", "Handshake 2", "handshake", AnimationOptions =
    {
        EmoteMoving = true,
        EmoteDuration = 3000
    }},
    ["hug"] = {"mp_ped_interaction", "kisses_guy_a", "hug", "hug2", AnimationOptions =
    {
        EmoteMoving = false,
        EmoteDuration = 5000,
        SyncOffsetFront = 1.05,
    }},
    ["Hugnew"] = {"misscarsteal2chad_goodbye", "chad_armsaround_chad", "Hugnew", "Hugnew2", AnimationOptions =
    {
        EmoteMoving = false,
        EmoteLoop = true,
        SyncOffsetFront = 0.35,
        SyncOffsetX = -0.04
    }},
    ["Hugnew2"] = {"misscarsteal2chad_goodbye", "chad_armsaround_girl", "Hugnew2", "Hugnew", AnimationOptions =
    {
        EmoteMoving = false,
        EmoteLoop = true,
        SyncOffsetFront = 0.35,
        SyncOffsetX = -0.04
    }},
    ["Hugnew3"] = {"misscarsteal2chad_goodbye", "chad_idle_chad", "Hugnew3", "Hugnew4", AnimationOptions =
    {
        EmoteMoving = false,
        EmoteLoop = true,
        SyncOffsetFront = 0.70,
        SyncOffsetX = -0.15
    }},
    ["Hugnew4"] = {"misscarsteal2chad_goodbye", "chad_idle_girl", "Hugnew4", "Hugnew3", AnimationOptions =
    {
        EmoteMoving = false,
        EmoteLoop = true,
        SyncOffsetFront = 0.70,
        SyncOffsetX = -0.15
    }},
 
    ["bro"] = {"mp_ped_interaction","hugs_guy_a","Bro","bro2",AnimationOptions = 
    {
       SyncOffsetFront = 1.14
    }},
 
    ["bro2"] = {"mp_ped_interaction","hugs_guy_b","Bro 2","bro",AnimationOptions = 
    {
    SyncOffsetFront = 1.14
    }},
    
    ["give"] = {"mp_common", "givetake1_a", "Give", "give2", AnimationOptions =
    {
        EmoteMoving = true,
        EmoteDuration = 2000
    }},
    ["give2"] = {"mp_common", "givetake1_b", "Give 2", "give", AnimationOptions =
    {
        EmoteMoving = true,
        EmoteDuration = 2000
    }},
    ["baseball"] = {"anim@arena@celeb@flat@paired@no_props@", "baseball_a_player_a", "Baseball", "baseballthrow"},
    ["baseballthrow"] = {"anim@arena@celeb@flat@paired@no_props@", "baseball_a_player_b", "Baseball Throw", "baseball"},
    ["stickup"] = {"random@countryside_gang_fight", "biker_02_stickup_loop", "Stick Up", "stickupscared", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = true,
    }},
    ["stickupscared"] = {"missminuteman_1ig_2", "handsup_base", "Stickup Scared", "stickup", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteLoop = true,
    }},
    ["punch"] = {"melee@unarmed@streamed_variations", "plyr_takedown_rear_lefthook", "Punch", "punched"},
    ["punched"] = {"melee@unarmed@streamed_variations", "victim_takedown_front_cross_r", "Punched", "punch"},
    ["headbutt"] = {"melee@unarmed@streamed_variations", "plyr_takedown_front_headbutt", "Headbutt", "headbutted"},
    ["headbutted"] = {"melee@unarmed@streamed_variations", "victim_takedown_front_headbutt", "Headbutted", "headbutt"},
    ["slap2"] = {"melee@unarmed@streamed_variations", "plyr_takedown_front_backslap", "Slap 2", "slapped2", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = true,
        EmoteDuration = 2000,
    }},
    ["slap"] = {"melee@unarmed@streamed_variations", "plyr_takedown_front_slap", "Slap", "slapped", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = true,
        EmoteDuration = 2000,
    }},
    ["slapped"] = {"melee@unarmed@streamed_variations", "victim_takedown_front_slap", "Slapped", "slap"},
    ["slapped2"] = {"melee@unarmed@streamed_variations", "victim_takedown_front_backslap", "Slapped 2", "slap2"},
 }

--- DANCING EMOTES, SOME WITH PROPS ---

DP.Dances = {
    ["Ttyydanced"] = {"anim@amb@nightclub@mini@dance@dance_solo@techno_monkey@", "high_center_up", "Ttyy Danced ! New", AnimationOptions =
    {
       EmoteLoop = true
    }},
    ["Ttyydanced1"] = {"anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_hi_intensity", "trans_dance_prop_hi_to_li_09_v1_female^5", " Ttyy Danced 1 ! New", AnimationOptions =
    {
       EmoteLoop = true
    }},
    ["Ttyydanced2"] = {"anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_low_intensity", "trans_dance_prop_li_to_hi_07_v1_female^5", " Ttyy Danced 2 ! New", AnimationOptions =
    {
       EmoteLoop = true
    }},
    ["Ttyydanced3"] = {"anim@amb@nightclub@mini@dance@dance_solo@techno_karate@", "high_right_up", " Ttyy Danced 3 ! New", AnimationOptions =
    {
       EmoteLoop = true
    }},
    ["Ttyydanced4"] = {"anim@amb@nightclub@mini@dance@dance_solo@techno_karate@", "med_left_up", " Ttyy Danced 4 ! New", AnimationOptions =
    {
       EmoteLoop = true
    }},
    ["Ttyydanced5"] = {"anim@amb@nightclub@mini@dance@dance_solo@techno_karate@", "med_left", " Ttyy Danced 5 ! New", AnimationOptions =
    {
       EmoteLoop = true
    }},
    ["Ttyydanced6"] = {"anim@amb@nightclub@mini@dance@dance_solo@techno_karate@", "med_left_down", " Ttyy Danced 6 ! New", AnimationOptions =
    {
       EmoteLoop = true
    }},
    ["Ttyydanced7"] = {"anim@amb@nightclub@mini@dance@dance_solo@jumper@", "med_right_down", "Ttyy Danced 7 ! New", AnimationOptions =
    {
       EmoteLoop = true
    }},
    ["Ttyydanced8"] = {"anim@amb@nightclub@mini@dance@dance_solo@techno_monkey@", "low_left_up", "Ttyy Danced 8 ! New", AnimationOptions =
    {
       EmoteLoop = true
    }},
    ["Ttyydanced9"] = {"anim@amb@nightclub@mini@dance@dance_solo@techno_monkey@", "low_right_down", "Ttyy Danced 8 ! New", AnimationOptions =
    {
       EmoteLoop = true
    }},
    ["Ttyydanced10"] = {"anim@amb@nightclub@mini@dance@dance_solo@techno_karate@", "high_left", "Ttyy Danced 10 ! New", AnimationOptions =
    {
       EmoteLoop = true
    }},
    ---------------------------------------------------------------------------------------------------------------------------------------
    ---------------------------------------------------------------------------------------------------------------------------------------
    ---------------------------------------------------------------------------------------------------------------------------------------
    ---------------------------------------------------------------------------------------------------------------------------------------
    ---------------------------------------------------------------------------------------------------------------------------------------
    ["newdance1"] = {"divined@dances@new", "ddance1", "Ttyy Dancing 1 ! NEW", AnimationOptions =
    {
        EmoteLoop = true
    }},
    ["newdance2"] = {"divined@dances@new", "ddance2", "Ttyy Dancing 2 ! NEW", AnimationOptions =
    {
        EmoteLoop = true
    }},
    ["newdance3"] = {"divined@dances@new", "ddance3", "Ttyy Dancing 3 ! NEW", AnimationOptions =
    {
        EmoteLoop = true
    }},
    ["newdance4"] = {"divined@dances@new", "ddance4", "Ttyy Dancing 4 ! NEW", AnimationOptions =
    {
        EmoteLoop = true
    }},
    ["newdance5"] = {"divined@dances@new", "ddance5", "Ttyy Dancing 5 ! NEW", AnimationOptions =
    {
        EmoteLoop = true
    }},
    ["newdance6"] = {"divined@dances@new", "ddance6", "Ttyy Dancing 6 ! NEW", AnimationOptions =
    {
        EmoteLoop = true
    }},
    ["newdance7"] = {"divined@dances@new", "ddance7", "Ttyy Dancing 7 ! NEW", AnimationOptions =
    {
        EmoteLoop = true
    }},
    ["newdance8"] = {"divined@dances@new", "ddance8", "Ttyy Dancing 8 ! NEW", AnimationOptions =
    {
        EmoteLoop = true
    }},
    ["newdance9"] = {"divined@dances@new", "ddance9", "Ttyy Dancing 9 ! NEW", AnimationOptions =
    {
        EmoteLoop = true
    }},
    ["newdance10"] = {"divined@dances@new", "ddance10", "Ttyy Dancing 10 ! NEW", AnimationOptions =
    {
        EmoteLoop = true
    }},
    ["newdance11"] = {"divined@dances@new", "ddance11", "Ttyy Dancing 11 ! NEW", AnimationOptions =
    {
        EmoteLoop = true
    }},
    ["newdance12"] = {"divined@dances@new", "ddance12", "Ttyy Dancing 12 ! NEW", AnimationOptions =
    {
        EmoteLoop = true
    }},
    ["newdance13"] = {"divined@dances@new", "ddance13", "Ttyy Dancing 13 ! NEW", AnimationOptions =
    {
        EmoteLoop = true
    }},
    ["crowddance"] = {"anim@amb@nightclub_island@dancers@crowddance_single_props@", "mi_dance_prop_13_v1_male^3", "Crowd Dance", AnimationOptions =
    {
        EmoteLoop = true,
    }},
 
    ["Ttyysdance"] = {"custom@dont_start", "dont_start", "Dont Start ! NEW", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ---------------------------------------------------------------------------------------------------------------------------------------
    ---------------------------------------------------------------------------------------------------------------------------------------
    ---------------------------------------------------------------------------------------------------------------------------------------
    ---------------------------------------------------------------------------------------------------------------------------------------
    ---------------------------------------------------------------------------------------------------------------------------------------
    ["Ttyysdance2"] = {"custom@renegade", "renegade", "Renegade ! NEW", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["Ttyysdance3"] = {"custom@savage", "savage", "Savage ! NEW", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["Ttyysdance4"] = {"custom@sayso", "sayso", "Say So ! NEW", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["Ttyysdance5"] = {"custom@take_l", "take_l", "Take The L ! NEW", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["Ttyysdance6"] = {"custom@rickroll", "rickroll", "Rick Roll ! NEW", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["Ttyysdance7"] = {"custom@orangejustice", "orangejustice", "Orange Justice ! NEW", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["Ttyysdance8"] = {"custom@floss", "floss", "Floss ! NEW", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["Ttyysdance9"] = {"custom@crossbounce", "crossbounce", "Cross Bounce ! NEW", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["Ttyysdance10"] = {"custom@toosie_slide", "toosie_slide", "Toosie Slide ! NEW", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ---------------------------------------------------------------------------------------------------------------------------------------
    ---------------------------------------------------------------------------------------------------------------------------------------
    ---------------------------------------------------------------------------------------------------------------------------------------
    ---------------------------------------------------------------------------------------------------------------------------------------
    ---------------------------------------------------------------------------------------------------------------------------------------
    ["Ttyydance"] = {"anim@mp_player_intcelebrationfemale@uncle_disco", "uncle_disco", "Ttyy Dance New", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["Ttyydance2"] = {"anim@mp_player_intcelebrationmale@uncle_disco", "uncle_disco", "Ttyy Dance New 2", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["Ttyydance3"] = {"anim@mp_player_intcelebrationmale@heart_pumping", "heart_pumping", "Ttyy Dance New 3", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["Ttyydance4"] = {"anim@mp_player_intcelebrationfemale@heart_pumping", "heart_pumping", "Ttyy Dance New 4", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["Ttyydance5"] = {"anim@mp_player_intcelebrationfemale@salsa_roll", "salsa_roll", "Ttyy Dance New 5", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["Ttyydance6"] = {"anim@mp_player_intcelebrationmale@salsa_roll", "salsa_roll", "Ttyy Dance New 6", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["Ttyydance7"] = {"anim@mp_player_intcelebrationfemale@find_the_fish", "find_the_fish", "Ttyy Dance New 7", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["Ttyydance8"] = {"anim@mp_player_intcelebrationmale@find_the_fish", "find_the_fish", "Ttyy Dance New 8", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["Ttyydances"] = {"anim@mp_player_intcelebrationfemale@raise_the_roof", "raise_the_roof", "Ttyy Dances New", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["Ttyydances2"] = {"anim@mp_player_intcelebrationmale@raise_the_roof", "raise_the_roof", "Ttyy Dances New 2", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["Ttyydances3"] = {"anim@mp_player_intcelebrationfemale@cats_cradle", "cats_cradle", "Ttyy Dances New 3", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["Ttyydances4"] = {"anim@mp_player_intcelebrationmale@cats_cradle", "cats_cradle", "Ttyy Dances New 4", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["Ttyydances5"] = {"anim@mp_player_intcelebrationfemale@oh_snap", "oh_snap", "Ttyy Dances New 5", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["Ttyydances6"] = {"anim@mp_player_intcelebrationmale@oh_snap", "oh_snap", "Ttyy Dances New 6", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["Ttyydances7"] = {"anim@mp_player_intcelebrationfemale@banging_tunes", "banging_tunes", "Ttyy Dances New 7", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["Ttyydances8"] = {"anim@mp_player_intcelebrationmale@banging_tunes", "banging_tunes", "Ttyy Dances New 8", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["Ttyydancing"] = {"anim@mp_player_intcelebrationfemale@banging_tunes_left", "banging_tunes", "Ttyy Dancing New", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["Ttyydancing2"] = {"anim@mp_player_intcelebrationmale@banging_tunes_left", "banging_tunes", "Ttyy Dances New 2", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["Ttyydancing3"] = {"anim@mp_player_intcelebrationfemale@banging_tunes_right", "banging_tunes", "Ttyy Dancing New 3", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["Ttyydancing4"] = {"anim@mp_player_intcelebrationmale@banging_tunes_right", "banging_tunes", "Ttyy Dances New 4", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ---------------------------------------------------------------------------------------------------------------------------------------
    ---------------------------------------------------------------------------------------------------------------------------------------
    ---------------------------------------------------------------------------------------------------------------------------------------
    ---------------------------------------------------------------------------------------------------------------------------------------
    ---------------------------------------------------------------------------------------------------------------------------------------
    ["danceTtyy"] = {"anim@amb@nightclub@dancers@crowddance_single_props@hi_intensity", "hi_dance_prop_09_v1_female^1", "Ttyy Dance 1 New", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["danceTtyy2"] = {"anim@amb@nightclub@dancers@crowddance_single_props@hi_intensity", "hi_dance_prop_09_v1_male^1", "Ttyy Dance 2 New", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["danceTtyy3"] = {"anim@amb@nightclub@dancers@crowddance_single_props@hi_intensity", "hi_dance_prop_11_v1_female^1", "Ttyy Dance 3 New", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["danceTtyy4"] = {"anim@amb@nightclub@dancers@crowddance_single_props@hi_intensity", "hi_dance_prop_11_v1_male^1", "Ttyy Dance 4 New", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["danceTtyy5"] = {"anim@amb@nightclub@dancers@crowddance_single_props@hi_intensity", "hi_dance_prop_13_v1_female^1", "Ttyy Dance 5 New", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["danceTtyy6"] = {"anim@amb@nightclub@dancers@crowddance_single_props@hi_intensity", "hi_dance_prop_13_v1_male^1", "Ttyy Dance 6 New", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["danceTtyy7"] = {"anim@amb@nightclub@dancers@crowddance_single_props@hi_intensity", "hi_dance_prop_15_v1_female^1", "Ttyy Dance 7 New", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["danceTtyy8"] = {"anim@amb@nightclub@dancers@crowddance_single_props@hi_intensity", "hi_dance_prop_15_v1_male^1", "Ttyy Dance 8 New", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["danceTtyy9"] = {"anim@amb@nightclub@dancers@crowddance_single_props@hi_intensity", "hi_dance_prop_17_v1_male^1", "Ttyy Dance 9 New", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["newTtyy"] = {"custom@downward_fortnite", "downward_fortnite", "New Ttyy Dance", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["newTtyy2"] = {"custom@pullup", "pullup", "New Ttyy Dance 2", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["newTtyy3"] = {"custom@rollie", "rollie", "New Ttyy Dance 3", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["newTtyy4"] = {"custom@wanna_see_me", "wanna_see_me", "New Ttyy Dance 4", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["newTtyy5"] = {"anim@amb@nightclub@dancers@crowddance_single_props@low_intensity", "li_crowd_prop_15_v1_female^1", "New Ttyy Dance 5", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["newTtyy6"] = {"anim@amb@nightclub@dancers@crowddance_single_props@low_intensity", "li_crowd_prop_15_v1_male^1", "New Ttyy Dance 6", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["newTtyy7"] = {"anim@amb@nightclub@dancers@crowddance_single_props@low_intensity", "li_dance_prop_09_v1_female^1", "New Ttyy Dance 7", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["newTtyy8"] = {"anim@amb@nightclub@dancers@crowddance_single_props@low_intensity", "li_dance_prop_09_v1_male^1", "New Ttyy Dance 8", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["newTtyy9"] = {"anim@amb@nightclub@dancers@crowddance_single_props@low_intensity", "li_dance_prop_11_v1_male^1", "New Ttyy Dance 9", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ---------------------------------------------------------------------------------------------------------------------------------------
    ---------------------------------------------------------------------------------------------------------------------------------------
    ---------------------------------------------------------------------------------------------------------------------------------------
    ---------------------------------------------------------------------------------------------------------------------------------------
    ---------------------------------------------------------------------------------------------------------------------------------------
    ["newjoged"] = {"anim@amb@nightclub@dancers@crowddance_single_props@med_intensity", "mi_dance_prop_09_v1_female^1", "New Ttyy Joged", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["newjoged2"] = {"anim@amb@nightclub@dancers@crowddance_single_props@med_intensity", "mi_dance_prop_09_v1_male^1", "New Ttyy Joged 2", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["newjoged3"] = {"anim@amb@nightclub@dancers@crowddance_single_props@med_intensity", "mi_dance_prop_11_v1_female^1", "New Ttyy Joged 3", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["newjoged4"] = {"anim@amb@nightclub@dancers@crowddance_single_props@med_intensity", "mi_dance_prop_11_v1_male^1", "New Ttyy Joged 4", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["newjoged5"] = {"anim@amb@nightclub@dancers@crowddance_single_props@med_intensity", "mi_dance_prop_13_v1_female^1", "New Ttyy Joged 5", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["newjoged6"] = {"anim@amb@nightclub@dancers@crowddance_single_props@med_intensity", "mi_dance_prop_13_v1_male^1", "New Ttyy Joged 6", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["newjoged7"] = {"anim@amb@nightclub@dancers@crowddance_single_props@med_intensity", "mi_dance_prop_15_v1_female^1", "New Ttyy Joged 7", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["newjoged8"] = {"anim@amb@nightclub@dancers@crowddance_single_props@med_intensity", "mi_dance_prop_15_v1_male^1", "New Ttyy Joged 8", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["newjoged9"] = {"anim@amb@nightclub@dancers@crowddance_single_props@med_intensity", "mi_dance_prop_17_v1_male^1", "New Ttyy Joged 9", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ---------------------------------------------------------------------------------------------------------------------------------------
    ---------------------------------------------------------------------------------------------------------------------------------------
    ---------------------------------------------------------------------------------------------------------------------------------------
    ---------------------------------------------------------------------------------------------------------------------------------------
    ---------------------------------------------------------------------------------------------------------------------------------------
    ["newjoget"] = {"anim@amb@nightclub@mini@dance@dance_solo@techno_monkey@", "dance_solo", "New Ttyy Joget 1", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["newjoget2"] = {"anim@amb@nightclub@dancers@crowddance_single_props@med_intensity", "mi_dance_prop_09_v1_female^1", "New Ttyy Joged 2", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["newjoget3"] = {"anim@amb@nightclub@dancers@crowddance_single_props@med_intensity", "mi_dance_prop_09_v1_female^1", "New Ttyy Joged 3", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["newjoget4"] = {"anim@amb@nightclub@dancers@crowddance_single_props@med_intensity", "mi_dance_prop_09_v1_female^1", "New Ttyy Joged 4", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["newjoget5"] = {"anim@amb@nightclub@dancers@crowddance_single_props@med_intensity", "mi_dance_prop_09_v1_female^1", "New Ttyy Joged 5", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["newjoget6"] = {"anim@amb@nightclub@dancers@crowddance_single_props@med_intensity", "mi_dance_prop_09_v1_female^1", "New Ttyy Joged 6", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["newjoget7"] = {"anim@amb@nightclub@dancers@crowddance_single_props@med_intensity", "mi_dance_prop_09_v1_female^1", "New Ttyy Joged 7", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["newjoget8"] = {"anim@amb@nightclub@dancers@crowddance_single_props@med_intensity", "mi_dance_prop_09_v1_female^1", "New Ttyy Joged 8", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["newjoget9"] = {"anim@amb@nightclub@dancers@crowddance_single_props@med_intensity", "mi_dance_prop_09_v1_female^1", "New Ttyy Joged 9", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ---------------------------------------------------------------------------------------------------------------------------------------
    ---------------------------------------------------------------------------------------------------------------------------------------
    ---------------------------------------------------------------------------------------------------------------------------------------
    ---------------------------------------------------------------------------------------------------------------------------------------
    ---------------------------------------------------------------------------------------------------------------------------------------
    ["dancef"] = {"anim@amb@nightclub@dancers@solomun_entourage@", "mi_dance_facedj_17_v1_female^1", "Dance F", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["pargoy"] = {"pratnokenpargoy1dictpratnoken_pargoy", "pratnoken_pargoy", "Dance Pargoy", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["gangnamstyle"] = {"custom@gangnamstyle", "gangnamstyle", "Gangnam Style", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["makarena"] = {"custom@makarena", "makarena", "Makarena", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["maraschino"] = {"custom@maraschino", "maraschino", "Maraschino", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["salsa"] = {"custom@salsa", "salsa", "Salsa", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["pickfromground"] = {"custom@pickfromground", "pickfromground", "Pick From Ground", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["dancef2"] = {"anim@amb@nightclub@mini@dance@dance_solo@female@var_a@", "high_center", "Dance F2", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["dancef3"] = {"anim@amb@nightclub@mini@dance@dance_solo@female@var_a@", "high_center_up", "Dance F3", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["dancef4"] = {"anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", "hi_dance_facedj_09_v2_female^1", "Dance F4", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["dancef5"] = {"anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", "hi_dance_facedj_09_v2_female^3", "Dance F5", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["dancef6"] = {"anim@amb@nightclub@mini@dance@dance_solo@female@var_a@", "high_center_up", "Dance F6", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["danceslow2"] = {"anim@amb@nightclub@mini@dance@dance_solo@female@var_a@", "low_center", "Dance Slow 2", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["danceslow3"] = {"anim@amb@nightclub@mini@dance@dance_solo@female@var_a@", "low_center_down", "Dance Slow 3", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["danceslow4"] = {"anim@amb@nightclub@mini@dance@dance_solo@female@var_b@", "low_center", "Dance Slow 4", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["danceslow5"] = {"misslamar1leadinout", "denise_idle_d", "Dance Slow 4", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dance"] = {"anim@amb@nightclub@dancers@podium_dancers@", "hi_dance_facedj_17_v2_male^5", "Dance", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["dance2"] = {"anim@amb@nightclub@mini@dance@dance_solo@male@var_b@", "high_center_down", "Dance 2", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["dance3"] = {"anim@amb@nightclub@mini@dance@dance_solo@male@var_a@", "high_center", "Dance 3", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["dance4"] = {"anim@amb@nightclub@mini@dance@dance_solo@male@var_b@", "high_center_up", "Dance 4", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["danceupper"] = {"anim@amb@nightclub@mini@dance@dance_solo@female@var_b@", "high_center", "Dance Upper", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["danceupper2"] = {"anim@amb@nightclub@mini@dance@dance_solo@female@var_b@", "high_center_up", "Dance Upper 2", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["danceshy"] = {"anim@amb@nightclub@mini@dance@dance_solo@male@var_a@", "low_center", "Dance Shy", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["danceshy2"] = {"anim@amb@nightclub@mini@dance@dance_solo@female@var_b@", "low_center_down", "Dance Shy 2", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["danceslow"] = {"anim@amb@nightclub@mini@dance@dance_solo@male@var_b@", "low_center", "Dance Slow", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["dancesilly9"] = {"rcmnigel1bnmt_1b", "dance_loop_tyler", "Dance Silly 9", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["dance6"] = {"misschinese2_crystalmazemcs1_cs", "dance_loop_tao", "Dance 6", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["dance7"] = {"misschinese2_crystalmazemcs1_ig", "dance_loop_tao", "Dance 7", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["dance8"] = {"missfbi3_sniping", "dance_m_default", "Dance 8", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["dancesilly"] = {"special_ped@mountain_dancer@monologue_3@monologue_3a", "mnt_dnc_buttwag", "Dance Silly", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["dancesilly2"] = {"move_clown@p_m_zero_idles@", "fidget_short_dance", "Dance Silly 2", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["dancesilly3"] = {"move_clown@p_m_two_idles@", "fidget_short_dance", "Dance Silly 3", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["dancesilly4"] = {"anim@amb@nightclub@lazlow@hi_podium@", "danceidle_hi_11_buttwiggle_b_laz", "Dance Silly 4", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["dancesilly5"] = {"timetable@tracy@ig_5@idle_a", "idle_a", "Dance Silly 5", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["dancesilly6"] = {"timetable@tracy@ig_8@idle_b", "idle_d", "Dance Silly 6", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["dance9"] = {"anim@amb@nightclub@mini@dance@dance_solo@female@var_a@", "med_center_up", "Dance 9", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["dancesilly8"] = {"anim@mp_player_intcelebrationfemale@the_woogie", "the_woogie", "Dance Silly 8", AnimationOptions =
    {
       EmoteLoop = true
    }},
    ["dancesilly7"] = {"anim@amb@casino@mini@dance@dance_solo@female@var_b@", "high_center", "Dance Silly 7", AnimationOptions =
    {
       EmoteLoop = true
    }},
    ["dance5"] = {"anim@amb@casino@mini@dance@dance_solo@female@var_a@", "med_center", "Dance 5", AnimationOptions =
    {
       EmoteLoop = true
    }},
    ["danceglowstick"] = {"anim@amb@nightclub@lazlow@hi_railing@", "ambclub_13_mi_hi_sexualgriding_laz", "Dance Glowsticks", AnimationOptions =
    {
       Prop = 'ba_prop_battle_glowstick_01',
       PropBone = 28422,
       PropPlacement = {0.0700,0.1400,0.0,-80.0,20.0},
       SecondProp = 'ba_prop_battle_glowstick_01',
       SecondPropBone = 60309,
       SecondPropPlacement = {0.0700,0.0900,0.0,-120.0,-20.0},
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["danceglowstick2"] = {"anim@amb@nightclub@lazlow@hi_railing@", "ambclub_12_mi_hi_bootyshake_laz", "Dance Glowsticks 2", AnimationOptions =
    {
       Prop = 'ba_prop_battle_glowstick_01',
       PropBone = 28422,
       PropPlacement = {0.0700,0.1400,0.0,-80.0,20.0},
       SecondProp = 'ba_prop_battle_glowstick_01',
       SecondPropBone = 60309,
       SecondPropPlacement = {0.0700,0.0900,0.0,-120.0,-20.0},
       EmoteLoop = true,
    }},
    ["danceglowstick3"] = {"anim@amb@nightclub@lazlow@hi_railing@", "ambclub_09_mi_hi_bellydancer_laz", "Dance Glowsticks 3", AnimationOptions =
    {
       Prop = 'ba_prop_battle_glowstick_01',
       PropBone = 28422,
       PropPlacement = {0.0700,0.1400,0.0,-80.0,20.0},
       SecondProp = 'ba_prop_battle_glowstick_01',
       SecondPropBone = 60309,
       SecondPropPlacement = {0.0700,0.0900,0.0,-120.0,-20.0},
       EmoteLoop = true,
    }},
    ["dancehorse"] = {"anim@amb@nightclub@lazlow@hi_dancefloor@", "dancecrowd_li_15_handup_laz", "Dance Horse", AnimationOptions =
    {
       Prop = "ba_prop_battle_hobby_horse",
       PropBone = 28422,
       PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["dancehorse2"] = {"anim@amb@nightclub@lazlow@hi_dancefloor@", "crowddance_hi_11_handup_laz", "Dance Horse 2", AnimationOptions =
    {
       Prop = "ba_prop_battle_hobby_horse",
       PropBone = 28422,
       PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
       EmoteLoop = true,
    }},
    ["dancehorse3"] = {"anim@amb@nightclub@lazlow@hi_dancefloor@", "dancecrowd_li_11_hu_shimmy_laz", "Dance Horse 3", AnimationOptions =
    {
       Prop = "ba_prop_battle_hobby_horse",
       PropBone = 28422,
       PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
       EmoteLoop = true,
    }},
    ["dj2"] = {"anim@amb@nightclub@djs@solomun@", "sol_idle_ctr_mid_a_sol", "DJ 2", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["dj3"] = {"anim@amb@nightclub@djs@solomun@", "sol_dance_l_sol", "DJ 3", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["dj4"] = {"anim@amb@nightclub@djs@black_madonna@", "dance_b_idle_a_blamadon", "DJ 4", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["dj5"] = {"anim@amb@nightclub@djs@dixon@", "dixn_end_dix", "DJ 5", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["dj6"] = {"anim@amb@nightclub@djs@dixon@", "dixn_idle_cntr_a_dix", "DJ 6", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["dj7"] = {"anim@amb@nightclub@djs@dixon@", "dixn_idle_cntr_b_dix", "DJ 7", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["dj8"] = {"anim@amb@nightclub@djs@dixon@", "dixn_idle_cntr_g_dix", "DJ 8", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["dj9"] = {"anim@amb@nightclub@djs@dixon@", "dixn_idle_cntr_gb_dix", "DJ 9", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["dj10"] = {"anim@amb@nightclub@djs@dixon@", "dixn_sync_cntr_j_dix", "DJ 10", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance1"] = {"anim@amb@nightclub@dancers@club_ambientpeds@med-hi_intensity", "mi-hi_amb_club_10_v1_male^6", "New Dance 1", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance2"] = {"amb@code_human_in_car_mp_actions@dance@bodhi@ds@base", "idle_a_fp", "New Dance 2", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance3"] = {"amb@code_human_in_car_mp_actions@dance@bodhi@rds@base", "idle_b", "New Dance 3", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance4"] = {"amb@code_human_in_car_mp_actions@dance@std@ds@base", "idle_a", "New Dance 4", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance5"] = {"anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", "hi_dance_facedj_09_v2_male^6", "New Dance 5", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance6"] = {"anim@amb@nightclub@dancers@crowddance_facedj@low_intesnsity", "li_dance_facedj_09_v1_male^6", "New Dance 6", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance7"] = {"anim@amb@nightclub@dancers@crowddance_facedj_transitions@from_hi_intensity", "trans_dance_facedj_hi_to_li_09_v1_male^6", "New Dance 7", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance8"] = {"anim@amb@nightclub@dancers@crowddance_facedj_transitions@from_low_intensity", "trans_dance_facedj_li_to_hi_07_v1_male^6", "New Dance 8", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance9"] = {"anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", "hi_dance_crowd_13_v2_male^6", "New Dance 9", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance10"] = {"anim@amb@nightclub@dancers@crowddance_groups_transitions@from_hi_intensity", "trans_dance_crowd_hi_to_li__07_v1_male^6", "New Dance 10", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance11"] = {"anim@amb@nightclub@dancers@crowddance_single_props@hi_intensity", "hi_dance_prop_13_v1_male^6", "New Dance 11", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance12"] = {"anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_med_intensity", "trans_crowd_prop_mi_to_li_11_v1_male^6", "New Dance 12", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance13"] = {"anim@amb@nightclub@mini@dance@dance_solo@male@var_a@", "med_center_up", "New Dance 13", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance14"] = {"anim@amb@nightclub@mini@dance@dance_solo@male@var_a@", "med_right_up", "New Dance 14", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance15"] = {"anim@amb@nightclub@dancers@crowddance_groups@low_intensity", "li_dance_crowd_17_v1_male^6", "New Dance 15", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance16"] = {"anim@amb@nightclub@dancers@crowddance_facedj_transitions@from_med_intensity", "trans_dance_facedj_mi_to_li_09_v1_male^6", "New Dance 16", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance17"] = {"timetable@tracy@ig_5@idle_b", "idle_e", "New Dance 17", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance18"] = {"special_ped@mountain_dancer@monologue_1@monologue_1a", "mtn_dnc_if_you_want_to_get_to_heaven", "New Dance 18", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance19"] = {"special_ped@mountain_dancer@monologue_4@monologue_4a", "mnt_dnc_verse", "New Dance 19", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance20"] = {"special_ped@mountain_dancer@monologue_3@monologue_3a", "mnt_dnc_buttwag", "New Dance 20", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance21"] = {"anim@amb@nightclub@dancers@black_madonna_entourage@", "hi_dance_facedj_09_v2_male^5", "New Dance 21", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance22"] = {"anim@amb@nightclub@dancers@crowddance_single_props@", "hi_dance_prop_09_v1_male^6", "New Dance 22", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance23"] = {"anim@amb@nightclub@dancers@dixon_entourage@", "mi_dance_facedj_15_v1_male^4", "New Dance 23", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance24"] = {"anim@amb@nightclub@dancers@podium_dancers@", "hi_dance_facedj_17_v2_male^5", "New Dance 24", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance25"] = {"anim@amb@nightclub@dancers@tale_of_us_entourage@", "mi_dance_prop_13_v2_male^4", "New Dance 25", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance26"] = {"misschinese2_crystalmazemcs1_cs", "dance_loop_tao", "New Dance 26", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance27"] = {"misschinese2_crystalmazemcs1_ig", "dance_loop_tao", "New Dance 27", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance28"] = {"anim@mp_player_intcelebrationfemale@uncle_disco", "uncle_disco", "New Dance 28", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance29"] = {"anim@mp_player_intcelebrationfemale@raise_the_roof", "raise_the_roof", "New Dance 29", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance30"] = {"anim@mp_player_intcelebrationmale@cats_cradle", "cats_cradle", "New Dance 30", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance31"] = {"anim@mp_player_intupperbanging_tunes", "idle_a", "New Dance 31", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance32"] = {"anim@amb@nightclub@mini@dance@dance_solo@female@var_a@", "high_center", "New Dance 32", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance33"] = {"anim@amb@nightclub@mini@dance@dance_solo@female@var_b@", "high_center", "New Dance 33", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance34"] = {"anim@amb@nightclub@mini@dance@dance_solo@male@var_b@", "high_center", "New Dance 34", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance35"] = {"anim@amb@nightclub@dancers@crowddance_facedj_transitions@", "trans_dance_facedj_hi_to_mi_11_v1_female^6", "New Dance 35", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance36"] = {"anim@amb@nightclub@dancers@crowddance_facedj_transitions@from_hi_intensity", "trans_dance_facedj_hi_to_li_07_v1_female^6", "New Dance 36", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance37"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_09_v1_female^6", "New Dance 37", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance38"] = {"anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", "hi_dance_crowd_09_v1_female^6", "New Dance 38", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance39"] = {"anim@amb@nightclub@lazlow@hi_podium@", "danceidle_hi_06_base_laz", "New Dance 39", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance40"] = {"amb@code_human_in_car_mp_actions@dance@bodhi@ds@base", "idle_a_fp", "New Dance 40", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance41"] = {"amb@code_human_in_car_mp_actions@dance@bodhi@rds@base", "idle_b", "New Dance 41", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance42"] = {"anim@mp_player_intincardancebodhi@ds@", "idle_a_fp", "New Dance 42", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance43"] = {"anim@mp_player_intincardancebodhi@rds@", "idle_a", "New Dance 43", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance44"] = {"anim@mp_player_intincardancebodhi@rps@", "idle_c", "New Dance 44", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance45"] = {"anim@mp_player_intincardancebodhi@ps@", "idle_a_fp", "New Dance 45", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance46"] = {"special_ped@mountain_dancer@base", "base", "New Dance 46", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance47"] = {"special_ped@mountain_dancer@monologue_1@monologue_1a", "mtn_dnc_if_you_want_to_get_to_heaven", "New Dance 47", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance48"] = {"special_ped@mountain_dancer@monologue_2@monologue_2a", "mnt_dnc_angel", "New Dance 48", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance49"] = {"special_ped@mountain_dancer@monologue_3@monologue_3a", "mnt_dnc_buttwag", "New Dance 49", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance50"] = {"special_ped@mountain_dancer@monologue_4@monologue_4a", "mnt_dnc_verse", "New Dance 50", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance55"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_09_v1_female^1", "New Dance 55", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance56"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_09_v1_female^2", "New Dance 56", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance57"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_09_v1_male^1", "New Dance 57", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance58"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_09_v1_male^2", "New Dance 58", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance59"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_09_v2_female^1", "New Dance 59", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance60"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_09_v2_female^2", "New Dance 60", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance61"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_09_v2_female^2", "New Dance 61", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance62"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_09_v2_male^1", "New Dance 62", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance63"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_11_v1_female^1", "New Dance 63", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance64"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_11_v1_female^2", "New Dance 64", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance65"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_11_v1_male^1", "New Dance 65", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance66"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_11_v1_male^2", "New Dance 66", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance67"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_11_v2_female^1", "New Dance 67", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance68"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_11_v2_female^2", "New Dance 68", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance69"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_11_v2_male^1", "New Dance 69", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance70"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_11_v2_male^2", "New Dance 70", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance71"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_13_v1_female^1", "New Dance 71", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance72"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_13_v1_female^2", "New Dance 72", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance73"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_13_v1_male^1", "New Dance 73", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance74"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_13_v1_male^2", "New Dance 74", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance75"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_13_v2_female^1", "New Dance 75", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance76"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_13_v2_female^2", "New Dance 76", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance77"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_13_v2_male^1", "New Dance 77", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance78"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_13_v2_male^2", "New Dance 78", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance79"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_15_v1_female^1", "New Dance 79", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance80"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_15_v1_female^2", "New Dance 80", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance81"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_15_v1_male^1", "New Dance 81", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance82"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_15_v1_male^2", "New Dance 82", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance83"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_15_v2_female^1", "New Dance 83", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance84"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_15_v2_female^2", "New Dance 84", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance85"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_15_v2_male^1", "New Dance 85", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance86"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_15_v2_male^2", "New Dance 86", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance87"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_17_v1_female^1", "New Dance 87", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance88"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_17_v1_female^2", "New Dance 88", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance89"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_17_v1_male^1", "New Dance 89", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance90"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_17_v1_male^2", "New Dance 90", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance91"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_17_v2_female^1", "New Dance 91", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance92"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_17_v2_female^2", "New Dance 92", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance93"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_17_v2_male^1", "New Dance 93", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance94"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_17_v2_male^2", "New Dance 94", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance95"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "li_dance_facedj_09_v1_female^1", "New Dance 95", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance96"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "li_dance_facedj_09_v1_female^2", "New Dance 96", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance97"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "li_dance_facedj_09_v1_male^1", "New Dance 97", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance98"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "li_dance_facedj_09_v1_male^2", "New Dance 98", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance99"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "li_dance_facedj_09_v2_female^1", "New Dance 99", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["ndance100"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "li_dance_facedj_09_v2_female^2", "New Dance 100", AnimationOption =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["dancenew1"] = {"anim@amb@nightclub@mini@dance@dance_solo@female@var_a@", "med_center_up", "Dance New 1", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew2"] = {"anim@amb@nightclub@djs@black_madonna@", "dance_b_idle_a_blamadon", "Dance New 2", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew3"] = {"anim@amb@nightclub@djs@black_madonna@", "dance_b_idle_d_blamadon", "Dance New 3", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew4"] = {"anim@amb@nightclub@dancers@black_madonna_entourage@", "li_dance_facedj_11_v1_male^1", "Dance New 4", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew5"] = {"anim@amb@nightclub@dancers@black_madonna_entourage@", "hi_dance_facedj_09_v2_male^5", "Dance New 5", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew6"] = {"anim@amb@nightclub@dancers@black_madonna_entourage@", "li_dance_facedj_15_v2_male^2", "Dance New 6", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew7"] = {"anim@amb@nightclub@dancers@crowddance_single_props@", "mi_dance_prop_15_v1_male^1", "Dance New 7", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew8"] = {"anim@amb@nightclub@dancers@crowddance_single_props@", "hi_dance_prop_09_v1_female^1", "Dance New 8", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew9"] = {"anim@amb@nightclub@dancers@crowddance_single_props@", "hi_dance_prop_09_v1_female^2", "Dance New 9", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew10"] = {"anim@amb@nightclub@dancers@crowddance_single_props@", "hi_dance_prop_09_v1_female^3", "Dance New 10", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew11"] = {"anim@amb@nightclub@dancers@crowddance_single_props@", "hi_dance_prop_09_v1_female^4", "Dance New 11", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew12"] = {"anim@amb@nightclub@dancers@crowddance_single_props@", "hi_dance_prop_09_v1_female^5", "Dance New 12", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew13"] = {"anim@amb@nightclub@dancers@crowddance_single_props@", "hi_dance_prop_09_v1_female^6", "Dance New 13", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew14"] = {"anim@amb@nightclub@dancers@crowddance_single_props@", "hi_dance_prop_09_v1_male^1", "Dance New 14", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew15"] = {"anim@amb@nightclub@dancers@crowddance_single_props@", "hi_dance_prop_09_v1_male^2", "Dance New 15", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew16"] = {"anim@amb@nightclub@dancers@crowddance_single_props@", "hi_dance_prop_09_v1_male^3", "Dance New 16", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew17"] = {"anim@amb@nightclub@dancers@crowddance_single_props@", "hi_dance_prop_09_v1_male^4", "Dance New 17", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew18"] = {"anim@amb@nightclub@dancers@crowddance_single_props@", "hi_dance_prop_09_v1_male^5", "Dance New 18", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew19"] = {"anim@amb@nightclub@djs@dixon@", "dixn_dance_a_dixon", "Dance New 19", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew20"] = {"anim@amb@nightclub@djs@solomun@", "sol_trans_out_to_rt_a_sol", "Dance New 20", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew21"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_09_v1_female^1", "Dance New 21", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew22"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_09_v1_female^2", "Dance New 22", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew23"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_09_v1_female^3", "Dance New 23", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew24"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_09_v1_female^4", "Dance New 24", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew25"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_09_v1_female^5", "Dance New 25", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew26"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_09_v1_female^6", "Dance New 26", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew27"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_09_v1_male^1", "Dance New 27", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew28"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_09_v1_male^2", "Dance New 28", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew29"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_09_v1_male^3", "Dance New 29", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew30"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_09_v1_male^4", "Dance New 30", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew31"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_09_v1_male^5", "Dance New 31", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew32"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_09_v1_male^6", "Dance New 32", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew33"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_09_v2_female^2", "Dance New 33", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew34"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_09_v2_female^3", "Dance New 34", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew35"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_09_v2_female^4", "Dance New 35", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew36"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_09_v2_female^5", "Dance New 36", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew37"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_09_v2_female^6", "Dance New 37", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew38"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_09_v2_male^1", "Dance New 38", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew39"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_09_v2_male^2", "Dance New 39", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew40"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_09_v2_male^3", "Dance New 40", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew41"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_09_v2_male^4", "Dance New 41", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew42"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_09_v2_male^5", "Dance New 42", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew43"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_09_v2_male^6", "Dance New 43", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew44"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_11_v1_female^1", "Dance New 44", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew45"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_11_v1_female^2", "Dance New 45", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew46"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_11_v1_female^3", "Dance New 46", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew47"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_11_v1_female^4", "Dance New 47", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew48"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_11_v1_female^5", "Dance New 48", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew49"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_11_v1_female^6", "Dance New 49", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew50"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_11_v1_male^1", "Dance New 50", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew51"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_11_v1_male^2", "Dance New 51", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew52"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_11_v1_male^3", "Dance New 52", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew53"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_11_v1_male^4", "Dance New 53", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew54"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_11_v1_male^5", "Dance New 54", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew55"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_11_v1_male^6", "Dance New 55", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew56"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_11_v2_female^1", "Dance New 56", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew57"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_11_v2_female^2", "Dance New 57", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew58"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_11_v2_female^3", "Dance New 58", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew59"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_11_v2_female^4", "Dance New 59", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew60"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_11_v2_female^5", "Dance New 60", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew61"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_11_v2_female^6", "Dance New 61", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew62"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_11_v2_male^1", "Dance New 62", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew63"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_11_v2_male^2", "Dance New 63", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew64"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_11_v2_male^3", "Dance New 64", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew65"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_11_v2_male^4", "Dance New 65", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew66"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_11_v2_male^5", "Dance New 66", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew67"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "hi_dance_facedj_11_v2_male^6", "Dance New 67", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew68"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "mi_dance_facedj_09_v1_female^1", "Dance New 68", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew69"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "mi_dance_facedj_09_v1_female^2", "Dance New 69", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew70"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "mi_dance_facedj_09_v1_female^3", "Dance New 70", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew71"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "mi_dance_facedj_09_v1_female^4", "Dance New 71", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew72"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "mi_dance_facedj_09_v1_female^5", "Dance New 72", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew73"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "mi_dance_facedj_09_v1_female^6", "Dance New 73", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew74"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "mi_dance_facedj_09_v1_male^1", "Dance New 74", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew75"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "mi_dance_facedj_09_v1_male^2", "Dance New 75", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew76"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "mi_dance_facedj_09_v1_male^3", "Dance New 76", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew77"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "mi_dance_facedj_09_v1_male^4", "Dance New 77", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew78"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "mi_dance_facedj_09_v1_male^5", "Dance New 78", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew79"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "mi_dance_facedj_09_v1_male^6", "Dance New 79", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew80"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "mi_dance_facedj_09_v2_female^1", "Dance New 80", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew81"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "mi_dance_facedj_09_v2_female^2", "Dance New 81", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew82"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "mi_dance_facedj_09_v2_female^3", "Dance New 82", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew83"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "mi_dance_facedj_09_v2_female^4", "Dance New 83", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew84"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "mi_dance_facedj_09_v2_female^5", "Dance New 84", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew85"] = {"anim@amb@nightclub@dancers@crowddance_facedj@", "mi_dance_facedj_09_v2_female^6", "Dance New 85", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew86"] = {"anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", "hi_dance_facedj_09_v1_female^1", "Dance New 86", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew87"] = {"anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", "hi_dance_facedj_09_v1_female^2", "Dance New 87", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew88"] = {"anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", "hi_dance_facedj_09_v1_female^3", "Dance New 88", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew89"] = {"anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", "hi_dance_facedj_09_v1_female^4", "Dance New 89", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew90"] = {"anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", "hi_dance_facedj_09_v1_female^5", "Dance New 90", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew91"] = {"anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", "hi_dance_facedj_09_v1_female^6", "Dance New 91", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew92"] = {"anim@amb@nightclub@dancers@crowddance_groups_transitions@from_low_intensity", "trans_dance_crowd_li_to_hi_09_v1_male^1", "Dance New 92", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew93"] = {"anim@amb@nightclub@dancers@crowddance_groups_transitions@from_low_intensity", "trans_dance_crowd_li_to_hi_09_v1_male^2", "Dance New 93", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew94"] = {"anim@amb@nightclub@dancers@crowddance_groups_transitions@from_low_intensity", "trans_dance_crowd_li_to_hi_09_v1_male^3", "Dance New 94", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew95"] = {"anim@amb@nightclub@dancers@crowddance_groups_transitions@from_low_intensity", "trans_dance_crowd_li_to_hi_09_v1_male^4", "Dance New 95", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew96"] = {"anim@amb@nightclub@dancers@crowddance_groups_transitions@from_low_intensity", "trans_dance_crowd_li_to_hi_09_v1_male^5", "Dance New 96", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew97"] = {"anim@amb@nightclub@dancers@crowddance_groups_transitions@from_low_intensity", "trans_dance_crowd_li_to_hi_09_v1_male^6", "Dance New 97", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew98"] = {"anim@amb@nightclub@dancers@crowddance_groups_transitions@from_med_intensity", "trans_dance_crowd_mi_to_hi_09_v1_male^1", "Dance New 98", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew99"] = {"anim@amb@nightclub@dancers@crowddance_groups_transitions@from_med_intensity", "trans_dance_crowd_mi_to_hi_09_v1_male^2", "Dance New 99", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew100"] = {"anim@amb@nightclub@dancers@crowddance_groups_transitions@from_med_intensity", "trans_dance_crowd_mi_to_hi_09_v1_male^3", "Dance New 100", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew101"] = {"anim@amb@nightclub@dancers@crowddance_groups_transitions@from_med_intensity", "trans_dance_crowd_mi_to_hi_09_v1_male^4", "Dance New 101", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew102"] = {"anim@amb@nightclub@dancers@crowddance_groups_transitions@from_med_intensity", "trans_dance_crowd_mi_to_hi_09_v1_male^5", "Dance New 102", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancenew103"] = {"anim@amb@nightclub@dancers@crowddance_groups_transitions@from_med_intensity", "trans_dance_crowd_mi_to_hi_09_v1_male^6", "Dance New 103", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancecrazy"] = {"special_ped@mountain_dancer@monologue_3@monologue_3a", "mnt_dnc_buttwag", "Dance (Crazy)", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancecrazy2"] = {"move_clown@p_m_zero_idles@", "fidget_short_dance", "Dance (Crazy) 2", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancecrazy3"] = {"move_clown@p_m_two_idles@", "fidget_short_dance", "Dance (Crazy) 3", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancecrazy4"] = {"anim@amb@nightclub@lazlow@hi_podium@", "danceidle_hi_11_buttwiggle_b_laz", "Dance (Crazy) 4", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancecrazy5"] = {"timetable@tracy@ig_5@idle_a", "idle_a", "Dance (Crazy) 5", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancecrazy6"] = {"timetable@tracy@ig_8@idle_b", "idle_d", "Dance (Crazy) 6", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dancecrazy8"] = {"anim@mp_player_intcelebrationfemale@the_woogie", "the_woogie", "Dance (Crazy) 8", AnimationOptions =
    {
        EmoteLoop = true
    }},
 
    ["macarena"] = {"tigerle@custom@dance@macarena", "tigerle_dance_macarena", "~G~! NEW MACARENA DANCE", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
 
    ["ymca"] = {"tigerle@custom@dance@ymca", "tigerle_dance_ymca", "~G~! NEW YMCA DANCE", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
 
    ["danceold"] = {"anim@mp_player_intupperuncle_disco","idle_a","~G~! NEW Dance Old",AnimationOptions = 
    {
       EmoteLoop = true,
    }},
 
    ["lapchair"] = {"mini@strip_club@lap_dance@ld_girl_a_song_a_p1","ld_girl_a_song_a_p1_f","~G~! NEW Lap Chair",AnimationOptions = 
    {
       EmoteLoop = true,
    }},
 
    ["lapchair2"] = {"mini@strip_club@lap_dance@ld_girl_a_song_a_p2","ld_girl_a_song_a_p2_f","~G~! NEW Lap Chair2",AnimationOptions = 
    {
       EmoteLoop = true,
    }},
 
    ["lapchair3"] = {"mini@strip_club@lap_dance@ld_girl_a_song_a_p3","ld_girl_a_song_a_p3_f","~G~! NEW Lap Chair3",AnimationOptions = 
    {
       EmoteLoop = true,
    }},
    ["boxdance2"] = {"anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity","hi_dance_facedj_15_v1_male^6","~G~! 22NEWBoxing Dance Solo  ",AnimationOptions = 
    {
       EmoteLoop = true,
    }},
    ["boxdance"] = {"anim@amb@nightclub@mini@dance@dance_solo@beach_boxing@","med_right_down","~G~! 332NEWBoxing Dance Solo  ",AnimationOptions = 
    {
       EmoteLoop = true,
    }},
    ["dancehiphop"] = {"anim@amb@nightclub@mini@dance@dance_paired@dance_d@","ped_a_dance_idle","~G~! NEWHip Hop Dance ",AnimationOptions = 
    {
       EmoteLoop = true,
    }},
    ["dancehiphop2"] = {"anim@amb@nightclub@mini@dance@dance_paired@dance_b@","ped_a_dance_idle","~G~! NEWHip Hop Dance 2 ",AnimationOptions = 
    {
       EmoteLoop = true,
    }},
    ["dancehiphop3"] = {"anim@amb@nightclub@mini@dance@dance_paired@dance_a@","ped_a_dance_idle","~G~! NEWHip Hop Dance 3 ",AnimationOptions = 
    {
       EmoteLoop = true,
    }},
    ["dancecrankdat"] = {"anim@amb@nightclub@mini@dance@dance_solo@shuffle@","high_right_up","~G~! NEWDance Crank Dat", AnimationOptions = 
    {
       EmoteLoop = true,
    }},
    ["dancecrankdat2"] = {"anim@amb@nightclub@mini@dance@dance_solo@shuffle@","high_right_down","~G~! NEWDance Crank Dat 2",AnimationOptions = 
    {
       EmoteLoop = true,
    }},
 }

---- ANIMAL EMOTES ----
----    BIG DOG    ----

DP.AnimalEmotes = {
    ["bdogbark"] = {
        "creatures@rottweiler@amb@world_dog_barking@idle_a",
        "idle_a",
        "Bark (big dog)",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["bdogbeg"] = {
        "creatures@rottweiler@tricks@",
        "beg_loop",
        "Beg (big dog)",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["bdogbeg2"] = {
        "creatures@rottweiler@tricks@",
        "paw_right_loop",
        "Beg 2 (big dog)",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["bdogdump"] = {
        "creatures@rottweiler@move",
        "dump_loop",
        "Dump (big dog)",
        AnimationOptions = {
            Prop = 'prop_big_shit_02',
            PropBone = 51826,
            PropPlacement = {
                0.0,
                0.2000,
                -0.4600,
                0.0,
                -20.00,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["bdogitch"] = {
        "creatures@rottweiler@amb@world_dog_sitting@idle_a",
        "idle_a",
        "Itch (big dog)",
        AnimationOptions = {
            EmoteDuration = 2000
        }
    },
    ["bdogsleep"] = {
        "creatures@rottweiler@amb@sleep_in_kennel@",
        "sleep_in_kennel",
        "Sleep (big dog)",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["bdogsit"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "base",
        "Sit (big dog)",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["bdogpee"] = {
        "creatures@rottweiler@move",
        "pee_left_idle",
        "Pee (big dog)",
        AnimationOptions = {
            EmoteLoop = true,
            PtfxAsset = "scr_amb_chop",
            PtfxName = "ent_anim_dog_peeing",
            PtfxNoProp = true,
            PtfxPlacement = {
                -0.15,
                -0.35,
                0.0,
                0.0,
                90.0,
                180.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['pee'],
            PtfxWait = 3000,
            PtfxCanHold = true,
        }
    },
    ["bdogpee2"] = {
        "creatures@rottweiler@move",
        "pee_right_idle",
        "Pee 2 (big dog)",
        AnimationOptions = {
            EmoteLoop = true,
            PtfxAsset = "scr_amb_chop",
            PtfxName = "ent_anim_dog_peeing",
            PtfxNoProp = true,
            PtfxPlacement = {
                0.15,
                -0.35,
                0.0,
                0.0,
                90.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['pee'],
            PtfxWait = 3000,
            PtfxCanHold = true,
        }
    },
    ["sdogbark"] = {
        "creatures@pug@amb@world_dog_barking@idle_a",
        "idle_a",
        "Bark (small dog)",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["bdogglowa"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "nill",
        "Glow Stick (big dog)",
        AnimationOptions = {
            Prop = 'ba_prop_battle_glowstick_01',
            PropBone = 31086,
            PropPlacement = {
                0.2000,
                0.000,
                -0.0600,
                90.00,
                0.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["bdogglowb"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "base",
        "Glow Stick Sitting (big dog)",
        AnimationOptions = {
            Prop = 'ba_prop_battle_glowstick_01',
            PropBone = 31086,
            PropPlacement = {
                0.2000,
                0.000,
                -0.0600,
                90.00,
                0.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["bdogpridea"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "base",
        "Sit Pride A (big dog)",
        AnimationOptions = {
            Prop = 'lilprideflag1', -- Rainbow
            PropBone = 31086,
            PropPlacement = {
                0.1900,
                0.0000,
                -0.0500,
                100.0000,
                90.0000,
                0.0000
            },
            SecondProp = 'lilprideflag1',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.1940,
                0.020,
                -0.0500,
                -90.0000,
                -90.0000,
                0.0000
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["bdogprideb"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "base",
        "Sit Pride B - LGBTQIA (big dog)",
        AnimationOptions = {
            Prop = 'lilprideflag2', -- LGBTQIA
            PropBone = 31086,
            PropPlacement = {
                0.1900,
                0.0000,
                -0.0500,
                100.0000,
                90.0000,
                0.0000
            },
            SecondProp = 'lilprideflag2',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.1940,
                0.020,
                -0.0500,
                -90.0000,
                -90.0000,
                0.0000
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["bdogpridec"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "base",
        "Sit Pride C - Bisexual (big dog)",
        AnimationOptions = {
            Prop = 'lilprideflag3', -- Bisexual
            PropBone = 31086,
            PropPlacement = {
                0.1900,
                0.0000,
                -0.0500,
                100.0000,
                90.0000,
                0.0000
            },
            SecondProp = 'lilprideflag3',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.1940,
                0.020,
                -0.0500,
                -90.0000,
                -90.0000,
                0.0000
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["bdogprided"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "base",
        "Sit Pride D - Lesbian (big dog)",
        AnimationOptions = {
            Prop = 'lilprideflag4', -- Lesbian
            PropBone = 31086,
            PropPlacement = {
                0.1900,
                0.0000,
                -0.0500,
                100.0000,
                90.0000,
                0.0000
            },
            SecondProp = 'lilprideflag4',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.1940,
                0.020,
                -0.0500,
                -90.0000,
                -90.0000,
                0.0000
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["bdogpridee"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "base",
        "Sit Pride E - Pansexual (big dog)",
        AnimationOptions = {
            Prop = 'lilprideflag5', -- Pansexual
            PropBone = 31086,
            PropPlacement = {
                0.1900,
                0.0000,
                -0.0500,
                100.0000,
                90.0000,
                0.0000
            },
            SecondProp = 'lilprideflag5',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.1940,
                0.020,
                -0.0500,
                -90.0000,
                -90.0000,
                0.0000
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["bdogpridef"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "base",
        "Sit Pride F - Transexual (big dog)",
        AnimationOptions = {
            Prop = 'lilprideflag6', -- Transexual
            PropBone = 31086,
            PropPlacement = {
                0.1900,
                0.0000,
                -0.0500,
                100.0000,
                90.0000,
                0.0000
            },
            SecondProp = 'lilprideflag6',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.1940,
                0.020,
                -0.0500,
                -90.0000,
                -90.0000,
                0.0000
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["bdogprideg"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "base",
        "Sit Pride G - Non Binary (big dog)",
        AnimationOptions = {
            Prop = 'lilprideflag7', -- Non Binary
            PropBone = 31086,
            PropPlacement = {
                0.1900,
                0.0000,
                -0.0500,
                100.0000,
                90.0000,
                0.0000
            },
            SecondProp = 'lilprideflag7',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.1940,
                0.020,
                -0.0500,
                -90.0000,
                -90.0000,
                0.0000
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["bdogprideh"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "base",
        "Sit Pride H - Asexual (big dog)",
        AnimationOptions = {
            Prop = 'lilprideflag8', -- Asexual
            PropBone = 31086,
            PropPlacement = {
                0.1900,
                0.0000,
                -0.0500,
                100.0000,
                90.0000,
                0.0000
            },
            SecondProp = 'lilprideflag8',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.1940,
                0.020,
                -0.0500,
                -90.0000,
                -90.0000,
                0.0000
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["bdogpridei"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "base",
        "Sit Pride I - Straight Ally (big dog)",
        AnimationOptions = {
            Prop = 'lilprideflag9', -- Straight Ally
            PropBone = 31086,
            PropPlacement = {
                0.1900,
                0.0000,
                -0.0500,
                100.0000,
                90.0000,
                0.0000
            },
            SecondProp = 'lilprideflag9',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.1940,
                0.020,
                -0.0500,
                -90.0000,
                -90.0000,
                0.0000
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },

    ---- ANIMAL EMOTES ----
    ----   SMALL DOG   ----

    ["sdogitch"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_a",
        "Itch (small dog)",
        AnimationOptions = {
            EmoteDuration = 2000
        }
    },
    ["sdogsit"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Sit (small dog)",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["sdogld"] = {
        "misssnowie@little_doggy_lying_down",
        "base",
        "Lay Down (small dog)",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdogshake"] = {
        "creatures@pug@amb@world_dog_barking@idle_a",
        "idle_c",
        "Shake (small dog)",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["sdogdance"] = {
        "creatures@pug@move",
        "idle_turn_0",
        "Dance (small dog)",
        AnimationOptions = {
            Prop = 'ba_prop_battle_glowstick_01',
            PropBone = 31086,
            PropPlacement = {
                0.1500,
                -0.0300,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdogdance2"] = {
        "creatures@pug@move",
        "idle_turn_0",
        "Dance 2 (small dog)",
        AnimationOptions = {
            Prop = 'ba_prop_battle_glowstick_01',
            PropBone = 31086,
            PropPlacement = {
                0.1500,
                -0.0300,
                0.0,
                0.0,
                0.0
            },
            SecondProp = 'prop_cs_sol_glasses',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.0500,
                0.0300,
                0.000,
                -100.0000003,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdogdancepridea"] = {
        "creatures@pug@move",
        "idle_turn_0",
        "Dance Pride A (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag1',
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            SecondProp = 'prop_cs_sol_glasses',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.0500,
                0.0300,
                0.000,
                -100.0000003,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdogdanceprideb"] = {
        "creatures@pug@move",
        "idle_turn_0",
        "Dance Pride B - LGBTQIA (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag2', -- LGBTQIA
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            SecondProp = 'prop_cs_sol_glasses',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.0500,
                0.0300,
                0.000,
                -100.0000003,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdogdancepridec"] = {
        "creatures@pug@move",
        "idle_turn_0",
        "Dance Pride C - Bisexual (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag3', -- Bisexual
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            SecondProp = 'prop_cs_sol_glasses',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.0500,
                0.0300,
                0.000,
                -100.0000003,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdogdanceprided"] = {
        "creatures@pug@move",
        "idle_turn_0",
        "Dance Pride D - Lesbian (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag4', -- Lesbian
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            SecondProp = 'prop_cs_sol_glasses',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.0500,
                0.0300,
                0.000,
                -100.0000003,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdogdancepridee"] = {
        "creatures@pug@move",
        "idle_turn_0",
        "Dance Pride E - Pansexual (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag5', -- Pansexual
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            SecondProp = 'prop_cs_sol_glasses',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.0500,
                0.0300,
                0.000,
                -100.0000003,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdogdancepridef"] = {
        "creatures@pug@move",
        "idle_turn_0",
        "Dance Pride F - Transexual (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag6', -- Transexual
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            SecondProp = 'prop_cs_sol_glasses',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.0500,
                0.0300,
                0.000,
                -100.0000003,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdogdanceprideg"] = {
        "creatures@pug@move",
        "idle_turn_0",
        "Dance Pride G - Non Binary (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag7', -- Non Binary
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            SecondProp = 'prop_cs_sol_glasses',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.0500,
                0.0300,
                0.000,
                -100.0000003,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdogdanceprideh"] = {
        "creatures@pug@move",
        "idle_turn_0",
        "Dance Pride H - Asexual (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag8', -- Asexual
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            SecondProp = 'prop_cs_sol_glasses',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.0500,
                0.0300,
                0.000,
                -100.0000003,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdogdancepridei"] = {
        "creatures@pug@move",
        "idle_turn_0",
        "Dance Pride I - Straight Ally (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag9', -- Straight Ally
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            SecondProp = 'prop_cs_sol_glasses',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.0500,
                0.0300,
                0.000,
                -100.0000003,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdogbb"] = {
        "creatures@pug@move",
        "nill",
        "Baseball (small dog)",
        AnimationOptions = {
            Prop = 'w_am_baseball',
            PropBone = 31086,
            PropPlacement = {
                0.1500,
                -0.0500,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdogburger"] = {
        "creatures@pug@move",
        "nill",
        "Burger (small dog)",
        AnimationOptions = {
            Prop = 'prop_cs_burger_01',
            PropBone = 31086,
            PropPlacement = {
                0.1500,
                -0.0400,
                0.0000,
                -90.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdogcontroller"] = {
        "creatures@pug@move",
        "nill",
        "Controller (small dog)",
        AnimationOptions = {
            Prop = 'prop_controller_01',
            PropBone = 31086,
            PropPlacement = {
                0.1800,
                -0.0300,
                0.0000,
                -180.000,
                90.0000,
                0.0000
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdogdolla"] = {
        "creatures@pug@move",
        "nill",
        "Dollar Bill (small dog)",
        AnimationOptions = {
            Prop = 'p_banknote_onedollar_s',
            PropBone = 31086,
            PropPlacement = {
                0.1700,
                -0.0100,
                0.0000,
                90.0000,
                0.0000,
                0.000
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdogdolla2"] = {
        "creatures@pug@move",
        "nill",
        "Dollar Bill Scrunched  (small dog)",
        AnimationOptions = {
            Prop = 'bkr_prop_scrunched_moneypage',
            PropBone = 31086,
            PropPlacement = {
                0.1700,
                0.000,
                0.0000,
                90.0000,
                00.0000,
                00.0000
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdogdolla3"] = {
        "creatures@pug@move",
        "nill",
        "Money Stack  (small dog)",
        AnimationOptions = {
            Prop = 'bkr_prop_money_wrapped_01',
            PropBone = 31086,
            PropPlacement = {
                0.1700,
                -0.0100,
                0.0000,
                90.0000,
                0.0000,
                0.000
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdogdolla4"] = {
        "creatures@pug@move",
        "nill",
        "Money Bag  (small dog)",
        AnimationOptions = {
            Prop = 'ch_prop_ch_moneybag_01a',
            PropBone = 31086,
            PropPlacement = {
                0.1200,
                -0.2000,
                0.0000,
                -79.9999997,
                90.00,
                0.0000
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdogmic"] = {
        "creatures@pug@move",
        "nill",
        "Microphone (small dog)",
        AnimationOptions = {
            Prop = 'p_ing_microphonel_01',
            PropBone = 31086,
            PropPlacement = {
                0.1500,
                -0.0170,
                0.0300,
                0.000,
                0.0000,
                0.0000
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdogteddy"] = {
        "creatures@pug@move",
        "nill",
        "Teddy (small dog)",
        AnimationOptions = {
            Prop = 'v_ilev_mr_rasberryclean',
            PropBone = 31086,
            PropPlacement = {
                0.1500,
                -0.1100,
                -0.23,
                0.000,
                0.0000,
                0.0000
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdogteddy2"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Teddy 2 (small dog)",
        AnimationOptions = {
            Prop = 'v_ilev_mr_rasberryclean',
            PropBone = 31086,
            PropPlacement = {
                0.1500,
                -0.1100,
                -0.23,
                0.000,
                0.0000,
                0.0000
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdogtennis"] = {
        "creatures@pug@move",
        "nill",
        "Tennis Ball (small dog)",
        AnimationOptions = {
            Prop = 'prop_tennis_ball',
            PropBone = 31086,
            PropPlacement = {
                0.1500,
                -0.0600,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdogtennisr"] = {
        "creatures@pug@move",
        "nill",
        "Tennis Racket (small dog)",
        AnimationOptions = {
            Prop = 'prop_tennis_rack_01',
            PropBone = 31086,
            PropPlacement = {
                0.1500,
                -0.0200,
                0.00,
                0.000,
                0.0000,
                -28.0000
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdogrose"] = {
        "creatures@pug@move",
        "nill",
        "Rose (small dog)",
        AnimationOptions = {
            Prop = 'prop_single_rose',
            PropBone = 12844,
            PropPlacement = {
                0.1090,
                -0.0140,
                0.0500,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdogrose2"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Rose Sit (small dog)",
        AnimationOptions = {
            Prop = 'prop_single_rose',
            PropBone = 12844,
            PropPlacement = {
                0.1090,
                -0.0140,
                0.0500,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdogggun"] = {
        "creatures@pug@move",
        "nill",
        "Gun Gold (small dog)",
        AnimationOptions = {
            Prop = 'w_pi_pistol_luxe',
            PropBone = 12844,
            PropPlacement = {
                0.2010,
                -0.0080,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdoggun2"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Gun Gold Sit (small dog)",
        AnimationOptions = {
            Prop = 'w_pi_pistol_luxe',
            PropBone = 12844,
            PropPlacement = {
                0.2010,
                -0.0080,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdogstun"] = {
        "creatures@pug@move",
        "nill",
        "Stun Gun (small dog)",
        AnimationOptions = {
            Prop = 'w_pi_stungun',
            PropBone = 12844,
            PropPlacement = {
                0.1400,
                -0.0100,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "core",
            PtfxName = "blood_stungun",
            PtfxPlacement = {
                0.208,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['stun'],
            PtfxWait = 200,
        }
    },
    ["sdoggl1"] = {
        "creatures@pug@move",
        "nill",
        "Aviators (small dog)",
        AnimationOptions = {
            Prop = 'prop_aviators_01',
            PropBone = 31086,
            PropPlacement = {
                0.0500,
                0.0400,
                0.000,
                -90.00,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdoggl2"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Aviators Sitting (small dog)",
        AnimationOptions = {
            Prop = 'prop_aviators_01',
            PropBone = 31086,
            PropPlacement = {
                0.0500,
                0.0400,
                0.000,
                -90.00,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdoggl3"] = {
        "creatures@pug@move",
        "nill",
        "Sunglasses (small dog)",
        AnimationOptions = {
            Prop = 'prop_cs_sol_glasses',
            PropBone = 31086,
            PropPlacement = {
                0.0500,
                0.0300,
                0.000,
                -100.0000003,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdoggl4"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Sunglasses Sitting (small dog)",
        AnimationOptions = {
            Prop = 'prop_cs_sol_glasses',
            PropBone = 31086,
            PropPlacement = {
                0.0500,
                0.0300,
                0.000,
                -100.0000003,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdoghd1"] = {
        "creatures@pug@move",
        "nill",
        "Hot Dog (small dog)",
        AnimationOptions = {
            Prop = 'prop_cs_hotdog_01',
            PropBone = 31086,
            PropPlacement = {
                0.1300,
                -0.0250,
                0.000,
                -88.272053,
                -9.8465858,
                -0.1488562
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdoghd2"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Hot Dog Sitting (small dog)",
        AnimationOptions = {
            Prop = 'prop_cs_hotdog_01',
            PropBone = 31086,
            PropPlacement = {
                0.1300,
                -0.0250,
                0.000,
                -88.272053,
                -9.8465858,
                -0.1488562
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdoghlmt1"] = {
        "creatures@pug@move",
        "nill",
        "Helmet 1 (small dog)",
        AnimationOptions = {
            Prop = 'ba_prop_battle_sports_helmet',
            PropBone = 31086,
            PropPlacement = {
                0.00,
                -0.0200,
                0.000,
                -90.00,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdoghlmt2"] = {
        "creatures@pug@move",
        "nill",
        "Helmet 2 (small dog)",
        AnimationOptions = {
            Prop = 'prop_hard_hat_01',
            PropBone = 31086,
            PropPlacement = {
                0.00,
                0.1300,
                0.000,
                -90.00,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdoghat"] = {
        "creatures@pug@move",
        "nill",
        "Hat 1 (small dog)",
        AnimationOptions = {
            Prop = 'prop_proxy_hat_01',
            PropBone = 31086,
            PropPlacement = {
                0.0,
                0.1200,
                0.000,
                -99.8510766,
                80.1489234,
                1.7279411
            },
            SecondProp = 'prop_aviators_01',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.0500,
                0.0400,
                0.000,
                -90.00,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdoghat2"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Hat 2 Sitting (small dog)",
        AnimationOptions = {
            Prop = 'prop_proxy_hat_01',
            PropBone = 31086,
            PropPlacement = {
                0.0,
                0.1200,
                0.000,
                -99.8510766,
                80.1489234,
                1.7279411
            },
            SecondProp = 'prop_aviators_01',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.0500,
                0.0400,
                0.000,
                -90.00,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdogsteak"] = {
        "creatures@pug@move",
        "nill",
        "Steak (small dog)",
        AnimationOptions = {
            Prop = 'prop_cs_steak',
            PropBone = 31086,
            PropPlacement = {
                0.1800,
                -0.0200,
                0.000,
                90.00,
                0.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdogsteak2"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_c",
        "Steak 2 Lay Down (small dog)",
        AnimationOptions = {
            Prop = 'prop_cs_steak',
            PropBone = 31086,
            PropPlacement = {
                0.1800,
                -0.0200,
                0.000,
                90.00,
                0.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdogpridea"] = {
        "creatures@pug@move",
        "nill",
        "Pride A (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag1',
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdogprideb"] = {
        "creatures@pug@move",
        "nill",
        "Pride B - LGBTQIA (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag2', -- LGBTQIA
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdogpridec"] = {
        "creatures@pug@move",
        "nill",
        "Pride C - Bisexual (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag3', -- Bisexual
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdogprided"] = {
        "creatures@pug@move",
        "nill",
        "Pride D - Lesbian (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag4', -- Lesbian
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdogpridee"] = {
        "creatures@pug@move",
        "nill",
        "Pride E - Pansexual (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag5', -- Pansexual
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdogpridef"] = {
        "creatures@pug@move",
        "nill",
        "Pride F - Transexual (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag6', -- Transexual
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdogprideg"] = {
        "creatures@pug@move",
        "nill",
        "Pride G - Non Binary (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag6', -- Non Binary
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdogprideh"] = {
        "creatures@pug@move",
        "nill",
        "Pride H - Non Binary (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag7', -- Non Binary
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdogpridei"] = {
        "creatures@pug@move",
        "nill",
        "Pride I - Asexual (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag8', -- Asexual
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdogpridesita"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Pride A Sit (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag1',
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdogpridesitb"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Pride B Sit LGBTQIA  (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag2', -- LGBTQIA
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdogpridesitc"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Pride C Sit Bisexual  (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag3', -- Bisexual
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdogpridesitd"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Pride D Sit Lesbian (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag4', -- Lesbian
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdogpridesite"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Pride E Sit Pansexual  (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag5', -- Pansexual
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdogpridesitf"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Pride F Sit Transexual  (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag6', -- Transexual
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdogpridesitg"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Pride G Sit Non Binary (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag7', -- Non Binary
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdogpridesith"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Pride H Sit Asexual  (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag8',
            -- Asexual
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdogpridesiti"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Pride I Sit Straight Ally  (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag9', -- Straight Ally
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sdogpee"] = {
        "creatures@pug@move",
        "nill",
        "Pee (Small Dog)",
        AnimationOptions = {
            EmoteLoop = true,
            PtfxAsset = "scr_amb_chop",
            PtfxName = "ent_anim_dog_peeing",
            PtfxNoProp = true,
            PtfxPlacement = {
                -0.01,
                -0.17,
                0.09,
                0.0,
                90.0,
                140.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['pee'],
            PtfxWait = 3000,
            PtfxCanHold = true,
        }
    },
}


--- EMOTES NO PROPS ---
DP.Emotes = {
    ["Ttyy1"] = {"amb@world_human_window_shop@male@idle_a", "browse_a", "! New Ttyy", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 7900,
    }},
    ["Ttyy2"] = {"anim@scripted@nightclub@dj@dj_moodm@", "moodm_dance_ha_49_dancer_a", "! New Ttyy 2", AnimationOptions =
    {
    EmoteMoving = false,
    EmoteLoop = true,
    }},
    ["Ttyy3"] = {"anim@scripted@nightclub@dj@dj_moodm@", "moodm_dance_ha_49_dancer_b", "! New Ttyy 3", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["Ttyy4"] = {"anim@scripted@nightclub@dj@dj_moodm@", "moodm_dance_la_45_dancer_a", "! New Ttyy 4", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["Ttyy5"] = {"avoidsavoids_b_v01", "frback_tofront", "! New Ttyy 5", AnimationOptions =
    {
    EmoteMoving = false,
    EmoteLoop = false,
    }},
    ["Ttyy6"] = {"combat@aim_variations@arrest", "cop_med_arrest_01", "! New Ttyy 6", AnimationOptions =
    {
    EmoteMoving = false,
    EmoteLoop = true,
    }},
    ["Ttyy7"] = {"combat@aim_variations@1h@hillbilly", "aim_variation_f", "! New Ttyy 7", AnimationOptions =
    {
    EmoteMoving = false,
    EmoteLoop = true,
    }},
    ["Ttyy8"] = {"combat@gestures@hillbilly@beckon", "0", "! New Ttyy 8", AnimationOptions =
    {
    EmoteMoving = false,
    EmoteLoop = false,
    }},
    ["Ttyy9"] = {"mini@strip_club@pole_dance@stage_2_pole_a", "stage_2_pole_a", "! New Ttyy 9", AnimationOptions =
    {
    EmoteMoving = false,
    EmoteLoop = false,
    }},
    ["pickup2"] = {"mp_am_hold_up", "purchase_beerbox_shopkeeper", "Pickup 2 ! NEW", AnimationOptions =
    {
        EmoteMoving = false,
        EmoteDuration = 2500,
    }},
    ["copsearch"] = {"amb@code_human_police_investigate@idle_b", "idle_f", "Cop Search ! NEW", AnimationOptions =
    {
     EmoteMoving = false,
     EmoteDuration = 7000,
    }},
    ["gangsign5"] = {"anim@mp_player_intupperdock", "idle_a", "Gang Sign 5 ! NEW", AnimationOptions =
    {
        EmoteMoving = true,
        EmoteDuration = 2500,
    }},
    ["checkwatch"] = {"amb@code_human_wander_idles_fat@male@idle_a", "idle_a_wristwatch", "Check Watch ! NEW", AnimationOptions =
    {
        EmoteMoving = false,
        EmoteDuration = 5000,
    }},
    ["picking"] = {"amb@prop_human_movie_bulb@idle_a", "idle_a", "Picking ! NEW", AnimationOptions =
    {
        EmoteMoving = true,
        EmoteDuration = 2500,
    }},
    ["stickup2"] = {"combat@aim_variations@1h@gang", "aim_variation_b", "Stickup 2 ! NEW", AnimationOptions =
    {
        EmoteMoving = true,
        EmoteLoop = true,
    }},
    ["showboobs"] = {"mini@strip_club@backroom@", "stripper_b_backroom_idle_b", "Show Boobs ! NEW", AnimationOptions =
    {
        EmoteMoving = false,
        EmoteDuration = 6000,
    }},
    ["cleanleg"] = {"mini@strip_club@backroom@", "stripper_c_leadin_backroom_idle_a", "Clean Legs ! NEW", AnimationOptions =
    {
        EmoteMoving = false,
        EmoteDuration = 6000,
    }},
    ["showboobs2"] = {"mini@strip_club@idles@stripper", "stripper_idle_05", "Show Boobs 2 ! NEW", AnimationOptions =
    {
        EmoteMoving = false,
        EmoteDuration = 6000,
    }},
    ["lockcar"] = {"anim@mp_player_intmenu@key_fob@", "fob_click", "Lock Car ! NEW", AnimationOptions =
    {
        EmoteMoving = true,
        EmoteDuration = 2500,
    }},
    ["selfie3"] = {"cellphone@self", "selfie", "Selfie 3 ! NEW", AnimationOptions =
    {
        EmoteMoving = false,
        Prop = "prop_npc_phone_02",
        PropBone = 28422,
        PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
        EmoteLoop = true,
    }},
    ["selfie4"] = {"cellphone@self@franklin@", "west_coast", "Selfie 4 ! NEW", AnimationOptions =
    {
        EmoteMoving = false,
        Prop = "prop_npc_phone_02",
        PropBone = 28422,
        PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
        EmoteLoop = true,
    }},
    ["selfie6"] = {"cellphone@self@michael@", "finger_point", "Selfie 6 ! NEW", AnimationOptions =
    {
        EmoteMoving = false,
        Prop = "prop_npc_phone_02",
        PropBone = 28422,
        PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
        EmoteLoop = true,
    }},
    ["selfie7"] = {"cellphone@self@franklin@", "chest_bump", "Selfie 7 ! NEW", AnimationOptions =
    {
        EmoteMoving = false,
        Prop = "prop_npc_phone_02",
        PropBone = 28422,
        PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
        EmoteLoop = true,
    }},
    ["selfie1"] = {"cellphone@self@trevor@", "throat_slit", "Selfie ! NEW", AnimationOptions =
    {
        Prop = "prop_npc_phone_02",
        PropBone = 28422,
        PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["selfie2"] = {"cellphone@self@trevor@", "proud_finger", "Selfie 2 ! NEW", AnimationOptions =
    {
        Prop = "prop_npc_phone_02",
        PropBone = 28422,
        PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["khaby"] = {"missarmenian3@simeon_tauntsidle_b", "areyounotman", "Khaby Special ! NEW", AnimationOptions =
    {
     EmoteMoving = false,
     EmoteDuration = 2500,
    }},
    ["fallasleep3"] = {"oddjobs@bailbond_hobodepressed", "base", "Fall Asleep 3 ! NEW", AnimationOptions =
    {
     EmoteMoving = true,
    }},
    ["gangsign3"] = {"amb@code_human_in_car_mp_actions@gang_sign_a@bodhi@rds@base", "idle_a", "Gang Sign 3 ! NEW", AnimationOptions =
    {
        EmoteMoving = true,
        EmoteDuration = 2500,
    }},
    ["gangsign4"] = {"amb@code_human_in_car_mp_actions@gang_sign_a@low@ds@base", "idle_a", "Gang Sign 4 ! NEW", AnimationOptions =
    {
        EmoteMoving = true,
        EmoteDuration = 2500,
    }},
    ["leanlow"] = {"anim@veh@lowrider@low@front_ds@arm@base", "sit", "~G~ Lowrider Style Car ! NEW", AnimationOptions =
    {
        EmoteMoving = true,
        EmoteLoop = true,
    }},
    ["leanlow2"] = {"anim@veh@lowrider@std@ds@arm@music@mexicanidle_a", "idle", "~G~ Lowrider Mexican Style Car ! NEW", AnimationOptions =
    {
        EmoteMoving = true,
        EmoteLoop = true,
    }},
    ["nod4"] = {"random@shop_robbery_reactions@", "absolutely", "Nod 4 ! NEW", AnimationOptions =
    {
     EmoteMoving = false,
     EmoteDuration = 2500,
    }},
    ["anger"] = {"random@shop_robbery_reactions@", "anger_a", "Anger ! NEW", AnimationOptions =
    {
     EmoteMoving = false,
     EmoteDuration = 2500,
    }},
    ["why"] = {"random@shop_robbery_reactions@", "is_this_it", "Why ! NEW", AnimationOptions =
    {
     EmoteMoving = false,
     EmoteDuration = 2500,
    }},
    ["finger3"] = {"random@shop_robbery_reactions@", "screw_you", "Finger 3 ! NEW", AnimationOptions =
    {
     EmoteMoving = false,
     EmoteDuration = 2500,
    }},
    ["huh2"] = {"random@shop_robbery_reactions@", "shock", "Huh?2 ! NEW", AnimationOptions =
    {
     EmoteMoving = false,
     EmoteDuration = 2500,
    }},
    ["nod"] = {"missclothing", "good_choice_storeclerk", "Nod ! NEW", AnimationOptions =
    {
     EmoteMoving = false,
     EmoteDuration = 2500,
    }},
    ["tryclothes6"] = {"clothingtie", "try_tie_neutral_c", "Try Clothes 6 ! NEW", AnimationOptions =
    {
     EmoteMoving = false,
     EmoteDuration = 2500,
    }},
    ["tryclothes7"] = {"clothingtie", "try_tie_neutral_d", "Try Clothes 7 ! NEW", AnimationOptions =
    {
     EmoteMoving = false,
     EmoteDuration = 2500,
    }},
    ["calmdown"] = {"gestures@m@car@std@casual@ds", "gesture_easy_now", "Calm Down ! NEW", AnimationOptions =
    {
     EmoteMoving = false,
     EmoteDuration = 2500,
    }},
    ["point2"] = {"gestures@m@car@std@casual@ds", "gesture_i_will", "Point 2 ! NEW", AnimationOptions =
    {
     EmoteMoving = false,
     EmoteDuration = 2500,
    }},
    ["noway3"] = {"gestures@m@car@std@casual@ds", "gesture_no_way", "No Way 3 ! NEW", AnimationOptions =
    {
     EmoteMoving = false,
     EmoteDuration = 2500,
    }},
    ["foff"] = {"gestures@f@standing@casual", "gesture_bye_hard", "F Off ! NEW", AnimationOptions =
    {
     EmoteMoving = false,
     EmoteDuration = 2500,
    }},
    ["nod3"] = {"gestures@f@standing@casual", "gesture_hello", "Nod 3 ! NEW", AnimationOptions =
    {
     EmoteMoving = false,
     EmoteDuration = 2500,
    }},
       ["huh"] = {"friends@frl@ig_1", "look_lamar", "Huh? ! NEW", AnimationOptions =
    {
     EmoteMoving = false,
     EmoteDuration = 2500,
    }},
      ["nod2"] = {"mp_cp_welcome_tutgreet", "greet", "Nod 2 ! NEW", AnimationOptions =
    {
     EmoteMoving = false,
     EmoteDuration = 2500,
    }},
    ["fakepunch"] = {"missarmenian2", "fake_punch_walk_by_lamar", "Fake Punch ! NEW", AnimationOptions =
    {
     EmoteMoving = false,
     EmoteDuration = 5000,
    }},
       ["no3"] = {"missheist_jewel", "damn", "No 3 ! NEW", AnimationOptions =
    {
     EmoteMoving = false,
     EmoteDuration = 2500,
    }},
      ["tellyou"] = {"missheist_jewel", "im_telling_you", "I'm Telling You ! NEW", AnimationOptions =
    {
     EmoteMoving = false,
     EmoteDuration = 2500,
    }},
    ["no4"] = {"missheist_jewel", "despair", "No 4 ! NEW", AnimationOptions =
    {
     EmoteMoving = false,
     EmoteDuration = 2500,
    }},
 
    ["bangbang"] = {"anim@mp_player_intcelebrationfemale@bang_bang", "bang_bang", "Bang Bang! ! NEW", AnimationOptions =
    {
     EmoteMoving = false,
     EmoteDuration = 2500,
    }},
    ["tryclothes8"] = {"clothingshirt", "try_shirt_negative_a", "Try Clothes 8 ! NEW", AnimationOptions =
    {
     EmoteMoving = false,
     EmoteDuration = 2500,
    }},
    ["tryclothes9"] = {"clothingshirt", "try_shirt_positive_a", "Try Clothes 9 ! NEW", AnimationOptions =
    {
     EmoteMoving = false,
     EmoteDuration = 2500,
    }},
    ["tryshoes"] = {"clothingshoes", "try_shoes_positive_d", "Try Shoes ! NEW", AnimationOptions =
    {
     EmoteMoving = false,
     EmoteDuration = 2500,
    }},
     ["tryshoes2"] = {"clothingshoes", "try_shoes_positive_c", "Try Shoes 2 ! NEW", AnimationOptions =
    {
     EmoteMoving = false,
     EmoteDuration = 2500,
    }},
     ["overhere"] = {"friends@fra@ig_1", "over_here_idle_a", "Over Here ! NEW", AnimationOptions =
    {
     EmoteMoving = false,
     EmoteDuration = 2500,
    }},
     ["washface2"] = {"missmic2_washing_face", "michael_washing_face", "Wash Face 2 ! NEW", AnimationOptions =
    {
     EmoteMoving = false,
     EmoteDuration = 5000,
    }},
     ["sitsad2"] = {"misstrevor1", "ortega_outro_loop_ort", "Sit Sad 2 ! NEW", AnimationOptions =
    {
     EmoteLoop = true,
    }},
     ["tryclothes5"] = {"mp_clothing@female@glasses", "try_glasses_positive_a", "Try Clothes 5 ! NEW", AnimationOptions =
    {
     EmoteMoving = false,
     EmoteDuration = 2500,
    }},
     ["pickup3"] = {"pickup_object", "pickup_low", "Pickup 3 ! NEW", AnimationOptions =
    {
     EmoteMoving = false,
     EmoteDuration = 2500,
    }},
    ["stretch5"] = {"switch@franklin@bed", "stretch_long", "Stretch 5 ! NEW", AnimationOptions =
    {
     EmoteMoving = false,
     EmoteDuration = 2500,
    }},
    ["idle14"] = {"amb@world_human_hang_out_street@male_a@idle_a", "idle_a", "Idle 14 ! NEW", AnimationOptions =
    {
     EmoteLoop = true,
    }},
    ["idle15"] = {"amb@world_human_hang_out_street@male_c@base", "base", "Idle 15 ! NEW", AnimationOptions =
    {
     EmoteLoop = true,
    }},
    ["stickup4"] = {"guard_reactions", "1hand_aiming_cycle", "Stickup 4 ! NEW", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["me2"] = {"switch@franklin@getting_ready", "002334_02_fras_v2_11_getting_dressed_exit", "Me 2 ! NEW", AnimationOptions =
    {
     EmoteMoving = false,
     EmoteDuration = 2500,
    }},
    ["tryclothes4"] = {"move_clown@p_m_two_idles@", "fidget_look_at_outfit", "Try Clothes 4 ! NEW", AnimationOptions =
    {
     EmoteMoving = false,
     EmoteDuration = 6000,
    }},
    ["sittoilet"] = {"switch@trevor@on_toilet", "trev_on_toilet_loop", "Sit Toilet ! NEW", AnimationOptions =
    {
     EmoteMoving = false,
     EmoteDuration = 5000,
    }},
    ["sittoilet2"] = {"timetable@trevor@on_the_toilet", "trevonlav_struggleloop", "Sit Toilet 2 ! NEW", AnimationOptions =
    {
     EmoteMoving = false,
     EmoteDuration = 5000,
    }},
    ["scared3"] = {"amb@code_human_cower@male@base", "base", "Scared 3 ! NEW", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["valet"] = {"anim@amb@world_human_valet@normal@base@", "base_a_m_y_vinewood_01", "Valet ! NEW", AnimationOptions =
    {
     EmoteMoving = false,
     EmoteLoop = true,
    }},
    ["sunbathe3"] = {"amb@world_human_sunbathe@male@back@idle_a", "idle_c", "Sunbathe 3 ! NEW", AnimationOptions =
    {
        EmoteMoving = false,
        EmoteLoop = true,
    }},
    ["sunbathe4"] = {"amb@world_human_sunbathe@male@front@base", "base", "Sunbathe 4 ! NEW", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["crossarms7"] = {"anim@scripted@carmeet@tun_meet_ig2_race@", "base", "Cross Arms 7 ! NEW", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = true,
    }},
    ["touchground"] = {"anim@amb@carmeet@checkout_car@male_a@idles", "idle_b", "Touch the Ground ! NEW", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["idle12"] = {"anim@amb@carmeet@checkout_car@male_c@idles", "idle_a", "Idle 12 ! NEW", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["touchground2"] = {"anim@amb@carmeet@checkout_car@female_d@base", "base", "Touch the Ground 2 ! NEW", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["texting2"] = {"anim@amb@carmeet@take_photos@male_a@base", "base", "Texting 2 ! NEW", AnimationOptions =
    {
       EmoteMoving = false,
       Prop = "prop_npc_phone_02",
       PropBone = 28422,
       PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
       EmoteLoop = true,
    }},
    ["texting3"] = {"anim@amb@carmeet@take_photos@female_b@base", "base", "Texting 3 ! NEW", AnimationOptions =
    {
       EmoteMoving = false,  
       Prop = "prop_npc_phone_02",
       PropBone = 28422,
       PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
       EmoteLoop = true,
    }},
    ["listenmusic"] = {"anim@amb@carmeet@listen_music@male_a@trans", "a_trans_d", "Listen Music ! NEW", AnimationOptions =
    {
     EmoteMoving = false,
     EmoteDuration = 5000,
    }},
    ["jog6"] = {"move_f@jogger", "idle", "Jog 6 ! NEW", AnimationOptions =
    {
        EmoteDuration = 2500,
        EmoteMoving = true,
    }},
    ["jog7"] = {"move_m@jogger", "idle", "Jog 7 ! NEW", AnimationOptions =
    {
        EmoteDuration = 2500,
        EmoteMoving = true,
    }},
    ["come2"] = {"mini@triathlon", "wot_the_fuck", "Come 2! NEW", AnimationOptions =
    {
     EmoteMoving = false,
     EmoteDuration = 2500,
    }},
    ["noway4"] = {"mini@triathlon", "u_cant_do_that", "No Way 4 ! NEW", AnimationOptions =
    {
     EmoteMoving = false,
     EmoteDuration = 2500,
    }},
    ["warmup"] = {"mini@triathlon", "ig_2_gen_warmup_01", "Warmup ! NEW", AnimationOptions =
    {
        EmoteMoving = false,
        EmoteDuration = 5000,
    }},
    ["warmup2"] = {"mini@triathlon", "ig_2_gen_warmup_02", "Warmup 2 ! NEW", AnimationOptions =
    {
        EmoteMoving = false,
        EmoteDuration = 5000,
    }},
    ["warmup3"] = {"mini@triathlon", "jog_idle_f", "Warmup 3 ! NEW", AnimationOptions =
    {
        EmoteMoving = false,
        EmoteDuration = 5000,
    }},
    ["warmup4"] = {"mini@triathlon", "jog_idle_e", "Warmup 4 ! NEW", AnimationOptions =
    {
        EmoteMoving = false,
        EmoteDuration = 5000,
    }},
    ["cpr3"] = {"missheistfbi3b_ig8_2", "cpr_loop_paramedic", "CPR 3 ! NEW", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["passout6"] = {"missheistfbi3b_ig8_2", "cower_loop_victim", "Pass Out 6 ! NEW", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["idle13"] = {"amb@world_human_drug_dealer_hard@male@base", "base", "Idle 13 ! NEW", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["cheer4"] = {"amb@world_human_strip_watch_stand@male_c@idle_a", "idle_b", "Cheer 4 ! NEW", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["jcheckw"] = {"amb@world_human_bum_wash@male@high@base", "base", "Check Water ! NEW", AnimationOptions =
    {
        EmoteMoving = false,
        EmoteDuration = 5000,
    }},
    ["noway2"] = {"oddjobs@towingpleadingbase", "base", "No Way 2 ! NEW", AnimationOptions =
    {
     EmoteMoving = false,
     EmoteDuration = 2500,
    }},
    ["thisbig"] = {"oddjobs@bailbond_hobohang_out_street_c", "idle_c", "This Big ! NEW", AnimationOptions =
    {
     EmoteMoving = false,
     EmoteDuration = 2500,
    }},
    ["lookinghelp"] = {"oddjobs@assassinate@old_lady", "looking_for_help", "Looking For Help  ! NEW", AnimationOptions =
    {
     EmoteMoving = false,
     EmoteDuration = 5000,
    }},
    ["flex2"] = {"oddjobs@assassinate@multi@", "idle_a", "Flex 2 ! NEW", AnimationOptions =
    {
     EmoteMoving = false,
     EmoteDuration = 5000,
    }},
    ["dj11"] = {"anim@scripted@nightclub@dj@dj_moodm@", "moodm_cdj_left_a_12", "DJ 11 ! NEW", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dj12"] = {"anim@amb@nightclub@djs@switch@dixn_djset_switchover@", "dix_end_bg_female1", "DJ 12  ! NEW", AnimationOptions =
    {
     EmoteLoop = true,
    }},
    ["dj13"] = {"anim@amb@nightclub_island@dancers@crowddance_facedj_transitions@from_low_intensity", "trans_dance_facedj_li_to_mi_11_v1_male^3", "DJ 13  ! NEW", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dj14"] = {"anim@mp_player_intcelebrationmale@dj", "dj", "DJ 14 ! NEW", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["listenmusic2"] = {"anim@veh@lowrider@std@ds@arm@music@hiphopidle_a", "idle", "Listen Music 2  ! NEW", AnimationOptions =
    {
     EmoteMoving = true,
     EmoteDuration = 2500,
    }},
    ["stickup3"] = {"random@getawaydriver@thugs", "base_a", "Stickup 3  ! NEW", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["sitsad3"] = {"anim@amb@business@bgen@bgen_no_work@", "sit_phone_phoneputdown_sleeping-noworkfemale", "Sit Sad 3  ! NEW", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["dgrave"] = {"anim@amb@drug_field_workers@rake@male_a@base", "base", "Digging Grave  ! NEW", AnimationOptions =
    {
        EmoteMoving = false,
        EmoteLoop = true,
        Prop = 'prop_tool_shovel006',
        PropBone = 28422,
        PropPlacement = {0.0, 0.1, -0.6, 0.0, 0.0, 180.0},
    }},
    ["bendover"] = {"missheistdockssetup1ig_10@base", "talk_pipe_base_worker1", "Bend Over Wait  ! NEW", AnimationOptions =
    {
     EmoteMoving = false,
     EmoteDuration = 2500,
    }},
    ["repent2"] = {"anim@amb@drug_field_workers@weeding@male_a@base", "base", "Repent 2  ! NEW", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["lookplan"] = {"missheist_agency2aig_4", "look_plan_c_worker2", "Look Plan  ! NEW", AnimationOptions =
    {
     EmoteMoving = false,
     EmoteDuration = 5000,
    }},
    ["drink3"] = {"amb@world_human_drinking_fat@beer@male@base", "base", "Drink 3  ! NEW", AnimationOptions =
    {
        Prop = 'prop_cs_beer_bot_40oz_03',
        PropBone = 28422,
        PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
        EmoteLoop = true,
        EmoteMoving = true,
    }},
    ["jgangdrink"] = {"amb@world_human_drinking_fat@beer@male@idle_a", "idle_b", "Gang Drink 2 ! NEW", AnimationOptions =
    {
        Prop = 'prop_cs_beer_bot_40oz_03',
        PropBone = 28422,
        PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
        EmoteLoop = true,
        EmoteMoving = true,
    }},
    ["leanm"] = {"amb@world_human_leaning@male@wall@back@mobile@base", "base", "Lean Mobile", AnimationOptions =
    {
        EmoteMoving = false,
        EmoteLoop = true,
        Prop = "prop_npc_phone_02",
        PropBone = 28422,
        PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
    }},
    ["thanks"] = {"random@arrests", "thanks_male_05", "Thanks", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["texting4"] = {"amb@world_human_stand_mobile_fat@male@text@base", "base", "Texting 3", AnimationOptions =
    {
        EmoteMoving = true,
        EmoteLoop = true,
        Prop = "prop_npc_phone_02",
        PropBone = 28422,
        PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
    }},
    ["ffb"] = {"timetable@trevor@skull_loving_bear", "skull_loving_bear", "F From Behind", AnimationOptions =
    {
        EmoteLoop = true,
    }},
 
    ["sitdrunk2"] = {"timetable@tracy@ig_7@base", "base", "Sit Drunk 2 ! NEW", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["idle16"] = {"anim@amb@casino@hangout@ped_female@stand@02a@base", "base", "Idle 16 ! NEW", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["idle17"] = {"amb@world_human_jog_standing@male@fitbase", "base", "Idle 17 ! NEW", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["idle18"] = {"anim@amb@casino@hangout@ped_male@stand@03b@base", "base", "Idle 18 ! NEW", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["idle19"] = {"amb@world_human_bum_standing@twitchy@base", "base", "Idle 19 ! NEW", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ---------------------------------------------------------------------------------------------------------------------------------------
    ---------------------------------------------------------------------------------------------------------------------------------------
    ---------------------------------------------------------------------------------------------------------------------------------------
    ---------------------------------------------------------------------------------------------------------------------------------------
    ---------------------------------------------------------------------------------------------------------------------------------------
    ["chicken"] = {"anim@mp_player_intcelebrationfemale@chicken_taunt", "chicken_taunt", "Ttyy Emotes New", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["chicken2"] = {"anim@mp_player_intcelebrationmale@chicken_taunt", "chicken_taunt", "Ttyy Emotes New 2", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["freakout"] = {"anim@mp_player_intcelebrationfemale@freakout", "freakout", "Ttyy Emotes New 3", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["freakout2"] = {"anim@mp_player_intcelebrationmale@freakout", "freakout", "Ttyy Emotes New 4", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["freakoutrun"] = {"anim@mp_player_intcelebrationfemale@freakout", "freakout", "Ttyy Emotes New 5", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteLoop = true,
    }},
    ["freakoutrun2"] = {"anim@mp_player_intcelebrationmale@freakout", "freakout", "Ttyy Emotes New 6", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteLoop = true,
    }},
    ["photography"] = {"anim@mp_player_intcelebrationfemale@photography", "photography", "Ttyy Emotes New 7", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteLoop = true,
    }},
    ["photography2"] = {"anim@mp_player_intcelebrationmale@photography", "photography", "Ttyy Emotes New 8", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteLoop = true,
    }},
    ["smokeflick"] = {"anim@mp_player_intcelebrationfemale@smoke_flick", "smoke_flick", "Ttyy Emote New 9", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["smokeflick2"] = {"anim@mp_player_intcelebrationmale@smoke_flick", "smoke_flick", "Ttyy Emote New 10", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["loco"] = {"anim@mp_player_intcelebrationfemale@you_loco", "you_loco", "Ttyy Emote New 11", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["loco2"] = {"anim@mp_player_intcelebrationmale@you_loco", "you_loco", "Ttyy Emote New 12", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["shh"] = {"anim@mp_player_intcelebrationfemale@shush", "shush", "Ttyy Emote New 13", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["shh2"] = {"anim@mp_player_intcelebrationmale@shush", "shush", "Ttyy Emote New 14", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["jogetin"] = {"anim@mp_player_intcelebrationfemale@the_woogie", "the_woogie", "Ttyy Emote New 15", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["jogetin2"] = {"anim@mp_player_intcelebrationmale@the_woogie", "the_woogie", "Ttyy Emote New 16", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["ena"] = {"anim@mp_player_intcelebrationfemale@dock", "dock", "Ttyy Emote New 17", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["ena2"] = {"anim@mp_player_intcelebrationmale@dock", "dock", "Ttyy Emote New 18", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["joking"] = {"special_ped@jane@monologue_5@monologue_5c", "brotheradrianhasshown_2", "Joking", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteDuration = 3000,
    }},
    ["boxing3"] = {"rcmextreme2", "loop_punching", "Boxing Training 3", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = true,
    }},
    ["spy"] = {"random@paparazzi@peek", "left_peek_a", "Spy", AnimationOptions =
    {
        EmoteLoop = true,
    }},
   ["hgun3"] = {"move_m@intimidation@cop@unarmed", "idle", "Holding a gun 3", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
    ["salute4"] = {"anim@arena@celeb@podium@no_prop@", "regal_c_1st", "Salute 4", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = true,
    }},
    ["salute5"] = {"anim@arena@celeb@podium@no_prop@", "regal_a_1st", "Salute 5", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = true,
    }},
    ["bit"] = {"mini@strip_club@backroom@", "stripper_c_leadin_backroom_idle_a", "Between the legs", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["breast2"] = {"mini@strip_club@idles@stripper", "stripper_idle_05", "Breast 2", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = true,
    }},    
    ["death"] = {"missarmenian2", "drunk_loop", "Death", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["death2"] = {"missarmenian2", "corpse_search_exit_ped", "Death 2", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["death3"] = {"anim@gangops@morgue@table@", "body_search", "Death 3", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["death4"] = {"mini@cpr@char_b@cpr_def", "cpr_pumpchest_idle", "Death 4", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["death5"] = {"random@mugging4", "flee_backward_loop_shopkeeper", "Death 5", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["sleep10"] = {"amb@world_human_bum_slumped@male@laying_on_left_side@base", "base", "To sleep 10", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["strain"] = {"amb@world_human_muscle_flex@arms_at_side@idle_a", "idle_a", "Strain", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["keyboard5"] = {"anim@heists@fleeca_bank@scope_out@cashier_loop", "cashier_loop", "Keyboard", AnimationOptions =
    {
        EmoteLoop = true,
    }}, 
    ["sit13"] = {"anim@heists@narcotics@funding@gang_chat", "gang_chatting_combined", "Sit on the ground 13", AnimationOptions =
    {
        EmoteLoop = true,
    }},
 
    ["sit12"] = {"anim@heists@prison_heistig_5_p1_rashkovsky_idle", "idle_180", "Sit on the ground 12", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["sit11"] = {"anim@mp_rollarcoaster", "hands_up_idle_a_player_one", "Sit on the ground 11", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }}, 
    ["hgun2"] = {"combat@aim_variations@1h@gang", "aim_variation_b", "Holding a gun 2", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = true,
    }},
    ["whgun"] = {"combat@damage@injured_pistol@to_writhe", "variation_b", "Wounded Holding a gun", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = true,
    }},
    ["wounded2"] = {"combat@damage@writhe", "writhe_loop", "Wounded 2", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }}, 
    ["opensafe"] = {"mini@safe_cracking", "dial_turn_anti_slow", "Opening a Safe", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["lean6"] = {"mini@strip_club@backroom@", "leadin_loop_idle_c_stripper_c", "Lean 6", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["breast"] = {"mini@strip_club@backroom@", "stripper_b_backroom_idle_b", "Breast", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = true,
    }},
    ["come"] = {"swat", "come", "Come ", AnimationOptions =
    {
        EmoteLoop = false,
        EmoteMoving = false,
    }},
    ["stop"] = {"swat", "freeze", "Stop ", AnimationOptions =
    {
        EmoteLoop = false,
        EmoteMoving = false,
    }},
    ["progress"] = {"swat", "go_fwd", "Progress ", AnimationOptions =
    {
        EmoteLoop = false,
        EmoteMoving = false,
    }},
    ["packup"] = {"swat", "rally_point", "Pack up ", AnimationOptions =
    {
        EmoteLoop = false,
        EmoteMoving = false,
    }},
    ["understood"] = {"swat", "understood", "Understood ", AnimationOptions =
    {
        EmoteLoop = false,
        EmoteMoving = false,
    }},
    ["fakefist"] = {"missarmenian2", "fake_punch_walk_by_lamar", "Fake fist ", AnimationOptions =
    {
        EmoteLoop = false,
        EmoteMoving = false,
    }},
    ["what"] = {"missarmenian2", "lamar_impatient_a", "What? ", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
 
   ["watch"] = {"amb@code_human_wander_idles_fat@male@idle_a", "idle_a_wristwatch", "Look at the clock", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["gather"] = {"amb@prop_human_movie_bulb@idle_a", "idle_a", "Gather", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true, 
   }},
    ["showgun"] = {"move_weapon@pistol@copc", "idle", "Show the gun ", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = true,
    }},
    ["showgun2"] = {"move_weapon@pistol@cope", "idle", "Show the gun 2 ", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = true,
    }},
    ["back"] = {"combat@gestures@rifle@beckon", "0", "Back ", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = true,
    }},
    ["lookaround"] = {"anim@miss@low@fin@lamar@", "idle", "Look around ", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["sit10"] = {"anim_heist@arcade_combined@", "jimmy@_smoking_base", "Sit on the ground 10 ", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["hgun5"] = {"random@arrests", "radio_chatter", "Holding a gun 5 ", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = true,
    }},
    ["phone10"] = {"cellphone@self@franklin@", "west_coast", "Phone 10 ", AnimationOptions =
    {
        Prop = "prop_npc_phone_02",
        PropBone = 28422,
        PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["phone2"] = {"cellphone@self@franklin@", "chest_bump", "Phone 2 ", AnimationOptions =
    {
        Prop = "prop_npc_phone_02",
        PropBone = 28422,
        PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["phone3"] = {"cellphone@self@franklin@", "peace", "Phone 3 ", AnimationOptions =
    {
        Prop = "prop_npc_phone_02",
        PropBone = 28422,
        PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["phone4"] = {"cellphone@self@michael@", "finger_point", "Phone 4 ", AnimationOptions =
    {
        Prop = "prop_npc_phone_02",
        PropBone = 28422,
        PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["phone5"] = {"cellphone@self@michael@", "run_chin", "Phone 5 ", AnimationOptions =
    {
        Prop = "prop_npc_phone_02",
        PropBone = 28422,
        PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["phone6"] = {"cellphone@self@michael@", "stretch_neck", "Phone 6 ", AnimationOptions =
    {
        Prop = "prop_npc_phone_02",
        PropBone = 28422,
        PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["phone7"] = {"cellphone@self@trevor@", "aggressive_finger", "Phone 7 ", AnimationOptions =
    {
        Prop = "prop_npc_phone_02",
        PropBone = 28422,
        PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["phone8"] = {"cellphone@self@trevor@", "proud_finger", "Phone 8 ", AnimationOptions =
    {
        Prop = "prop_npc_phone_02",
        PropBone = 28422,
        PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["phone9"] = {"cellphone@self@trevor@", "throat_slit", "Phone 9 ", AnimationOptions =
    {
        Prop = "prop_npc_phone_02",
        PropBone = 28422,
        PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
        EmoteLoop = true,
        EmoteMoving = false,
    }},
 
    ["plant"] = {"missarmenian3_gardener", "idle_a", "Plant ", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["miss"] = {"missfbi1", "ext_t14_leaning_loop", "Miss ", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["presson"] = {"rcmjosh2", "stand_lean_back_beckon_b", "Press On ", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["leanbar9"] = {"rcmnigel1aig_1", "base_02_willie", "Lean Bar 9 ", AnimationOptions =
    {
       EmoteLoop = false,
    }},
    ["welcome"] = {"random@shop_tattoo", "_greeting", "Welcome ", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["youstop"] = {"anim@amb@casino@peds@", "mini_strip_club_idles_bouncer_stop_stop", "You stopped ", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["wtest"] = {"anim@amb@range@weapon_test@", "weapon_test_01_amy_skater_01", "Weapon Test ", AnimationOptions =
    {
       EmoteLoop = false,
       EmoteMoving = false,
    }},
    ["eastside"] = {"amb@code_human_in_car_mp_actions@gang_sign_a@bodhi@rds@base", "idle_a", "Eastside Sign", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = true,
    }},
    ["eastside2"] = {"amb@code_human_in_car_mp_actions@gang_sign_a@low@ps@base", "idle_a", "Eastside Sign 2", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = true,
    }},
    ["eastside3"] = {"amb@code_human_in_car_mp_actions@gang_sign_b@std@ds@base", "idle_a", "Eastside Sign 3", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = true,
    }},
    ["v"] = {"amb@code_human_in_car_mp_actions@v_sign@bodhi@rps@base", "idle_a", "V Sign", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = true,
     }},
     ["keepit"] = {"gestures@f@standing@casual", "gesture_bye_hard", "Keep it ", AnimationOptions =
     {
         EmoteLoop = true,
         EmoteMoving = true,
     }},
     ["leandrink"] = {"amb@world_human_leaning@male@coffee@idle_a", "idle_a", "Inside Leaning ", AnimationOptions =
     {
         EmoteLoop = true,
     }},
    ["fun"] = {"anim@arena@celeb@flat@paired@no_props@", "laugh_a_player_b", "To enjoy", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["bequiet"] = {"anim@arena@celeb@flat@solo@no_props@", "giggle_a_player_b", "Be quiet", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["crisis"] = {"stungun@standing", "damage", "Crisis", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["fuck"] = {"gestures@m@standing@casual", "gesture_damn", "Huh Fuck", AnimationOptions =
    {
        EmoteMoving = true,
        EmoteDuration = 1000
    }},
    ["fuck2"] = {"anim@am_hold_up@male", "shoplift_mid", "Huh Fuck 2", AnimationOptions =
    {
        EmoteMoving = true,
        EmoteDuration = 1000
    }},
    ["staydown"] = {"gestures@f@standing@casual", "gesture_hand_down", "Stay Down", AnimationOptions =
    {
        EmoteMoving = true,
        EmoteDuration = 1000
    }},
    ["barm9"] = {"anim@amb@nightclub@peds@", "rcmme_amanda1_stand_loop_cop", "Binding Arms 9", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["belt2"] = {"amb@code_human_police_investigate@idle_a", "idle_b", "Belt 2", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["barm"] = {"amb@world_human_hang_out_street@female_arms_crossed@idle_a", "idle_a", "Binding Arms", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = true,
    }},
    ["barm2"] = {"amb@world_human_hang_out_street@male_c@idle_a", "idle_b", "Binding Arms 2", AnimationOptions =
    {
        EmoteMoving = true,
    }},
    ["barm3"] = {"anim@heists@heist_corona@single_team", "single_team_loop_boss", "Binding Arms 3", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = true,
    }},
    ["barm4"] = {"random@street_race", "_car_b_lookout", "Binding Arms 4", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = true,
    }},
    ["barm5"] = {"anim@amb@nightclub@peds@", "rcmme_amanda1_stand_loop_cop", "Binding Arms 5", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = true,
    }},
    ["barm6"] = {"anim@amb@nightclub@peds@", "rcmme_amanda1_stand_loop_cop", "Binding Arms 6", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = true,
    }},
    ["barm7"] = {"random@shop_gunstore", "_idle", "Binding Arms 7", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = true,
    }},
    ["barm8"] = {"anim@amb@business@bgen@bgen_no_work@", "stand_phone_phoneputdown_idle_nowork", "Binding Arms 8", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = true,
    }},
    ["slippery"] = {"amb@world_human_hang_out_street@female_hold_arm@idle_a", "idle_a", "Slippery", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["staydrunk"] = {"random@drunk_driver_1", "drunk_driver_stand_loop_dd1", "Staying Drunk", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["staydrunk2"] = {"random@drunk_driver_1", "drunk_driver_stand_loop_dd2", "Staying Drunk 2", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["staydrunk3"] = {"missarmenian2", "standing_idle_loop_drunk", "Staying Drunk 3", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["order"] = {"misscarsteal3pullover", "pull_over_right", "Order", AnimationOptions =
    {
        EmoteMoving = true,
        EmoteDuration = 1300,
    }},
    ["carm"] = {"anim@veh@lowrider@std@ds@arm@base", "sit", "Car Arms", AnimationOptions =  --// IDLE
    {
        EmoteMoving = true,
        EmoteLoop = true,
    }},
    ["carm2"] = {"anim@veh@lowrider@std@ds@arm@base", "sit_high", "Car Arms 2", AnimationOptions =  --// IDLE
    {
        EmoteMoving = true,
        EmoteLoop = true,
    }},
    ["carm3"] = {"anim@veh@lowrider@std@ds@arm@base", "sit_high_lowdoor", "Car Arms 3", AnimationOptions =  --// IDLE
    {
        EmoteMoving = true,
        EmoteLoop = true,
    }},
    ["carm4"] = {"anim@veh@lowrider@std@ds@arm@base", "sit_low", "Car Arms 4", AnimationOptions =  --// IDLE
    {
        EmoteMoving = true,
        EmoteLoop = true,
    }},
    ["carm5"] = {"anim@veh@lowrider@std@ds@arm@base", "sit_low_lowdoor", "Car Arms 5", AnimationOptions =  --// IDLE
    {
        EmoteMoving = true,
        EmoteLoop = true,
    }},
    ["carm6"] = {"anim@veh@lowrider@std@ds@arm@base", "sit_lowdoor", "Car Arms 6", AnimationOptions =  --// IDLE
    {
        EmoteMoving = true,
        EmoteLoop = true,
    }},
    ["dj10"] = {"mini@strip_club@idles@dj@base", "base", "DJ 10", AnimationOptions =
    {
        EmoteMoving = false,
        EmoteLoop = true,   
    }},
    ["idlephone"] = {"anim@amb@nightclub@peds@", "amb_world_human_leaning_female_wall_back_texting_idle_a", "Phone Idle Standing", AnimationOptions =
    {
        Prop = "prop_npc_phone_02",
        PropBone = 28422,
        PropPlacement = {0.030, 0.0, 0.030, 0.0, 10.0, 0.0},
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["graffiti"] = {"switch@franklin@lamar_tagging_wall", "lamar_tagging_wall_loop_lamar", "Graffiti", AnimationOptions =
    {
        Prop = "prop_paint_spray01a",
        PropBone = 28422,
        PropPlacement = {0.0, 0.0, -0.070, 0.0, 0.0, 0.0},
        EmoteMoving = false,
        EmoteLoop = true,
    }},
    ["graffiti2"] = {"switch@franklin@lamar_tagging_wall", "lamar_tagging_exit_loop_lamar", "Graffiti 2", AnimationOptions =
    {
        Prop = "prop_spraygun_01",
        PropBone = 28422,
        PropPlacement = {0.0, 0.0, -0.070, 0.0, 0.0, 0.0},
        EmoteMoving = false,
        EmoteLoop = true,
    }},
    ["kisses"] = {"anim@mp_player_intcelebrationmale@blow_kiss", "blow_kiss", "Kiss", AnimationOptions =
    {
        EmoteMoving = true,
        EmoteLoop = false,
    }},
    ["respect"] = {"anim@mp_player_intcelebrationmale@bro_love", "bro_love", "Respect", AnimationOptions =
    {
        EmoteMoving = false,
        EmoteLoop = false,
    }},
    ["peace3"] = {"anim@mp_player_intcelebrationmale@peace", "peace", "Peace 3", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["gangidle"] = {"anim@miss@low@fin@vagos@", "idle_ped01", "Gang Idle Standing", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["gangidle2"] = {"anim@miss@low@fin@vagos@", "idle_ped02", "Gang Idle Standing 2", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["gangidle3"] = {"anim@miss@low@fin@vagos@", "idle_ped03", "Gang Idle Standing 3", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["gangidle4"] = {"anim@miss@low@fin@vagos@", "idle_ped04", "Gang Idle Standing 4", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["gangidle5"] = {"anim@miss@low@fin@vagos@", "idle_ped05", "Gang Idle Standing 5", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["gangidle6"] = {"anim@miss@low@fin@vagos@", "idle_ped06", "Gang Idle Standing 6", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["gangidle7"] = {"anim@miss@low@fin@vagos@", "idle_ped07", "Gang Idle Standing 7", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["gangidle8"] = {"anim@miss@low@fin@vagos@", "idle_ped08", "Gang Idle Standing 8", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["belt3"] = {"amb@code_human_police_investigate@base", "base", "Belt 3", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["belt4"] = {"amb@world_human_cop_idles@female@idle_b", "idle_d", "Belt 4", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["sitpose"] = {"Funshine@sitpose1", "sitpose1", "NEW Ttyy SITPOSE", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["dab"] = {"custom@dab", "dab", "Dab", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = false,
    }},
    ["armswirl"] = {"custom@armswirl", "armswirl", "Arm Swirl", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["armwave"] = {"custom@armwave", "armwave", "Arm Wave", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["circle_crunchx"] = {"custom@circle_crunch", "circle_crunch", "Circle Crunch", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["dig"] = {"custom@dig", "dig", "Dig", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["what_idk"] = {"custom@what_idk", "what_idk", "What IDK", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["drink"] = {"mp_player_inteat@pnq", "loop", "Drink", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteDuration = 2500,
    }},
    ["beast"] = {"anim@mp_fm_event@intro", "beast_transform", "Beast", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteDuration = 5000,
    }},
    ["chill"] = {"switch@trevor@scares_tramp", "trev_scares_tramp_idle_tramp", "Chill", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["cloudgaze"] = {"switch@trevor@annoys_sunbathers", "trev_annoys_sunbathers_loop_girl", "Cloudgaze", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["cloudgaze2"] = {"switch@trevor@annoys_sunbathers", "trev_annoys_sunbathers_loop_guy", "Cloudgaze 2", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["prone"] = {"missfbi3_sniping", "prone_dave", "Prone", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["pullover"] = {"misscarsteal3pullover", "pull_over_right", "Pullover", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteDuration = 1300,
    }},
    ["idle"] = {"anim@heists@heist_corona@team_idles@male_a", "idle", "Idle", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["idle8"] = {"amb@world_human_hang_out_street@male_b@idle_a", "idle_b", "Idle 8"},
    ["idle9"] = {"friends@fra@ig_1", "base_idle", "Idle 9", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["idle10"] = {"mp_move@prostitute@m@french", "idle", "Idle 10", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["idle11"] = {"random@countrysiderobbery", "idle_a", "Idle 11", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["idle2"] = {"anim@heists@heist_corona@team_idles@female_a", "idle", "Idle 2", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["idle3"] = {"anim@heists@humane_labs@finale@strip_club", "ped_b_celebrate_loop", "Idle 3", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["idle4"] = {"anim@mp_celebration@idles@female", "celebration_idle_f_a", "Idle 4", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["idle5"] = {"anim@mp_corona_idles@female_b@idle_a", "idle_a", "Idle 5", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["idle6"] = {"anim@mp_corona_idles@male_c@idle_a", "idle_a", "Idle 6", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["idle7"] = {"anim@mp_corona_idles@male_d@idle_a", "idle_a", "Idle 7", AnimationOptions =
    {
       EmoteLoop = true,
    }},
 
    ["idledrunk"] = {"random@drunk_driver_1", "drunk_driver_stand_loop_dd1", "Idle Drunk", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["idledrunk2"] = {"random@drunk_driver_1", "drunk_driver_stand_loop_dd2", "Idle Drunk 2", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["idledrunk3"] = {"missarmenian2", "standing_idle_loop_drunk", "Idle Drunk 3", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["airguitar"] = {"anim@mp_player_intcelebrationfemale@air_guitar", "air_guitar", "Air Guitar"},
    ["airsynth"] = {"anim@mp_player_intcelebrationfemale@air_synth", "air_synth", "Air Synth"},
    ["argue"] = {"misscarsteal4@actor", "actor_berating_loop", "Argue", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["argue2"] = {"oddjobs@assassinate@vice@hooker", "argue_a", "Argue 2", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["bartender"] = {"anim@amb@clubhouse@bar@drink@idle_a", "idle_a_bartender", "Bartender", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["blowkiss"] = {"anim@mp_player_intcelebrationfemale@blow_kiss", "blow_kiss", "Blow Kiss"},
    ["blowkiss2"] = {"anim@mp_player_intselfieblow_kiss", "exit", "Blow Kiss 2", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteDuration = 2000
 
    }},
    ["curtsy"] = {"anim@mp_player_intcelebrationpaired@f_f_sarcastic", "sarcastic_left", "Curtsy"},
    ["bringiton"] = {"misscommon@response", "bring_it_on", "Bring It On", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteDuration = 3000
    }},
    ["comeatmebro"] = {"mini@triathlon", "want_some_of_this", "Come at me bro", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteDuration = 2000
    }},
    ["cop2"] = {"anim@amb@nightclub@peds@", "rcmme_amanda1_stand_loop_cop", "Cop 2", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["cop3"] = {"amb@code_human_police_investigate@idle_a", "idle_b", "Cop 3", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["crossarms"] = {"amb@world_human_hang_out_street@female_arms_crossed@idle_a", "idle_a", "Crossarms", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["crossarms2"] = {"amb@world_human_hang_out_street@male_c@idle_a", "idle_b", "Crossarms 2", AnimationOptions =
    {
       EmoteMoving = true,
    }},
    ["crossarms3"] = {"anim@heists@heist_corona@single_team", "single_team_loop_boss", "Crossarms 3", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["crossarms4"] = {"random@street_race", "_car_b_lookout", "Crossarms 4", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["crossarms5"] = {"anim@amb@nightclub@peds@", "rcmme_amanda1_stand_loop_cop", "Crossarms 5", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["foldarms3"] = {"missheistdockssetup1showoffcar@idle_a", "idle_a_5", "Fold Arms 3", AnimationOptions =
    {
       EmoteLoop = false,
       EmoteMoving = true,
    }},
    ["foldarms"] = {"anim@amb@business@bgen@bgen_no_work@", "stand_phone_phoneputdown_idle_nowork", "Fold Arms", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["crossarmsside"] = {"rcmnigel1a_band_groupies", "base_m2", "Crossarms Side", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
 
    ["piggy"] = {"fos_ep_1_p1-9", "csb_imran_dual-9", "Piggy", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = true,
    }},
 
    ["speech"] = {"fos_ep_1_p0-0", "cs_lazlow_dual-0", "Speech", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = true,
    }},
 
    ["new"] = {"fos_ep_1_p1-0", "cs_lazlow_dual-0", "New Emotes 1", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = true,
    }},
 
    ["new2"] = {"fos_ep_1_p1-0", "csb_imran_dual-0", "New Emotes 2", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = true,
    }},
 
    ["new3"] = {"fos_ep_1_p1-1", "cs_lazlow_dual-1", "New Emotes 3", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
 
    ["blowingkiss"] = {"fos_ep_1_p1-1", "csb_anita_dual-1", "Blowing a Kiss", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = true,
    }},
 
    ["new4"] = {"fos_ep_1_p1-1", "csb_imran_dual-1", "New Emotes 4", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = true,
    }},
 
    ["new5"] = {"fos_ep_1_p5-2", "csb_william_dual-2", "New Emotes 5", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = true,
    }},
    ["new6"] = {"timetable@trevor@ig_1", "ig_1_therearejustsomemoments_patricia", "New Emotes 6", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = true,
    }},
    ["foldarms4"] = {"impexp_int_l1-11", "mp_m_waremech_01_dual-11", "Fold Arms 4", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = true,
    }},
    ["sitbar1"] = {"amb@prop_human_seat_computer@male@react_shock", "forward", "Sit Bar", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["sitbar2"] = {"amb@prop_human_seat_bar@male@elbows_on_bar@idle_b", "idle_d", "Sit Bar 2", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["sitbar3"] = {"amb@incar@male@security@idle_a", "idle_a", "Sit Bar 3", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["post4"] = {"mpcas_int-2", "s_m_y_casino_01^1_dual-2", "post4", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = true,
    }},
    ["help"] = {"missheist_agency3aig_19", "ground_call_help", "help", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["sleep3"] = {"missheist_agency3amcs_4b", "crew_dead_crew2", "Sleep 3", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["sleep4"] = {"missheist_jewel", "gassed_npc_customer1", "Sleep 4", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["sleep5"] = {"missheist_jewel", "gassed_npc_customer2", "Sleep 5", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["sleep6"] = {"missheist_jewel", "gassed_npc_customer3", "Sleep 6", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["sleep7"] = {"missheist_jewel", "gassed_npc_customer4", "Sleep 7", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["sitpost8"] = {"missheistdockssetup1ig_10@base", "talk_pipe_base_worker1", "Sit Post 8", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["call"] = {"missheistdockssetup1ig_14", "floyd_ok_now_grab_the_container", "Call", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["drunk4"] = {"missheistpaletopinned", "pinned_against_wall_pro_loop_buddy", "Drunk 4", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["yoga6"] = {"misslamar1leadinout", "yoga_02_idle_b", "Yoga 6", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["lieabout"] = {"missmic2ig_11", "mic_2_ig_11_a_p_one", "Lie About", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["bundle"] = {"missprologueig_2", "idle_on_floor_gaurd", "Bundle", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["bundle2"] = {"missprologueig_2", "idle_outside_cuboard_gaurd", "Bundle 2", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = true,
    }},
    ["sleep8"] = {"missprologueig_6", "lying_dead_brad", "Sleep 8", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["sleep9"] = {"missprologueig_6", "lying_dead_player0", "Sleep 9", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["rod"] = {"misstrevor1ig_3", "action_b", "Rod", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["check2"] = {"misstrevor3", "bike_chat_b_loop_1", "Check 2", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["check3"] = {"misstvrram_5", "marines_idle_b", "Check 3", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["numb"] = {"mp_arrest_paired", "crook_p1_idle", "Numb", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["numb2"] = {"mp_cop_miss", "dazed", "Numb 2", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = true,
    }},
    ["salam1"] = {"fam_4_int_alt1-17", "cs_amandatownley_dual-17", "Salam 1", AnimationOptions =
    {
        EmoteLoop = false,
        EmoteMoving = true,
    }},
    ["salam2"] = {"fos_ep_1_p1-26", "csb_imran_dual-26", "Salam 2", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = true,
    }},
    ["incar"] = {"mini@prostitutes@sexnorm_veh", "bj_loop_male", "In Car", AnimationOptions =
    {
        EmoteLoop = false,
        EmoteMoving = false,
    }},
    
    ["incar2"] = {"mini@prostitutes@sexnorm_veh", "bj_loop_prostitute", "In Car 2", AnimationOptions =
    {
        EmoteLoop = false,
        EmoteMoving = false,
     
    }},
    ["incar3"] = {"mini@prostitutes@sexlow_veh", "low_car_sex_loop_female", "In Car 3", AnimationOptions =
    {
        EmoteLoop = false,
        EmoteMoving = false,
     
    }},
 
    ["sex"] = {"misscarsteal2pimpsex", "pimpsex_hooker", "Sex", AnimationOptions =
    {
        EmoteLoop = false,
        EmoteMoving = false,
     
    }},
 
    ["sex2"] = {"misscarsteal2pimpsex", "pimpsex_pimp", "Sex2", AnimationOptions =
    {
        EmoteLoop = false,
        EmoteMoving = false,
     
    }},
 
    ["sex3"] = {"misscarsteal2pimpsex", "pimpsex_punter", "Sex3", AnimationOptions =
    {
        EmoteLoop = false,
        EmoteMoving = false,
     
    }},
 
    ["sex4"] = {"misscarsteal2pimpsex", "shagloop_hooker", "Sex4", AnimationOptions =
    {
        EmoteLoop = false,
        EmoteMoving = false,
     
    }},
 
    ["sex5"] = {"misscarsteal2pimpsex", "shagloop_pimp", "Sex5", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
 
    ["sex6"] = {"rcmpaparazzo_2", "shag_action_poppy", "Sex6", AnimationOptions =
    {
        EmoteLoop = false,
        EmoteMoving = false,
     
    }},
 
    ["sex7"] = {"rcmpaparazzo_2", "shag_action_a", "Sex5", AnimationOptions =
    {
        EmoteLoop = false,
        EmoteMoving = false,
     
    }},
    ["givebirth"] = {"mini@cpr@char_a@cpr_str", "cpr_kol", "Give birth", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["tiedup"] = {"random@burial", "b_burial", "Tied up", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["drink2"] = {"friends@frl@ig_1", "drink_lamar", "Drink 2", AnimationOptions =
    {    
        Prop = 'prop_beer_patriot',
        PropBone = 60309,
        PropPlacement = {-0.03499999, -0.165, -0.015, 436.7987, 412.3998, 177.4},
        EmoteLoop = false,
        EmoteMoving = true,
     
    }},
 
    ["mc"] = {"anim@amb@nightclub@lazlow@ig1_vip@", "clubvip_dlg_tonymctony_laz", "MC", AnimationOptions =
    {    
        Prop = 'p_ing_microphonel_01',
        PropBone = 57005,
        PropPlacement = {0.1249999, 0.03, -0.005000002, 87.10002, 149.8, 200.8},
        EmoteLoop = true,
        EmoteMoving = true,
     
    }},
 
 
    ["jump1"] = {"anim@arena@celeb@flat@solo@no_props@", "jump_d_player_a", "Jump 1", AnimationOptions =
    {    
        EmoteLoop = false,
        EmoteMoving = false,
     
    }},
 
    ["jump2"] = {"anim@arena@celeb@flat@solo@no_props@", "jump_c_player_a", "Jump 2", AnimationOptions =
    {    
        EmoteLoop = false,
        EmoteMoving = false,
     
    }},
 
    ["jump3"] = {"anim@arena@celeb@flat@solo@no_props@", "jump_b_player_a", "Jump 3", AnimationOptions =
    {    
        EmoteLoop = false,
        EmoteMoving = false,
     
    }},
 
    ["jump4"] = {"anim@arena@celeb@flat@solo@no_props@", "jump_a_player_a", "Jump 4", AnimationOptions =
    {    
        EmoteLoop = false,
        EmoteMoving = false,
     
    }},
 
    ["leanbar5"] = {"switch@michael@pier", "pier_lean_smoke_idle", "Lean Bar 5", AnimationOptions =
    {   
        Prop = 'prop_cs_ciggy_01',
        PropBone = 58867,
        PropPlacement = {0.0599999, 0.005, -0.015, 40.29999, 78.3, 124.1},
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["leanbar6"] = {"switch@michael@pier", "pier_lean_smoke_idle", "Lean Bar 6", AnimationOptions =
    {   
        Prop = 'p_cs_joint_02',
        PropBone = 58867,
        PropPlacement = {0.0599999, 0.005, -0.015, 40.29999, 78.3, 124.1},
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["leanbar7"] = {"switch@michael@pier", "pier_lean_smoke_idle", "Lean Bar 7", AnimationOptions =
    {   
        Prop = 'prop_cigar_03',
        PropBone = 58867,
        PropPlacement = {0.06499989, 0.015, -0.01, 0.0, 78.3, 299.6001},
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
 
    ["sitmafia"] = {"safe@michael@ig_3", "cigar_idle_b_michael", "Sit Mafia", AnimationOptions =
    {   
        Prop = 'prop_cigar_03',
        PropBone = 58867,
        PropPlacement = {0.03999992, 0.03, 0.015, 0.0, 78.3002, 180},
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
 
    ["smell2"] = {"safe@trevor@ig_8", "ig_8_huff_gas_player", "Smell 2", AnimationOptions =
    {   
        --Prop = 'prop_cigar_03',
        --PropBone = 13700,
        --PropPlacement = {0.03999992, 0.03, 0.015, 0.0, 78.3002, 180},
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["fear"] = {"anim@heists@ornate_bank@hostages@cashier_b@", "flinch_loop_underfire", "Fear", AnimationOptions =
    {   
        --Prop = 'prop_cigar_03',
        --PropBone = 13700,
        --PropPlacement = {0.03999992, 0.03, 0.015, 0.0, 78.3002, 180},
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
 
    ["wipe"] = {"switch@franklin@cleaning_car", "001946_01_gc_fras_v2_ig_5_base", "Wipe", AnimationOptions =
    {   
        --Prop = 'prop_cigar_03',
        --PropBone = 13700,
        --PropPlacement = {0.03999992, 0.03, 0.015, 0.0, 78.3002, 180},
        EmoteLoop = true,
        EmoteMoving = true,
     
    }},
    ["sitmafia2"] = {"mini@strip_club@wade@", "leadin_loop_idle_a_wade", "Sit Mafia 2", AnimationOptions =
    {   
        --Prop = 'prop_cigar_03',
        --PropBone = 13700,
        --PropPlacement = {0.03999992, 0.03, 0.015, 0.0, 78.3002, 180},
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["cheer2"] = {"mini@triathlon", "male_one_handed_a", "Cheer 2", AnimationOptions =
    {   
        --Prop = 'prop_cigar_03',
        --PropBone = 13700,
        --PropPlacement = {0.03999992, 0.03, 0.015, 0.0, 78.3002, 180},
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["cheer3"] = {"mini@triathlon", "male_two_handed_a", "Cheer 3", AnimationOptions =
    {   
        --Prop = 'prop_cigar_03',
        --PropBone = 13700,
        --PropPlacement = {0.03999992, 0.03, 0.015, 0.0, 78.3002, 180},
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["lean6"] = {"missarmenian1leadinoutarm_1_ig_14_leadinout", "leadin_loop", "Lean 6", AnimationOptions =
    {   
        --Prop = 'prop_cigar_03',
        --PropBone = 13700,
        --PropPlacement = {0.03999992, 0.03, 0.015, 0.0, 78.3002, 180},
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["drunk"] = {"missbigscore1leadinoutbs_1_int", "leadin_loop_c_trevor", "Drunk", AnimationOptions =
    {   
        Prop = 'prop_wine_rose',
        PropBone = 58867,
        PropPlacement = {0.02499996, -0.009999998, -0.3599998, 172.9002, 183.6, 155.3},
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["pee2"] = {"missbigscore1switch_trevor_piss", "piss_loop", "Pee 2", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["lean7"] = {"misscarsteal1car_1_ext_leadin", "base_driver1", "Lean 7", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["pee3"] = {"misscarsteal2peeing", "peeing_loop", "Pee 3", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
 
    ["leanbar8"] = {"misscarstealfinalecar_5_ig_1", "waitloop_lamar", "Lean Bar 8", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
 
    ["dapap"] = {"misscarstealfinalecar_5_ig_3", "leanleft_loop", "Dapap", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
 
    ["cool"] = {"misschinese1leadinoutchi_1_mcs_4", "chi_1_mcs_4_tao_idle_2", "Cool", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["lean8"] = {"missclothing", "idle_a", "Lean 8", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["lean9"] = {"missclothing", "idle_b", "Lean 9", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["lean10"] = {"missclothing", "idle_c", "Lean 10", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["sadly"] = {"missfam4leadinoutmcs2", "tracy_loop", "Sadly", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["yoga2"] = {"missfam5_yoga", "c5_pose", "Yoga 2", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["yoga3"] = {"missfam5_yoga", "c6_pose", "Yoga 3", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["yoga4"] = {"missfam5_yoga", "c7_pose", "Yoga 4", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["post"] = {"missfbi4leadinoutfbi_4_int", "agents_idle_a_andreas", "post", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["monkey"] = {"missfbi5ig_30monkeys", "monkey_a_freakout_loop", "Monkey", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["monkey2"] = {"missfbi5ig_30monkeys", "monkey_c_freakout_loop", "Monkey 2", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["cry"] = {"missfinale_a_ig_2", "trevor_death_reaction_pt", "Cry", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["reverence"] = {"missfra2", "lamar_base_idle", "Reverence", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["post2"] = {"misshair_shop@barbers", "keeper_base", "Post 2", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = true,
     
    }},
    ["post3"] = {"misshair_shop@hair_dressers", "keeper_idle_a", "Post 3", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["clamber"] = {"missheist_agency3aig_19", "ground_call_help", "Clamber", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["sleep2"] = {"missheist_jewel", "cop_on_floor", "Sleep 2", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["yoga5"] = {"misslamar1leadinout", "yoga_01_idle", "Yoga 5", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["dig"] = {"missmic1leadinoutmic_1_mcs_2", "_leadin_trevor", "Dig", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["washface"] = {"missmic2_washing_face", "michael_washing_face", "Wash Face", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["repent"] = {"misstrevor1", "threaten_ortega_endloop_ort", "Repent", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["check"] = {"misstvrram_5", "marines_idle_b", "Check", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["wash"] = {"timetable@floyd@clean_kitchen@idle_a", "idle_a", "Wash", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
 
    ["wash2"] = {"timetable@floyd@clean_kitchen@base", "base", "Wash 2", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
 
    ["sitpost"] = {"switch@michael@smoking2", "loop", "Sit Post", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["sitpost2"] = {"switch@trevor@pushes_bodybuilder", "001426_03_trvs_5_pushes_bodybuilder_idle_bb2", "Sit Post 2", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["sitpost3"] = {"timetable@reunited@ig_10", "base_jimmy", "Sit Post 3", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["sitpost4"] = {"anim@heists@fleeca_bank@hostages@intro", "intro_loop_ped_a", "Sit Post 4", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["sitpost5"] = {"anim@amb@office@pa@male@", "greetng_b_intro", "Sit Post 5", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["sitmafia3"] = {"anim@amb@office@boss@female@", "idle_d", "Sit Mafia 3", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["sitpost6"] = {"timetable@ron@ig_3_p3", "ig_3_p3_base", "Sit Post 6", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["sitpost7"] = {"timetable@trevor@smoking_meth@idle_a", "idle_a", "Sit Post 7", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["drunk2"] = {"timetable@tracy@ig_7@base", "base", "Drunk 2", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["verydrunk"] = {"timetable@tracy@ig_7@idle_a", "idle_a", "Very Drunk", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["drunk3"] = {"timetable@tracy@ig_7@idle_a", "idle_b", "Drunk 3", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["parody"] = {"anim@mp_player_intupperthumb_on_ears", "idle_a", "Parody", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = true,
     
    }},
    ["parody2"] = {"anim@mp_player_intincarthumb_on_earsstd@ps@", "idle_a", "Parody 2", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = true,
     
    }},
    ["parody3"] = {"anim@mp_player_intincarfreakoutstd@rps@", "idle_a", "Parody 3", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = true,
     
    }},
    ["parody4"] = {"anim@mp_player_intcelebrationmale@thumb_on_ears", "thumb_on_ears", "Parody 4", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = true,
     
    }},
    ["parody5"] = {"anim@mp_player_intcelebrationfemale@thumb_on_ears", "thumb_on_ears", "Parody 5", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = true,
     
    }},
    ["show"] = {"missfbi_s4mop", "lobby_security_fp_player", "Show", AnimationOptions =
    {   
        EmoteLoop = false,
        EmoteMoving = true,
     
    }},
    ["picksnot"] = {"anim@mp_player_intincarnose_pickstd@ps@", "exit", "Pick snot", AnimationOptions =
    {   
        EmoteLoop = false,
        EmoteMoving = true,
     
    }},
    ["parody6"] = {"anim@mp_player_intincardockbodhi@rds@", "idle_a_fp", "Parody 6", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = true,
     
    }},
    ["fear2"] = {"anim@heists@prison_heistunfinished_biz@popov_react", "popov_flinch_a", "Fear 2", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["fear3"] = {"anim@heists@prison_heistunfinished_biz@popov_react", "popov_flinch_b", "Fear 3", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["heartbroken"] = {"anim@heists@prison_heistig_5_p1_rashkovsky_idle", "idle", "Heart Broken", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["fear4"] = {"anim@heists@ornate_bank@hostages@hit", "hit_loop_ped_c", "Fear 4", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["fear5"] = {"anim@heists@ornate_bank@hostages@hit", "hit_loop_ped_d", "Fear 5", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["incite"] = {"fos_ep_1_p5-1", "csb_anita_dual-1", "Incite", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = true,
     
    }},
    ["masturbate"] = {"switch@trevor@jerking_off", "trev_jerking_off_exit", "Masturbate", AnimationOptions =
    {   
        EmoteLoop = false,
        EmoteMoving = false,
     
    }},
    ["masturbate2"] = {"switch@trevor@jerking_off", "trev_jerking_off_loop", "Masturbate 2", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["puking"] = {"switch@trevor@puking_into_fountain", "trev_fountain_puke_loop", "Puking ! NEW", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["hostage"] = {"anim@move_hostages@male", "male_idle_to_cower", "Hostage ! NEW", AnimationOptions =
    {   
        EmoteLoop = false,
        EmoteMoving = false,
     
    }},
    ["sitmassage"] = {"missheistdocks2aleadinoutlsdh_2a_int", "massage_loop_2_floyd", "Sit Massage", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["massage"] = {"missheistdocks2aleadinoutlsdh_2a_int", "massage_loop_2_trevor", "Massage", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["massage2"] = {"missheistdocks2aleadinoutlsdh_2a_int", "massage_loop_floyd", "Massage 2", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["massage3"] = {"missheistdocks2bleadinoutlsdh_2b_int", "leg_massage_b_floyd", "Massage 3", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["massage4"] = {"missheistdocks2bleadinoutlsdh_2b_int", "leg_massage_floyd", "Massage 4", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["foldarms2"] = {"anim@amb@nightclub@peds@", "rcmme_amanda1_stand_loop_cop", "Fold Arms 2", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = true,
    }},
    ["crossarms6"] = {"random@shop_gunstore", "_idle", " Crossarms 6", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = true,
    }},
 
    ["damn"] = {"gestures@m@standing@casual", "gesture_damn", "Damn", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteDuration = 1000
    }},
    ["damn2"] = {"anim@am_hold_up@male", "shoplift_mid", "Damn 2", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteDuration = 1000
    }},
    ["pointdown"] = {"gestures@f@standing@casual", "gesture_hand_down", "Point Down", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteDuration = 1000
    }},
    ["surrender"] = {"random@arrests@busted", "idle_a", "Surrender", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["surrender2"] = {"misstrevor1", "threaten_ortega_endloop_ort", "Surrender 2 ", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["surrender3"] = {"anim@heists@ornate_bank@hostages@cashier_b@", "flinch_loop_underfire", "Surrender 3", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["surrender4"] = {"missheist_jewel", "manageress_kneel_loop", "Surrender 4 ! NEW", AnimationOptions =
    {
     EmoteMoving = false,
     EmoteDuration = 2500,
    }},
    ["surrender5"] = {"mp_bank_heist_1","f_cower_02","~G~! NEW Surrender 5",AnimationOptions = 
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["surrender6"] = {"mp_bank_heist_1","m_cower_01","~G~! NEW Surrender 6",AnimationOptions = 
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["surrender7"] = {"mp_bank_heist_1","m_cower_02","~G~! NEW Surrender 7",AnimationOptions = 
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["surrender8"] = {"random@arrests","kneeling_arrest_idle","~G~! NEW Surrender 8",AnimationOptions = 
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["surrender9"] = {"rcmbarry","m_cower_01","~G~! NEW Surrender 9",AnimationOptions = 
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["facepalm2"] = {"anim@mp_player_intcelebrationfemale@face_palm", "face_palm", "Facepalm 2", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteDuration = 8000
    }},
    ["facepalm"] = {"random@car_thief@agitated@idle_a", "agitated_idle_a", "Facepalm", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteDuration = 8000
    }},
    ["facepalm3"] = {"missminuteman_1ig_2", "tasered_2", "Facepalm 3", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteDuration = 8000
    }},
    ["facepalm4"] = {"anim@mp_player_intupperface_palm", "idle_a", "Facepalm 4", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteLoop = true,
    }},
    ["fallover"] = {"random@drunk_driver_1", "drunk_fall_over", "Fall Over"},
    ["fallover2"] = {"mp_suicide", "pistol", "Fall Over 2"},
    ["fallover3"] = {"mp_suicide", "pill", "Fall Over 3"},
    ["fallover4"] = {"friends@frf@ig_2", "knockout_plyr", "Fall Over 4"},
    ["fallover5"] = {"anim@gangops@hostage@", "victim_fail", "Fall Over 5"},
    ["fallasleep"] = {"mp_sleep", "sleep_loop", "Fall Asleep Male", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteLoop = true,
    }},
    ["fallasleep2"] = {"mp_sleep", "sleep_loopfemale", "Fall Asleep Female", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteLoop = true,
    }},
    ["fightme"] = {"anim@deathmatch_intros@unarmed", "intro_male_unarmed_c", "Fight Me"},
    ["fightme2"] = {"anim@deathmatch_intros@unarmed", "intro_male_unarmed_e", "Fight Me 2"},
    ["finger"] = {"anim@mp_player_intselfiethe_bird", "idle_a", "Finger", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["finger2"] = {"anim@mp_player_intupperfinger", "idle_a_fp", "Finger 2", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["handshake"] = {"mp_ped_interaction", "handshake_guy_a", "Handshake", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteDuration = 3000
    }},
    ["handshake2"] = {"mp_ped_interaction", "handshake_guy_b", "Handshake 2", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteDuration = 3000
    }},
    ["hiking"] = {"move_m@hiking", "idle", "Hiking", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["hug"] = {"mp_ped_interaction", "kisses_guy_a", "Hug"},
    ["hug2"] = {"mp_ped_interaction", "kisses_guy_b", "Hug 2"},
    ["hug3"] = {"mp_ped_interaction", "hugs_guy_a", "Hug 3"},
    ["inspect"] = {"random@train_tracks", "idle_e", "Inspect"},
    ["jazzhands"] = {"anim@mp_player_intcelebrationfemale@jazz_hands", "jazz_hands", "Jazzhands", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteDuration = 6000,
    }},
    ["jazzhands2"] = {"anim@mp_player_intcelebrationmale@jazz_hands", "jazz_hands", "Jazzhands", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteDuration = 6000,
    }},
    ["jog2"] = {"amb@world_human_jog_standing@male@idle_a", "idle_a", "Jog 2", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["jog3"] = {"amb@world_human_jog_standing@female@idle_a", "idle_a", "Jog 3", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["jog4"] = {"amb@world_human_power_walker@female@idle_a", "idle_a", "Jog 4", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["jog5"] = {"move_m@joy@a", "walk", "Jog 5", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["jumpingjacks"] = {"timetable@reunited@ig_2", "jimmy_getknocked", "Jumping Jacks", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["kneel2"] = {"rcmextreme3", "idle", "Kneel 2", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["kneel3"] = {"amb@world_human_bum_wash@male@low@idle_a", "idle_a", "Kneel 3", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["knock"] = {"timetable@jimmy@doorknock@", "knockdoor_idle", "Knock", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteLoop = true,
    }},
    ["knock2"] = {"missheistfbi3b_ig7", "lift_fibagent_loop", "Knock 2", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["knucklecrunch"] = {"anim@mp_player_intcelebrationfemale@knuckle_crunch", "knuckle_crunch", "Knuckle Crunch", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["knucklecrunch2"] = {"anim@mp_player_intcelebrationmale@knuckle_crunch", "knuckle_crunch", "Knuckle Crunch 2", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["lapdance"] = {"mp_safehouse", "lap_dance_girl", "Lapdance"},
    ["lean2"] = {"amb@world_human_leaning@female@wall@back@hand_up@idle_a", "idle_a", "Lean 2", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["lean3"] = {"amb@world_human_leaning@female@wall@back@holding_elbow@idle_a", "idle_a", "Lean 3", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["lean4"] = {"amb@world_human_leaning@male@wall@back@foot_up@idle_a", "idle_a", "Lean 4", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["lean5"] = {"amb@world_human_leaning@male@wall@back@hands_together@idle_b", "idle_b", "Lean 5", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["leanflirt"] = {"random@street_race", "_car_a_flirt_girl", "Lean Flirt", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["leanbar2"] = {"amb@prop_human_bum_shopping_cart@male@idle_a", "idle_c", "Lean Bar 2", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["leanbar3"] = {"anim@amb@nightclub@lazlow@ig1_vip@", "clubvip_base_laz", "Lean Bar 3", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["leanbar4"] = {"anim@heists@prison_heist", "ped_b_loop_a", "Lean Bar 4", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["leanhigh"] = {"anim@mp_ferris_wheel", "idle_a_player_one", "Lean High", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["leanhigh2"] = {"anim@mp_ferris_wheel", "idle_a_player_two", "Lean High 2", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["leanside"] = {"timetable@mime@01_gc", "idle_a", "Leanside", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["leanside2"] = {"misscarstealfinale", "packer_idle_1_trevor", "Leanside 2", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["leanside3"] = {"misscarstealfinalecar_5_ig_1", "waitloop_lamar", "Leanside 3", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["leanside4"] = {"misscarstealfinalecar_5_ig_1", "waitloop_lamar", "Leanside 4", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["leanside5"] = {"rcmjosh2", "josh_2_intp1_base", "Leanside 5", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["leanwall"] = {"missheistdockssetup1showoffcar@idle_a", "idle_a_1", "Lean Wall", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["me"] = {"gestures@f@standing@casual", "gesture_me_hard", "Me", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteDuration = 1000
    }},
    ["mechanic"] = {"mini@repair", "fixing_a_ped", "Mechanic", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["mechanic2"] = {"amb@prop_human_bum_bin@base", "base", "Mechanic 2", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["mechanic3"] = {"anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", "Mechanic 3", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["mechanic4"] = {"anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", "Mechanic 4", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
 
    ["mechanic5"] = {"amb@prop_human_movie_bulb@idle_a","idle_b","~G~! NEW Mechanic 5",AnimationOptions = 
    {
       EmoteLoop = true,
    }},
    ["medic2"] = {"amb@medic@standing@tendtodead@base", "base", "Medic 2", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["meditate"] = {"rcmcollect_paperleadinout@", "meditiate_idle", "Meditiate", AnimationOptions = -- CHANGE ME
    {
       EmoteLoop = true,
    }},
    ["meditate2"] = {"rcmepsilonism3", "ep_3_rcm_marnie_meditating", "Meditiate 2", AnimationOptions = -- CHANGE ME
    {
       EmoteLoop = true,
    }},
    ["meditate3"] = {"rcmepsilonism3", "base_loop", "Meditiate 3", AnimationOptions = -- CHANGE ME
    {
       EmoteLoop = true,
    }},
    ["metal"] = {"anim@mp_player_intincarrockstd@ps@", "idle_a", "Metal", AnimationOptions = -- CHANGE ME
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["no"] = {"anim@heists@ornate_bank@chat_manager", "fail", "No", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["no2"] = {"mp_player_int_upper_nod", "mp_player_int_nod_no", "No 2", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["nosepick"] = {"anim@mp_player_intcelebrationfemale@nose_pick", "nose_pick", "Nose Pick", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["nosepick2"] = {"anim@mp_player_intcelebrationmale@nose_pick", "nose_pick", "Nose Pick 2", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["noway"] = {"gestures@m@standing@casual", "gesture_no_way", "No Way", AnimationOptions =
    {
       EmoteDuration = 1500,
       EmoteMoving = true,
    }},
    ["ok"] = {"anim@mp_player_intselfiedock", "idle_a", "OK", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
     }},
    ["dock"] = {"anim@mp_player_intincardockstd@rds@", "idle_a", "Dock", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["outofbreath"] = {"re@construction", "out_of_breath", "Out of Breath", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["pickup"] = {"random@domestic", "pickup_low", "Pickup"},
    ["push"] = {"missfinale_c2ig_11", "pushcar_offcliff_f", "Push", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["push2"] = {"missfinale_c2ig_11", "pushcar_offcliff_m", "Push 2", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["point"] = {"gestures@f@standing@casual", "gesture_point", "Point", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["pushup"] = {"amb@world_human_push_ups@male@idle_a", "idle_d", "Pushup", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["countdown"] = {"random@street_race", "grid_girl_race_start", "Countdown", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["pointright"] = {"mp_gun_shop_tut", "indicate_right", "Point Right", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["salute"] = {"anim@mp_player_intincarsalutestd@ds@", "idle_a", "Salute", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["salute2"] = {"anim@mp_player_intincarsalutestd@ps@", "idle_a", "Salute 2", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["salute3"] = {"anim@mp_player_intuppersalute", "idle_a", "Salute 3", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["scared"] = {"random@domestic", "f_distressed_loop", "Scared", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["scared2"] = {"random@homelandsecurity", "knees_loop_girl", "Scared 2", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["screwyou"] = {"misscommon@response", "screw_you", "Screw You", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["shakeoff"] = {"move_m@_idles@shake_off", "shakeoff_1", "Shake Off", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteDuration = 3500,
    }},
    ["shot"] = {"random@dealgonewrong", "idle_a", "Shot", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["sleep"] = {"timetable@tracy@sleep@", "idle_c", "Sleep", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["shrug"] = {"gestures@f@standing@casual", "gesture_shrug_hard", "Shrug", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteDuration = 1000,
    }},
    ["shrug2"] = {"gestures@m@standing@casual", "gesture_shrug_hard", "Shrug 2", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteDuration = 1000,
    }},
    ["sit"] = {"anim@amb@business@bgen@bgen_no_work@", "sit_phone_phoneputdown_idle_nowork", "Sit", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["sit2"] = {"rcm_barry3", "barry_3_sit_loop", "Sit 2", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["sit3"] = {"amb@world_human_picnic@male@idle_a", "idle_a", "Sit 3", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["sit4"] = {"amb@world_human_picnic@female@idle_a", "idle_a", "Sit 4", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["sit5"] = {"anim@heists@fleeca_bank@ig_7_jetski_owner", "owner_idle", "Sit 5", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["sit6"] = {"timetable@jimmy@mics3_ig_15@", "idle_a_jimmy", "Sit 6", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["sit7"] = {"anim@amb@nightclub@lazlow@lo_alone@", "lowalone_base_laz", "Sit 7", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["sit8"] = {"timetable@jimmy@mics3_ig_15@", "mics3_15_base_jimmy", "Sit 8", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["sit9"] = {"amb@world_human_stupor@male@idle_a", "idle_a", "Sit 9", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["sitlean"] = {"timetable@tracy@ig_14@", "ig_14_base_tracy", "Sit Lean", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["sitlow"] = {"anim@veh@lowrider@std@ds@arm@base","sit_low_lowdoor","~G~! NEW Sit Lowrider", AnimationOptions = 
    {
       EmoteLoop = true,
    }},
    ["sitsad"] = {"anim@amb@business@bgen@bgen_no_work@", "sit_phone_phoneputdown_sleeping-noworkfemale", "Sit Sad", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["sitscared"] = {"anim@heists@ornate_bank@hostages@hit", "hit_loop_ped_b", "Sit Scared", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["sitscared2"] = {"anim@heists@ornate_bank@hostages@ped_c@", "flinch_loop", "Sit Scared 2", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["sitscared3"] = {"anim@heists@ornate_bank@hostages@ped_e@", "flinch_loop", "Sit Scared 3", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["sitdrunk"] = {"timetable@amanda@drunk@base", "base", "Sit Drunk", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["sitchair2"] = {"timetable@ron@ig_5_p3", "ig_5_p3_base", "Sit Chair 2", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["sitchair3"] = {"timetable@reunited@ig_10", "base_amanda", "Sit Chair 3", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["sitchair4"] = {"timetable@ron@ig_3_couch", "base", "Sit Chair 4", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["sitchair5"] = {"timetable@jimmy@mics3_ig_15@", "mics3_15_base_tracy", "Sit Chair Legs Crossed", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["sitchair6"] = {"timetable@maid@couch@", "base", "Sit Chair Lean Back", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["sitchair7"] = {"anim@amb@nightclub@smoking@", "blunt_idle_a", "Sit Chair 7", AnimationOptions =
    {    
        Prop = 'p_cs_joint_02',
        PropBone = 28422,
        PropPlacement = {0.0800003, -0.004999998, -0.035, 175.5002, 311.0003, 232.0},
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["sitchair8"] = {"anim@amb@nightclub@smoking@", "blunt_idle_b", "Sit Chair 8", AnimationOptions =
    {    
        Prop = 'p_cs_joint_02',
        PropBone = 28422,
        PropPlacement = {0.0800003, -0.004999998, -0.035, 175.5002, 311.0003, 232.0},
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["sitchair9"] = {"mini@strip_club@wade@", "leadin_loop_idle_a_stripper_a", "Sit Chair 9", AnimationOptions =
    {   
        --Prop = 'prop_cigar_03',
        --PropBone = 13700,
        --PropPlacement = {0.03999992, 0.03, 0.015, 0.0, 78.3002, 180},
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["sitchair10"] = {"misslester1aig_3main", "air_guitar_01_b", "Sit Chair 10", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["sitchair11"] = {"misslester1aig_5intro", "boardroom_intro_f_b", "Sit Chair 11", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["sitchair12"] = {"misslester1aig_5intro", "boardroom_intro_f_c", "Sit Chair 12", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["sitchair13"] = {"misstrevor3", "bike_chat_a_1", "Sit Chair 13", AnimationOptions =
    {   
        EmoteLoop = true,
        EmoteMoving = false,
     
    }},
    ["sitchair14"] = {"anim@amb@nightclub@peds@", "anim_heists_heist_safehouse_intro_phone_couch_male", "Sit Chair 14", AnimationOptions =
    {
        Prop = "prop_npc_phone_02",
        PropBone = 28422,
        PropPlacement = {-0.010, 0.025, -0.019, -0.1, 0.0, 0.0},
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["sitchair15"] = {"missfbi4leadinoutfbi_4_int", "fbi_4_int_trv_idle_andreas", "Sit Chair 15", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["sitchair17"] = {"timetable@michael@on_sofabase", "sit_sofa_base", "Sit Chair 17 ! NEW", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["sitchair16"] = {"safe@franklin@ig_13", "base", "Sit Chair 8 ", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["sitchair18"] = {"timetable@trevor@smoking_meth@base", "base", "Sit Chair 18 ! NEW", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["sitchair19"] = {"timetable@reunited@ig_10", "isthisthebest_jimmy", "~G~! NEW Sit Chair 19", AnimationOptions =
    {
        EmoteLoop = true,
    }},
    ["sitchairside"] = {"timetable@ron@ron_ig_2_alt1", "ig_2_alt1_base", "Sit Chair Side", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["situp"] = {"amb@world_human_sit_ups@male@idle_a", "idle_a", "Sit Up", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["clapangry"] = {"anim@arena@celeb@flat@solo@no_props@", "angry_clap_a_player_a", "Clap Angry", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["slowclap3"] = {"anim@mp_player_intupperslow_clap", "idle_a", "Slow Clap 3", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["clap"] = {"amb@world_human_cheering@male_a", "base", "Clap", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["slowclap"] = {"anim@mp_player_intcelebrationfemale@slow_clap", "slow_clap", "Slow Clap", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["slowclap2"] = {"anim@mp_player_intcelebrationmale@slow_clap", "slow_clap", "Slow Clap 2", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["smell"] = {"move_p_m_two_idles@generic", "fidget_sniff_fingers", "Smell", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["stickup"] = {"random@countryside_gang_fight", "biker_02_stickup_loop", "Stick Up", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["stumble"] = {"misscarsteal4@actor", "stumble", "Stumble", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["stunned"] = {"stungun@standing", "damage", "Stunned", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["sunbathe"] = {"amb@world_human_sunbathe@male@back@base", "base", "Sunbathe", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["sunbathe2"] = {"amb@world_human_sunbathe@female@back@base", "base", "Sunbathe 2", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["t"] = {"missfam5_yoga", "a2_pose", "T", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["t2"] = {"mp_sleep", "bind_pose_180", "T 2", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["think5"] = {"mp_cp_welcome_tutthink", "b_think", "Think 5", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteDuration = 2000,
    }},
    ["think"] = {"misscarsteal4@aliens", "rehearsal_base_idle_director", "Think", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["think3"] = {"timetable@tracy@ig_8@base", "base", "Think 3", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
 
    ["think2"] = {"missheist_jewelleadinout", "jh_int_outro_loop_a", "Think 2", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["thumbsup3"] = {"anim@mp_player_intincarthumbs_uplow@ds@", "enter", "Thumbs Up 3", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteDuration = 3000,
    }},
    ["thumbsup2"] = {"anim@mp_player_intselfiethumbs_up", "idle_a", "Thumbs Up 2", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["thumbsup"] = {"anim@mp_player_intupperthumbs_up", "idle_a", "Thumbs Up", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["type"] = {"anim@heists@prison_heiststation@cop_reactions", "cop_b_idle", "Type", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["type2"] = {"anim@heists@prison_heistig1_p1_guard_checks_bus", "loop", "Type 2", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["type3"] = {"mp_prison_break", "hack_loop", "Type 3", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["type4"] = {"mp_fbi_heist", "loop", "Type 4", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["warmth"] = {"amb@world_human_stand_fire@male@idle_a", "idle_a", "Warmth", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["wave4"] = {"random@mugging5", "001445_01_gangintimidation_1_female_idle_b", "Wave 4", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteDuration = 3000,
    }},
    ["wave2"] = {"anim@mp_player_intcelebrationfemale@wave", "wave", "Wave 2", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["wave3"] = {"friends@fra@ig_1", "over_here_idle_a", "Wave 3", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["wave"] = {"friends@frj@ig_1", "wave_a", "Wave", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["wave5"] = {"friends@frj@ig_1", "wave_b", "Wave 5", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["wave6"] = {"friends@frj@ig_1", "wave_c", "Wave 6", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["wave7"] = {"friends@frj@ig_1", "wave_d", "Wave 7", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["wave8"] = {"friends@frj@ig_1", "wave_e", "Wave 8", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["wave9"] = {"gestures@m@standing@casual", "gesture_hello", "Wave 9", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["whistle"] = {"taxi_hail", "hail_taxi", "Whistle", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteDuration = 1300,
    }},
    ["whistle2"] = {"rcmnigel1c", "hailing_whistle_waive_a", "Whistle 2", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteDuration = 2000,
    }},
    ["yeah"] = {"anim@mp_player_intupperair_shagging", "idle_a", "Yeah", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["lift"] = {"random@hitch_lift", "idle_f", "Lift", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["lol"] = {"anim@arena@celeb@flat@paired@no_props@", "laugh_a_player_b", "LOL", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["lol2"] = {"anim@arena@celeb@flat@solo@no_props@", "giggle_a_player_b", "LOL 2", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["statue2"] = {"fra_0_int-1", "cs_lamardavis_dual-1", "Statue 2", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["statue3"] = {"club_intro2-0", "csb_englishdave_dual-0", "Statue 3", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["gangsign"] = {"mp_player_int_uppergang_sign_a", "mp_player_int_gang_sign_a", "Gang Sign", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["gangsign2"] = {"mp_player_int_uppergang_sign_b", "mp_player_int_gang_sign_b", "Gang Sign 2", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["passout"] = {"missarmenian2", "drunk_loop", "Passout", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["passout2"] = {"missarmenian2", "corpse_search_exit_ped", "Passout 2", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["passout3"] = {"anim@gangops@morgue@table@", "body_search", "Passout 3", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["passout4"] = {"mini@cpr@char_b@cpr_def", "cpr_pumpchest_idle", "Passout 4", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["passout5"] = {"random@mugging4", "flee_backward_loop_shopkeeper", "Passout 5", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["petting"] = {"creatures@rottweiler@tricks@", "petting_franklin", "Petting", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["crawl"] = {"move_injured_ground", "front_loop", "Crawl", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["flip2"] = {"anim@arena@celeb@flat@solo@no_props@", "cap_a_player_a", "Flip 2"},
    ["flip"] = {"anim@arena@celeb@flat@solo@no_props@", "flip_a_player_a", "Flip"},
    ["slide"] = {"anim@arena@celeb@flat@solo@no_props@", "slide_a_player_a", "Slide"},
    ["slide2"] = {"anim@arena@celeb@flat@solo@no_props@", "slide_b_player_a", "Slide 2"},
    ["slide3"] = {"anim@arena@celeb@flat@solo@no_props@", "slide_c_player_a", "Slide 3"},
    ["slugger"] = {"anim@arena@celeb@flat@solo@no_props@", "slugger_a_player_a", "Slugger"},
    ["flipoff"] = {"anim@arena@celeb@podium@no_prop@", "flip_off_a_1st", "Flip Off", AnimationOptions =
    {
       EmoteMoving = true,
    }},
    ["flipoff2"] = {"anim@arena@celeb@podium@no_prop@", "flip_off_c_1st", "Flip Off 2", AnimationOptions =
    {
       EmoteMoving = true,
    }},
    ["bow"] = {"anim@arena@celeb@podium@no_prop@", "regal_c_1st", "Bow", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["bow2"] = {"anim@arena@celeb@podium@no_prop@", "regal_a_1st", "Bow 2", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["keyfob"] = {"anim@mp_player_intmenu@key_fob@", "fob_click", "Key Fob", AnimationOptions =
    {
       EmoteLoop = false,
       EmoteMoving = true,
       EmoteDuration = 1000,
    }},
    ["golfswing"] = {"rcmnigel1d", "swing_a_mark", "Golf Swing"},
    ["eat"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Eat", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteDuration = 3000,
    }},
    ["reaching"] = {"move_m@intimidation@cop@unarmed", "idle", "Reaching", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["wait"] = {"random@shop_tattoo", "_idle_a", "Wait", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["wait2"] = {"missbigscore2aig_3", "wait_for_van_c", "Wait 2", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["wait3"] = {"amb@world_human_hang_out_street@female_hold_arm@idle_a", "idle_a", "Wait 3", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["wait4"] = {"amb@world_human_hang_out_street@Female_arm_side@idle_a", "idle_a", "Wait 4", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["wait5"] = {"missclothing", "idle_storeclerk", "Wait 5", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["wait6"] = {"timetable@amanda@ig_2", "ig_2_base_amanda", "Wait 6", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["wait7"] = {"rcmnigel1cnmt_1c", "base", "Wait 7", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["wait8"] = {"rcmjosh1", "idle", "Wait 8", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["wait9"] = {"rcmjosh2", "josh_2_intp1_base", "Wait 9", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["wait10"] = {"timetable@amanda@ig_3", "ig_3_base_tracy", "Wait 10", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["wait11"] = {"misshair_shop@hair_dressers", "keeper_base", "Wait 11", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["wait12"] = {"rcmjosh1", "idle", "Wait 12", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["wait13"] = {"rcmnigel1a", "base", "Wait 13", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["wait14"] = {"anim@amb@business@bgen@bgen_no_work@", "stand_phone_phoneputdown_stretching-noworkfemale", "Wait 14", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["wait15"] = {"oddjobs@taxi@", "idle_a", "Wait 15 ! NEW", AnimationOptions =
    {
        EmoteMoving = false,
        EmoteDuration = 5000,
    }},
    ["wait16"] = {"anim@amb@world_human_valet@formal_right@base@", "base_a_m_y_vinewood_01", "Wait 16 ! NEW", AnimationOptions =
    {
     EmoteMoving = true,
     EmoteLoop = true,
    }},
    ["wait17"] = {"missarmenian2", "lamar_impatient_a", "Wait 17 ", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["wait18"] = {"misshair_shop@hair_dressers","keeper_base","~G~! NEW Wait 18", AnimationOptions = 
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["wait19"] = {"rcmjosh1","keeper_base","~G~! NEW Wait 19",AnimationOptions = 
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["lapdance2"] = {"mini@strip_club@private_dance@idle", "priv_dance_idle", "Lapdance 2", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["lapdance3"] = {"mini@strip_club@private_dance@part2", "priv_dance_p2", "Lapdance 3", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["lapdance4"] = {"mini@strip_club@private_dance@part3", "priv_dance_p3", "Lapdance 4", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["twerk"] = {"switch@trevor@mocks_lapdance", "001443_01_trvs_28_idle_stripper", "Twerk", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["slap"] = {"melee@unarmed@streamed_variations", "plyr_takedown_front_slap", "Slap", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
       EmoteDuration = 2000,
    }},
    ["headbutt"] = {"melee@unarmed@streamed_variations", "plyr_takedown_front_headbutt", "Headbutt"},
    ["fishdance"] = {"anim@mp_player_intupperfind_the_fish", "idle_a", "Fish Dance", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["peace"] = {"mp_player_int_upperpeace_sign", "mp_player_int_peace_sign", "Peace", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["peace2"] = {"anim@mp_player_intupperpeace", "idle_a", "Peace 2", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["cpr"] = {"mini@cpr@char_a@cpr_str", "cpr_pumpchest", "CPR", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["cpr2"] = {"mini@cpr@char_a@cpr_str", "cpr_pumpchest", "CPR 2", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["ledge"] = {"missfbi1", "ledge_loop", "Ledge", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["airplane"] = {"missfbi1", "ledge_loop", "Air Plane", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["peek"] = {"random@paparazzi@peek", "left_peek_a", "Peek", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["cough"] = {"timetable@gardener@smoking_joint", "idle_cough", "Cough", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["stretch"] = {"mini@triathlon", "idle_e", "Stretch", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["stretch2"] = {"mini@triathlon", "idle_f", "Stretch 2", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["stretch3"] = {"mini@triathlon", "idle_d", "Stretch 3", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["stretch4"] = {"rcmfanatic1maryann_stretchidle_b", "idle_e", "Stretch 4", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["celebrate"] = {"rcmfanatic1celebrate", "celebrate", "Celebrate", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["punching"] = {"rcmextreme2", "loop_punching", "Punching", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["superhero"] = {"rcmbarry", "base", "Superhero", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["superhero2"] = {"rcmbarry", "base", "Superhero 2", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["mindcontrol"] = {"rcmbarry", "mind_control_b_loop", "Mind Control", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["mindcontrol2"] = {"rcmbarry", "bar_1_attack_idle_aln", "Mind Control 2", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["clown"] = {"rcm_barry2", "clown_idle_0", "Clown", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["clown2"] = {"rcm_barry2", "clown_idle_1", "Clown 2", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["clown3"] = {"rcm_barry2", "clown_idle_2", "Clown 3", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["clown4"] = {"rcm_barry2", "clown_idle_3", "Clown 4", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["clown5"] = {"rcm_barry2", "clown_idle_6", "Clown 5", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["tryclothes"] = {"mp_clothing@female@trousers", "try_trousers_neutral_a", "Try Clothes", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["tryclothes2"] = {"mp_clothing@female@shirt", "try_shirt_positive_a", "Try Clothes 2", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["tryclothes3"] = {"mp_clothing@female@shoes", "try_shoes_positive_a", "Try Clothes 3", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["nervous2"] = {"mp_missheist_countrybank@nervous", "nervous_idle", "Nervous 2", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["nervous"] = {"amb@world_human_bum_standing@twitchy@idle_a", "idle_c", "Nervous", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["nervous3"] = {"rcmme_tracey1", "nervous_loop", "Nervous 3", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["uncuff"] = {"mp_arresting", "a_uncuff", "Uncuff", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["namaste"] = {"timetable@amanda@ig_4", "ig_4_base", "Namaste", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["oops"] = {"anim@mp_player_intincarblow_kissbodhi@ds@", "idle_a", "Oops", AnimationOptions =
    {
       EmoteLoop = false,
       EmoteMoving = true,
    }},
    ["oops2"] = {"anim@mp_player_intselfieblow_kiss", "idle_a", "Oops 2", AnimationOptions =
    {
       EmoteLoop = false,
       EmoteMoving = true,
    }},
    ["mamamia"] = {"anim@mp_player_intupperfinger_kiss", "idle_a", "Mamamia", AnimationOptions =
    {
       EmoteLoop = false,
       EmoteMoving = true,
    }},
    ["mamamia2"] = {"anim@mp_player_intcelebrationmale@finger_kiss", "finger_kiss", "Mamamia 2", AnimationOptions =
    {
       EmoteLoop = false,
       EmoteMoving = false,
    }},
    ["mamamia3"] = {"anim@mp_player_intcelebrationfemale@finger_kiss", "finger_kiss", "Mamamia 2 (FEMALE)", AnimationOptions =
    {
       EmoteLoop = false,
       EmoteMoving = false,
    }},
    ["scenario1"] = {"missheistdockssetup1showoffcar@idle_a", "idle_a_2", "Scenario 1", AnimationOptions =
    {
       EmoteLoop = false,
       EmoteMoving = false,
    }},
    ["scenario2"] = {"missheistdockssetup1showoffcar@idle_a", "idle_a_3", "Scenario 2", AnimationOptions =
    {
       EmoteLoop = false,
       EmoteMoving = false,
    }},
    ["scenario3"] = {"missheistdockssetup1showoffcar@idle_a", "idle_a_4", "Scenario 3", AnimationOptions =
    {
       EmoteLoop = false,
       EmoteMoving = false,
    }},
    ["scenario4"] = {"missheistdockssetup1showoffcar@idle_a", "idle_a_5", "Scenario 4", AnimationOptions =
    {
       EmoteLoop = false,
       EmoteMoving = false,
    }},
    ["scenario5"] = {"missheistdockssetup1showoffcar@idle_a", "idle_b_1", "Scenario 5", AnimationOptions =
    {
       EmoteLoop = false,
       EmoteMoving = false,
    }},
    ["scenario6"] = {"missheistdockssetup1showoffcar@idle_a", "idle_b_2", "Scenario 6", AnimationOptions =
    {
       EmoteLoop = false,
       EmoteMoving = false,
    }},
    ["scenario7"] = {"missheistdockssetup1showoffcar@idle_a", "idle_b_3", "Scenario 7", AnimationOptions =
    {
       EmoteLoop = false,
       EmoteMoving = false,
    }},
    ["scenario8"] = {"missheistdockssetup1showoffcar@idle_a", "idle_b_4", "Scenario 8", AnimationOptions =
    {
       EmoteLoop = false,
       EmoteMoving = false,
    }},
    ["scenario9"] = {"missheistdockssetup1showoffcar@idle_a", "idle_b_5", "Scenario 9", AnimationOptions =
    {
       EmoteLoop = false,
       EmoteMoving = false,
    }},
    ["scenarioa"] = {"missheistdockssetup1showoffcar@idle_a", "idle_c_1", "Scenario A", AnimationOptions =
    {
       EmoteLoop = false,
       EmoteMoving = false,
    }},
    ["scenariob"] = {"missheistdockssetup1showoffcar@idle_a", "idle_c_2", "Scenario B", AnimationOptions =
    {
       EmoteLoop = false,
       EmoteMoving = false,
    }},
    ["scenarioc"] = {"missheistdockssetup1showoffcar@idle_a", "idle_c_3", "Scenario C", AnimationOptions =
    {
       EmoteLoop = false,
       EmoteMoving = false,
    }},
    ["scenariod"] = {"missheistdockssetup1showoffcar@idle_a", "idle_c_4", "Scenario D", AnimationOptions =
    {
       EmoteLoop = false,
       EmoteMoving = false,
    }},
    ["scenarioe"] = {"missheistdockssetup1showoffcar@idle_a", "idle_c_5", "Scenario E", AnimationOptions =
    {
       EmoteLoop = false,
       EmoteMoving = false,
    }},
    ["scenariof"] = {"missheistdockssetup1showoffcar@idle_b", "idle_d_1", "Scenario F", AnimationOptions =
    {
       EmoteLoop = false,
       EmoteMoving = false,
    }},
    ["scenariog"] = {"missheistdockssetup1showoffcar@idle_b", "idle_d_2", "Scenario G", AnimationOptions =
    {
       EmoteLoop = false,
       EmoteMoving = false,
    }},
    ["scenarioh"] = {"missheistdockssetup1showoffcar@idle_b", "idle_d_3", "Scenario H", AnimationOptions =
    {
       EmoteLoop = false,
       EmoteMoving = false,
    }},
    ["scenarioi"] = {"missheistdockssetup1showoffcar@idle_b", "idle_d_4", "Scenario I", AnimationOptions =
    {
       EmoteLoop = false,
       EmoteMoving = false,
    }},
    ["dead"] = {"misslamar1dead_body", "dead_idle", "Dead", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["dj"] = {"anim@amb@nightclub@djs@dixon@", "dixn_dance_cntr_open_dix", "DJ", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["threaten"] = {"random@atmrobberygen", "b_atm_mugging", "Threaten", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["radio"] = {"random@arrests", "generic_radio_chatter", "Radio", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["pull"] = {"random@mugging4", "struggle_loop_b_thief", "Pull", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["bird"] = {"random@peyote@bird", "wakeup", "Bird"},
    ["chicken3"] = {"random@peyote@chicken", "wakeup", "Chicken", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["bark"] = {"random@peyote@dog", "wakeup", "Bark"},
    ["rabbit"] = {"random@peyote@rabbit", "wakeup", "Rabbit"},
    ["spiderman"] = {"missexile3", "ex03_train_roof_idle", "Spider-Man", AnimationOptions =
    {
       EmoteLoop = true,
    }},
    ["adjust"] = {"missmic4", "michael_tux_fidget", "Adjust", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteDuration = 4000,
    }},
    ["handsup"] = {"missminuteman_1ig_2", "handsup_base", "Hands Up", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteLoop = true,
    }},
    ["pee"] = {"misscarsteal2peeing", "peeing_loop", "Pee", AnimationOptions =
    {
       EmoteStuck = true,
       PtfxAsset = "scr_amb_chop",
       PtfxName = "ent_anim_dog_peeing",
       PtfxNoProp = true,
       PtfxPlacement = {-0.05, 0.3, 0.0, 0.0, 90.0, 90.0, 1.0},
       PtfxInfo = Config.Languages[Config.MenuLanguage]['pee'],
       PtfxWait = 3000,
    }},
 
    -----------------------------------------------------------------------------------------------------------
    ------ These are Scenarios, some of these dont work on women and some other issues, but still good to have.
    -----------------------------------------------------------------------------------------------------------
 
    ["atm"] = {"Scenario", "PROP_HUMAN_ATM", "ATM"},
    ["bbq"] = {"MaleScenario", "PROP_HUMAN_BBQ", "BBQ"},
    ["bumbin"] = {"Scenario", "PROP_HUMAN_BUM_BIN", "Bum Bin"},
    ["bumsleep"] = {"Scenario", "WORLD_HUMAN_BUM_SLUMPED", "Bum Sleep"},
    ["cheer"] = {"Scenario", "WORLD_HUMAN_CHEERING", "Cheer"},
    ["chinup"] = {"Scenario", "PROP_HUMAN_MUSCLE_CHIN_UPS", "Chinup"},
    ["clipboard2"] = {"MaleScenario", "WORLD_HUMAN_CLIPBOARD", "Clipboard 2"},
    ["cop"] = {"Scenario", "WORLD_HUMAN_COP_IDLES", "Cop"},
    ["copbeacon"] = {"MaleScenario", "WORLD_HUMAN_CAR_PARK_ATTENDANT", "Cop Beacon"},
    ["filmshocking"] = {"Scenario", "WORLD_HUMAN_MOBILE_FILM_SHOCKING", "Film Shocking"},
    ["flex"] = {"Scenario", "WORLD_HUMAN_MUSCLE_FLEX", "Flex"},
    ["guard"] = {"Scenario", "WORLD_HUMAN_GUARD_STAND", "Guard"},
    ["hammer"] = {"Scenario", "WORLD_HUMAN_HAMMERING", "Hammer"},
    ["hangout"] = {"Scenario", "WORLD_HUMAN_HANG_OUT_STREET", "Hangout"},
    ["impatient"] = {"Scenario", "WORLD_HUMAN_STAND_IMPATIENT", "Impatient"},
    ["drill"] = {"Scenario", "WORLD_HUMAN_CONST_DRILL", "Drill"},
    ["janitor"] = {"Scenario", "WORLD_HUMAN_JANITOR", "Janitor"},
    ["jog"] = {"Scenario", "WORLD_HUMAN_JOG_STANDING", "Jog"},
    ["kneel"] = {"Scenario", "CODE_HUMAN_MEDIC_KNEEL", "Kneel"},
    ["leafblower"] = {"MaleScenario", "WORLD_HUMAN_GARDENER_LEAF_BLOWER", "Leafblower"},
    ["lean"] = {"Scenario", "WORLD_HUMAN_LEANING", "Lean"},
    ["leanbar"] = {"Scenario", "PROP_HUMAN_BUM_SHOPPING_CART", "Lean Bar"},
    ["lookout"] = {"Scenario", "CODE_HUMAN_CROSS_ROAD_WAIT", "Lookout"},
    ["maid"] = {"Scenario", "WORLD_HUMAN_MAID_CLEAN", "Maid"},
    ["medic"] = {"Scenario", "CODE_HUMAN_MEDIC_TEND_TO_DEAD", "Medic"},
    ["musician"] = {"MaleScenario", "WORLD_HUMAN_MUSICIAN", "Musician"},
    ["notepad2"] = {"Scenario", "CODE_HUMAN_MEDIC_TIME_OF_DEATH", "Notepad 2"},
    ["parkingmeter"] = {"Scenario", "PROP_HUMAN_PARKING_METER", "Parking Meter"},
    ["party"] = {"Scenario", "WORLD_HUMAN_PARTYING", "Party"},
    ["texting"] = {"Scenario", "WORLD_HUMAN_STAND_MOBILE", "Texting"},
    ["prosthigh"] = {"Scenario", "WORLD_HUMAN_PROSTITUTE_HIGH_CLASS", "Prostitue High"},
    ["prostlow"] = {"Scenario", "WORLD_HUMAN_PROSTITUTE_LOW_CLASS", "Prostitue Low"},
    ["puddle"] = {"Scenario", "WORLD_HUMAN_BUM_WASH", "Puddle"},
    ["record"] = {"Scenario", "WORLD_HUMAN_MOBILE_FILM_SHOCKING", "Record"},
    ["timeofdeath"] = {"Scenario", "CODE_HUMAN_MEDIC_TIME_OF_DEATH", "Medic Time Of Death"},
    ["crowdcontrol"] = {"Scenario", "CODE_HUMAN_POLICE_CROWD_CONTROL", "Cop Crowd Control"},
    ["investigate"] = {"Scenario", "CODE_HUMAN_POLICE_INVESTIGATE", "Cop Investigate"},
    -- Sitchair is a litte special, since you want the player to be seated correctly.
    -- So we set it as "ScenarioObject" and do TaskStartScenarioAtPosition() instead of "AtPlace"
    ["deckchair"] = {"ScenarioObject", "PROP_HUMAN_SEAT_DECKCHAIR", "Deck Chair"},
    ["seatstrip"] = {"ScenarioObject", "PROP_HUMAN_SEAT_STRIP_WATCH", "Seat Strip"},
    ["sitchair"] = {"ScenarioObject", "PROP_HUMAN_SEAT_CHAIR_MP_PLAYER", "Sit Chair"},
    ["smoke"] = {"Scenario", "WORLD_HUMAN_SMOKING", "Smoke"},
    ["smokeweed"] = {"MaleScenario", "WORLD_HUMAN_DRUG_DEALER", "Smoke Weed"},
    ["statue"] = {"Scenario", "WORLD_HUMAN_HUMAN_STATUE", "Statue"},
    ["sunlounge"] = {"ScenarioObject", "PROP_HUMAN_SEAT_SUNLOUNGER", "Sun Lounge"},
    --["sunbathe3"] = {"Scenario", "WORLD_HUMAN_SUNBATHE", "Sunbathe 3"},
    --["sunbatheback"] = {"Scenario", "WORLD_HUMAN_SUNBATHE_BACK", "Sunbathe Back"},
    ["weld"] = {"Scenario", "WORLD_HUMAN_WELDING", "Weld"},
    ["windowshop"] = {"Scenario", "WORLD_HUMAN_WINDOW_SHOP_BROWSE", "Window Shop"},
    ["yoga"] = {"Scenario", "WORLD_HUMAN_YOGA", "Yoga"},
    -- CASINO DLC EMOTES (Requires gamebuild 2060 or higher)
    ["karate"] = {"anim@mp_player_intcelebrationfemale@karate_chops", "karate_chops", "Karate"},
    ["karate2"] = {"anim@mp_player_intcelebrationmale@karate_chops", "karate_chops", "Karate 2"},
    ["cutthroat"] = {"anim@mp_player_intcelebrationmale@cut_throat", "cut_throat", "Cut Throat"},
    ["cutthroat2"] = {"anim@mp_player_intcelebrationfemale@cut_throat", "cut_throat", "Cut Throat 2"},
    ["mindblown"] = {"anim@mp_player_intcelebrationmale@mind_blown", "mind_blown", "Mind Blown", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteDuration = 4000
    }},
    ["mindblown2"] = {"anim@mp_player_intcelebrationfemale@mind_blown", "mind_blown", "Mind Blown 2", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteDuration = 4000
    }},
    ["boxing"] = {"anim@mp_player_intcelebrationmale@shadow_boxing", "shadow_boxing", "Boxing", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteDuration = 4000
    }},
    ["boxing2"] = {"anim@mp_player_intcelebrationfemale@shadow_boxing", "shadow_boxing", "Boxing 2", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteDuration = 4000
    }},
    ["stink"] = {"anim@mp_player_intcelebrationfemale@stinker", "stinker", "Stink", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteLoop = true
    }},
    ["think4"] = {"anim@amb@casino@hangout@ped_male@stand@02b@idles", "idle_a", "Think 4", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["adjusttie"] = {"clothingtie", "try_tie_positive_a", "Adjust Tie", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteDuration = 5000
    }},
 
 
    ["kneelaimpistol"] = {"tigerle@custom@cop@kneel@aimpistol1", "tigerle_coppose_kneel_aimpistol1", "~g~! NEW EMOTES Kneel Aim Pistol 1", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["kneelholdpistol"] = {"tigerle@custom@cop@kneel@holdpistol1", "tigerle_coppose_kneel_holdpistol1", "~g~! NEW EMOTES Kneel Hold Pistol", AnimationOptions =
    {
         EmoteLoop = true,
         EmoteMoving = false,
    }},
    ["kneelholdrifle"] = {"tigerle@custom@cop@kneel@holdrifle1", "tigerle_coppose_kneel_holdrifle1", "~g~! NEW EMOTES Kneel Hold Rifle", AnimationOptions =
    {
         EmoteLoop = true,
         EmoteMoving = false,
    }},
    ["kneelholster"] = {"tigerle@custom@cop@kneel@holster1", "tigerle_coppose_kneel_holster1", "~g~! NEW EMOTES Kneel Holster", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["handsonbnack"] = {"tigerle@custom@jobs@handsonback", "tigerle_custom_handsonback", "~g~! NEW EMOTES Hands On Back", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["holdvest"] = {"tigerle@custom@jobs@vest", "tigerle_custom_holdvest", "~g~! NEW EMOTES Hold Vest", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["holdvest2"] = {"tigerle@custom@jobs@vest2", "tigerle_custom_holdvest2", "~g~! NEW EMOTES Hold Vest 2", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["layingpose"] = {"tigerle@custom@layingpose@one", "tigerle_layingpose_one", "~g~! NEW EMOTES Laying Pose", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["propose"] = {"tigerle@custom@pose@proposal", "tigerle_pose_proposal", "~g~! NEW EMOTES Proposing", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["sitchair20"] = {"tigerle@custom@pose@sitting@chair1", "tigerle_pose_sitting_chair1", "~g~! NEW EMOTES Sit Chair 20", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["sit14"] = {"tigerle@custom@position@sitting", "tigerle_custom_sitting", "~g~! NEW EMOTES Sit 14", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["sit15"] = {"tigerle@custom@pose@sittingno2", "tigerle_pose_sitting2", "~g~! NEW EMOTES Sit 15", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["sit16"] = {"tigerle@custom@pose@sitting@no3", "tigerle_pose_sittingno3", "~g~! NEW EMOTES Sit 16", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
 
    ["shlass"] = {"shlass@animation", "shlass_clip", "~g~! NEW EMOTES Slash", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
 
    ["gangsign1"] = {"gangsign1@animation", "gangsign1_clip", "~g~! NEW EMOTES Gang Sign", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
 
    ["doublec"] = {"doublec@animation", "doublec_clip", "~g~! NEW EMOTES~g~ Double C", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["valet2"] = {"anim@amb@casino@valet_scenario@pose_b@","base_a_m_y_vinewood_01","~g~! NEW EMOTES Valet 2",AnimationOptions = 
    {
       EmoteLoop = true,
       EmoteMoving = false,
    }},
    ["valet3"] = {"anim@amb@casino@valet_scenario@pose_d@","base_a_m_y_vinewood_01","~g~! NEW EMOTES Valet 3",AnimationOptions = 
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["tighten"] = {"timetable@denice@ig_1","idle_b","~g~! NEW EMOTES Tigten (Yoga)",AnimationOptions = 
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["fspose"] = {"missfam5_yoga","c2_pose","~g~! NEW EMOTES F Sex Pose",AnimationOptions = 
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["fspose2"] = {"missfam5_yoga","c6_pose","~g~! NEW EMOTES F Sex Pose 2",AnimationOptions = 
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["fspose4"] = {"anim@amb@carmeet@checkout_car@","female_c_idle_d","~g~! NEW EMOTES F Sex Pose 4",AnimationOptions = 
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["showerf"] = {"mp_safehouseshower@female@","shower_enter_into_idle","~g~! NEW EMOTES Shower Enter Female",AnimationOptions = 
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["showerf2"] = {"mp_safehouseshower@female@","shower_idle_a","~g~! NEW EMOTES Shower Female",AnimationOptions = 
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["showerf3"] = {"mp_safehouseshower@female@","shower_idle_b","~g~! NEW EMOTES Shower Female 2",AnimationOptions = 
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["showerm"] = {"mp_safehouseshower@male@","male_shower_idle_a","~g~! NEW EMOTES Shower Enter Male",AnimationOptions = 
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["showerm2"] = {"mp_safehouseshower@male@","male_shower_idle_b","~g~! NEW EMOTES Shower Male 2",AnimationOptions = 
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["showerm3"] = {"mp_safehouseshower@male@","male_shower_idle_c","~g~! NEW EMOTES Shower Male 3",AnimationOptions = 
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["showerm4"] = {"mp_safehouseshower@male@","male_shower_idle_d","~g~! NEW EMOTES Shower Male 4",AnimationOptions = 
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["picklock"] = {"missheistfbisetup1","hassle_intro_loop_f","~g~! NEW EMOTES Picklock",AnimationOptions = 
    {
       EmoteMoving = true,
       EmoteLoop = true,
    }},
    ["cleanhands"] = {"missheist_agency3aig_23","urinal_sink_loop","~g~! NEW EMOTES Clean Them Filthy Hands",AnimationOptions = 
    {
       EmoteMoving = true,
       EmoteLoop = true,
    }},
    ["cleanface"] = {"switch@michael@wash_face","loop_michael","~g~! NEW EMOTES Clean Your Face",AnimationOptions = 
    {
       EmoteMoving = true,
       EmoteLoop = true,
    }},
    ["respectm"] = {"anim@mp_player_intcelebrationmale@respect","respect", "~g~! NEW EMOTES Respect Male",AnimationOptions = 
    {
       EmoteMoving = true,
       EmoteLoop = false,
    }},
    ["respectf"] = {"anim@mp_player_intcelebrationfemale@respect","respect","~g~! NEW EMOTES Respect Female",AnimationOptions = 
    {
       EmoteMoving = true,
       EmoteLoop = false,
    }},
    ["hhands"] = {"misssnowie@hearthands", "base","~g~! NEW EMOTES Heart Hands",AnimationOptions = 
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["shaka"] = {"sign@hang_loose","base","Shaka '~g~! NEW EMOTES Hang Loose'",AnimationOptions = 
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["shaka2"] = {"sign@hang_loose_casual","base","~g~! NEW EMOTES Hang Loose Casual", AnimationOptions = 
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
 }

--- EMOTES WITH 1 OR 2 PROPS ---
DP.PropEmotes = {
    ["umbrella"] = {
        "amb@world_human_drinking@coffee@male@base",
        "base",
        "Umbrella",
        AnimationOptions = {
            Prop = "p_amb_brolly_01",
            PropBone = 57005,
            PropPlacement = {
                0.15,
                0.005,
                0.0,
                87.0,
                -20.0,
                180.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ['umbrella2'] = {
        'rcmnigel1d',
        'base_club_shoulder',
        'Umbrella 2',
        AnimationOptions = {
            Prop = 'p_amb_brolly_01',
            PropBone = 28422,
            PropPlacement = {
                0.0700,
                0.0100,
                0.1100,
                2.3402393,
                -150.9605721,
                57.3374916
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    -----------------------------------------------------------------------------------------------------
    ------ This is an example of an emote with 2 props, pretty simple! ----------------------------------
    -----------------------------------------------------------------------------------------------------
    ["notepad"] = {
        "missheistdockssetup1clipboard@base",
        "base",
        "Notepad",
        AnimationOptions = {
            Prop = 'prop_notepad_01',
            PropBone = 18905,
            PropPlacement = {
                0.1,
                0.02,
                0.05,
                10.0,
                0.0,
                0.0
            },
            SecondProp = 'prop_pencil_01',
            SecondPropBone = 58866,
            SecondPropPlacement = {
                0.11,
                -0.02,
                0.001,
                -120.0,
                0.0,
                0.0
            },
            -- EmoteLoop is used for emotes that should loop, its as simple as that.
            -- Then EmoteMoving is used for emotes that should only play on the upperbody.
            -- The code then checks both values and sets the MovementType to the correct one
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["box"] = {
        "anim@heists@box_carry@",
        "idle",
        "Box",
        AnimationOptions = {
            Prop = "hei_prop_heist_box",
            PropBone = 60309,
            PropPlacement = {
                0.025,
                0.08,
                0.255,
                -145.0,
                290.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["rose"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Rose",
        AnimationOptions = {
            Prop = "prop_single_rose",
            PropBone = 18905,
            PropPlacement = {
                0.13,
                0.15,
                0.0,
                -100.0,
                0.0,
                -20.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["smoke2"] = {
        "amb@world_human_aa_smoke@male@idle_a",
        "idle_c",
        "Smoke 2",
        AnimationOptions = {
            Prop = 'prop_cs_ciggy_01',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["smoke3"] = {
        "amb@world_human_aa_smoke@male@idle_a",
        "idle_b",
        "Smoke 3",
        AnimationOptions = {
            Prop = 'prop_cs_ciggy_01',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["smoke4"] = {
        "amb@world_human_smoking@female@idle_a",
        "idle_b",
        "Smoke 4",
        AnimationOptions = {
            Prop = 'prop_cs_ciggy_01',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
	["vape"] = {
        "amb@world_human_smoking@male@male_b@base",
        "base",
         "Vape",
        AnimationOptions = {
            Prop = 'ba_prop_battle_vape_01',
            PropBone = 28422,
            PropPlacement = {
                -0.0290,
                0.0070,
                -0.0050,
                91.0,
                270.0,
                -360.0
            },
            EmoteMoving = true,
            EmoteLoop = true,
            PtfxAsset = "core",
            PtfxName = "exp_grd_bzgas_smoke",
			PtfxNoProp = true,
            PtfxPlacement = {
                -0.0100,
				0.0600,
				0.6600,
                0.0,
                0.0,
                0.0,
                2.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['vape'],
            PtfxWait = 0,
            PtfxCanHold = true,
        }
    },
    ["bong"] = {
        "anim@safehouse@bong",
        "bong_stage3",
        "Bong",
        AnimationOptions = {
            Prop = 'hei_heist_sh_bong_01',
            PropBone = 18905,
            PropPlacement = {
                0.10,
                -0.25,
                0.0,
                95.0,
                190.0,
                180.0
            },
        }
    },
    ["fishing1"] = {
        "amb@world_human_stand_fishing@idle_a",
        "idle_a",
        "Fishing 1",
        AnimationOptions = {
            Prop = 'prop_fishing_rod_01',
            PropBone = 60309,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["fishing2"] = {
        "amb@world_human_stand_fishing@idle_a",
        "idle_b",
        "Fishing 2",
        AnimationOptions = {
            Prop = 'prop_fishing_rod_01',
            PropBone = 60309,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["fishing3"] = {
        "amb@world_human_stand_fishing@idle_a",
        "idle_c",
        "Fishing 3",
        AnimationOptions = {
            Prop = 'prop_fishing_rod_01',
            PropBone = 60309,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["suitcase"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Suitcase",
        AnimationOptions = {
            Prop = "prop_ld_suitcase_01",
            PropBone = 57005,
            PropPlacement = {
                0.35,
                0.0,
                0.0,
                0.0,
                266.0,
                90.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["suitcase2"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Suitcase 2",
        AnimationOptions = {
            Prop = "prop_security_case_01",
            PropBone = 57005,
            PropPlacement = {
                0.13,
                0.0,
                -0.01,
                0.0,
                280.0,
                90.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["boombox"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Boombox",
        AnimationOptions = {
            Prop = "prop_boombox_01",
            PropBone = 57005,
            PropPlacement = {
                0.27,
                0.0,
                0.0,
                0.0,
                263.0,
                58.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["boombox2"] = {
        "molly@boombox1",
        "boombox1_clip",
        "Boombox 2",
        AnimationOptions = {
            Prop = "prop_cs_sol_glasses",
            PropBone = 31086,
            PropPlacement = {
                0.0440,
                0.0740,
                0.0000,
                -160.9843,
                -88.7288,
                -0.6197
            },
            SecondProp = 'prop_ghettoblast_02',
            SecondPropBone = 10706,
            SecondPropPlacement = {
                -0.2310,
                -0.0770,
                0.2410,
                -179.7256,
                176.7406,
                23.0190
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["toolbox"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Toolbox",
        AnimationOptions = {
            Prop = "prop_tool_box_04",
            PropBone = 28422,
            PropPlacement = {
                0.3960,
                0.0410,
                -0.0030,
                -90.00,
                0.0,
                90.00
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["toolbox2"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Toolbox 2",
        AnimationOptions = {
            Prop = "imp_prop_tool_box_01a",
            PropBone = 28422,
            PropPlacement = {
                0.3700,
                0.0200,
                0.0,
                90.00,
                0.0,
                -90.00
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["gbag"] = {
        "missfbi4prepp1",
        "_idle_garbage_man",
        "Garbage Bag",
        AnimationOptions = {
            Prop = "prop_cs_street_binbag_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0400,
                -0.0200,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["beerbox"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Beer Box 1",
        AnimationOptions = {
            Prop = "v_ret_ml_beerdus",
            PropBone = 57005,
            PropPlacement = {
                0.22,
                0.0,
                0.0,
                0.0,
                266.0,
                48.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["beerbox2"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Beer Box 2",
        AnimationOptions = {
            Prop = "v_ret_ml_beeram",
            PropBone = 57005,
            PropPlacement = {
                0.22,
                0.0,
                0.0,
                0.0,
                266.0,
                48.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["beerbox3"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Beer Box 3",
        AnimationOptions = {
            Prop = "v_ret_ml_beerpride",
            PropBone = 57005,
            PropPlacement = {
                0.22,
                0.0,
                0.0,
                0.0,
                266.0,
                48.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["beerbox4"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Beer Box 4",
        AnimationOptions = {
            Prop = "v_ret_ml_beerbar",
            PropBone = 57005,
            PropPlacement = {
                0.22,
                0.0,
                0.0,
                0.0,
                266.0,
                60.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["mugshot"] = {
        "mp_character_creation@customise@male_a",
        "loop",
        "Mugshot",
        AnimationOptions = {
            Prop = 'prop_police_id_board',
            PropBone = 58868,
            PropPlacement = {
                0.12,
                0.24,
                0.0,
                5.0,
                0.0,
                70.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["coffee"] = {
        "amb@world_human_drinking@coffee@male@idle_a",
        "idle_c",
        "Coffee",
        AnimationOptions = {
            Prop = 'p_amb_coffeecup_01',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["whiskey"] = {
        "amb@world_human_drinking@coffee@male@idle_a",
        "idle_c",
        "Whiskey",
        AnimationOptions = {
            Prop = 'prop_drink_whisky',
            PropBone = 28422,
            PropPlacement = {
                0.01,
                -0.01,
                -0.06,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["whiskeyb"] = {
        "amb@world_human_drinking@beer@male@idle_a",
        "idle_a",
        "Whiskey Bottle",
        AnimationOptions = {
            Prop = 'ba_prop_battle_whiskey_bottle_2_s',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.05,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["beer"] = {
        "amb@world_human_drinking@beer@male@idle_a",
        "idle_c",
        "Beer",
        AnimationOptions = {
            Prop = 'prop_amb_beer_bottle',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.06,
                0.0,
                15.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["whiskeyb2"] = {
        "amb@world_human_drinking@beer@male@idle_a",
        "idle_a",
        "Whiskey Bottle 2",
        AnimationOptions = {
            Prop = 'ba_prop_battle_whiskey_bottle_2_s',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.05,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["beer2"] = {
        "amb@world_human_drinking@beer@male@idle_a",
        "idle_c",
        "Beer 2",
        AnimationOptions = {
            Prop = 'prop_amb_beer_bottle',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.06,
                0.0,
                15.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["whiskeyb3"] = {
        "amb@world_human_drinking@beer@male@idle_a",
        "idle_a",
        "Whiskey Bottle 3",
        AnimationOptions = {
            Prop = 'ba_prop_battle_whiskey_bottle_2_s',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.05,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["beerf"] = {
        "amb@world_human_drinking@beer@female@idle_a",
        "idle_a",
        "Beer Female",
        AnimationOptions = {
            Prop = 'prop_amb_beer_bottle',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                -0.0,
                0.05,
                15.0,
                15.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["wine2"] = {
        "amb@world_human_drinking@beer@female@idle_a",
        "idle_e",
        "Wine 2 - Bottle",
        AnimationOptions = {
            Prop = 'prop_wine_rose',
            PropBone = 28422,
            PropPlacement = {
                -0.0,
                0.04,
                -0.19,
                10.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
            ---       PropPlacement = {-0.0, 0.03, -0.20, 5.0, 0.0, 0.0},
            ---     F&B   L&R   U&D  R.F&B
        }
    },
    ["beerf3"] = {
        "amb@world_human_drinking@beer@female@idle_a",
        "idle_a",
        "Beer Female 3",
        AnimationOptions = {
            Prop = 'prop_amb_beer_bottle',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                -0.0,
                0.05,
                15.0,
                15.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["wine3"] = {
        "amb@world_human_drinking@beer@female@idle_a",
        "idle_e",
        "Wine 3 - Bottle",
        AnimationOptions = {
            Prop = 'prop_wine_rose',
            PropBone = 28422,
            PropPlacement = {
                -0.0,
                0.04,
                -0.19,
                10.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["cup"] = {
        "amb@world_human_drinking@coffee@male@idle_a",
        "idle_c",
        "Cup",
        AnimationOptions = {
            Prop = 'prop_plastic_cup_02',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["apple"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Apple",
        AnimationOptions = {
            Prop = 'sf_prop_sf_apple_01b',
            PropBone = 60309,
            PropPlacement = {
                0.0,
                0.0150,
                -0.0200,
                -124.6964,
                -166.5760,
                8.4572
            },
            EmoteMoving = true,
        }
    },
    ["obor"] = {"anim@heists@humane_labs@finale@keycards", "ped_a_enter_loop", "Obor", AnimationOptions =
   {
       Prop = "bzzz_prop_torch_fire001",
       PropBone = 18905,
       PropPlacement = {0.14, 0.21, -0.08, -110.0, -1.0, -10.0},
       EmoteLoop = true,
       EmoteMoving = true,
   }},
    ["taco"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Taco",
        AnimationOptions = {
            Prop = 'prop_taco_01',
            PropBone = 60309,
            PropPlacement = {
                -0.0170,
                0.0070,
                -0.0210,
                107.9846,
                -105.0251,
                55.7779
            },
            EmoteMoving = true,
        }
    },
    ["hotdog"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Hotdog",
        AnimationOptions = {
            Prop = 'prop_cs_hotdog_02',
            PropBone = 60309,
            PropPlacement = {
                -0.0300,
                0.0100,
                -0.0100,
                95.1071,
                94.7001,
                -66.9179
            },
            EmoteMoving = true,
        }
    },
    ["donut"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Donut",
        AnimationOptions = {
            Prop = 'prop_amb_donut',
            PropBone = 18905,
            PropPlacement = {
                0.13,
                0.05,
                0.02,
                -50.0,
                16.0,
                60.0
            },
            EmoteMoving = true,
        }
    },
    ["donut2"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Donut Chocolate",
        AnimationOptions = {
            Prop = 'bzzz_foodpack_donut002',
            PropBone = 60309,
            PropPlacement = {
                0.0000,
                -0.0300,
                -0.0100,
                10.0000,
                0.0000,
                -1.0000
            },
            EmoteMoving = true,
        }
    },
    ["donut3"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Donut Raspberry",
        AnimationOptions = {
            Prop = 'bzzz_foodpack_donut001',
            PropBone = 60309,
            PropPlacement = {
                0.0000,
                -0.0300,
                -0.0100,
                10.0000,
                0.0000,
                -1.0000
            },
            EmoteMoving = true,
        }
    },
    ["croissant"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Croissant",
        AnimationOptions = {
            Prop = 'bzzz_foodpack_croissant001',
            PropBone = 60309,
            PropPlacement = {
                0.0000,
                0.0000,
                -0.0100,
                0.0000,
                0.0000,
                90.0000
            },
            EmoteMoving = true,
        }
    },
    ["burger"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Burger",
        AnimationOptions = {
            Prop = 'prop_cs_burger_01',
            PropBone = 18905,
            PropPlacement = {
                0.13,
                0.05,
                0.02,
                -50.0,
                16.0,
                60.0
            },
            EmoteMoving = true,
        }
    },
    ["sandwich"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Sandwich",
        AnimationOptions = {
            Prop = 'prop_sandwich_01',
            PropBone = 18905,
            PropPlacement = {
                0.13,
                0.05,
                0.02,
                -50.0,
                16.0,
                60.0
            },
            EmoteMoving = true,
        }
    },
    ["soda"] = {
        "amb@world_human_drinking@coffee@male@idle_a",
        "idle_c",
        "Soda",
        AnimationOptions = {
            Prop = 'prop_ecola_can',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                130.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["water"] = {
        "amb@world_human_drinking@coffee@male@idle_a",
        "idle_c",
        "Water",
        AnimationOptions = {
            Prop = 'ba_prop_club_water_bottle',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                -0.090,
                0.0,
                0.0,
                130.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["egobar"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Ego Bar",
        AnimationOptions = {
            Prop = 'prop_choc_ego',
            PropBone = 60309,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteMoving = true,
        }
    },
    ["candy"] = {
        "mp_player_inteat@pnq",
        "loop",
        "Candy",
        AnimationOptions = {
            Prop = 'prop_candy_pqs',
            PropBone = 60309,
            PropPlacement = {
                -0.0300,
                0.0180,
                0.0,
                180.0,
                180.0,
                -88.099
            },
            EmoteMoving = true,
        }
    },
    ["lollipop1"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Lollipop Spiral Red",
        AnimationOptions = {
            Prop = 'natty_lollipop_spiral01',
            PropBone = 60309,
            PropPlacement = {
                -0.0100,
                0.0200,
                -0.0100,
                -175.1935,
                97.6975,
                20.9598
            },
            EmoteMoving = true,
        }
    },
    ["lollipop1b"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Lollipop Spiral Pink",
        AnimationOptions = {
            Prop = 'natty_lollipop_spiral02',
            PropBone = 60309,
            PropPlacement = {
                -0.0100,
                0.0200,
                -0.0100,
                -175.1935,
                97.6975,
                20.9598
            },
            EmoteMoving = true,
        }
    },
    ["lollipop1c"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Lollipop Spiral Green",
        AnimationOptions = {
            Prop = 'natty_lollipop_spiral03',
            PropBone = 60309,
            PropPlacement = {
                -0.0100,
                0.0200,
                -0.0100,
                -175.1935,
                97.6975,
                20.9598
            },
            EmoteMoving = true,
        }
    },
    ["lollipop1d"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Lollipop Spiral Blue",
        AnimationOptions = {
            Prop = 'natty_lollipop_spiral04',
            PropBone = 60309,
            PropPlacement = {
                -0.0100,
                0.0200,
                -0.0100,
                -175.1935,
                97.6975,
                20.9598
            },
            EmoteMoving = true,
        }
    },
    ["lollipop1e"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Lollipop Spiral Yellow",
        AnimationOptions = {
            Prop = 'natty_lollipop_spiral05',
            PropBone = 60309,
            PropPlacement = {
                -0.0100,
                0.0200,
                -0.0100,
                -175.1935,
                97.6975,
                20.9598
            },
            EmoteMoving = true,
        }
    },
    ["lollipop1f"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Lollipop Spiral Purple",
        AnimationOptions = {
            Prop = 'natty_lollipop_spiral06',
            PropBone = 60309,
            PropPlacement = {
                -0.0100,
                0.0200,
                -0.0100,
                -175.1935,
                97.6975,
                20.9598
            },
            EmoteMoving = true,
        }
    },
    ["lollipop2a"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Lollipop Spin Red",
        AnimationOptions = {
            Prop = "natty_lollipop_spin01",
            PropBone = 60309,
            PropPlacement = {
                -0.0300,
                -0.0500,
                0.0500,
                112.4227,
                -128.8559,
                15.6107
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["lollipop2b"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Lollipop Spin Yellow And Pink",
        AnimationOptions = {
            Prop = "natty_lollipop_spin02",
            PropBone = 60309,
            PropPlacement = {
                -0.0300,
                -0.0500,
                0.0500,
                112.4227,
                -128.8559,
                15.6107
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["lollipop2c"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Lollipop Spin Yellow And Green",
        AnimationOptions = {
            Prop = "natty_lollipop_spin03",
            PropBone = 60309,
            PropPlacement = {
                -0.0300,
                -0.0500,
                0.0500,
                112.4227,
                -128.8559,
                15.6107
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["lollipop2d"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Lollipop Spin Yellow And White",
        AnimationOptions = {
            Prop = "natty_lollipop_spin04",
            PropBone = 60309,
            PropPlacement = {
                -0.0300,
                -0.0500,
                0.0500,
                112.4227,
                -128.8559,
                15.6107
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["lollipop2e"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Lollipop Spin Pink And White",
        AnimationOptions = {
            Prop = "natty_lollipop_spin05",
            PropBone = 60309,
            PropPlacement = {
                -0.0300,
                -0.0500,
                0.0500,
                112.4227,
                -128.8559,
                15.6107
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["lollipop3a"] = {
        "amb@world_human_smoking@male@male_a@enter",
        "enter",
        "Lollipop Suck",
        AnimationOptions = {
            Prop = 'natty_lollipop01',
            PropBone = 47419,
            PropPlacement = {
                0.0100,
                0.0300,
                0.0100,
                -90.0000,
                10.0000,
                -10.0000
            },
            EmoteMoving = true,
            EmoteDuration = 2600
        }
    },
    ["wine"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Wine",
        AnimationOptions = {
            Prop = 'prop_drink_redwine',
            PropBone = 18905,
            PropPlacement = {
                0.10,
                -0.03,
                0.03,
                -100.0,
                0.0,
                -10.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["flute"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Flute",
        AnimationOptions = {
            Prop = 'prop_champ_flute',
            PropBone = 18905,
            PropPlacement = {
                0.10,
                -0.03,
                0.03,
                -100.0,
                0.0,
                -10.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["champagne"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Champagne",
        AnimationOptions = {
            Prop = 'prop_drink_champ',
            PropBone = 18905,
            PropPlacement = {
                0.10,
                -0.03,
                0.03,
                -100.0,
                0.0,
                -10.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["cigar"] = {
        "amb@world_human_smoking@male@male_a@enter",
        "enter",
        "Cigar",
        AnimationOptions = {
            Prop = 'prop_cigar_02',
            PropBone = 47419,
            PropPlacement = {
                0.010,
                0.0,
                0.0,
                50.0,
                0.0,
                -80.0
            },
            EmoteMoving = true,
            EmoteDuration = 2600
        }
    },
    ["cigar2"] = {
        "amb@world_human_smoking@male@male_a@enter",
        "enter",
        "Cigar 2",
        AnimationOptions = {
            Prop = 'prop_cigar_01',
            PropBone = 47419,
            PropPlacement = {
                0.010,
                0.0,
                0.0,
                50.0,
                0.0,
                -80.0
            },
            EmoteMoving = true,
            EmoteDuration = 2600
        }
    },
    ["guitar"] = {
        "amb@world_human_musician@guitar@male@idle_a",
        "idle_b",
        "Guitar",
        AnimationOptions = {
            Prop = 'prop_acc_guitar_01',
            PropBone = 24818,
            PropPlacement = {
                -0.1,
                0.31,
                0.1,
                0.0,
                20.0,
                150.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["guitar2"] = {
        "switch@trevor@guitar_beatdown",
        "001370_02_trvs_8_guitar_beatdown_idle_busker",
        "Guitar 2",
        AnimationOptions = {
            Prop = 'prop_acc_guitar_01',
            PropBone = 24818,
            PropPlacement = {
                -0.05,
                0.31,
                0.1,
                0.0,
                20.0,
                150.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["guitarelectric"] = {
        "amb@world_human_musician@guitar@male@idle_a",
        "idle_b",
        "Guitar Electric",
        AnimationOptions = {
            Prop = 'prop_el_guitar_01',
            PropBone = 24818,
            PropPlacement = {
                -0.1,
                0.31,
                0.1,
                0.0,
                20.0,
                150.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["guitarelectric2"] = {
        "amb@world_human_musician@guitar@male@idle_a",
        "idle_b",
        "Guitar Electric 2",
        AnimationOptions = {
            Prop = 'prop_el_guitar_03',
            PropBone = 24818,
            PropPlacement = {
                -0.1,
                0.31,
                0.1,
                0.0,
                20.0,
                150.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["guitarcarry"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Guitar Case Carry",
        AnimationOptions = {
            Prop = "sf_prop_sf_guitar_case_01a",
            PropBone = 28422,
            PropPlacement = {
                0.2800,
                -0.2000,
                -0.0600,
                0.0,
                0.0,
                15.0000
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["guitarcarry2"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Guitar Carry Accoustic",
        AnimationOptions = {
            Prop = "prop_acc_guitar_01",
            PropBone = 28422,
            PropPlacement = {
                0.1500,
                -0.1400,
                -0.0200,
                -101.5083,
                5.7251,
                29.4987
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["guitarcarry3"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Guitar Carry Electric ",
        AnimationOptions = {
            Prop = "prop_el_guitar_01",
            PropBone = 28422,
            PropPlacement = {
                0.1100,
                -0.1200,
                -0.0500,
                -80.0000,
                0.0,
                21.9999
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["guitarcarry4"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Guitar Carry Electric 2 ",
        AnimationOptions = {
            Prop = "prop_el_guitar_02",
            PropBone = 28422,
            PropPlacement = {
                0.1100,
                -0.1200,
                -0.0500,
                -80.0000,
                0.0,
                21.9999
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["guitarcarry5"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Guitar Carry Electric 3 ",
        AnimationOptions = {
            Prop = "prop_el_guitar_03",
            PropBone = 28422,
            PropPlacement = {
                0.1100,
                -0.1200,
                -0.0500,
                -80.0000,
                0.0,
                21.9999
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["guitarcarry6"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Guitar Carry Electric 4 ",
        AnimationOptions = {
            Prop = "vw_prop_casino_art_guitar_01a",
            PropBone = 28422,
            PropPlacement = {
                0.1100,
                -0.1200,
                -0.0500,
                -80.0000,
                0.0,
                21.9999
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["guitarcarry7"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Guitar Carry Electric 5 ",
        AnimationOptions = {
            Prop = "sf_prop_sf_el_guitar_02a",
            PropBone = 28422,
            PropPlacement = {
                0.1100,
                -0.1200,
                -0.0500,
                -80.0000,
                0.0,
                21.9999
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["guitarsit"] = {
        "misssnowie@gatlax",
        "base",
        "Guitar Sit And Play",
        AnimationOptions = {
            Prop = "prop_acc_guitar_01",
            PropBone = 24818,
            PropPlacement = {
                -0.0510,
                0.2770,
                -0.0299,
                -140.3349,
                166.3300,
                29.7590
            },
            EmoteLoop = true,
        }
    },
    ["book"] = {
        "cellphone@",
        "cellphone_text_read_base",
        "Book",
        AnimationOptions = {
            Prop = 'prop_novel_01',
            PropBone = 6286,
            PropPlacement = {
                0.15,
                0.03,
                -0.065,
                0.0,
                180.0,
                90.0
            },
            -- This positioning isnt too great, was to much of a hassle
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["bouquet"] = {
        "impexp_int-0",
        "mp_m_waremech_01_dual-0",
        "Bouquet",
        AnimationOptions = {
            Prop = 'prop_snow_flower_02',
            PropBone = 24817,
            PropPlacement = {
                -0.29,
                0.40,
                -0.02,
                -90.0,
                -90.0,
                0.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["teddy"] = {
        "impexp_int-0",
        "mp_m_waremech_01_dual-0",
        "Teddy",
        AnimationOptions = {
            Prop = 'v_ilev_mr_rasberryclean',
            PropBone = 24817,
            PropPlacement = {
                -0.20,
                0.46,
                -0.016,
                -180.0,
                -90.0,
                0.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["backpack"] = {
        "move_p_m_zero_rucksack",
        "nill",
        "Backpack",
        AnimationOptions = {
            Prop = 'p_michael_backpack_s',
            PropBone = 24818,
            PropPlacement = {
                0.07,
                -0.11,
                -0.05,
                0.0,
                90.0,
                175.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["clipboard"] = {
        "missfam4",
        "base",
        "Clipboard",
        AnimationOptions = {
            Prop = 'p_amb_clipboard_01',
            PropBone = 36029,
            PropPlacement = {
                0.16,
                0.08,
                0.1,
                -130.0,
                -50.0,
                0.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["map"] = {
        "amb@world_human_tourist_map@male@base",
        "base",
        "Map",
        AnimationOptions = {
            Prop = 'prop_tourist_map_01',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["map2"] = {
        "amb@code_human_in_bus_passenger_idles@female@tablet@idle_a",
        "idle_a",
        "Map 2",
        AnimationOptions = {
            Prop = "prop_tourist_map_01",
            PropBone = 28422,
            PropPlacement = {
                -0.05,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["beg"] = {
        "amb@world_human_bum_freeway@male@base",
        "base",
        "Beg",
        AnimationOptions = {
            Prop = 'prop_beggers_sign_03',
            PropBone = 58868,
            PropPlacement = {
                0.19,
                0.18,
                0.0,
                5.0,
                0.0,
                40.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["newspaper"] = {
        "amb@world_human_clipboard@male@idle_a",
        "idle_a",
        "Newspaper",
        AnimationOptions = {
            Prop = 'prop_cliff_paper',
            PropBone = 60309,
            PropPlacement = {
                0.0970,
                -0.0280,
                -0.0170,
                107.4008,
                3.2712,
                -10.5080
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["newspaper2"] = {
        "amb@world_human_clipboard@male@idle_a",
        "idle_a",
        "Newspaper 2",
        AnimationOptions = {
            Prop = 'ng_proc_paper_news_quik',
            PropBone = 60309,
            PropPlacement = {
                0.1590,
                0.0290,
                -0.0100,
                90.9998,
                0.0087,
                0.5000
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["newspaper3"] = {
        "amb@world_human_clipboard@male@idle_a",
        "idle_a",
        "Newspaper 3",
        AnimationOptions = {
            Prop = 'ng_proc_paper_news_rag',
            PropBone = 60309,
            PropPlacement = {
                0.1760,
                -0.00070,
                0.0200,
                99.8306,
                3.2841,
                -4.7185
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["pornmag"] = {
        "amb@world_human_clipboard@male@base",
        "base",
        "Porn Magazine",
        AnimationOptions = {
            Prop = 'prop_porn_mag_02',
            PropBone = 60309,
            PropPlacement = {
                0.1000,
                -0.0360,
                -0.0300,
                -86.9096,
                179.2527,
                13.8804
            },
            EmoteMoving = true,
            EmoteLoop = true
        },
        AdultAnimation = true
    },
    ["pornmag2"] = {
        "amb@world_human_clipboard@male@base",
        "base",
        "Porn Magazine 2",
        AnimationOptions = {
            Prop = 'prop_cs_magazine',
            PropBone = 60309,
            PropPlacement = {
                0.0800,
                -0.0490,
                -0.0500,
                87.9369,
                -0.4292,
                -14.3925
            },
            EmoteMoving = true,
            EmoteLoop = true
        },
        AdultAnimation = true
    },
    ["pornmag3"] = {
        "amb@world_human_clipboard@male@base",
        "base",
        "Porn Magazine 3",
        AnimationOptions = {
            Prop = 'prop_porn_mag_03',
            PropBone = 60309,
            PropPlacement = {
                0.1000,
                -0.0700,
                -0.0200,
                -90.0000,
                -180.0000,
                22.7007
            },
            EmoteMoving = true,
            EmoteLoop = true
        },
        AdultAnimation = true
    },
    ["pornmag4"] = {
        "amb@world_human_clipboard@male@base",
        "base",
        "Porn Magazine 4",
        AnimationOptions = {
            Prop = 'v_res_tt_pornmag01',
            PropBone = 60309,
            PropPlacement = {
                -0.0200,
                -0.0300,
                0.0000,
                88.9862,
                0.2032,
                -20.0016
            },
            EmoteMoving = true,
            EmoteLoop = true
        },
        AdultAnimation = true
    },
    ["pornmag5"] = {
        "amb@world_human_clipboard@male@base",
        "base",
        "Porn Magazine 5",
        AnimationOptions = {
            Prop = 'v_res_tt_pornmag02',
            PropBone = 60309,
            PropPlacement = {
                -0.0200,
                -0.0300,
                0.0000,
                88.9862,
                0.2032,
                -20.0016
            },
            EmoteMoving = true,
            EmoteLoop = true
        },
        AdultAnimation = true
    },
    ["pornmag6"] = {
        "amb@world_human_clipboard@male@base",
        "base",
        "Porn Magazine 6",
        AnimationOptions = {
            Prop = 'v_res_tt_pornmag03',
            PropBone = 60309,
            PropPlacement = {
                -0.0200,
                -0.0300,
                0.0000,
                88.9862,
                0.2032,
                -20.0016
            },
            EmoteMoving = true,
            EmoteLoop = true
        },
        AdultAnimation = true
    },
    ["pornmag7"] = {
        "amb@world_human_clipboard@male@base",
        "base",
        "Porn Magazine 7",
        AnimationOptions = {
            Prop = 'v_res_tt_pornmag04',
            PropBone = 60309,
            PropPlacement = {
                -0.0200,
                -0.0300,
                0.0000,
                88.9862,
                0.2032,
                -20.0016
            },
            EmoteMoving = true,
            EmoteLoop = true
        },
        AdultAnimation = true
    },
    ["makeitrain"] = {
        "anim@mp_player_intupperraining_cash",
        "idle_a",
        "Make It Rain",
        AnimationOptions = {
            Prop = 'prop_anim_cash_pile_01',
            PropBone = 60309,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                180.0,
                0.0,
                70.0
            },
            EmoteMoving = true,
            EmoteLoop = true,
            PtfxAsset = "scr_xs_celebration",
            PtfxName = "scr_xs_money_rain",
            PtfxPlacement = {
                0.0,
                0.0,
                -0.09,
                -80.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['makeitrain'],
            PtfxWait = 500,
            PtfxCanHold = true,
        }
    },
    ["camera"] = {
        "amb@world_human_paparazzi@male@base",
        "base",
        "Camera",
        AnimationOptions = {
            Prop = 'prop_pap_camera_01',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_bike_business",
            PtfxName = "scr_bike_cfid_camera_flash",
            PtfxPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['camera'],
            PtfxWait = 200,
        }
    },
    ["camera2"] = {
        "cellphone@female",
        "cellphone_text_read_base_cover_low",
        "Camera 2",
        AnimationOptions = {
            Prop = "prop_ing_camera_01",
            PropBone = 28422,
            PropPlacement = {
                0.0100,
                -0.0300,
                0.0520,
                -172.0487,
                -163.9389,
                -29.0221
            },
            EmoteLoop = false,
            EmoteMoving = true,
            PtfxAsset = "scr_bike_business",
            PtfxName = "scr_bike_cfid_camera_flash",
            PtfxPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['camera'],
            PtfxWait = 200,
        }
    },
    ["champagnespray"] = {
        "anim@mp_player_intupperspray_champagne",
        "idle_a",
        "Champagne Spray",
        AnimationOptions = {
            Prop = 'ba_prop_battle_champ_open',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteMoving = true,
            EmoteLoop = true,
            PtfxAsset = "scr_ba_club",
            PtfxName = "scr_ba_club_champagne_spray",
            PtfxPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['spraychamp'],
            PtfxWait = 500,
            PtfxCanHold = true,
        }
    },
    ["joint"] = {
        "amb@world_human_smoking@male@male_a@enter",
        "enter",
        "Joint",
        AnimationOptions = {
            Prop = 'p_cs_joint_02',
            PropBone = 47419,
            PropPlacement = {
                0.015,
                -0.009,
                0.003,
                55.0,
                0.0,
                110.0
            },
            EmoteMoving = true,
            EmoteDuration = 2600
        }
    },
    ["cig"] = {
        "amb@world_human_smoking@male@male_a@enter",
        "enter",
        "Cig",
        AnimationOptions = {
            Prop = 'prop_amb_ciggy_01',
            PropBone = 47419,
            PropPlacement = {
                0.015,
                -0.009,
                0.003,
                55.0,
                0.0,
                110.0
            },
            EmoteMoving = true,
            EmoteDuration = 2600
        }
    },
    ["brief"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Briefcase",
        AnimationOptions = {
            Prop = "prop_ld_case_01",
            PropBone = 57005,
            PropPlacement = {
                0.12,
                0.0,
                0.0,
                0.0,
                255.0,
                80.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["brief2"] = { -- Added for compatibility
        "missheistdocksprep1hold_cellphone",
        "static",
        "Briefcase 2",
        AnimationOptions =
        {
            Prop = "prop_ld_case_01",
            PropBone = 57005,
            PropPlacement = {
                0.10,
                0.0,
                0.0,
                0.0,
                280.0,
                53.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["guncase"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Guncase",
        AnimationOptions =
        {
            Prop = "prop_gun_case_01",
            PropBone = 57005,
            PropPlacement = {
                0.10,
                0.02,
                -0.02,
                40.0,
                145.0,
                115.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["tablet"] = {
        "amb@world_human_tourist_map@male@base",
        "base",
        "Tablet",
        AnimationOptions = {
            Prop = "prop_cs_tablet",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                -0.03,
                0.0,
                20.0,
                -90.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["tablet2"] = {
        "amb@code_human_in_bus_passenger_idles@female@tablet@idle_a",
        "idle_a",
        "Tablet 2",
        AnimationOptions = {
            Prop = "prop_cs_tablet",
            PropBone = 28422,
            PropPlacement = {
                -0.05,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["phonecall"] = {
        "cellphone@",
        "cellphone_call_listen_base",
        "Phone Call",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["phonecall2"] = {
        "random@kidnap_girl",
        "ig_1_girl_on_phone_loop",
        "Phone Call 2",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["wt"] = {
        "cellphone@",
        "cellphone_text_read_base",
        "Walkie Talkie",
        AnimationOptions = {
            Prop = "prop_cs_hand_radio",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["clean"] = {
        "timetable@floyd@clean_kitchen@base",
        "base",
        "Clean",
        AnimationOptions = {
            Prop = "prop_sponge_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                -0.01,
                90.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["clean2"] = {
        "amb@world_human_maid_clean@",
        "base",
        "Clean 2",
        AnimationOptions = {
            Prop = "prop_sponge_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                -0.01,
                90.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["protest"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Protest",
        AnimationOptions = {
            Prop = "prop_cs_protest_sign_01",
            PropBone = 57005,
            PropPlacement = {
                0.1820,
                0.2400,
                0.0600,
                -69.3774235,
                5.9142048,
                -13.9572354
            },
            --
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["protest2"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Protest 2 - Pride ",
        AnimationOptions = {
            Prop = "pride_sign_01",
            PropBone = 57005,
            PropPlacement = {
                0.1820,
                0.2400,
                0.0600,
                -69.3774235,
                5.9142048,
                -13.9572354
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["binoculars"] = {
        "amb@world_human_binoculars@male@idle_b",
        "idle_f",
        "Binoculars",
        AnimationOptions = {
            Prop = "prop_binoc_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["binoculars2"] = {
        "amb@world_human_binoculars@male@idle_a",
        "idle_c",
        "Binoculars 2",
        AnimationOptions = {
            Prop = "prop_binoc_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["tennisplay"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Tennis Play",
        AnimationOptions = {
            Prop = "prop_tennis_bag_01",
            PropBone = 57005,
            PropPlacement = {
                0.27,
                0.0,
                0.0,
                91.0,
                0.0,
                -82.9999951
            },
            SecondProp = 'prop_tennis_rack_01',
            SecondPropBone = 60309,
            SecondPropPlacement = {
                0.0800,
                0.0300,
                0.0,
                -130.2907295,
                3.8782324,
                6.588224
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["weights"] = {
        "amb@world_human_muscle_free_weights@male@barbell@base",
        "base",
        "Weights",
        AnimationOptions = {
            Prop = "prop_curl_bar_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["weights2"] = {
        "amb@world_human_muscle_free_weights@male@barbell@idle_a",
        "idle_d",
        "Weights 2",
        AnimationOptions = {
            Prop = "prop_curl_bar_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
     },
	 ["weights3"] = { -- Custom Emote By Frabi
        "frabi@malepose@solo@firstsport",
        "pose_sport_004",
        "Weights 3 - Pose",
        AnimationOptions = {
		Prop = 'prop_barbell_01',
            PropBone = 28422,
            PropPlacement = {
                0.0660,
				0.0100,
				-0.0300,
				90.0000,
				90.0000,
				-79.9999
            },
            EmoteLoop = true,
         }
    },
	 ["weights4"] = { -- Custom Emote By Frabi
        "frabi@malepose@solo@firstsport",
        "pose_sport_003",
        "Weights 4 - Pose",
        AnimationOptions = {
		Prop = 'prop_barbell_01', -- Left Wrist 
            PropBone = 60309,
            PropPlacement = {
                0.0520,
                -0.0010,
                0.0131,
                21.5428,
                70.2098,
				74.5019
            },
            SecondProp = 'prop_barbell_01', -- Right Wrist 
            SecondPropBone = 28422,
            SecondPropPlacement = {
                0.0660,
				0.0100,
				-0.0300,
				90.0000,
				90.0000,
				-79.9999
            },
            EmoteLoop = true,
         }
    },
    ["fuel"] = {
        "weapons@misc@jerrycan@",
        "fire",
        "Fuel",
        AnimationOptions = {
            Prop = "w_am_jerrycan",
            PropBone = 57005,
            PropPlacement = {
                0.1800,
                0.1300,
                -0.2400,
                -165.8693883,
                -11.2122753,
                -32.9453021
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["fuel2"] = {
        "weapons@misc@jerrycan@franklin",
        "idle",
        "Fuel 2 (Carry)",
        AnimationOptions = {
            Prop = "w_am_jerrycan",
            PropBone = 28422,
            PropPlacement = {
                0.26,
                0.050,
                0.0300,
                80.00,
                180.000,
                79.99
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["hitchhike"] = {
        "random@hitch_lift",
        "idle_f",
        "Hitchhike",
        AnimationOptions = {
            Prop = "w_am_jerrycan",
            PropBone = 18905,
            PropPlacement = {
                0.32,
                -0.0100,
                0.0,
                -162.423,
                74.83,
                58.79
            },
            SecondProp = 'prop_michael_backpack',
            SecondPropBone = 40269,
            SecondPropPlacement = {
                -0.07,
                -0.21,
                -0.11,
                -144.93,
                117.358,
                -6.16
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["ssign"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Steal Stop Sign ",
        AnimationOptions = {
            Prop = "prop_sign_road_01a",
            PropBone = 60309,
            PropPlacement = {
                -0.1390,
                -0.9870,
                0.4300,
                -67.3315314,
                145.0627869,
                -4.4318885
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["ssign2"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Steal Yield Sign ",
        AnimationOptions = {
            Prop = "prop_sign_road_02a",
            PropBone = 60309,
            PropPlacement = {
                -0.1390,
                -0.9870,
                0.4300,
                -67.3315314,
                145.0627869,
                -4.4318885
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["ssign3"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Steal Hospital Sign ",
        AnimationOptions = {
            Prop = "prop_sign_road_03d",
            PropBone = 60309,
            PropPlacement = {
                -0.1390,
                -0.9870,
                0.4300,
                -67.3315314,
                145.0627869,
                -4.4318885
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["ssign4"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Steal Parking Sign ",
        AnimationOptions = {
            Prop = "prop_sign_road_04a",
            PropBone = 60309,
            PropPlacement = {
                -0.1390,
                -0.9870,
                0.4300,
                -67.3315314,
                145.0627869,
                -4.4318885
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["ssign5"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Steal Parking Sign 2 ",
        AnimationOptions = {
            Prop = "prop_sign_road_04w",
            PropBone = 60309,
            PropPlacement = {
                -0.1390,
                -0.9870,
                0.4300,
                -67.3315314,
                145.0627869,
                -4.4318885
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["ssign6"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Steal Pedestrian Sign ",
        AnimationOptions = {
            Prop = "prop_sign_road_05a",
            PropBone = 60309,
            PropPlacement = {
                -0.1390,
                -0.9870,
                0.4300,
                -67.3315314,
                145.0627869,
                -4.4318885
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["ssign7"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Steal Street Sign ",
        AnimationOptions = {
            Prop = "prop_sign_road_05t",
            PropBone = 60309,
            PropPlacement = {
                -0.1390,
                -0.9870,
                0.4300,
                -67.3315314,
                145.0627869,
                -4.4318885
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["ssign8"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Steal Freeway Sign ",
        AnimationOptions = {
            Prop = "prop_sign_freewayentrance",
            PropBone = 60309,
            PropPlacement = {
                -0.1390,
                -0.9870,
                0.4300,
                -67.3315314,
                145.0627869,
                -4.4318885
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["ssign9"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Steal Stop Sign Snow ",
        AnimationOptions = {
            Prop = "prop_snow_sign_road_01a",
            PropBone = 60309,
            PropPlacement = {
                -0.1390,
                -0.9870,
                0.4300,
                -67.3315314,
                145.0627869,
                -4.4318885
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["conehead"] = {
        "move_m@drunk@verydrunk_idles@",
        "fidget_07",
        "Cone Head ",
        AnimationOptions = {
            Prop = "prop_roadcone02b",
            PropBone = 31086,
            PropPlacement = {
                0.0500,
                0.0200,
                -0.000,
                30.0000004,
                90.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["foodtraya"] = {
        "anim@heists@box_carry@",
        "idle",
        "Food Tray",
        AnimationOptions = {
            Prop = "prop_food_bs_tray_03",
            PropBone = 28422,
            PropPlacement = {
                0.0100,
                -0.0400,
                -0.1390,
                20.0000007,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["foodtrayb"] = {
        "anim@heists@box_carry@",
        "idle",
        "Food Tray B",
        AnimationOptions = {
            Prop = "prop_food_bs_tray_02",
            PropBone = 28422,
            PropPlacement = {
                0.0100,
                -0.0400,
                -0.1390,
                20.0000007,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["foodtrayc"] = {
        "anim@heists@box_carry@",
        "idle",
        "Food Tray C",
        AnimationOptions = {
            Prop = "prop_food_cb_tray_02",
            PropBone = 28422,
            PropPlacement = {
                0.0100,
                -0.0400,
                -0.1390,
                20.0000007,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["foodtrayd"] = {
        "anim@heists@box_carry@",
        "idle",
        "Food Tray D",
        AnimationOptions = {
            Prop = "prop_food_tray_02",
            PropBone = 28422,
            PropPlacement = {
                0.0100,
                -0.0400,
                -0.1390,
                20.0000007,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["foodtraye"] = {
        "anim@heists@box_carry@",
        "idle",
        "Food Tray E",
        AnimationOptions = {
            Prop = "prop_food_tray_03",
            PropBone = 28422,
            PropPlacement = {
                0.0100,
                -0.0400,
                -0.1390,
                20.0000007,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["foodtrayf"] = {
        "anim@heists@box_carry@",
        "idle",
        "Food Tray F",
        AnimationOptions = {
            Prop = "prop_food_bs_tray_02",
            PropBone = 57005,
            PropPlacement = {
                0.2500,
                0.1000,
                0.0700,
                -110.5483936,
                73.3529273,
                -16.338362
            },
            SecondProp = 'prop_food_bs_tray_03',
            SecondPropBone = 18905,
            SecondPropPlacement = {
                0.2200,
                0.1300,
                -0.1000,
                -127.7725487,
                110.2074758,
                -3.5886263
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["foodtrayg"] = {
        "anim@heists@box_carry@",
        "idle",
        "Food Tray G",
        AnimationOptions = {
            Prop = "prop_food_cb_tray_02",
            PropBone = 57005,
            PropPlacement = {
                0.2500,
                0.1000,
                0.0700,
                -110.5483936,
                73.3529273,
                -16.338362
            },
            SecondProp = 'prop_food_cb_tray_02',
            SecondPropBone = 18905,
            SecondPropPlacement = {
                0.2200,
                0.1300,
                -0.1000,
                -127.7725487,
                110.2074758,
                -3.5886263
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["foodtrayh"] = {
        "anim@heists@box_carry@",
        "idle",
        "Food Tray H",
        AnimationOptions = {
            Prop = "prop_food_tray_02",
            PropBone = 57005,
            PropPlacement = {
                0.2500,
                0.1000,
                0.0700,
                -110.5483936,
                73.3529273,
                -16.338362
            },
            SecondProp = 'prop_food_tray_03',
            SecondPropBone = 18905,
            SecondPropPlacement = {
                0.2200,
                0.1300,
                -0.1000,
                -127.7725487,
                110.2074758,
                -3.5886263
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["foodtrayi"] = {
        "anim@heists@box_carry@",
        "idle",
        "Food Tray I",
        AnimationOptions = {
            Prop = "prop_food_tray_02",
            PropBone = 57005,
            PropPlacement = {
                0.2500,
                0.1000,
                0.0700,
                -110.5483936,
                73.3529273,
                -16.338362
            },
            SecondProp = 'prop_food_tray_02',
            SecondPropBone = 18905,
            SecondPropPlacement = {
                0.2200,
                0.1300,
                -0.1000,
                -127.7725487,
                110.2074758,
                -3.5886263
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["foodtrayj"] = {
        "anim@move_f@waitress",
        "idle",
        "Food Tray J",
        AnimationOptions = {
            Prop = "prop_food_bs_tray_02",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0200,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["foodtrayk"] = {
        "anim@move_f@waitress",
        "idle",
        "Food Tray K",
        AnimationOptions = {
            Prop = "prop_food_bs_tray_02",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0200,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["foodtrayl"] = {
        "anim@move_f@waitress",
        "idle",
        "Food Tray L",
        AnimationOptions = {
            Prop = "prop_food_bs_tray_03",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0200,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["foodtraym"] = {
        "anim@move_f@waitress",
        "idle",
        "Food Tray M",
        AnimationOptions = {
            Prop = "prop_food_cb_tray_02",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0200,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["foodtrayn"] = {
        "anim@move_f@waitress",
        "idle",
        "Food Tray N",
        AnimationOptions = {
            Prop = "prop_food_tray_02",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0200,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["foodtrayo"] = {
        "anim@move_f@waitress",
        "idle",
        "Food Tray O",
        AnimationOptions = {
            Prop = "prop_food_tray_02",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0200,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["carrypizza"] = {
        "anim@heists@box_carry@",
        "idle",
        "Carry Pizza Box",
        AnimationOptions = {
            Prop = "prop_pizza_box_02",
            PropBone = 28422,
            PropPlacement = {
                0.0100,
                -0.1000,
                -0.1590,
                20.0000007,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["carryfoodbag"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Carry Food Bag",
        AnimationOptions = {
            Prop = "prop_food_bs_bag_01",
            PropBone = 57005,
            PropPlacement = {
                0.3300,
                0.0,
                -0.0300,
                0.0017365,
                -79.9999997,
                110.0651988
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["carryfoodbag2"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Carry Food Bag 2",
        AnimationOptions = {
            Prop = "prop_food_cb_bag_01",
            PropBone = 57005,
            PropPlacement = {
                0.3800,
                0.0,
                -0.0300,
                0.0017365,
                -79.9999997,
                110.0651988
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["carryfoodbag3"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Carry Food Bag 3",
        AnimationOptions = {
            Prop = "prop_food_bag1",
            PropBone = 57005,
            PropPlacement = {
                0.3800,
                0.0,
                -0.0300,
                0.0017365,
                -79.9999997,
                110.0651988
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["tag"] = {
        "anim@scripted@freemode@postertag@graffiti_spray@male@",
        "shake_can_male",
        "Tagging Shake Can Male",
        AnimationOptions = {
            Prop = "prop_cs_spray_can",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0700,
                0.0017365,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["tag2"] = {
        "anim@scripted@freemode@postertag@graffiti_spray@heeled@",
        "shake_can_female",
        "Tagging Shake Can Female",
        AnimationOptions = {
            Prop = "prop_cs_spray_can",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0700,
                0.0017365,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["tag3"] = {
        "anim@scripted@freemode@postertag@graffiti_spray@male@",
        "spray_can_var_01_male",
        "Tagging Male 1",
        AnimationOptions = {
            Prop = "prop_cs_spray_can",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0700,
                0.0017365,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["tag4"] = {
        "anim@scripted@freemode@postertag@graffiti_spray@male@",
        "spray_can_var_02_male",
        "Tagging Male 2",
        AnimationOptions = {
            Prop = "prop_cs_spray_can",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0700,
                0.0017365,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["tag5"] = {
        "anim@scripted@freemode@postertag@graffiti_spray@heeled@",
        "spray_can_var_01_female",
        "Tagging Female 1",
        AnimationOptions = {
            Prop = "prop_cs_spray_can",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0700,
                0.0017365,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["tag6"] = {
        "anim@scripted@freemode@postertag@graffiti_spray@heeled@",
        "spray_can_var_02_female",
        "Tagging Female 2",
        AnimationOptions = {
            Prop = "prop_cs_spray_can",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0700,
                0.0017365,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["beans"] = {
        "anim@scripted@island@special_peds@pavel@hs4_pavel_ig5_caviar_p1",
        "base_idle",
        "Beans",
        AnimationOptions = {
            Prop = "h4_prop_h4_caviar_tin_01a",
            PropBone = 60309,
            PropPlacement = {
                0.0,
                0.0300,
                0.0100,
                0.0,
                0.0,
                0.0
            },
            SecondProp = 'h4_prop_h4_caviar_spoon_01a',
            SecondPropBone = 28422,
            SecondPropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["newscam"] = {
        "missfinale_c2mcs_1",
        "fin_c2_mcs_1_camman",
        "News Camera",
        AnimationOptions = {
            Prop = "prop_v_cam_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0300,
                0.0100,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["newsmic"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "News Microphone",
        AnimationOptions = {
            Prop = "p_ing_microphonel_01",
            PropBone = 4154,
            PropPlacement = {
                -0.00,
                -0.0200,
                0.1100,
                0.00,
                0.0,
                60.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["newsbmic"] = {
        "missfra1",
        "mcs2_crew_idle_m_boom",
        "News Boom Microphone",
        AnimationOptions = {
            Prop = "prop_v_bmike_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["leafblower"] = {
        "amb@world_human_gardener_leaf_blower@base",
        "base",
        "Leaf Blower",
        AnimationOptions = {
            Prop = "prop_leaf_blower_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_armenian3",
            PtfxName = "ent_anim_leaf_blower",
            PtfxPlacement = {
                1.0,
                0.0,
                -0.25,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['useleafblower'],
            PtfxWait = 2000,
            PtfxCanHold = true,
        }
    },
    ["bbqf"] = {
        "amb@prop_human_bbq@male@idle_a",
        "idle_b",
        "BBQ (Female)",
        AnimationOptions = {
            Prop = "prop_fish_slice_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["pump"] = {
        "missfbi4prepp1",
        "idle",
        "Pumpkin",
        AnimationOptions = {
            Prop = "prop_veg_crop_03_pump",
            PropBone = 28422,
            PropPlacement = {
                0.0200,
                0.0600,
                -0.1200,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["pump2"] = {
        "anim@heists@box_carry@",
        "idle",
        "Pumpkin 2",
        AnimationOptions = {
            Prop = "prop_veg_crop_03_pump",
            PropBone = 28422,
            PropPlacement = {
                0.0100,
                -0.16000,
                -0.2100,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["pump3"] = {
        "missfbi4prepp1",
        "idle",
        "Pumpkin 3",
        AnimationOptions = {
            Prop = "reh_prop_reh_lantern_pk_01a",
            PropBone = 28422,
            PropPlacement = {
                0.0010,
				0.0660,
				-0.0120,
				171.9169,
				179.8707,
				-39.9860
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["pump4"] = {
        "missfbi4prepp1",
        "idle",
        "Pumpkin 4",
        AnimationOptions = {
            Prop = "reh_prop_reh_lantern_pk_01b",
            PropBone = 28422,
            PropPlacement = {
                0.0010,
				0.0660,
				-0.0120,
				171.9169,
				179.8707,
				-39.9860
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["pump5"] = {
        "missfbi4prepp1",
        "idle",
        "Pumpkin 5",
        AnimationOptions = {
            Prop = "reh_prop_reh_lantern_pk_01c",
            PropBone = 28422,
            PropPlacement = {
                0.0010,
				0.0660,
				-0.0120,
				171.9169,
				179.8707,
				-39.9860
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["mop"] = {
        "missfbi4prepp1",
        "idle",
        "Mop",
        AnimationOptions = {
            Prop = "prop_cs_mop_s",
            PropBone = 28422,
            PropPlacement = {
                -0.0200,
                -0.0600,
                -0.2000,
                -13.377,
                10.3568,
                17.9681
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["mop2"] = {
        "move_mop",
        "idle_scrub_small_player",
        "Mop 2",
        AnimationOptions = {
            Prop = "prop_cs_mop_s",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.1200,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["jerkf"] = {
        "switch@trevor@jerking_off",
        "trev_jerking_off_loop",
        "JerkOff! Female",
        AnimationOptions = {
            Prop = 'prop_cs_dildo_01',
            PropBone = 28422,
            PropPlacement = {
                0.09,
                0.05,
                -0.03,
                90.0,
                80.0,
                30.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        },
        AdultAnimation = true
    },
    ["rake"] = {
        "anim@amb@drug_field_workers@rake@male_a@base",
        "base",
        "Rake",
        AnimationOptions = {
            Prop = "prop_tool_rake",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                -0.0300,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
        }
    },
    ["rake2"] = {
        "anim@amb@drug_field_workers@rake@male_a@idles",
        "idle_b",
        "Rake 2",
        AnimationOptions = {
            Prop = "prop_tool_rake",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                -0.0300,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
        }
    },
    ["rake3"] = {
        "anim@amb@drug_field_workers@rake@male_b@base",
        "base",
        "Rake 3",
        AnimationOptions = {
            Prop = "prop_tool_rake",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                -0.0300,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
        }
    },
    ["rake4"] = {
        "anim@amb@drug_field_workers@rake@male_b@idles",
        "idle_d",
        "Rake 4",
        AnimationOptions = {
            Prop = "prop_tool_rake",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                -0.0300,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
        }
    },
    ["broom"] = {
        "anim@amb@drug_field_workers@rake@male_a@base",
        "base",
        "Broom",
        AnimationOptions = {
            Prop = "prop_tool_broom",
            PropBone = 28422,
            PropPlacement = {
                -0.0100,
                0.0400,
                -0.0300,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
        }
    },
    ["broom2"] = {
        "anim@amb@drug_field_workers@rake@male_a@idles",
        "idle_b",
        "Broom 2",
        AnimationOptions = {
            Prop = "prop_tool_broom",
            PropBone = 28422,
            PropPlacement = {
                -0.0100,
                0.0400,
                -0.0300,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
        }
    },
    ["broom3"] = {
        "anim@amb@drug_field_workers@rake@male_b@base",
        "base",
        "Broom 3",
        AnimationOptions = {
            Prop = "prop_tool_broom",
            PropBone = 28422,
            PropPlacement = {
                -0.0100,
                0.0400,
                -0.0300,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
        }
    },
    ["broom4"] = {
        "anim@amb@drug_field_workers@rake@male_b@idles",
        "idle_d",
        "Broom 4",
        AnimationOptions = {
            Prop = "prop_tool_broom",
            PropBone = 28422,
            PropPlacement = {
                -0.0100,
                0.0400,
                -0.0300,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
        }
    },
    ["champw"] = {
        "anim@move_f@waitress",
        "idle",
        "Champagne Waiter",
        AnimationOptions = {
            Prop = "vw_prop_vw_tray_01a",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0100,
                0.0,
                0.0,
                0.0
            },
            SecondProp = 'prop_champ_cool',
            SecondPropBone = 28422,
            SecondPropPlacement = {
                0.0,
                0.0,
                0.010,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["shit"] = {
        "missfbi3ig_0",
        "shit_loop_trev",
        "Shit",
        AnimationOptions = {
            Prop = "prop_toilet_roll_01",
            PropBone = 28422,
            PropPlacement = {
                0.0700,
                -0.02000,
                -0.2100,
                0,
                0,
                0.0,
                0.0
            },
            SecondProp = 'prop_big_shit_01',
            SecondPropBone = 0,
            SecondPropPlacement = {
                -0.0100,
                0.0600,
                -0.1550,
                101.3015175,
                7.3512213,
                -29.2665794
            },
            EmoteLoop = true,
            EmoteMoving = false,
        },
        AdultAnimation = true
    },
    ["selfie"] = {
        "anim@mp_player_intuppertake_selfie",
        "idle_a",
        "Selfie",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropBone = 60309,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["selfie2"] = {
        "cellphone@self@franklin@",
        "peace",
        "Selfie 2",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["selfie3"] = {
        "cellphone@self@franklin@",
        "west_coast",
        "Selfie 3 - West Side",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["selfie4"] = {
        "cellphone@self@trevor@",
        "aggressive_finger",
        "Selfie 4 - Finger",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["selfie5"] = {
        "cellphone@self@trevor@",
        "proud_finger",
        "Selfie 5 - Finger 2",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["selfie6"] = {
        "cellphone@self@trevor@",
        "throat_slit",
        "Selfie 6 - Throat Slit",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["selfie7"] = {
        "cellphone@self@franklin@",
        "chest_bump",
        "Selfie 7 - Chest Bump",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["selfiepeace"] = { -- MissSnowie Custom Emote
        "mirror_selfie@peace_sign",
        "base",
        "Selfie Peace",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropBone = 57005,
            PropPlacement = {
                0.1700,
                0.0299,
                -0.0159,
                -126.2687,
                -139.9058,
                35.6203
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['camera'],
            PtfxWait = 200,
        }
    },
    ["selfiecrouch"] = { -- MissSnowie Custom Emote
        "crouching@taking_selfie",
        "base",
        "Selfie Crouching",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropBone = 18905,
            PropPlacement = {
                0.1580,
                0.0180,
                0.0300,
                -150.4798,
                -67.8240,
                -46.0417
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['camera'],
            PtfxWait = 200,
        }
    },
    ["selfiecrouch2"] = { -- Wolf's Square Custom Emote
        "eagle@girlphonepose13",
        "girl",
        "Selfie Crouching 2",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropBone = 60309,
            PropPlacement = {
                0.0670,
                0.0300,
                0.0300,
                -90.0000,
                0.0000,
                -25.9000
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['camera'],
            PtfxWait = 200,
        }
    },
    ["selfiecrouch3"] = { -- Custom Emote By Struggleville
        "anim@male_insta_selfie",
        "insta_selfie_clip",
        "Selfie Crouching 3",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropBone = 60309,
            PropPlacement = {
                0.0700,
                0.0100,
                0.0690,
                0.0,
                0.0,
                -150.0000
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['camera'],
            PtfxWait = 200,
        }
    },
    ["selfiesit"] = { -- Emote by WhiskerValeMods
        "mouse@female_sitting_selfie",
        "female_sitting_selfie_clip",
        "Selfie Sitting",
        AnimationOptions = {
            Prop = 'prop_phone_ing',
            PropBone = 57005,
            PropPlacement = {
                0.1380,
                0.0300,
                -0.0430,
                -111.0946,
                -117.8069,
                11.7386
            },
            SecondProp = 'apa_mp_h_stn_chairarm_23',
            SecondPropBone = 0,
            SecondPropPlacement = {
                -0.0100,
                -0.0800,
                -0.6800,
                -180.0000,
                -180.0000,
                10.0000
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["selfiefu"] = { -- Struggleville
        "anim@fuck_you_selfie",
        "fuck_you_selfie_clip",
        "Selfie Middle Finger",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropBone = 28422,
            PropPlacement = {
                0.1200,
                0.0220,
                -0.0210,
                98.6822,
                -4.9809,
                109.6216
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['camera'],
            PtfxWait = 200,
        }
    },
    ["selfiethot"] = { -- Struggleville
        "anim@sitting_thot",
        "sitting_thot_clip",
        "Selfie Thot Instagram",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropBone = 28422,
            PropPlacement = {
                0.1030,
                0.0440,
                -0.0270,
                -160.2802,
                -99.4080,
                -3.4048
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['camera'],
            PtfxWait = 200,
        }
    },
    ["selfiefloor"] = { -- Custom Emote By Struggleville
        "anim@selfie_floor_cute",
        "floor_cute_clip",
        "Selfie Floor Instagram",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropBone = 60309,
            PropPlacement = {
                0.0930,
                0.0230,
                0.0260,
                -158.8271,
                -82.9040,
                -18.7472
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['camera'],
            PtfxWait = 200,
        }
    },
    ["sittv"] = {
        "anim@heists@heist_safehouse_intro@variations@male@tv",
        "tv_part_one_loop",
        "Sit TV",
        AnimationOptions = {
            Prop = "v_res_tre_remote",
            PropBone = 57005,
            PropPlacement = {
                0.0990,
                0.0170,
                -0.0300,
                -64.760,
                -109.544,
                18.717
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sitchairf"] = { -- Emote by WhiskerValeMods
        "mouse@femalearmchair",
        "female_armchair_clip_01",
        "Sit Chair - Armchair",
        AnimationOptions = {
            Prop = "p_armchair_01_s",
            PropBone = 11816,
            PropPlacement = {
                0.5320,
                -0.3310,
                0.2000,
                -90.0000,
                -180.0000,
                -40.9999
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sitchairf2"] = { -- Custom Emote by WhiskerValeMods
        "mouse@female_sitting_folded",
        "female_sitting_folded_clip",
        "Sit Chair - Arms Folded",
        AnimationOptions = {
            Prop = "ba_prop_battle_club_chair_03",
            PropBone = 0,
            PropPlacement = { 0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                -170.0000
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sitchairf3"] = { -- Custom Emote by WhiskerValeMods
        "mouse@female_sitting_forward",
        "female_sitting_forward_clip",
        "Sit Chair - Leaning Forward",
        AnimationOptions = {
            Prop = "ba_prop_battle_club_chair_03",
            PropBone = 0,
            PropPlacement = { 0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                -170.0000
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sitchairf4"] = { -- Custom Emote by WhiskerValeMods
        "mouse@female_smart_sitting",
        "female_smart_sitting_clip",
        "Sit Chair - Smart",
        AnimationOptions = {
            Prop = "ba_prop_battle_club_chair_03",
            PropBone = 0,
            PropPlacement = { 0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                -170.0000
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sitchairf5"] = { -- Custom Emote By WhiskerValeMods
        "mouse@female_smart_sitting_crossed",
        "female_smart_sitting_crossed_clip",
        "Sit Chair - Legs Crossed",
        AnimationOptions = {
            Prop = "ba_prop_battle_club_chair_03",
            PropBone = 0,
            PropPlacement = { 0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                -170.0000
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sitchairf6"] = { -- Custom Emote By WhiskerValeMods
        "mouse@female_sitting_laptop",
        "female_sitting_laptop_clip",
        "Sit Chair - Laptop",
        AnimationOptions = {
            Prop = 'ba_prop_club_laptop_dj_02',
            PropBone = 57005,
            PropPlacement = {
                0.0860,
                -0.1370,
                -0.1750,
                -79.9999,
                -90.0000,
                0.0000
            },
            SecondProp = 'ba_prop_battle_club_chair_02',
            SecondPropBone = 0,
            SecondPropPlacement = {
                -0.0400,
                -0.1900,
                0.0000,
                -180.0000,
                -180.0000,
                9.0999
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sitchairf7"] = { -- Custom Emote By Emote by WhiskerValeMods
        "mouse@female_sitting_tablet",
        "female_sitting_tablet_clip",
        "Sit Chair - Tablet",
        AnimationOptions = {
            Prop = 'hei_prop_dlc_tablet',
            PropBone = 28422,
            PropPlacement = {
                0.0870,
                0.1030,
                -0.1240,
                144.3540,
                157.8527,
                -4.6318
            },
            SecondProp = 'ba_prop_battle_club_chair_02',
            SecondPropBone = 0,
            SecondPropPlacement = {
                0.0100,
                -0.0800,
                0.0200,
                150.0000,
                -180.0000,
                10.0000
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["sitchairf8"] = { -- Custom Emote By Emote by WhiskerValeMods
        "mouse@female_sitting_tablet",
        "female_sitting_tablet_clip",
        "Sit Chair - Book",
        AnimationOptions = {
            Prop = 'v_ilev_mp_bedsidebook',
            PropBone = 28422,
            PropPlacement = {
                0.1300,
                0.1100,
                -0.1200,
                120.3356,
                -15.9891,
                26.1497
            },
            SecondProp = 'ba_prop_battle_club_chair_02',
            SecondPropBone = 0,
            SecondPropPlacement = {
                0.0100,
                -0.0800,
                0.0200,
                150.0000,
                -180.0000,
                10.0000
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["dig"] = {
        "random@burial",
        "a_burial",
        "Dig",
        AnimationOptions = {
            Prop = "prop_tool_shovel",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.24,
                0,
                0,
                0.0,
                0.0
            },
            SecondProp = 'prop_ld_shovel_dirt',
            SecondPropBone = 28422,
            SecondPropPlacement = {
                0.0,
                0.0,
                0.24,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["bongos"] = {
        "amb@world_human_musician@bongos@male@base",
        "base",
        "Bongo Drums",
        AnimationOptions = {
            Prop = "prop_bongos_01",
            PropBone = 60309,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["medbag"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Medic Bag",
        AnimationOptions = {
            Prop = "xm_prop_x17_bag_med_01a",
            PropBone = 57005,
            PropPlacement = {
                0.3900,
                -0.0600,
                -0.0600,
                -100.00,
                -180.00,
                -78.00
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["dufbag"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Duffel Bag",
        AnimationOptions = {
            Prop = "bkr_prop_duffel_bag_01a",
            PropBone = 28422,
            PropPlacement = {
                0.2600,
                0.0400,
                0.00,
                90.00,
                0.00,
                -78.99
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["shopbag"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Shopping Bag",
        AnimationOptions = {
            Prop = "vw_prop_casino_shopping_bag_01a",
            PropBone = 28422,
            PropPlacement = {
                0.24,
                0.03,
                -0.04,
                0.00,
                -90.00,
                10.00
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["shopbag2"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Shopping Bag 2",
        AnimationOptions = {
            Prop = "prop_shopping_bags02",
            PropBone = 28422,
            PropPlacement = {
                0.05,
                0.02,
                0.00,
                178.80,
                91.19,
                9.97
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["shopbag3"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Shopping Bag 3",
        AnimationOptions = {
            Prop = "prop_cs_shopping_bag",
            PropBone = 28422,
            PropPlacement = {
                0.24,
                0.03,
                -0.04,
                0.00,
                -90.00,
                10.00
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["idcard"] = {
        "paper_1_rcm_alt1-8",
        "player_one_dual-8",
        "ID Card 1",
        AnimationOptions = {
            Prop = "prop_franklin_dl",
            PropBone = 57005,
            PropPlacement = {
                0.1000,
                0.0200,
                -0.0300,
                -90.000,
                170.000,
                78.999
            },
            EmoteLoop = false,
            EmoteMoving = true,
        }
    },
    ["idcardb"] = {
        "paper_1_rcm_alt1-8",
        "player_one_dual-8",
        "ID Card 2 - FIB",
        AnimationOptions = {
            Prop = "prop_fib_badge",
            PropBone = 28422,
            PropPlacement = {
                0.0600,
                0.0210,
                -0.0400,
                -90.00,
                -180.00,
                78.999
            },
            EmoteLoop = false,
            EmoteMoving = true,
        }
    },
    ["idcardc"] = {
        "paper_1_rcm_alt1-8",
        "player_one_dual-8",
        "ID Card 3",
        AnimationOptions = {
            Prop = "prop_michael_sec_id",
            PropBone = 28422,
            PropPlacement = {
                0.1000,
                0.0200,
                -0.0300,
                -90.00,
                -180.00,
                78.999
            },
            EmoteLoop = false,
            EmoteMoving = true,
        }
    },
    ["idcardd"] = {
        "paper_1_rcm_alt1-8",
        "player_one_dual-8",
        "ID Card 4",
        AnimationOptions = {
            Prop = "prop_trev_sec_id",
            PropBone = 28422,
            PropPlacement = {
                0.1000,
                0.0200,
                -0.0300,
                -90.00,
                -180.00,
                78.999
            },
            EmoteLoop = false,
            EmoteMoving = true,
        }
    },
    ["idcarde"] = {
        "paper_1_rcm_alt1-8",
        "player_one_dual-8",
        "ID Card 5",
        AnimationOptions = {
            Prop = "p_ld_id_card_002",
            PropBone = 28422,
            PropPlacement = {
                0.1000,
                0.0200,
                -0.0300,
                -90.00,
                -180.00,
                78.999
            },
            EmoteLoop = false,
            EmoteMoving = true,
        }
    },
    ["idcardf"] = {
        "paper_1_rcm_alt1-8",
        "player_one_dual-8",
        "ID Card 6",
        AnimationOptions = {
            Prop = "prop_cs_r_business_card",
            PropBone = 28422,
            PropPlacement = {
                0.1000,
                0.0200,
                -0.0300,
                -90.00,
                -180.00,
                78.999
            },
            EmoteLoop = false,
            EmoteMoving = true,
        }
    },
    ["idcardg"] = {
        "paper_1_rcm_alt1-8",
        "player_one_dual-8",
        "ID Card 7",
        AnimationOptions = {
            Prop = "prop_michael_sec_id",
            PropBone = 28422,
            PropPlacement = {
                0.1000,
                0.0200,
                -0.0300,
                -90.00,
                -180.00,
                78.999
            },
            EmoteLoop = false,
            EmoteMoving = true,
        }
    },
    ["idcardh"] = {
        "paper_1_rcm_alt1-8",
        "player_one_dual-8",
        "ID Card 8",
        AnimationOptions = {
            Prop = "prop_cop_badge",
            PropBone = 28422,
            PropPlacement = {
                0.0800,
                -0.0120,
                -0.0600,
                -90.00,
                180.00,
                69.99
            },
            EmoteLoop = false,
            EmoteMoving = true,
        }
    },
    ["phone"] = {
        "cellphone@",
        "cellphone_text_read_base",
        "SMS",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["sms"] = {
        "cellphone@",
        "cellphone_text_read_base",
        "SMS",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["sms2"] = {
        "cellphone@female",
        "cellphone_text_read_base",
        "SMS 2",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropBone = 28422,
            PropPlacement = {
                0.00,
                0.00,
                0.0301,
                0.000,
                00.00,
                00.00
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["sms3"] = {
        "cellphone@female",
        "cellphone_email_read_base",
        "SMS 3",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropBone = 28422,
            PropPlacement = {
                -0.0190,
                -0.0240,
                0.0300,
                18.99,
                -72.07,
                6.39
            },
            EmoteLoop = false,
            EmoteMoving = true,
        }
    },
    ["sms4"] = {
        "cellphone@female",
        "cellphone_text_read_base_cover_low",
        "SMS 4",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropBone = 28422,
            PropPlacement = {
                -0.0190,
                -0.0250,
                0.0400,
                19.17,
                -78.50,
                14.97
            },
            EmoteLoop = false,
            EmoteMoving = true,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['camera'],
            PtfxWait = 200,
        }
    },
    ["sms5"] = {
        "amb@code_human_wander_texting_fat@male@base",
        "static",
        "SMS 6",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropBone = 28422,
            PropPlacement = {
                -0.0200,
                -0.0100,
                0.00,
                2.309,
                88.845,
                29.979
            },
            EmoteLoop = false,
            EmoteMoving = true,
        }
    },
    ["tire"] = {
        "anim@heists@box_carry@",
        "idle",
        "Tire",
        AnimationOptions = {
            Prop = "prop_wheel_tyre",
            PropBone = 60309,
            PropPlacement = {
                -0.05,
                0.16,
                0.32,
                -130.0,
                -55.0,
                150.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["golfswing"] = {
        "rcmnigel1d",
        "swing_a_mark",
        "Golf Swing",
        AnimationOptions = {
            EmoteLoop = true,
            Prop = "prop_golf_wood_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
        }
    },
    ["register"] = {
        "anim@heists@box_carry@",
        "idle",
        "Register",
        AnimationOptions = {
            Prop = "v_ret_gc_cashreg",
            PropBone = 60309,
            PropPlacement = {
                0.138,
                0.2,
                0.2,
                -50.0,
                290.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["weedbrick"] = {
        "impexp_int-0",
        "mp_m_waremech_01_dual-0",
        "Weed Brick",
        AnimationOptions = {
            Prop = "prop_weed_block_01",
            PropBone = 60309,
            PropPlacement = {
                0.1,
                0.1,
                0.05,
                0.0,
                -90.0,
                90.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["weedbrick2"] = {
        "anim@heists@box_carry@",
        "idle",
        "Weed Brick BIG",
        AnimationOptions = {
            Prop = "bkr_prop_weed_bigbag_01a",
            PropBone = 60309,
            PropPlacement = {
                0.158,
                -0.05,
                0.23,
                -50.0,
                290.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["potplant"] = {
        "anim@heists@box_carry@",
        "idle",
        "Pot Plant (Small)",
        AnimationOptions = {
            Prop = "bkr_prop_weed_01_small_01c",
            PropBone = 60309,
            PropPlacement = {
                0.138,
                -0.05,
                0.23,
                -50.0,
                290.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["potplant2"] = {
        "anim@heists@box_carry@",
        "idle",
        "Pot Plant (Medium)",
        AnimationOptions = {
            Prop = "bkr_prop_weed_01_small_01b",
            PropBone = 60309,
            PropPlacement = {
                0.138,
                -0.05,
                0.23,
                -50.0,
                290.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["potplant3"] = {
        "anim@heists@box_carry@",
        "idle",
        "Pot Plant (Large)",
        AnimationOptions = {
            Prop = "bkr_prop_weed_lrg_01b",
            PropBone = 60309,
            PropPlacement = {
                0.138,
                -0.05,
                0.23,
                -50.0,
                290.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["weedbucket"] = {
        "anim@heists@box_carry@",
        "idle",
        "Weed Bucket",
        AnimationOptions = {
            Prop = "bkr_prop_weed_bucket_open_01a",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                -0.1000,
                -0.1800,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["lawnchair"] = {
        "timetable@ron@ig_5_p3",
        "ig_5_p3_base",
        "Lawnchair",
        AnimationOptions = {
            Prop = "prop_skid_chair_02",
            PropBone = 0,
            PropPlacement = {
                0.025,
                -0.2,
                -0.1,
                45.0,
                -5.0,
                180.0
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["lawnchair2"] = {
        "timetable@reunited@ig_10",
        "base_amanda",
        "Lawnchair 2",
        AnimationOptions = {
            Prop = "prop_skid_chair_02",
            PropBone = 0,
            PropPlacement = {
                0.025,
                -0.15,
                -0.1,
                45.0,
                5.0,
                180.0
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["lawnchair3"] = {
        "timetable@ron@ig_3_couch",
        "base",
        "Lawnchair 3",
        AnimationOptions = {
            Prop = "prop_skid_chair_02",
            PropBone = 0,
            PropPlacement = {
                -0.05,
                0.0,
                -0.2,
                5.0,
                0.0,
                180.0
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["rose2"] = {
        "missheistdocksprep1hold_cellphone",
        "static",
        "Rose 2 (Male)",
        AnimationOptions = {
            Prop = "prop_single_rose",
            PropBone = 31086,
            PropPlacement = {
                -0.0140,
                0.1030,
                0.0620,
                -2.932,
                4.564,
                39.910
            },
            EmoteLoop = false,
            EmoteMoving = true,
        }
    },
    ["rose3"] = {
        "missheistdocksprep1hold_cellphone",
        "static",
        "Rose 3 (Female)",
        AnimationOptions = {
            Prop = "prop_single_rose",
            PropBone = 31086,
            PropPlacement = {
                -0.0140,
                0.1070,
                0.0720,
                0.00,
                0.00,
                2.99
            },
            EmoteLoop = false,
            EmoteMoving = true,
        }
    },
    ["cbbox"] = {
        "anim@heists@box_carry@",
        "idle",
        "Carry Beer Box",
        AnimationOptions = {
            Prop = "v_ret_ml_beerben1",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["cbbox2"] = {
        "anim@heists@box_carry@",
        "idle",
        "Carry Beer Box 2",
        AnimationOptions = {
            Prop = "v_ret_ml_beerbla1",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["cbbox3"] = {
        "anim@heists@box_carry@",
        "idle",
        "Carry Beer Box 3",
        AnimationOptions = {
            Prop = "v_ret_ml_beerjak1",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["cbbox4"] = {
        "anim@heists@box_carry@",
        "idle",
        "Carry Beer Box 4",
        AnimationOptions = {
            Prop = "v_ret_ml_beerlog1",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["cbbox5"] = {
        "anim@heists@box_carry@",
        "idle",
        "Carry Beer Box 5",
        AnimationOptions = {
            Prop = "v_ret_ml_beerpis1",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["cbbox6"] = {
        "anim@heists@box_carry@",
        "idle",
        "Carry Beer Box 6",
        AnimationOptions = {
            Prop = "prop_beer_box_01",
            PropBone = 28422,
            PropPlacement = {
                0.0200,
                -0.0600,
                -0.1200,
                -180.00,
                -180.00,
                1.99
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["gbin"] = {
        "anim@heists@box_carry@",
        "idle",
        "Garbage Bin",
        AnimationOptions = {
            Prop = "prop_bin_08open",
            PropBone = 28422,
            PropPlacement = {
                0.00,
                -0.420,
                -1.290,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["gbin2"] = {
        "anim@heists@box_carry@",
        "idle",
        "Garbage Bin 2",
        AnimationOptions = {
            Prop = "prop_cs_bin_01",
            PropBone = 28422,
            PropPlacement = {
                0.00,
                -0.420,
                -1.290,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["gbin3"] = {
        "anim@heists@box_carry@",
        "idle",
        "Garbage Bin 3",
        AnimationOptions = {
            Prop = "prop_cs_bin_03",
            PropBone = 28422,
            PropPlacement = {
                0.00,
                -0.420,
                -1.290,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["gbin4"] = {
        "anim@heists@box_carry@",
        "idle",
        "Garbage Bin 4",
        AnimationOptions = {
            Prop = "prop_bin_08a",
            PropBone = 28422,
            PropPlacement = {
                0.00,
                -0.420,
                -1.290,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["gbin5"] = {
        "anim@heists@box_carry@",
        "idle",
        "Garbage Bin 5",
        AnimationOptions = {
            Prop = "prop_bin_07d",
            PropBone = 28422,
            PropPlacement = {
                -0.0100,
                -0.2200,
                -0.8600,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ['pflag'] = {
        'rcmnigel1d',
        'base_club_shoulder',
        'Pride Flag - Rainbow',
        AnimationOptions = {
            Prop = 'prideflag1',
            PropBone = 18905,
            PropPlacement = {
                0.0800,
                -0.2090,
                0.0900,
                -82.6677,
                -141.2988,
                12.3308
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ['pflag2'] = {
        'rcmnigel1d',
        'base_club_shoulder',
        'Pride Flag 2 - LGBTQ',
        AnimationOptions = {
            Prop = 'prideflag2',
            PropBone = 18905,
            PropPlacement = {
                0.0800,
                -0.2090,
                0.0900,
                -82.6677,
                -141.2988,
                12.3308
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ['pflag3'] = {
        'rcmnigel1d',
        'base_club_shoulder',
        'Pride Flag 3 - Bisexual ',
        AnimationOptions = {
            Prop = 'prideflag3',
            PropBone = 18905,
            PropPlacement = {
                0.0800,
                -0.2090,
                0.0900,
                -82.6677,
                -141.2988,
                12.3308
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ['pflag4'] = {
        'rcmnigel1d',
        'base_club_shoulder',
        'Pride Flag 4 - Lesbian ',
        AnimationOptions = {
            Prop = 'prideflag4',
            PropBone = 18905,
            PropPlacement = {
                0.0800,
                -0.2090,
                0.0900,
                -82.6677,
                -141.2988,
                12.3308
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ['pflag5'] = {
        'rcmnigel1d',
        'base_club_shoulder',
        'Pride Flag 5 - Pansexual ',
        AnimationOptions = {
            Prop = 'prideflag5',
            PropBone = 18905,
            PropPlacement = {
                0.0800,
                -0.2090,
                0.0900,
                -82.6677,
                -141.2988,
                12.3308
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ['pflag6'] = {
        'rcmnigel1d',
        'base_club_shoulder',
        'Pride Flag 6 - Transexual ',
        AnimationOptions = {
            Prop = 'prideflag6',
            PropBone = 18905,
            PropPlacement = {
                0.0800,
                -0.2090,
                0.0900,
                -82.6677,
                -141.2988,
                12.3308
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ['pflag7'] = {
        'rcmnigel1d',
        'base_club_shoulder',
        'Pride Flag 7 - Non Binary ',
        AnimationOptions = {
            Prop = 'prideflag7',
            PropBone = 18905,
            PropPlacement = {
                0.0800,
                -0.2090,
                0.0900,
                -82.6677,
                -141.2988,
                12.3308
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ['pflag8'] = {
        'rcmnigel1d',
        'base_club_shoulder',
        'Pride Flag 8 - Asexual ',
        AnimationOptions = {
            Prop = 'prideflag8',
            PropBone = 18905,
            PropPlacement = {
                0.0800,
                -0.2090,
                0.0900,
                -82.6677,
                -141.2988,
                12.3308
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ['pflag9'] = {
        'rcmnigel1d',
        'base_club_shoulder',
        'Pride Flag 9 - Straight Ally ',
        AnimationOptions = {
            Prop = 'prideflag9',
            PropBone = 18905,
            PropPlacement = {
                0.0800,
                -0.2090,
                0.0900,
                -82.6677,
                -141.2988,
                12.3308
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ['old'] = {
        'missbigscore2aleadinout@bs_2a_2b_int',
        'lester_base_idle',
        'Old Man Walking Stick',
        AnimationOptions = {
            Prop = 'prop_cs_walking_stick',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            SecondProp = 'prop_phone_ing',
            SecondPropBone = 60309,
            SecondPropPlacement = {
                0.0800,
                0.0300,
                0.0100,
                -107.9999,
                0.0,
                -4.6003
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ['digiscan'] = {
        'weapons@misc@digi_scanner',
        'aim_med_loop',
        'Digiscan 1 ',
        AnimationOptions = {
            Prop = 'w_am_digiscanner',
            PropBone = 28422,
            PropPlacement = {
                0.0480,
                0.0780,
                0.0040,
                -81.6893,
                2.5616,
                -15.7909
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ['digiscan2'] = {
        'weapons@misc@digi_scanner',
        'aim_low_loop',
        'Digiscan 2 ',
        AnimationOptions = {
            Prop = 'w_am_digiscanner',
            PropBone = 28422,
            PropPlacement = {
                0.0480,
                0.0780,
                0.0040,
                -81.6893,
                2.5616,
                -15.7909
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ['digiscan3'] = {
        'weapons@misc@digi_scanner',
        'aim_high_loop',
        'Digiscan 3 ',
        AnimationOptions = {
            Prop = 'w_am_digiscanner',
            PropBone = 28422,
            PropPlacement = {
                0.0480,
                0.0780,
                0.0040,
                -81.6893,
                2.5616,
                -15.7909
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["cop4"] = {
        "amb@world_human_car_park_attendant@male@base",
        "base",
        "Cop 4",
        AnimationOptions = {
            Prop = "prop_parking_wand_01",
            PropBone = 57005,
            PropPlacement = {
                0.12,
                0.05,
                0.0,
                80.0,
                -20.0,
                180.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["copbeacon"] = { -- Added for compatibility
        "amb@world_human_car_park_attendant@male@base",
        "base",
        "Cop Beacon",
        AnimationOptions = {
            Prop = "prop_parking_wand_01",
            PropBone = 57005,
            PropPlacement = {
                0.12,
                0.05,
                0.0,
                80.0,
                -20.0,
                180.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["leanphone"] = {
        "amb@world_human_leaning@male@wall@back@mobile@base",
        "base",
        "Leaning With Phone",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Prop = "prop_phone_ing",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
        }
    },
    ["hump2"] = {
        "timetable@trevor@skull_loving_bear",
        "skull_loving_bear",
        "Hump (Bear)",
        AnimationOptions = {
            Prop = 'prop_mr_raspberry_01',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteMoving = false,
            EmoteLoop = true,
        },
        AdultAnimation = true
    },
    ["eat"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Eat",
        AnimationOptions = {
            Prop = 'prop_cs_burger_01',
            PropBone = 18905,
            PropPlacement = {
                0.13,
                0.05,
                0.02,
                -50.0,
                16.0,
                60.0
            },
            EmoteMoving = true,
        }
    },
    ["drink"] = {
        "mp_player_intdrink",
        "loop_bottle",
        "Drink",
        AnimationOptions =
        {
            Prop = "prop_ld_flow_bottle",
            PropBone = 18905,
            PropPlacement = {
                0.12,
                0.008,
                0.03,
                240.0,
                -60.0
            },
            EmoteMoving = true,
            EmoteLoop = true,
        }
    },
    ["surfboard"] = { -- Emote by Molly
        "beachanims@molly",
        "beachanim_surf_clip",
        "Surf Board",
        AnimationOptions =
        {
            Prop = "prop_surf_board_01",
            PropBone = 28252,
            PropPlacement = {
                0.1020,
                -0.1460,
                -0.1160,
                -85.5416,
                176.1446,
                -2.1500
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["stealtv"] = { -- Emote by Molly
        "beachanims@molly",
        "beachanim_surf_clip",
        "Steal TV",
        AnimationOptions =
        {
            Prop = "xs_prop_arena_screen_tv_01",
            PropBone = 28252,
            PropPlacement = {
                0.2600,
                0.1100,
                -0.1400,
                96.1620,
                168.9069,
                84.2402
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["beachring"] = { -- Emote by Molly
        "beachanims@free",
        "beachanim_clip",
        "Beach Floatie Thingy",
        AnimationOptions = {

            Prop = "prop_beach_ring_01",
            PropBone = 0,
            PropPlacement = {
                0.0,
                0.0,
                0.0100,
                -12.0,
                0.0,
                -2.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["cashcase"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Cash Briefcase",
        AnimationOptions = {
            Prop = "bkr_prop_biker_case_shut",
            PropBone = 28422,
            PropPlacement = {
                0.1000,
                0.0100,
                0.0040,
                0.0,
                0.0,
                -90.00
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["cashcase2"] = {
        "anim@heists@box_carry@",
        "idle",
        "Cash Briefcase 2",
        AnimationOptions = {
            Prop = "prop_cash_case_01",
            PropBone = 28422,
            PropPlacement = {
                -0.0050,
                -0.1870,
                -0.1400,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["cashcase3"] = {
        "anim@heists@box_carry@",
        "idle",
        "Cash Briefcase 3",
        AnimationOptions = {
            Prop = "prop_cash_case_02",
            PropBone = 28422,
            PropPlacement = {
                0.0050,
                -0.1170,
                -0.1400,
                14.000,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["cashcase4"] = {
        "anim@heists@box_carry@",
        "idle",
        "Cash Briefcase 4 - Diamonds",
        AnimationOptions = {
            Prop = "ch_prop_ch_security_case_01a",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                -0.0900,
                -0.1800,
                14.4000,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["airportbag"] = {
        "anim@heists@narcotics@trash",
        "idle",
        "Airport Bag",
        AnimationOptions = {
            Prop = "prop_suitcase_01c",
            PropBone = 28422,
            PropPlacement = {
                0.1100,
                -0.2100,
                -0.4300,
                -11.8999,
                0.0,
                30.0000
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["megaphone"] = { -- Custom Emote By MollyEmotes
        "molly@megaphone",
        "megaphone_clip",
        "Megaphone",
        AnimationOptions = {
            Prop = "prop_megaphone_01",
            PropBone = 28422,
            PropPlacement = {
                0.0500,
                0.0540,
                -0.0060,
                -71.8855,
                -13.0889,
                -16.0242
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["megaphone2"] = { -- Custom Emote By MollyEmotes
        "molly@megaphone2",
        "megaphone_clip",
        "Megaphone 2",
        AnimationOptions = {
            Prop = "prop_megaphone_01",
            PropBone = 28422,
            PropPlacement = {
                0.0500,
                0.0540,
                -0.0060,
                -71.8855,
                -13.0889,
                -16.0242
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["bball"] = { -- Custom Emote By Struggleville
        "anim@male_bskball_hold",
        "bskball_hold_clip",
        "Basketball Hold",
        AnimationOptions = {
            Prop = "prop_bskball_01",
            PropBone = 28422,
            PropPlacement = {
                0.0600,
                0.0400,
                -0.1200,
                0.0,
                0.0,
                40.00
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["bball2"] = { -- Custom Emote By Struggleville
        "anim@male_bskball_photo_pose",
        "photo_pose_clip",
        "Basketball Pose",
        AnimationOptions = {
            Prop = "prop_bskball_01",
            PropBone = 60309,
            PropPlacement = {
                -0.0100,
                0.0200,
                0.1300,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
     },
    ["watchstripper2"] = {
        "amb@world_human_strip_watch_stand@male_c@base",
        "base",
        "Watch Stripper 2",
        AnimationOptions = {
            Prop = "prop_beer_am",
            PropBone = 60309,
            PropPlacement = {
                0.0880,
                -0.1360,
                0.1450,
                -102.9624,
                81.7098,
                -39.2734
            },
            EmoteLoop = true,
            EmoteMoving = true,
        },
        AdultAnimation = true
    },
    ["candyapple"] = { -- Custom Prop by hollywoodiownu
        "anim@heists@humane_labs@finale@keycards", 
        "ped_a_enter_loop", 
        "Candy Apple", 
        AnimationOptions = {
    Prop = "apple_1",
    PropBone = 18905,
    PropPlacement = {
        0.12, 
        0.15,
         0.0, 
         -100.0, 
         0.0, 
         -12.0},
    EmoteLoop = true,
    EmoteMoving = true,
    }
},

}

-- Remove emotes if needed
if Config.AdultEmotesDisabled then
    for _, array in ipairs({
        "Shared",
        "Dances",
        "AnimalEmotes",
        "Emotes",
        "PropEmotes",
    }) do
        for emoteName, emoteData in pairs(DP[array]) do
            if emoteData.AdultAnimation then
                DP[array][emoteName] = nil
            end
        end
    end
end
