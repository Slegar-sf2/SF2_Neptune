
; ASM FILE data\stats\allies\stats\allystats06.asm :
; 0x1EE454..0x1EE476 : Ally stats 06
AllyStats06:    forClass  MAGE
                hpGrowth  8, 55, LINEAR
                mpGrowth  7, 42, EARLY
                attGrowth 4, 18, LINEAR
                defGrowth 4, 24, LINEAR
                agiGrowth 6, 42, LINEAR
                spellList &
                    1, FREEZE, &
                    7, FREEZE|LV2, &                   
                    24, FREEZE|LV3, &
                    37, FREEZE|LV4
                    
                forClass  WIZ
                hpGrowth  55, 93, LATE
                mpGrowth  42, 80, LINEAR
                attGrowth 18, 30, LINEAR
                defGrowth 24, 62, LINEAR
                agiGrowth 42, 83, EARLYANDLATE
                useFirstSpellList
                    
