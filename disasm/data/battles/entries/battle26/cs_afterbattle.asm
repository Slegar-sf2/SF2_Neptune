
; ASM FILE data\battles\entries\battle26\cs_afterbattle.asm :
; 0x4BCAA..0x4BE6A : Cutscene after battle 26
abcs_battle26:  textCursor 2637
                loadMapFadeIn MAP_OVERWORLD_NORTH_SOUTH_PARMECIA_JUNCTION,13,11
                loadMapEntities ce_4BE4A
                setActscriptWait ALLY_BOWIE,eas_Init
                customActscriptWait ALLY_DAWN
                 ac_motion OFF          ;   
                 ac_orientLeft          ;   
                 ac_updateSprite        ;   
                 ac_jump eas_Idle       ;   
                ac_end
                setActscriptWait ALLY_PETER,eas_Init
                setPos ALLY_PETER,17,14,RIGHT
                setActscriptWait FOLLOWER_B,eas_Init
                setPos FOLLOWER_B,18,16,UP
                setPos FOLLOWER_A,19,17,UP
                setPriority ALLY_DAWN,$0
                setPriority 128,$FFFF
                fadeInB
                entityActionsWait ALLY_PETER
                 moveDown 2
                endActions
                setFacing ALLY_PETER,RIGHT
                nextSingleText $0,ALLY_PETER ; "Is he alright?{W1}"
                nextSingleText $0,FOLLOWER_B ; "We have to save him before{N}he is possessed by an evil...{W1}"
                entityFlashWhite FOLLOWER_B,$3C
                flashScreenWhite $1E
                setCamDest 13,9
                animEntityFX 128,4
                setPos 128,18,13,DOWN
                animEntityFX 128,5
                setFacing ALLY_PETER,UP
                entityActionsWait 128
                 moveUp 3
                endActions
                customActscriptWait 128
                 ac_setSpeed 64,64      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                setActscript 128,eas_EvilGizmoCircle
                csWait 200
                setActscriptWait 128,eas_Die
                setCamDest 13,11
                customActscriptWait ALLY_DAWN
                 ac_motion OFF          ;   
                 ac_orientUp            ;   
                 ac_updateSprite        ;   
                 ac_jump eas_Idle       ;   
                ac_end
                setFacing ALLY_DAWN,DOWN
                headshake ALLY_DAWN
                nextSingleText $C0,ALLY_DAWN ; "What happened?{W2}"
                entityActionsWait ALLY_DAWN
                 moveUp 1
                endActions
                setActscriptWait ALLY_DAWN,eas_Jump
                nextSingleText $C0,ALLY_DAWN ; "Ah...I was almost possessed{N}by that devil.{W1}"
                entityActionsWait ALLY_DAWN
                 moveDown 2
                endActions
                nextSingleText $C0,ALLY_DAWN ; "Thank you.{N}How can I repay you for{N}your kindness?{W1}"
                nextText $0,FOLLOWER_B  ; "Are you OK now?  Good.{W2}"
                nextSingleText $0,FOLLOWER_B ; "May I ask you, where were{N}you going in such a wounded{N}state?{W1}"
                nextText $C0,ALLY_DAWN ; "Pacalon, my country.  We{N}are fighting against the{N}devils.{W2}"
                nextText $C0,ALLY_DAWN ; "But, no country in North{N}Parmecia has enough power{N}to resist them.{W2}"
                nextSingleText $C0,ALLY_DAWN ; "So, I was heading south to{N}find some allies.{W1}"
                entityActionsWait ALLY_PETER
                 moveUp 1
                endActions
                setFacing ALLY_PETER,RIGHT
                nextSingleText $0,ALLY_PETER ; "You don't have to go any{N}further.{W1}"
                setFacing ALLY_DAWN,LEFT
                nextSingleText $C0,ALLY_DAWN ; "Then, you're from South{N}Parmecia?{W1}"
                nextSingleText $0,FOLLOWER_B ; "Yes, Granseal.{W1}"
                setFacing ALLY_DAWN,DOWN
                nextSingleText $C0,ALLY_DAWN ; "Oh, how lucky!  Please{N}come with me to Pacalon!{W1}"
                nod ALLY_DAWN
                nextSingleText $0,ALLY_PETER ; "But, we have to go to{N}Tristan.{W1}"
                setFacing ALLY_DAWN,LEFT
                nextText $C0,ALLY_DAWN ; "Oh, please...I can't return{N}to Pacalon without allies.{W2}"
                nextText $C0,ALLY_DAWN ; "Maybe, when you're done...{W2}"
                nextSingleText $C0,ALLY_DAWN ; "OK, I'll go with you.{W1}"
                join ALLY_DAWN
                nextSingleText $0,FOLLOWER_B ; "But, you're injured{N}Mr. {NAME;19}.{W1}"
                setFacing ALLY_DAWN,DOWN
                nextSingleText $C0,ALLY_DAWN ; "No problem.  I don't know{N}why, but I'm much better.{W1}"
                setActscript ALLY_DAWN,eas_RotateRight
                csWait 40
                setActscriptWait ALLY_DAWN,eas_Jump
                setFacing ALLY_DAWN,DOWN
                setActscriptWait ALLY_DAWN,eas_Jump
                setActscriptWait ALLY_DAWN,eas_Init
                startEntity ALLY_DAWN
                nextSingleText $C0,ALLY_DAWN ; "Let's go to Pacalon.{W1}"
                addNewFollower ALLY_DAWN
                csc_end
ce_4BE4A:       mainEntity 19,16,UP
                entity 17,14,DOWN,ALLY_PETER,eas_Init
                entity 18,14,DOWN,ALLY_DAWN,eas_Init
                entity 63,63,UP,MAPSPRITE_BELIAL,eas_Init
                dc.w $FFFF
