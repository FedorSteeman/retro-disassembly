* f9dasm -out pengondsm.txt -begin 0x21fd -offset 0x2000 -end 0x3385 pengon_x330c.bin
* f9dasm: M6809/H6309 Binary/OS9/FLEX9 Disassembler V1.56
* Processed binary file pengon_x330c.bin

*****************************************************
** Used Labels                                      *
*****************************************************

M0000   EQU     COUNT1	* Start of RAM 
M0002   EQU     $0002
VALTYP  EQU     $0006	* String Flag
CBUFAD  EQU     $007E	* Program End Address 1 after a Cloadm
SW3VEC  EQU     $0100	* Software Interrupt 3 called by vector at $FFF2
SW3VE1  EQU     $0101	* Related to interrupts, called by  vectors $FFF2
SW2VEC  EQU     $0103	* Software Iterrupt 2 called by Vector at $FFF4
IRQVE1  EQU     $010D	* Related to the $A9B3 call, deals with 60Hz interrupt counter
RNDSD1  EQU     $0117	* Seed for RND function
RNDSD2  EQU     $0118	* Seed for RND function
RJOYUD  EQU     $015A	* Left joystick Up/Down
RJOYLR  EQU     $015B	* Left Joystick Left/Right
STRDSC  EQU     $01C0	* In Basic it's the String descriptor Stack
M01FF   EQU     $01FF
M02BC   EQU     $02BC
M0350   EQU     $0350
VIDRAM  EQU     $0400	* Start of Video Display 
VLIFES  EQU     $0420	* Start of displayed number of lifes 
VTITLE  EQU     $042D	* Start of displayed title  
VSCORE  EQU     $0439	* Start of displayed score
VDROW7  EQU     $04B0	* Start of seventh row of video display
VR11C6  EQU     $0505	* Row 11 and column 6 of video display
VR11C7  EQU     $0506	* Row 11 and column 7 of video display
VIDEND  EQU     $05FF	* End of Video display
VGMWIN  EQU     $0600	* Start of game window
Z060C   EQU     $060C
M0620   EQU     $0620
FATBL0  EQU     $0800
M0E02   EQU     $0E02
M0E06   EQU     $0E06
M0E0A   EQU     $0E0A
M0E0F   EQU     $0E0F
M0E14   EQU     $0E14
M0E19   EQU     $0E19
M0ED0   EQU     $0ED0
M1009   EQU     $1009
M1090   EQU     $1090
M1402   EQU     $1402
M1606   EQU     $1606
M17E0   EQU     $17E0
M1808   EQU     $1808
M1810   EQU     $1810
Z1818   EQU     $1818
M1820   EQU     $1820
M1900   EQU     $1900
M1920   EQU     $1920
M1940   EQU     $1940
M1950   EQU     $1950
M19E0   EQU     $19E0
M1A06   EQU     $1A06
M1A10   EQU     $1A10
M1A13   EQU     $1A13
M1AF0   EQU     $1AF0
M1BC0   EQU     $1BC0 *
M1BFE   EQU     $1BFE
VGWEND  EQU     $1C00	* End of game window
VIDEND  EQU     $1D00   * End of graphics screen page
Z1E0C   EQU     $1E0C
COUNT1  EQU     $2000
COUNT2  EQU     $2001
M2003   EQU     $2003
M2005   EQU     $2005
M2006   EQU     $2006
M2007   EQU     $2007
M2009   EQU     $2009
STITLE  EQU     $200A   * String: "PENGON" 
SLEVEL   EQU    $2010   * String: "SKILL LEVEL (1-5)" 
SAUTHR  EQU     $2023   * String: "BY MARKUS FOTI"
SSCORE  EQU     $2031   * String: "SCORE: "
SHISCO  EQU     $2038   * String: "HIGH SCORE: "
SCOPYR  EQU     $2044   * String: "COPYRIGHT (C) 1983 MEGASOFT"
LIFES   EQU     $205F	* Number of lifes
PENWKR  EQU     $2060	* Sprite: Pengon walk right
PENPSR  EQU     $2070	* Sprite: Pengon push right
PENWKL  EQU     $2080	* Sprite: Pengon walk left
PENPSL  EQU     $2090	* Sprite: Pengon push left
PENPSU  EQU     $20A2	* Sprite: Pengon push upwards
PENBCK  EQU     $20B6	* Sprite: Pengon back
PENFRT  EQU     $20CA	* Sprite: Pengon front
PENFT1  EQU     $20DE	* Sprite: Pengon feet lateral 1
PENFT2  EQU     $20EA	* Sprite: Pengon feet lateral 2
PENFT3  EQU     $20F6	* Sprite: Pengon feet dorsoventral 1
PENFT4  EQU     $20FE	* Sprite: Pengon feet dorsoventral 2
PENFT5  EQU     $2106	* Sprite: Pengon feet lateral 1
PENFT6  EQU     $2112	* Sprite: Pengon feet lateral 2
PENFT7  EQU     $2126	* Sprite: Pengon feet ?
ICECUB  EQU     $2142	* Sprite: ice cube
ICUBRK  EQU     $215C	* Sprite: ice cube breaking
CRYSTL  EQU     $2178	* Sprite: ice crystal
ENEMY1  EQU     $2192	* Sprite: enemy front narrow
ENEMY2  EQU     $21AE	* Sprite: enemy front wide
ENMAUL  EQU     $21B4	* Sprite: enemy mauled
M21BA   EQU     $21BA	
M21C0   EQU     $21C0
M21C6   EQU     $21C6
PENPOS   EQU     $21C8	* Pengon position 
SPRPNT   EQU     $21CA
M21CC   EQU     $21CC
M21CD   EQU     $21CD	* Sprite: Pengon upper body ... ? 
M21CF   EQU     $21CF	* 
M21D0   EQU     $21D0
M21D2   EQU     $21D2
M21D3   EQU     $21D3
M21D5   EQU     $21D5
M21D6   EQU     $21D6
M21D7   EQU     $21D7
M21D8   EQU     $21D8
M21DA   EQU     $21DA
M21DB   EQU     $21DB
M21DD   EQU     $21DD
M21DE   EQU     $21DE
M21DF   EQU     $21DF
M21E0   EQU     $21E0
M21E1   EQU     $21E1
M21E2   EQU     $21E2
M21E3   EQU     $21E3
M21E4   EQU     $21E4
M21E5   EQU     $21E5
M21E6   EQU     $21E6
M21E7   EQU     $21E7
M21E8   EQU     $21E8
M21E9   EQU     $21E9
M21EE   EQU     $21EE
M21F3   EQU     $21F3
M21F8   EQU     $21F8
M21F9   EQU     $21F9
M21FB   EQU     $21FB
Z21FD   EQU     $21FD       *subroutine pointer
Z21FF   EQU     $21FF       *subroutine pointer
M2201   EQU     $2201       * data ?
M2203   EQU     $2203       * data ?

M3386   EQU     $3386
M3387   EQU     $3387
Z3476   EQU     $3476
M358A   EQU     $358A
SKILVL  EQU     $37CA	* Skill level
Z380B   EQU     $380B
M381B   EQU     $381B
M381C   EQU     $381C
M381D   EQU     $381D
M381E   EQU     $381E
M381F   EQU     $381F
M3820   EQU     $3820
M3C66   EQU     $3C66
Z3E63   EQU     $3E63

M6060   EQU     $6060
Z6666   EQU     $6666
M6C66   EQU     $6C66
M6CCC   EQU     $6CCC
M766E   EQU     $766E
Z7E60   EQU     $7E60
M80E0   EQU     $80E0
POLCAT  EQU     $A000	* Color Basic rom poll keyboard routine
JOYIN   EQU     $A00A	* Color Basic poll joystick routine 
MA9B3   EQU     $A9B3	* Interrupt Processor (60Hz counter)
VERTL   EQU     $AAAA	* Vertical lines bit pattern
ZBF26   EQU     $BF26	* 
MCE21   EQU     $CE21
MD030   EQU     $D030
MFE40   EQU     $FE40
RBUTTN  EQU     $FF00	* PIA0 data port A: Address for Keyboard row 1 & Right Joystick Switch 1 
SNDOUT  EQU     $FF20	* PIA1 data port A: 6bit Dac address for sound output/input
VDGSET  EQU     $FF22	* PIA1 data port B: VDG Configuration 
SNDSET  EQU     $FF23	* PIA1 control port B: FIRQ Address 
MFF40   EQU     $FF40	* PIA2 bit
V0CLR   EQU     $FFC0	* Clear SAM V0 bit (Graphics mode)
V1SET   EQU     $FFC3	* Set SAM V1 bit (Graphics mode)
V2SET   EQU     $FFC5	* Set SAM V2 bit (Graphics mode)
F0CLR   EQU     $FFC6	* Clear SAM F0 bit (Display Offset) 
RESET   EQU     $FFFE	* Reset Switch 

*****************************************************
** Program's Code / Data Areas                      *
*****************************************************

        ORG     $21FD

                                                               ** game subroutine **
GMINIT  JSR     PMODE4      * (re)set screen in pmode 4                                           *2205: BD 27 87       
        CLR     M2009       * clear ??? variable                                                  *2208: 7F 20 09       
        LDA     #$01        * set value 1                                                         *220B: 86 01          
        STA     M2AF8       * store 1 at $2AF8                                                    *220D: B7 2A F8       
        CLR     M2D29       * clear byte at $2D29                                                 *2210: 7F 2D 29       
        INC     M2D29       * increment byte at $2D29                                             *2213: 7C 2D 29       
        LDY     #SCORE      * point at score data                                                 *2216: 10 8E 2E 63    
LOOP01  CLR     ,Y+         * clear score                                                         *221A: 6F A0          
        CMPY    #HISCOR     * check for end (= beginning of hi score)                             *221C: 10 8C 2E 6B    
        BNE     LOOP01      * loop until done                                                     *2220: 26 F8          
        LDB     #$00        * set 0                                                               *2222: C6 00          
        TFR     B,DP        * set Direct Page to zero                                             *2224: 1F 9B          
        LDB     #$03        * set 3                                                               *2226: C6 03          
        STB     LIFES       * set number of lifes to three                                        *2228: F7 20 5F       
GMSTRT  LDB     #$64        * set 100                                                             *222B: C6 64          
LOOP02  JSR     PAUSE       * pause of 100 * x cycles                                             *222D: BD 28 61       
        DECB                * decrement counter                                                   *2230: 5A             
        BNE     LOOP02      * repeat 100 times                                                    *2231: 26 FA          
        LDB     #$07        * set 7                                                               *2233: C6 07          
        STB     M21D2       * store 7 in $21D2                                                    *2235: F7 21 D2       
        TST     SKILVL      * if SKILVL = 0                                                       *2238: 7D 37 CA       
        BEQ     SKIP01      * then skip to $2242                                                  *223B: 27 05          
        DEC     SKILVL      * else decrease SKILVL                                                *223D: 7A 37 CA       
        BRA     SKIP02      * and skip to $2248                                                   *2240: 20 06          
SKIP01  CLR     M2AF8       * otherwise, clear M2AF8                                              *2242: 7F 2A F8       
        INC     SKILVL      * and increment SKILVL                                                *2245: 7C 37 CA       
SKIP02  LDD     #VDROW7     * set &h04B0                                                          *2248: CC 04 B0       
        STD     M2E75       * store &h04B0 in $2E75                                               *224B: FD 2E 75       
        JSR     PCLS        * clear graphics screen                                               *224E: BD 27 99       
        CLR     M21D7       * clear byte at $21D7                                                 *2251: 7F 21 D7       
        LDB     #$FF        * set 256                                                             *2254: C6 FF          
        LDY     #VSCORE     * point to $0439                                                      *2256: 10 8E 04 39    
        STY     M2007       * store $0439 at $2007                                                *225A: 10 BF 20 07    
        LDY     #SCORE      * point to data area at $2E63                                         *225E: 10 8E 2E 63    
LOOP03  LDA     ,Y+         * load data byte                                                      *2262: A6 A0          
        INCB                * increment counter                                                   *2264: 5C             
        STB     M2E74       * clear byte at $2E74                                                 *2265: F7 2E 74       
        CMPB    #$07        * if counter = 8                                                      *2268: C1 07          
        BEQ     SKIP03      * skip on                                                             *226A: 27 05          
        JSR     Z2EA6       * else jump to subroutine (doing...)                                  *226C: BD 2E A6       
        BRA     LOOP03      * and loop back                                                       *226F: 20 F1          
SKIP03  LDY     #STITLE     * point to title string                                               *2271: 10 8E 20 0A    
        LDX     #VTITLE     * point to title screen position                                      *2275: 8E 04 2D       
        LDB     #$06        * set 6                                                               *2278: C6 06          
        STB     <$00        * store counter of 6 at COUNT1                                        *227A: D7 00          
LOOP04  LDA     ,Y+         * read data                                                           *227C: A6 A0          
        SUBA    #$20        * subtract 32 (one graphics row!)                                     *227E: 80 20          
        JSR     Z3121       * jump to subroutine (doing...)                                       *2280: BD 31 21       
        INX                 * increment X                                                         *2283: 30 01          
        DEC     <$00        * decrement counter at $DP00                                          *2285: 0A 00          
        BNE     LOOP04      * loop 6 times                                                        *2287: 26 F3          
        LDX     #PENFT1     * point to data area at $20DE                                         *2289: 8E 20 DE       
        STX     SPRPNT      * store pointer at $21CA                                              *228C: BF 21 CA       
        JSR     Z27A7       * jump to subroutine (doing...)                                       *228F: BD 27 A7       
        LDX     #M0ED0      * point to data area at $0ED0                                         *2292: 8E 0E D0       
        STX     PENPOS      * store pointer at $21C8                                              *2295: BF 21 C8       
        STX     M21C6       * store pointer at $21C6                                              *2298: BF 21 C6       
        LDA     #$1A        * set 1A (= 26)                                                       *229B: 86 1A          
        STA     M2204       * store 26 at $2204                                                   *229D: B7 22 04       
        JSR     Z2AA0       * jump to subroutine (doing...)                                       *22A0: BD 2A A0       
        STA     M21DE       * store 26 at $21DE                                                   *22A3: B7 21 DE       
        STB     M21DD       * store [contents of B] at $21DD                                      *22A6: F7 21 DD       
        LDY     #M21E9      * point to data area between $21E9 and $2204                          *22A9: 10 8E 21 E9    
LOOP05  CLR     ,Y+         * clear data byte                                                     *22AD: 6F A0          
        CMPY    #M2204      * check for end                                                       *22AF: 10 8C 22 04    
        BCS     LOOP05      * loop until done                                                     *22B3: 25 F8          
        LDB     #$08        * set 8 in B                                                          *22B5: C6 08          
        STB     M21CC       * store 8 at $21CC                                                    *22B7: F7 21 CC       
        LDB     #$06        * set 6 in B                                                          *22BA: C6 06          
        STB     M21CF       * store 6 at $21CF                                                    *22BC: F7 21 CF       
        LDX     #PENWKR     * point to sprite: pengon walk right                                  *22BF: 8E 20 60       
        STX     M21CD       * store pointer at $21CD                                              *22C2: BF 21 CD       
        LDX     #PENFT1     * point to sprite: pengon feet walk right                             *22C5: 8E 20 DE       
        STX     SPRPNT      * store pointer at $21CA                                              *22C8: BF 21 CA       
        INC     M21D6       * increment value at $21D6                                            *22CB: 7C 21 D6       
        CLR     M21D8       * clear 21D8                                                          *22CE: 7F 21 D8       
        CLR     M21DA       * clear 21DA                                                          *22D1: 7F 21 DA       
        CLR     M381D       * clear 381D                                                          *22D4: 7F 38 1D       
        CLR     M2203       * clear 2203                                                          *22D7: 7F 22 03       
        LDA     #$3C        * set 3C (= 60 & 111100)                                              *22DA: 86 3C          
        STA     SNDSET      * store at $FF23 (PIA control register B): enable sound               *22DC: B7 FF 23       
        JSR     Z2ACA       * jump to some subroutine doing something with registers A & B        *22DF: BD 2A CA       
        STA     M21E4       * store resulting byte at $21E4                                       *22E2: B7 21 E4       
        STB     M21DF       * store resulting byte at $21DF                                       *22E5: F7 21 DF       
        JSR     Z2ACA       * jump to some subroutine                                             *22E8: BD 2A CA       
        STA     M21E5       * store resulting byte at $21E5                                       *22EB: B7 21 E5       
        STB     M21E0       * store resulting byte at $21E0                                       *22EE: F7 21 E0       
        JSR     Z2ACA       * jump to some subroutine                                             *22F1: BD 2A CA       
        STA     M21E6       * store resulting byte at $21E6                                       *22F4: B7 21 E6       
        STB     M21E1       * store resulting byte at $21E1                                       *22F7: F7 21 E1       
        JSR     Z2ACA       * jump to some subroutine                                             *22FA: BD 2A CA       
        STA     M21E7       * store resulting byte at $21E7                                       *22FD: B7 21 E7       
        STB     M21E2       * store resulting byte at $21E2                                       *2300: F7 21 E2       
        JSR     Z2ACA       * jump to some subroutine                                             *2303: BD 2A CA       
        STA     M21E8       * store resulting byte at $21E8                                       *2306: B7 21 E8       
        STB     M21E3       * store resulting byte at $21E3                                       *2309: F7 21 E3       
        LDB     #$03        * set 3                                                               *230C: C6 03          
        STB     <$0A        * store byte at $DP0A                                                 *230E: D7 0A          
        JSR     Z2ECA       * jump to some subroutine                                             *2310: BD 2E CA       
        CLR     M2006       * clear byte at $2006                                                 *2313: 7F 20 06       
        LDX     #VLIFES     * point to screen position to draw number of remaining pengon lifes   *2316: 8E 04 20       
        LDY     #PENFRT     * point to pengon sprite (front)                                      *2319: 10 8E 20 CA    
        LDB     LIFES       * get number of lifes                                                 *231D: F6 20 5F       
        STB     <$01        * store nr of lifes in counter at M2001                               *2320: D7 01          
LOOP06  LDB     #$07        * acc. 7                                                              *2322: C6 07          
        STB     <$00        * store 7 at $DP00 (=???)                                             *2324: D7 00          
        JSR     DRWSPR      * draw sprite subroutine                                              *2326: BD 28 52       
        LEAX    $02,X       * point 2 bytes further                                               *2329: 30 02          
        DEC     <$01        * decrease counter at M2001                                           *232B: 0A 01          
        BNE     LOOP06      * loop until done                                                     *232D: 26 F3          
                            *** game control ***                                                                                        
                            ** pause routine **                                                                                         
GMCTRL  JSR     [POLCAT]    * poll keyboard                                                       *232F: AD 9F A0 00    
        CMPA    #$50        * check whether 'P' is pressed                                       *2333: 81 50          
        BNE     JOYCHK      * if not, skip on                                                     *2335: 26 08          
LPAUSE  JSR     [POLCAT]    * poll keyboard                                                       *2337: AD 9F A0 00    
        CMPA    #$50        * check whether 'P' is still pressed                                       *233B: 81 50          
        BNE     LPAUSE      * if not, loop (creating a pause until 'P' is pressed again)                                                
JOYCHK  JSR     [JOYIN]     * poll joystick                                                       *233F: AD 9F A0 0A    
        COM     COUNT1      * reverse bit pattern of byte at $2000 (does ???)                     *2343: 73 20 00       
        LDA     RJOYUD      * get joystick up-down value                                          *2346: B6 01 5A       
        LDX     PENPOS       * point to pengon position                               *2349: BE 21 C8       
        CMPA    #$3F        * check whether joystick is pointing downwards                        *234C: 81 3F          
        BNE     JOYCUP      * if not, skip on, else do collision detection:                               *234E: 26 50          
	TST     $02,X       * check byte to the right of pengon
        LBNE    Z248F       * if not zero, jump to ???
        TST     $0102,X     * check byte below pengon
        LBNE    Z248F       * if not zero, jump to ???
        INX                 * increment X pointer                                                 *235E: 30 01          
        TFR     X,D         * move pointer value to D accumulator                                 *2360: 1F 10          
        ADDB    #$01        * increment least significant byte                                    *2362: CB 01          
        BITB    #$1F        * check whether...                                                    *2364: C5 1F          
        LBEQ    Z248F       * if not jump to ???                       *2366: 10 27 01 25    
        STX     PENPOS       * store pengon's position at $21C8 (=???)                                          *236A: BF 21 C8       
        INC     M21DD       * increment value at $21DD (=???)                                     *236D: 7C 21 DD       
        LDX     #PENWKR     * point to data for Pengon walking right                              *2370: 8E 20 60       
        STX     M21CD       * store pointer at $21CD (=???)                                       *2373: BF 21 CD       
        LDD     #$0100	* load 256                                          *2376: CC 01 00       
        STD     M21D0       * store 256 at $21D0 (=???)                                        *2379: FD 21 D0       
        LDB     #$06        * load 6                                                              *237C: C6 06          
        STB     M21CF       * store 6 at $21CF (=???)                                             *237E: F7 21 CF       
        INC     M21D6       * increment value at $21D6  (=???)                                    *2381: 7C 21 D6       
        LDB     #$08        * load 8                                                              *2384: C6 08          
        STB     M21CC       * store 8 at $21CC (=???)                                             *2386: F7 21 CC       
        TST     M21D5       * test value at $21D5 (=???)                                          *2389: 7D 21 D5       
        BEQ     SKIP06      * skip on if zero                                                     *238C: 27 09          
        LDX     #PENFT1     * point to data for pengon's feet 1                                   *238E: 8E 20 DE       
        STX     SPRPNT       * store pointer at $21CA (= pengon position ???)                      *2391: BF 21 CA       
        JMP     Z248F       * jump to ???	                                 *2394: 7E 24 8F       
SKIP06  LDX     #PENFT2     * point to data for pengon's feet 2                                   *2397: 8E 20 EA       
        STX     SPRPNT       * store pointer at $21CA (=???)                                       *239A: BF 21 CA       
        JMP     Z248F       * jump to ????                                  *239D: 7E 24 8F       
JOYCUP  CMPA    #$00        * check whether joystick is pointing upwards                          *23A0: 81 00          
        BNE     SKIP07      * if not, skip on, else do collision detection:                                                     *23A2: 26 48          
        TST     -$01,X      * check value left of pengon position                                 *23A4: 6D 1F          
        LBNE    Z248F       * if not empty, jump to mysterious routine                            *23A6: 10 26 00 E5    
        TST     $00FF,X     * test                                                                *23AA: 6D 89 00 FF    
        LBNE    Z248F       '.&..'                                                                *23AE: 10 26 00 DD    
        TFR     X,D         '..'                                                                  *23B2: 1F 10          
        BITB    #$1F        '..'                                                                  *23B4: C5 1F          
        LBEQ    Z248F       '.'..'                                                                *23B6: 10 27 00 D5    
        DEX                 '0.'                                                                  *23BA: 30 1F          
        DEC     M21DD       'z!.'                                                                 *23BC: 7A 21 DD       
        STX     PENPOS       '.!.'                                                                 *23BF: BF 21 C8       
        LDX     #PENWKL     '. .'                                                                 *23C2: 8E 20 80       
        STX     M21CD       '.!.'                                                                 *23C5: BF 21 CD       
        INC     M21D6       '|!.'                                                                 *23C8: 7C 21 D6       
        LDA     #$08        '..'                                                                  *23CB: 86 08          
        STA     M21CC       '.!.'                                                                 *23CD: B7 21 CC       
        LDA     #$06        '..'                                                                  *23D0: 86 06          
        STA     M21CF       '.!.'                                                                 *23D2: B7 21 CF       
        TST     M21D5       '}!.'                                                                 *23D5: 7D 21 D5       
        BEQ     Z23E3       ''.'                                                                  *23D8: 27 09          
        LDX     #PENFT5     '.!.'                                                                 *23DA: 8E 21 06       
        STX     SPRPNT       '.!.'                                                                 *23DD: BF 21 CA       
        JMP     Z248F       '~$.'                                                                 *23E0: 7E 24 8F       
Z23E3   LDX     #PENFT6     '.!.'                                                                 *23E3: 8E 21 12       
        STX     SPRPNT       '.!.'                                                                 *23E6: BF 21 CA       
        JMP     Z248F       '~$.'                                                                 *23E9: 7E 24 8F       
SKIP07  LDA     RJOYLR      * get joystick left-right value                                       *23EC: B6 01 5B       
        CMPA    #$00        * check whether joystick is pointing left                             *23EF: 81 00          
        BNE     SKIP08      * if not, skip on...                                                  *23F1: 26 59          
        TST     -$80,X      *                                                                     *23F3: 6D 88 80       
        LBNE    Z248F       '.&..'                                                                *23F6: 10 26 00 95    
        TST     -$7F,X      'm..'                                                                 *23FA: 6D 88 81       
        LBNE    Z248F       '.&..'                                                                *23FD: 10 26 00 8E    
        LEAX    -$00E0,X    '0.. '                                                                *2401: 30 89 FF 20    
        CMPX    #VIDEND     '...'                                                                 *2405: 8C 05 FF       
        LBLS    Z248F       '.#..'                                                                *2408: 10 23 00 83    
        DEC     M21DE       'z!.'                                                                 *240C: 7A 21 DE       
        DEC     M21DE       'z!.'                                                                 *240F: 7A 21 DE       
        DEC     M21DE       'z!.'                                                                 *2412: 7A 21 DE       
        DEC     M21DE       'z!.'                                                                 *2415: 7A 21 DE       
        DEC     M21DE       'z!.'                                                                 *2418: 7A 21 DE       
        DEC     M21DE       'z!.'                                                                 *241B: 7A 21 DE       
        DEC     M21DE       'z!.'                                                                 *241E: 7A 21 DE       
        STX     PENPOS       '.!.'                                                                 *2421: BF 21 C8       
        LDB     #$0A        '..'                                                                  *2424: C6 0A          
        STB     M21CC       '.!.'                                                                 *2426: F7 21 CC       
        LDB     #$04        '..'                                                                  *2429: C6 04          
        STB     M21CF       '.!.'                                                                 *242B: F7 21 CF       
        LDX     #PENBCK     '. .'                                                                 *242E: 8E 20 B6       
        STX     M21CD       '.!.'                                                                 *2431: BF 21 CD       
Z2434   INC     M21D6       '|!.'                                                                 *2434: 7C 21 D6       
        TST     M21D5       '}!.'                                                                 *2437: 7D 21 D5       
        BEQ     Z2444       ''.'                                                                  *243A: 27 08          
        LDX     #PENFT3     '. .'                                                                 *243C: 8E 20 F6       
        STX     SPRPNT       '.!.'                                                                 *243F: BF 21 CA       
        BRA     Z248F       ' K'                                                                  *2442: 20 4B          
Z2444   LDX     #PENFT4     '. .'                                                                 *2444: 8E 20 FE       
        STX     SPRPNT       '.!.'                                                                 *2447: BF 21 CA       
        BRA     Z248F       ' C'                                                                  *244A: 20 43          
SKIP08  CMPA    #$3F        * check whether joystick is pointing right                            *244C: 81 3F          
        BNE     Z248F       * skip on if not...                                                   *244E: 26 3F          
        TST     $0200,X     'm...'                                                                *2450: 6D 89 02 00    
        BNE     Z248F       '&9'                                                                  *2454: 26 39          
        TST     $0201,X     'm...'                                                                *2456: 6D 89 02 01    
        BNE     Z248F       '&3'                                                                  *245A: 26 33          
        LEAX    $00E0,X     '0...'                                                                *245C: 30 89 00 E0    
        CMPX    #M19E0      '...'                                                                 *2460: 8C 19 E0       
        BCC     Z248F       '$*'                                                                  *2463: 24 2A          
        INC     M21DE       '|!.'                                                                 *2465: 7C 21 DE       
        INC     M21DE       '|!.'                                                                 *2468: 7C 21 DE       
        INC     M21DE       '|!.'                                                                 *246B: 7C 21 DE       
        INC     M21DE       '|!.'                                                                 *246E: 7C 21 DE       
        INC     M21DE       '|!.'                                                                 *2471: 7C 21 DE       
        INC     M21DE       '|!.'                                                                 *2474: 7C 21 DE       
        INC     M21DE       '|!.'                                                                 *2477: 7C 21 DE       
        STX     PENPOS       '.!.'                                                                 *247A: BF 21 C8       
        LDX     #PENFRT     '. .'                                                                 *247D: 8E 20 CA       
        STX     M21CD       '.!.'                                                                 *2480: BF 21 CD       
        LDB     #$0A        '..'                                                                  *2483: C6 0A          
        STB     M21CC       '.!.'                                                                 *2485: F7 21 CC       
        LDB     #$04        '..'                                                                  *2488: C6 04          
        STB     M21CF       '.!.'                                                                 *248A: F7 21 CF       
        BRA     Z2434       ' .'                                                                  *248D: 20 A5          
                            ** move pengon routine **  
Z248F   JSR     Z2890       * this is where a lot of branches & jumps lead to...                  *248F: BD 28 90       
        TST     M21D6       * check whether $21D6 is zero                                         *2492: 7D 21 D6       
        BEQ     SKIP10      * skip on if it is                                                    *2495: 27 34         
        LDX     M21C6       * else point to $21C6                                                 *2497: BE 21 C6       
        LDB     #$0E        * load B with row count of 14                                         *249A: C6 0E          
        JSR     ERASPR      * Erase sprite                                                        *249C: BD 28 78       
        COM     M21D5       * Invert ?mystery byte                                                *249F: 73 21 D5       
        LDX     PENPOS      * Get Pengon position
        STX     M21C6       * Savekeep it
        LDY     M21CD       * Point to pengon upper body sprite                                   *24A8: 10 BE 21 CD    
        LDB     M21CC       * Get sprite row counter                                              *24AC: F6 21 CC       
        STB     <$00        * Store sprite row counter                                            *24AF: D7 00          
        JSR     DRWSPR      * draw sprite                                                         *24B1: BD 28 52       
        LDD     PENPOS      * Get pengon position                                                 *24B4: FC 21 C8       
        ADDD    M21D0       * Add the contents of ??? to position                                 *24B7: F3 21 D0       
        TFR     D,X         * point to new position                                               *24BA: 1F 01          
        LDB     M21CF       * load contents of ???                                                *24BC: F6 21 CF       
        STB     <$00        * store them in ???                                                   *24BF: D7 00          
        LDY     SPRPNT      * point to sprite data                                                *24C1: 10 BE 21 CA    
        JSR     DRWSPR      * draw sprite                                                         *24C5: BD 28 52       
        CLR     M21D6       * clear ??? variable                                                  *24C8: 7F 21 D6       
SKIP10	TST     M21DA      *                                                                      *24CB: 7D 21 DA       
        LBEQ    Z26E6       '.'..'                                                                *24CE: 10 27 02 14    
        LDA     M381D       '.8.'                                                                 *24D2: B6 38 1D       
        ADDA    #$05        '..'                                                                  *24D5: 8B 05          
        STA     M381D       '.8.'                                                                 *24D7: B7 38 1D       
        LDX     M21D8       '.!.'                                                                 *24DA: BE 21 D8       
        LDA     M21DA       '.!.'                                                                 *24DD: B6 21 DA       
        CMPA    #$FF        '..'                                                                  *24E0: 81 FF          
        BEQ     Z2517       ''3'                                                                  *24E2: 27 33          
        LDY     #ICECUB     * point to ice cube sprite                                            *24E4: 10 8E 21 42    
        LDB     #$0C        '..'                                                                  *24E8: C6 0C          
        STB     <$00        '..'                                                                  *24EA: D7 00          
        JSR     DRWSPR      '.(R'                                                                 *24EC: BD 28 52       
        JSR     Z286D       '.(m'                                                                 *24EF: BD 28 6D       
        BITA    #$01        '..'                                                                  *24F2: 85 01          
        LBNE    Z26E6       '.&..'                                                                *24F4: 10 26 01 EE    
        LDA     #$05        '..'                                                                  *24F8: 86 05          
        STA     M2E73       '..s'                                                                 *24FA: B7 2E 73       
        LDA     #$06        '..'                                                                  *24FD: 86 06          
        STA     M2E74       '..t'                                                                 *24FF: B7 2E 74       
        JSR     Z2E77       '..w'                                                                 *2502: BD 2E 77       
        CLR     M21DA       '.!.'                                                                 *2505: 7F 21 DA       
        CLR     M381D       '.8.'                                                                 *2508: 7F 38 1D       
        CLR     M2203       '.".'                                                                 *250B: 7F 22 03       
        LDX     M21D8       '.!.'                                                                 *250E: BE 21 D8       
        JSR     Z284C       '.(L'                                                                 *2511: BD 28 4C       
        JMP     Z26E6       '~&.'                                                                 *2514: 7E 26 E6       
Z2517   TFR     X,Y         '..'                                                                  *2517: 1F 12          
        LDA     $00A0,X     '....'                                                                *2519: A6 89 00 A0    
        CMPA    #$55        '.U'                                                                  *251D: 81 55          
        BEQ     Z2528       ''.'                                                                  *251F: 27 07          
        CMPA    #$F5        '..'                                                                  *2521: 81 F5          
        BEQ     Z2528       ''.'                                                                  *2523: 27 03          
        JSR     Z2DDD       '.-.'                                                                 *2525: BD 2D DD       
Z2528   EXG     X,D         '..'                                                                  *2528: 1E 10          
        ADDD    M21DB       '.!.'                                                                 *252A: F3 21 DB       
        EXG     X,D         '..'                                                                  *252D: 1E 10          
        LDA     $0160,X     '...`'                                                                *252F: A6 89 01 60    
        CMPA    #$35        '.5'                                                                  *2533: 81 35          
        BEQ     Z2555       ''.'                                                                  *2535: 27 1E          
        CMPA    #$7F        '..'                                                                  *2537: 81 7F          
        BEQ     Z2555       ''.'                                                                  *2539: 27 1A          
        CMPA    #$00        '..'                                                                  *253B: 81 00          
        BEQ     Z2545       ''.'                                                                  *253D: 27 06          
        JSR     Z2DDD       '.-.'                                                                 *253F: BD 2D DD       
        JMP     Z25FE       '~%.'                                                                 *2542: 7E 25 FE       
			***************************
Z2545   LDA     $0081,X     '....'                                                                *2545: A6 89 00 81    
        CMPA    #$00        '..'                                                                  *2549: 81 00          
        LBEQ    Z25FE       '.'..'                                                                *254B: 10 27 00 AF    
        JSR     Z2DDD       '.-.'                                                                 *254F: BD 2D DD       
        JMP     Z25FE       '~%.'                                                                 *2552: 7E 25 FE       
Z2555   CLR     M21DA       '.!.'                                                                 *2555: 7F 21 DA       
        CLR     M381D       '.8.'                                                                 *2558: 7F 38 1D       
        CLR     M2203       '.".'                                                                 *255B: 7F 22 03       
        LDD     #VR11C7     '...'                                                                 *255E: CC 05 06       
        STD     M2E73       '..s'                                                                 *2561: FD 2E 73       
        JSR     Z2E77       '..w'                                                                 *2564: BD 2E 77       
        TST     M21D7       '}!.'                                                                 *2567: 7D 21 D7       
        LBEQ    Z25FB       '.'..'                                                                *256A: 10 27 00 8D    
        CLR     M21D7       '.!.'                                                                 *256E: 7F 21 D7       
        LDX     M21D8       '.!.'                                                                 *2571: BE 21 D8       
        LDA     $02,X       '..'                                                                  *2574: A6 02          
        CMPA    #$7F        '..'                                                                  *2576: 81 7F          
        BNE     Z2586       '&.'                                                                  *2578: 26 0C          
        LDA     $04,X       '..'                                                                  *257A: A6 04          
        CMPA    #$7F        '..'                                                                  *257C: 81 7F          
        BEQ     Z25CA       ''J'                                                                  *257E: 27 4A          
        LDA     -$02,X      '..'                                                                  *2580: A6 1E          
        CMPA    #$7F        '..'                                                                  *2582: 81 7F          
        BEQ     Z25CA       ''D'                                                                  *2584: 27 44          
Z2586   LDA     -$02,X      '..'                                                                  *2586: A6 1E          
        CMPA    #$7F        '..'                                                                  *2588: 81 7F          
        BNE     Z2598       '&.'                                                                  *258A: 26 0C          
        LDA     -$04,X      '..'                                                                  *258C: A6 1C          
        CMPA    #$7F        '..'                                                                  *258E: 81 7F          
        BEQ     Z25CA       ''8'                                                                  *2590: 27 38          
        LDA     $02,X       '..'                                                                  *2592: A6 02          
        CMPA    #$7F        '..'                                                                  *2594: 81 7F          
        BEQ     Z25CA       ''2'                                                                  *2596: 27 32          
Z2598   LDA     -$01C0,X    '...@'                                                                *2598: A6 89 FE 40    
        CMPA    #$7F        '..'                                                                  *259C: 81 7F          
        BNE     Z25B0       '&.'                                                                  *259E: 26 10          
        LDA     -$0380,X    '....'                                                                *25A0: A6 89 FC 80    
        CMPA    #$7F        '..'                                                                  *25A4: 81 7F          
        BEQ     Z25CA       ''"'                                                                  *25A6: 27 22          
        LDA     $01C0,X     '....'                                                                *25A8: A6 89 01 C0    
        CMPA    #$7F        '..'                                                                  *25AC: 81 7F          
        BEQ     Z25CA       ''.'                                                                  *25AE: 27 1A          
Z25B0   LDA     $01C0,X     '....'                                                                *25B0: A6 89 01 C0    
        CMPA    #$7F        '..'                                                                  *25B4: 81 7F          
        BNE     Z25FB       '&C'                                                                  *25B6: 26 43          
        LDA     $0380,X     '....'                                                                *25B8: A6 89 03 80    
        CMPA    #$7F        '..'                                                                  *25BC: 81 7F          
        BEQ     Z25CA       ''.'                                                                  *25BE: 27 0A          
        LDA     -$01C0,X    '...@'                                                                *25C0: A6 89 FE 40    
        CMPA    #$7F        '..'                                                                  *25C4: 81 7F          
        BEQ     Z25CA       ''.'                                                                  *25C6: 27 02          
        BRA     Z25FB       ' 1'                                                                  *25C8: 20 31          
Z25CA   LDA     #$0A        '..'                                                                  *25CA: 86 0A          
        STA     <$0B        '..'                                                                  *25CC: 97 0B          
Z25CE   LDA     #$E0        '..'                                                                  *25CE: 86 E0          
Z25D0   INCA                'L'                                                                   *25D0: 4C             
        PSHA                '4.'                                                                  *25D1: 34 02          
        BEQ     Z25E9       ''.'                                                                  *25D3: 27 14          
        STA     VDGSET      '.."'                                                                 *25D5: B7 FF 22       
        LDD     #M0350      '..P'                                                                 *25D8: CC 03 50       
        STD     <$00        '..'                                                                  *25DB: DD 00          
        LDD     #M80E0      '...'                                                                 *25DD: CC 80 E0       
        STD     <$03        '..'                                                                  *25E0: DD 03          
        JSR     Z2E42       '..B'                                                                 *25E2: BD 2E 42       
        PULA                '5.'                                                                  *25E5: 35 02          
        BRA     Z25D0       ' .'                                                                  *25E7: 20 E7          
Z25E9   PULA                '5.'                                                                  *25E9: 35 02          
        DEC     <$0B        '..'                                                                  *25EB: 0A 0B          
        BNE     Z25CE       '&.'                                                                  *25ED: 26 DF          
        LDD     #SW2VEC     '...'                                                                 *25EF: CC 01 03       
        STD     M2E73       '..s'                                                                 *25F2: FD 2E 73       
        JSR     Z2E77       '..w'                                                                 *25F5: BD 2E 77       
        JMP     GMSTRT      '~"+'                                                                 *25F8: 7E 22 2B       
Z25FB   JMP     Z26E6       '~&.'                                                                 *25FB: 7E 26 E6       
Z25FE   PSHY                '4 '                                                                  *25FE: 34 20          
        LDY     M21DB       '..!.'                                                                *2600: 10 BE 21 DB    
        CMPY    #STRDSC     '....'                                                                *2604: 10 8C 01 C0    
        BEQ     Z2626       ''.'                                                                  *2608: 27 1C          
        CMPY    #MFE40      '...@'                                                                *260A: 10 8C FE 40    
        BEQ     Z2626       ''.'                                                                  *260E: 27 16          
        PULD                '5.'                                                                  *2610: 35 06          
        BITB    #$1F        '..'                                                                  *2612: C5 1F          
        LBEQ    Z2555       '.'.='                                                                *2614: 10 27 FF 3D    
        ADDB    #$02        '..'                                                                  *2618: CB 02          
        BITB    #$1F        '..'                                                                  *261A: C5 1F          
        LBEQ    Z2555       '.'.5'                                                                *261C: 10 27 FF 35    
        SUBB    #$02        '..'                                                                  *2620: C0 02          
        TFR     D,X         '..'                                                                  *2622: 1F 01          
        BRA     Z262F       ' .'                                                                  *2624: 20 09          
Z2626   PULX                '5.'                                                                  *2626: 35 10          
        JSR     Z2A90       '.*.'                                                                 *2628: BD 2A 90       
        LBEQ    Z2555       '.'.&'                                                                *262B: 10 27 FF 26    
Z262F   JSR     Z284C       '.(L'                                                                 *262F: BD 28 4C       
        EXG     X,D         '..'                                                                  *2632: 1E 10          
        ADDD    M21DB       '.!.'                                                                 *2634: F3 21 DB       
        EXG     D,X         '..'                                                                  *2637: 1E 01          
        STX     M21D8       '.!.'                                                                 *2639: BF 21 D8       
        TST     M21D7       '}!.'                                                                 *263C: 7D 21 D7       
        BNE     Z2647       '&.'                                                                  *263F: 26 06          
        LDY     #PENFT7     '..!&'                                                                *2641: 10 8E 21 26    
        BRA     Z264B       ' .'                                                                  *2645: 20 04          
Z2647   LDY     #ICUBRK     '..!\'                                                                *2647: 10 8E 21 5C    
Z264B   LDB     #$0E        '..'                                                                  *264B: C6 0E          
        STB     <$00        '..'                                                                  *264D: D7 00          
        JSR     DRWSPR      '.(R'                                                                 *264F: BD 28 52       
        LDY     #M21EE      '..!.'                                                                *2652: 10 8E 21 EE    
Z2656   CMPY    #M21F3      '..!.'                                                                *2656: 10 8C 21 F3    
        LBEQ    Z26E6       '.'..'                                                                *265A: 10 27 00 88    
        LDA     ,Y+         '..'                                                                  *265E: A6 A0          
        BEQ     Z2656       ''.'                                                                  *2660: 27 F4          
        TST     $04,Y       'm$'                                                                  *2662: 6D 24          
        BNE     Z2656       '&.'                                                                  *2664: 26 F0          
        LDD     M21D8       '.!.'                                                                 *2666: FC 21 D8       
        ADDD    M21DB       '.!.'                                                                 *2669: F3 21 DB       
        TFR     D,X         '..'                                                                  *266C: 1F 01          
        LDA     $0080,X     '....'                                                                *266E: A6 89 00 80    
        CMPA    #$55        '.U'                                                                  *2672: 81 55          
        BEQ     Z26B7       ''A'                                                                  *2674: 27 41          
        CMPA    #$F5        '..'                                                                  *2676: 81 F5          
        BEQ     Z26B7       ''='                                                                  *2678: 27 3D          
        TFR     X,D         '..'                                                                  *267A: 1F 10          
        SUBD    #M0002      '...'                                                                 *267C: 83 00 02       
        BITB    #$1F        '..'                                                                  *267F: C5 1F          
        BEQ     Z26B7       ''4'                                                                  *2681: 27 34          
        ADDD    #VALTYP     '...'                                                                 *2683: C3 00 06       
        BITB    #$1F        '..'                                                                  *2686: C5 1F          
        BEQ     Z26B7       ''-'                                                                  *2688: 27 2D          
        CMPX    #FATBL0     '...'                                                                 *268A: 8C 08 00       
        BLS     Z26B7       '#('                                                                  *268D: 23 28          
        CMPX    #M17E0      '...'                                                                 *268F: 8C 17 E0       
        BCC     Z26B7       '$#'                                                                  *2692: 24 23          
        LDY     #ENEMY1     '..!.'                                                                *2694: 10 8E 21 92    
        LDD     M21DB       '.!.'                                                                 *2698: FC 21 DB       
        ASRA                'G'                                                                   *269B: 47             
        RORB                'V'                                                                   *269C: 56             
        ADDD    M21D8       '.!.'                                                                 *269D: F3 21 D8       
        TFR     D,X         '..'                                                                  *26A0: 1F 01          
        LDB     #$0C        '..'                                                                  *26A2: C6 0C          
        STB     <$00        '..'                                                                  *26A4: D7 00          
Z26A6   LDD     ,Y++        '..'                                                                  *26A6: EC A1          
        ORA     ,X          '..'                                                                  *26A8: AA 84          
        ORB     $01,X       '..'                                                                  *26AA: EA 01          
        STD     ,X          '..'                                                                  *26AC: ED 84          
        LEAX    $20,X       '0. '                                                                 *26AE: 30 88 20       
        DEC     <$00        '..'                                                                  *26B1: 0A 00          
        BNE     Z26A6       '&.'                                                                  *26B3: 26 F1          
        BRA     Z26E6       ' /'                                                                  *26B5: 20 2F          
Z26B7   LDY     #M21EE      '..!.'                                                                *26B7: 10 8E 21 EE    
Z26BB   CMPY    #M21F3      '..!.'                                                                *26BB: 10 8C 21 F3    
        BEQ     Z26E6       ''%'                                                                  *26BF: 27 25          
        TST     ,Y+         'm.'                                                                  *26C1: 6D A0          
        BEQ     Z26BB       ''.'                                                                  *26C3: 27 F6          
        TST     $04,Y       'm$'                                                                  *26C5: 6D 24          
        BNE     Z26BB       '&.'                                                                  *26C7: 26 F2          
        INC     $04,Y       'l$'                                                                  *26C9: 6C 24          
        LDD     #VR11C6     '...'                                                                 *26CB: CC 05 05       
        STD     M2E73       '..s'                                                                 *26CE: FD 2E 73       
        PSHS    Y,X         '40'                                                                  *26D1: 34 30          
        JSR     Z2E77       '..w'                                                                 *26D3: BD 2E 77       
        PULS    Y,X         '50'                                                                  *26D6: 35 30          
        LDA     M2006       '. .'                                                                 *26D8: B6 20 06       
        CMPA    #$04        '..'                                                                  *26DB: 81 04          
        LBEQ    GMSTRT      '.'.J'                                                                *26DD: 10 27 FB 4A    
        INC     M2006       '| .'                                                                 *26E1: 7C 20 06       
        BRA     Z26BB       ' .'                                                                  *26E4: 20 D5          
Z26E6   TST     M21F8       '}!.'                                                                 *26E6: 7D 21 F8       
        BEQ     Z26EE       ''.'                                                                  *26E9: 27 03          
        JSR     Z2D26       '.-&'                                                                 *26EB: BD 2D 26       
Z26EE   LDY     #M21DF      '..!.'                                                                *26EE: 10 8E 21 DF    
        TST     M2204       '}".'                                                                 *26F2: 7D 22 04       
        BEQ     Z2725       ''.'                                                                  *26F5: 27 2E          
        DEC     M2204       'z".'                                                                 *26F7: 7A 22 04       
        LDA     M2204       '.".'                                                                 *26FA: B6 22 04       
        CMPA    #$01        '..'                                                                  *26FD: 81 01          
        BNE     Z2748       '&G'                                                                  *26FF: 26 47          
        LDY     #M21DF      '..!.'                                                                *2701: 10 8E 21 DF    
        LDA     #$05        '..'                                                                  *2705: 86 05          
        STA     <$01        * set 5 to counter at M2001                                           *2707: 97 01          
Z2709   LDB     ,Y+         '..'                                                                  *2709: E6 A0          
        LDA     $04,Y       '.$'                                                                  *270B: A6 24          
        JSR     Z2ABC       '.*.'                                                                 *270D: BD 2A BC       
        LDA     #$0E        '..'                                                                  *2710: 86 0E          
        STA     <$00        '..'                                                                  *2712: 97 00          
        PSHY                '4 '                                                                  *2714: 34 20          
        LDY     #CRYSTL     '..!x'                                                                *2716: 10 8E 21 78    
        JSR     DRWSPR      '.(R'                                                                 *271A: BD 28 52       
        PULY                '5 '                                                                  *271D: 35 20          
        DEC     <$01        * decrement counter at M2001                                          *271F: 0A 01          
        BNE     Z2709       '&.'                                                                  *2721: 26 E6          
        BRA     Z2748       ' #'                                                                  *2723: 20 23          
Z2725   LDY     #M21DF      '..!.'                                                                *2725: 10 8E 21 DF    
        JSR     Z2AF4       '.*.'                                                                 *2729: BD 2A F4       
        LDY     #M21E0      '..!.'                                                                *272C: 10 8E 21 E0    
        JSR     Z2AF4       '.*.'                                                                 *2730: BD 2A F4       
        LDY     #M21E1      '..!.'                                                                *2733: 10 8E 21 E1    
        JSR     Z2AF4       '.*.'                                                                 *2737: BD 2A F4       
        LDY     #M21E2      '..!.'                                                                *273A: 10 8E 21 E2    
        JSR     Z2AF4       '.*.'                                                                 *273E: BD 2A F4       
        LDY     #M21E3      '..!.'                                                                *2741: 10 8E 21 E3    
        JSR     Z2AF4       '.*.'                                                                 *2745: BD 2A F4       
Z2748   LDA     #$3C        '.<'                                                                  *2748: 86 3C          
        STA     SNDSET      * store at $FF23 (PIA control register B): enable sound               *274A: B7 FF 23       
        JSR     Z380B       '.8.'                                                                 *274D: BD 38 0B       
        DEC     M2E76       'z.v'                                                                 *2750: 7A 2E 76       
        BVS     Z277F       ')*'                                                                  *2753: 29 2A          
Z2755   TST     M2009       '} .'                                                                 *2755: 7D 20 09       
        LBNE    GMCTRL      '.&..'                                                                *2758: 10 26 FB D3    
        TST     M2E65       '}.e'                                                                 *275C: 7D 2E 65       
        LBEQ    GMCTRL      '.'..'                                                                *275F: 10 27 FB CC    
        LDY     #PENFRT     '.. .'                                                                *2763: 10 8E 20 CA    
        LDB     #$08        '..'                                                                  *2767: C6 08          
        STB     <$00        '..'                                                                  *2769: D7 00          
        LDX     #VLIFES     '.. '                                                                 *276B: 8E 04 20       
        LDB     LIFES       '. _'                                                                 *276E: F6 20 5F       
        ASLB                'X'                                                                   *2771: 58             
        ABX                 ':'                                                                   *2772: 3A             
        JSR     DRWSPR      '.(R'                                                                 *2773: BD 28 52       
        INC     LIFES       '| _'                                                                 *2776: 7C 20 5F       
        INC     M2009       '| .'                                                                 *2779: 7C 20 09       
        JMP     GMCTRL      '~#/'                                                                 *277C: 7E 23 2F       
Z277F   DEC     M2E75       'z.u'                                                                 *277F: 7A 2E 75       
        BNE     Z2755       '&.'                                                                  *2782: 26 D1          
        JMP     GMSTRT      '~"+'                                                                 *2784: 7E 22 2B       
                            ** set up graphics screen? **															                      													** Routine to do something with display? **
PMODE4  STA     V0CLR       * Clear V0 bit in SAM                                                 *2787: B7 FF C0       
        STA     V1SET       * Set V1 bit in SAM                                                   *278A: B7 FF C3       
        STA     V2SET       * Set V2 bit in SAM                                                   *278D: B7 FF C5       
        LDA     #$F8        * set value %1111 1000 -> PMODE 4 / SCREEN 1,1                        *2790: 86 F8          
        STA     VDGSET      * Set VDG config to %1111 1000 setting graphics mode                  *2792: B7 FF 22       
        STA     F0CLR       * Clear SAM F0 bit which means ??? for display offset                 *2795: B7 FF C6       
        RTS                 * Return		                                                       *2798: 39             
                            ** clear screen subroutine **                                                                               
PCLS    LDX     #VIDRAM     * point to screen start                                               *2799: 8E 04 00       
        LDD     #M0000      * load empty word                                                     *279C: CC 00 00       
Z279F   STD     ,X++        * clear screen                                                        *279F: ED 81          
        CMPX    #M1BFE      * check for end                                                       *27A1: 8C 1B FE       
        BLS     Z279F       * loop until done                                                     *27A4: 23 F9          
        RTS                 * Return                                                              *27A6: 39             
                            ** Another subroutine **                                                                                    
Z27A7   LDX     #VGMWIN     * point to game window start                                          *27A7: 8E 06 00       
        LDB     #$10        * set 10                                                              *27AA: C6 10          
        STB     <$01        * store 10 in counter at COUNT2                                       *27AC: D7 01          
LOOPAE  LDY     #PENFT7     * point to pengon feet sprite                                         *27AE: 10 8E 21 26    
        LDB     #$0C        * set 12                                                              *27B2: C6 0C          
        STB     <$00        * store 12 at COUNT1                                                  *27B4: D7 00          
        STX     M21D3       * store current position at M21D3                                     *27B6: BF 21 D3       
        JSR     DRWSPR      * draw pengon feet at current position                                *27B9: BD 28 52       
        LDX     M21D3       * restore current position                                            *27BC: BE 21 D3       
        LEAX    $02,X       * point two bytes to the right                                        *27BF: 30 02          
        DEC     <$01        * decrement COUNT2 counter (was: 10)                                  *27C1: 0A 01          
        BNE     LOOPAE      * loop 10 times                                                       *27C3: 26 E9          
        LEAX    $01A0,X     '0...'                                                                *27C5: 30 89 01 A0    
        CMPX    #M1950      '..P'                                                                 *27C9: 8C 19 50       
        BCC     Z27D4       '$.'                                                                  *27CC: 24 06          
        LDB     #$10        '..'                                                                  *27CE: C6 10          
        STB     <$01        * store counter of 10 at M2001                                        *27D0: D7 01          
        BRA     LOOPAE      ' .'                                                                  *27D2: 20 DA          
Z27D4   LDX     #M1090      '...'                                                                 *27D4: 8E 10 90       
        LDB     #$B0        '..'                                                                  *27D7: C6 B0          
        STB     <$00        '..'                                                                  *27D9: D7 00          
Z27DB   JSR     Z286D       '.(m'                                                                 *27DB: BD 28 6D       
        ANDA    #$03        '..'                                                                  *27DE: 84 03          
        CMPA    #$00        '..'                                                                  *27E0: 81 00          
        BNE     Z27F6       '&.'                                                                  *27E2: 26 12          
        CMPX    #M02BC      '...'                                                                 *27E4: 8C 02 BC       
        BLS     Z282A       '#A'                                                                  *27E7: 23 41          
        LEAX    -$01C0,X    '0..@'                                                                *27E9: 30 89 FE 40    
        JSR     Z284C       '.(L'                                                                 *27ED: BD 28 4C       
        LEAX    -$01C0,X    '0..@'                                                                *27F0: 30 89 FE 40    
        BRA     Z283A       ' D'                                                                  *27F4: 20 44          
Z27F6   CMPA    #$01        '..'                                                                  *27F6: 81 01          
        BNE     Z2810       '&.'                                                                  *27F8: 26 16          
        LDB     M21D2       '.!.'                                                                 *27FA: F6 21 D2       
        CMPB    #$0A        '..'                                                                  *27FD: C1 0A          
        BHI     Z27DB       '".'                                                                  *27FF: 22 DA          
        LEAX    $02,X       '0.'                                                                  *2801: 30 02          
        INC     M21D2       '|!.'                                                                 *2803: 7C 21 D2       
        JSR     Z284C       '.(L'                                                                 *2806: BD 28 4C       
        LEAX    $02,X       '0.'                                                                  *2809: 30 02          
        INC     M21D2       '|!.'                                                                 *280B: 7C 21 D2       
        BRA     Z283A       ' *'                                                                  *280E: 20 2A          
Z2810   CMPA    #$02        '..'                                                                  *2810: 81 02          
        BNE     Z282A       '&.'                                                                  *2812: 26 16          
        LDB     M21D2       '.!.'                                                                 *2814: F6 21 D2       
        CMPB    #$05        '..'                                                                  *2817: C1 05          
        BLE     Z27DB       '/.'                                                                  *2819: 2F C0          
        DEC     M21D2       'z!.'                                                                 *281B: 7A 21 D2       
        LEAX    -$02,X      '0.'                                                                  *281E: 30 1E          
        JSR     Z284C       '.(L'                                                                 *2820: BD 28 4C       
        DEC     M21D2       'z!.'                                                                 *2823: 7A 21 D2       
        LEAX    -$02,X      '0.'                                                                  *2826: 30 1E          
        BRA     Z283A       ' .'                                                                  *2828: 20 10          
Z282A   CMPX    #M1940      '..@'                                                                 *282A: 8C 19 40       
        BCC     Z27DB       '$.'                                                                  *282D: 24 AC          
        LEAX    $01C0,X     '0...'                                                                *282F: 30 89 01 C0    
        JSR     Z284C       '.(L'                                                                 *2833: BD 28 4C       
        LEAX    $01C0,X     '0...'                                                                *2836: 30 89 01 C0    
Z283A   CMPX    #M1920      '.. '                                                                 *283A: 8C 19 20       
        BCC     Z288A       '$K'                                                                  *283D: 24 4B          
        CMPX    #FATBL0     '...'                                                                 *283F: 8C 08 00       
        BLS     Z288A       '#F'                                                                  *2842: 23 46          
        JSR     Z284C       '.(L'                                                                 *2844: BD 28 4C       
        DEC     <$00        '..'                                                                  *2847: 0A 00          
        BNE     Z27DB       '&.'                                                                  *2849: 26 90          
        RTS                 '9'                                                                   *284B: 39             
Z284C   LDB     #$0E        '..'                                                                  *284C: C6 0E          
        JSR     ERASPR        '.(x'                                                                 *284E: BD 28 78       
        RTS                 '9'                                                                   *2851: 39             
                            ** subroutine for drawing sprite **                                                                         
DRWSPR  PSHS    Y,X,D       * store current Y,X,D register content                                *2852: 34 36          
Z2854   LDD     ,Y++        * load data byte                                                      *2854: EC A1          
        STD     ,X          * store at screen location                                            *2856: ED 84          
        LEAX    $20,X       * next sprite row                                                     *2858: 30 88 20       
        DEC     <$00        * decrement counter                                                   *285B: 0A 00          
        BNE     Z2854       * loop until done (10 times)                                          *285D: 26 F5          
        PULS    PC,Y,X,D    * restore Y,X,D registers (and PC?)                                   *285F: 35 B6          
PAUSE   PSHS    ???         * store current content of registers ???                              *2861: 34 10          
        LDX     #M01FF      * point to $01FF                                                      *2863: 8E 01 FF       
Z2866   LEAX    -1,X        * decrement pointer                                                   *2866: 30 1F          
        BNE     Z2866       * loop until pointer is zero (512 times)                              *2868: 26 FC          
        PULX    ???         * restore registers                                                   *286A: 35 10          
        RTS                 * return                                                              *286C: 39             
                            ** some subroutine **                                                                                       
Z286D   PSHS    Y,X,D       * store registers Y,X,D on system stack                               *286D: 34 36          
        JSR     ZBF26       *                                                                     *286F: BD BF 26       
        PULS    Y,X,D       * restore registers Y,X,D                                             *2872: 35 36          
        LDA     RNDSD2      * set random number seed                                              *2874: B6 01 18       
        RTS                 * return                                                              *2877: 39             
                                                                                                                  
ERASPR   PSHS    Y,X,B       * Save registers Y,X,B on stack                                                                  *2878: 34 34          
        LDY     #M0000      * Load empty word                                                                *287A: 10 8E 00 00    
Z287E   STY     ,X          * Erase current position                                                                  *287E: 10 AF 84       
        LEAX    $20,X       * Point to next word                                                                 *2881: 30 88 20       
        DECB                * Decrement counter                                                  *2884: 5A             
        BNE     Z287E       * Loop if not zero                                                   *2885: 26 F7          
        PULS    Y,X,B       * Restore registers                                                    *2887: 35 34          
        RTS                 * Return                                                   *2889: 39             
                            ** some big routine starts here **                                                                          
Z288A   LDX     #M1090      '...'                                                                 *288A: 8E 10 90       
        LBRA    Z283A       '...'                                                                 *288D: 16 FF AA       
Z2890   TST     M21DA       * test $21DA                                                          *2890: 7D 21 DA       
        LBNE    Z2A8B       '.&..'                                                                *2893: 10 26 01 F4    
        LDA     #$01        '..'                                                                  *2897: 86 01          
        BITA    RBUTTN      '...'                                                                 *2899: B5 FF 00       
        LBNE    Z2A8B       '.&..'                                                                *289C: 10 26 01 EB    
        JSR     [JOYIN]     '....'                                                                *28A0: AD 9F A0 0A    
        LDA     RJOYUD      '..Z'                                                                 *28A4: B6 01 5A       
        LDX     PENPOS       '.!.'                                                                 *28A7: BE 21 C8       
        CMPA    #$3F        '.?'                                                                  *28AA: 81 3F          
        BNE     Z292A       '&|'                                                                  *28AC: 26 7C          
        LDA     $00C2,X     '....'                                                                *28AE: A6 89 00 C2    
        CMPA    #$55        '.U'                                                                  *28B2: 81 55          
        BEQ     Z28C2       ''.'                                                                  *28B4: 27 0C          
        CMPA    #$D5        '..'                                                                  *28B6: 81 D5          
        BEQ     Z28BD       ''.'                                                                  *28B8: 27 03          
        JMP     Z2A8B       '~*.'                                                                 *28BA: 7E 2A 8B       
Z28BD   LDA     #$AA        '..'                                                                  *28BD: 86 AA          
        STA     M21D7       '.!.'                                                                 *28BF: B7 21 D7       
Z28C2   TFR     X,D         '..'                                                                  *28C2: 1F 10          
        ADDB    #$02        '..'                                                                  *28C4: CB 02          
        BITB    #$1F        '..'                                                                  *28C6: C5 1F          
        LBEQ    Z2A8B       '.'..'                                                                *28C8: 10 27 01 BF    
        LEAX    $02,X       '0.'                                                                  *28CC: 30 02          
        STX     M21D8       '.!.'                                                                 *28CE: BF 21 D8       
        LDX     #PENPSR     '. p'                                                                 *28D1: 8E 20 70       
        CMPX    M21CD       '.!.'                                                                 *28D4: BC 21 CD       
        BEQ     Z28EF       ''.'                                                                  *28D7: 27 16          
        STX     M21CD       '.!.'                                                                 *28D9: BF 21 CD       
        LDA     #$08        '..'                                                                  *28DC: 86 08          
        STA     M21CC       '.!.'                                                                 *28DE: B7 21 CC       
        LDA     #$06        '..'                                                                  *28E1: 86 06          
        STA     M21CF       '.!.'                                                                 *28E3: B7 21 CF       
        LDX     #PENFT1     '. .'                                                                 *28E6: 8E 20 DE       
        STX     SPRPNT       '.!.'                                                                 *28E9: BF 21 CA       
        INC     M21D6       '|!.'                                                                 *28EC: 7C 21 D6       
Z28EF   LDX     M21D8       '.!.'                                                                 *28EF: BE 21 D8       
        TST     $0082,X     'm...'                                                                *28F2: 6D 89 00 82    
        BNE     Z2913       '&.'                                                                  *28F6: 26 1B          
        TFR     X,D         '..'                                                                  *28F8: 1F 10          
        ADDB    #$02        '..'                                                                  *28FA: CB 02          
        BITB    #$1F        '..'                                                                  *28FC: C5 1F          
        BEQ     Z2913       ''.'                                                                  *28FE: 27 13          
        LDA     #$FF        '..'                                                                  *2900: 86 FF          
        STA     M21DA       '.!.'                                                                 *2902: B7 21 DA       
        LDA     #$78        '.x'                                                                  *2905: 86 78          
        STA     M381D       '.8.'                                                                 *2907: B7 38 1D       
        LDD     #M0002      '...'                                                                 *290A: CC 00 02       
        STD     M21DB       '.!.'                                                                 *290D: FD 21 DB       
        JMP     Z2A8B       '~*.'                                                                 *2910: 7E 2A 8B       
Z2913   LDA     $0080,X     '....'                                                                *2913: A6 89 00 80    
        CMPA    #$F5        '..'                                                                  *2917: 81 F5          
        LBEQ    Z2A8C       '.'.o'                                                                *2919: 10 27 01 6F    
        LDA     #$99        '..'                                                                  *291D: 86 99          
        STA     M21DA       '.!.'                                                                 *291F: B7 21 DA       
        LDA     #$78        '.x'                                                                  *2922: 86 78          
        STA     M381D       '.8.'                                                                 *2924: B7 38 1D       
        JMP     Z2A8B       '~*.'                                                                 *2927: 7E 2A 8B       
Z292A   CMPA    #$00        '..'                                                                  *292A: 81 00          
        BNE     Z29A5       '&w'                                                                  *292C: 26 77          
        LDA     $00BE,X     '....'                                                                *292E: A6 89 00 BE    
        CMPA    #$55        '.U'                                                                  *2932: 81 55          
        BEQ     Z2942       ''.'                                                                  *2934: 27 0C          
        CMPA    #$D5        '..'                                                                  *2936: 81 D5          
        BEQ     Z293D       ''.'                                                                  *2938: 27 03          
        JMP     Z2A8B       '~*.'                                                                 *293A: 7E 2A 8B       
Z293D   LDA     #$AA        '..'                                                                  *293D: 86 AA          
        STA     M21D7       '.!.'                                                                 *293F: B7 21 D7       
Z2942   TFR     X,D         '..'                                                                  *2942: 1F 10          
        BITB    #$1F        '..'                                                                  *2944: C5 1F          
        LBEQ    Z2A8B       '.'.A'                                                                *2946: 10 27 01 41    
        LEAX    -$02,X      '0.'                                                                  *294A: 30 1E          
        STX     M21D8       '.!.'                                                                 *294C: BF 21 D8       
        LDX     #PENPSL     '. .'                                                                 *294F: 8E 20 90       
        CMPX    M21CD       '.!.'                                                                 *2952: BC 21 CD       
        BEQ     Z296D       ''.'                                                                  *2955: 27 16          
        STX     M21CD       '.!.'                                                                 *2957: BF 21 CD       
        LDA     #$08        '..'                                                                  *295A: 86 08          
        STA     M21CC       '.!.'                                                                 *295C: B7 21 CC       
        LDA     #$06        '..'                                                                  *295F: 86 06          
        STA     M21CF       '.!.'                                                                 *2961: B7 21 CF       
        LDX     #PENFT5     '.!.'                                                                 *2964: 8E 21 06       
        STX     SPRPNT       '.!.'                                                                 *2967: BF 21 CA       
        INC     M21D6       '|!.'                                                                 *296A: 7C 21 D6       
Z296D   LDX     M21D8       '.!.'                                                                 *296D: BE 21 D8       
        TST     $7E,X       'm.~'                                                                 *2970: 6D 88 7E       
        BNE     Z298E       '&.'                                                                  *2973: 26 19          
        TFR     X,D         '..'                                                                  *2975: 1F 10          
        BITB    #$1F        '..'                                                                  *2977: C5 1F          
        BEQ     Z298E       ''.'                                                                  *2979: 27 13          
        LDA     #$FF        '..'                                                                  *297B: 86 FF          
        STA     M21DA       '.!.'                                                                 *297D: B7 21 DA       
        LDA     #$78        '.x'                                                                  *2980: 86 78          
        STA     M381D       '.8.'                                                                 *2982: B7 38 1D       
        LDD     #RESET      '...'                                                                 *2985: CC FF FE       
        STD     M21DB       '.!.'                                                                 *2988: FD 21 DB       
        JMP     Z2A8B       '~*.'                                                                 *298B: 7E 2A 8B       
Z298E   LDA     $0080,X     '....'                                                                *298E: A6 89 00 80    
        CMPA    #$F5        '..'                                                                  *2992: 81 F5          
        LBEQ    Z2A8C       '.'..'                                                                *2994: 10 27 00 F4    
        LDA     #$99        '..'                                                                  *2998: 86 99          
        STA     M21DA       '.!.'                                                                 *299A: B7 21 DA       
        LDA     #$78        '.x'                                                                  *299D: 86 78          
        STA     M381D       '.8.'                                                                 *299F: B7 38 1D       
        JMP     Z2A8B       '~*.'                                                                 *29A2: 7E 2A 8B       
Z29A5   LDA     RJOYLR      '..['                                                                 *29A5: B6 01 5B       
        CMPA    #$00        '..'                                                                  *29A8: 81 00          
        BNE     Z2A1B       '&o'                                                                  *29AA: 26 6F          
        LDA     -$80,X      '...'                                                                 *29AC: A6 88 80       
        CMPA    #$55        '.U'                                                                  *29AF: 81 55          
        BEQ     Z29BF       ''.'                                                                  *29B1: 27 0C          
        CMPA    #$FD        '..'                                                                  *29B3: 81 FD          
        BEQ     Z29BA       ''.'                                                                  *29B5: 27 03          
        JMP     Z2A8B       '~*.'                                                                 *29B7: 7E 2A 8B       
Z29BA   LDA     #$AA        '..'                                                                  *29BA: 86 AA          
        STA     M21D7       '.!.'                                                                 *29BC: B7 21 D7       
Z29BF   LEAX    -$01C0,X    '0..@'                                                                *29BF: 30 89 FE 40    
        STX     M21D8       '.!.'                                                                 *29C3: BF 21 D8       
        LDX     #PENPSU     '. .'                                                                 *29C6: 8E 20 A2       
        CMPX    M21CD       '.!.'                                                                 *29C9: BC 21 CD       
        BEQ     Z29E4       ''.'                                                                  *29CC: 27 16          
        STX     M21CD       '.!.'                                                                 *29CE: BF 21 CD       
        LDX     #PENFT3     '. .'                                                                 *29D1: 8E 20 F6       
        STX     SPRPNT       '.!.'                                                                 *29D4: BF 21 CA       
        LDA     #$0A        '..'                                                                  *29D7: 86 0A          
        STA     M21CC       '.!.'                                                                 *29D9: B7 21 CC       
        LDA     #$04        '..'                                                                  *29DC: 86 04          
        STA     M21CF       '.!.'                                                                 *29DE: B7 21 CF       
        INC     M21D6       '|!.'                                                                 *29E1: 7C 21 D6       
Z29E4   LDX     M21D8       '.!.'                                                                 *29E4: BE 21 D8       
        TST     -$0100,X    'm...'                                                                *29E7: 6D 89 FF 00    
        BEQ     Z2A04       ''.'                                                                  *29EB: 27 17          
Z29ED   LDA     $0080,X     '....'                                                                *29ED: A6 89 00 80    
        CMPA    #$F5        '..'                                                                  *29F1: 81 F5          
        LBEQ    Z2A8C       '.'..'                                                                *29F3: 10 27 00 95    
        LDA     #$99        '..'                                                                  *29F7: 86 99          
        STA     M21DA       '.!.'                                                                 *29F9: B7 21 DA       
        LDA     #$78        '.x'                                                                  *29FC: 86 78          
        STA     M381D       '.8.'                                                                 *29FE: B7 38 1D       
        JMP     Z2A8B       '~*.'                                                                 *2A01: 7E 2A 8B       
Z2A04   CMPX    #M0620      '.. '                                                                 *2A04: 8C 06 20       
        BLS     Z29ED       '#.'                                                                  *2A07: 23 E4          
        LDA     #$FF        '..'                                                                  *2A09: 86 FF          
        STA     M21DA       '.!.'                                                                 *2A0B: B7 21 DA       
        LDA     #$78        '.x'                                                                  *2A0E: 86 78          
        STA     M381D       '.8.'                                                                 *2A10: B7 38 1D       
        LDD     #MFE40      '..@'                                                                 *2A13: CC FE 40       
        STD     M21DB       '.!.'                                                                 *2A16: FD 21 DB       
        BRA     Z2A8B       ' p'                                                                  *2A19: 20 70          
Z2A1B   CMPA    #$3F        '.?'                                                                  *2A1B: 81 3F          
        BNE     Z2A8B       '&l'                                                                  *2A1D: 26 6C          
        LDA     $0240,X     '...@'                                                                *2A1F: A6 89 02 40    
        CMPA    #$55        '.U'                                                                  *2A23: 81 55          
        BEQ     Z2A32       ''.'                                                                  *2A25: 27 0B          
        CMPA    #$F5        '..'                                                                  *2A27: 81 F5          
        BEQ     Z2A2D       ''.'                                                                  *2A29: 27 02          
        BRA     Z2A8B       ' ^'                                                                  *2A2B: 20 5E          
Z2A2D   LDA     #$AA        '..'                                                                  *2A2D: 86 AA          
        STA     M21D7       '.!.'                                                                 *2A2F: B7 21 D7       
Z2A32   LEAX    $01C0,X     '0...'                                                                *2A32: 30 89 01 C0    
        STX     M21D8       '.!.'                                                                 *2A36: BF 21 D8       
        LDX     #PENFRT     '. .'                                                                 *2A39: 8E 20 CA       
        CMPX    M21CD       '.!.'                                                                 *2A3C: BC 21 CD       
        BEQ     Z2A57       ''.'                                                                  *2A3F: 27 16          
        STX     M21CD       '.!.'                                                                 *2A41: BF 21 CD       
        LDX     #PENFT4     '. .'                                                                 *2A44: 8E 20 FE       
        STX     SPRPNT       '.!.'                                                                 *2A47: BF 21 CA       
        LDA     #$0A        '..'                                                                  *2A4A: 86 0A          
        STA     M21CC       '.!.'                                                                 *2A4C: B7 21 CC       
        LDA     #$04        '..'                                                                  *2A4F: 86 04          
        STA     M21CF       '.!.'                                                                 *2A51: B7 21 CF       
        INC     M21D6       '|!.'                                                                 *2A54: 7C 21 D6       
Z2A57   LDX     M21D8       '.!.'                                                                 *2A57: BE 21 D8       
        TST     $0240,X     'm..@'                                                                *2A5A: 6D 89 02 40    
        BEQ     Z2A76       ''.'                                                                  *2A5E: 27 16          
Z2A60   LDA     $0080,X     '....'                                                                *2A60: A6 89 00 80    
        CMPA    #$F5        '..'                                                                  *2A64: 81 F5          
        LBEQ    Z2A8C       '.'."'                                                                *2A66: 10 27 00 22    
        LDA     #$99        '..'                                                                  *2A6A: 86 99          
        STA     M21DA       '.!.'                                                                 *2A6C: B7 21 DA       
        LDA     #$78        '.x'                                                                  *2A6F: 86 78          
        STA     M381D       '.8.'                                                                 *2A71: B7 38 1D       
        BRA     Z2A8B       ' .'                                                                  *2A74: 20 15          
Z2A76   CMPX    #M1820      '.. '                                                                 *2A76: 8C 18 20       
        BCC     Z2A60       '$.'                                                                  *2A79: 24 E5          
        LDA     #$FF        '..'                                                                  *2A7B: 86 FF          
        STA     M21DA       '.!.'                                                                 *2A7D: B7 21 DA       
        LDA     #$78        '.x'                                                                  *2A80: 86 78          
        STA     M381D       '.8.'                                                                 *2A82: B7 38 1D       
        LDD     #STRDSC     '...'                                                                 *2A85: CC 01 C0       
        STD     M21DB       '.!.'                                                                 *2A88: FD 21 DB       
Z2A8B   RTS                 '9'                                                                   *2A8B: 39             
                                                                                                                  
Z2A8C   CLR     M21D7       * clear some location                                                 *2A8C: 7F 21 D7       
        RTS                 * return                                                              *2A8F: 39             
Z2A90   CMPX    #M0620      '.. '                                                                 *2A90: 8C 06 20       
        BLS     Z2A9D       '#.'                                                                  *2A93: 23 08          
        CMPX    #M1820      '.. '                                                                 *2A95: 8C 18 20       
        BCC     Z2A9D       '$.'                                                                  *2A98: 24 03          
        CLZ                 '..'                                                                  *2A9A: 1C FB          
        RTS                 '9'                                                                   *2A9C: 39             
Z2A9D   SEZ                 '..'                                                                  *2A9D: 1A 04          
        RTS                 '9'                                                                   *2A9F: 39             
                            ** some subroutine **                                                                                       
Z2AA0   PSHS    ?,?,?       * store current content of registers ???                              *2AA0: 34 10          
        LEAX    -$0600,X    * point 5*256 memory locations back                                   *2AA2: 30 89 FA 00    
        TFR     X,D         *                                                                     *2AA6: 1F 10          
        ANDB    #$1F        '..'                                                                  *2AA8: C4 1F          
        PSHB                '4.'                                                                  *2AAA: 34 04          
        TFR     X,D         '..'                                                                  *2AAC: 1F 10          
        LSRD                'DV'                                                                  *2AAE: 44 56          
        LSRD                'DV'                                                                  *2AB0: 44 56          
        LSRD                'DV'                                                                  *2AB2: 44 56          
        LSRD                'DV'                                                                  *2AB4: 44 56          
        LSRD                'DV'                                                                  *2AB6: 44 56          
        TFR     B,A         '..'                                                                  *2AB8: 1F 98          
        PULS    PC,X,B      '5.'                                                                  *2ABA: 35 94          
Z2ABC   PSHD                '4.'                                                                  *2ABC: 34 06          
        LDB     #$20        '. '                                                                  *2ABE: C6 20          
        MUL                 '='                                                                   *2AC0: 3D             
        ADDD    #VGMWIN     '...'                                                                 *2AC1: C3 06 00       
        TFR     D,X         '..'                                                                  *2AC4: 1F 01          
        PULD                '5.'                                                                  *2AC6: 35 06          
        ABX                 ':'                                                                   *2AC8: 3A             
        RTS                 * Return                                                              *2AC9: 39             
                            ** some subroutine (place random iceblocks?) **                                                             
Z2ACA   JSR     Z286D       *                                                                     *2ACA: BD 28 6D       
        LDB     RNDSD1      * load random number seed                                             *2ACD: F6 01 17       
        ANDB    #$1E        *                                                                     *2AD0: C4 1E          
        ANDA    #$03        '..'                                                                  *2AD2: 84 03          
        PSHB                '4.'                                                                  *2AD4: 34 04          
        LDB     #$2A        '.*'                                                                  *2AD6: C6 2A          
        MUL                 '='                                                                   *2AD8: 3D             
        TFR     B,A         '..'                                                                  *2AD9: 1F 98          
        PULB                '5.'                                                                  *2ADB: 35 04          
        BSR     Z2ABC       '..'                                                                  *2ADD: 8D DD          
        TST     ,X          'm.'                                                                  *2ADF: 6D 84          
        BNE     Z2ACA       '&.'                                                                  *2AE1: 26 E7          
        TST     $01,X       'm.'                                                                  *2AE3: 6D 01          
        BNE     Z2ACA       '&.'                                                                  *2AE5: 26 E3          
        TST     $00E0,X     'm...'                                                                *2AE7: 6D 89 00 E0    
        BNE     Z2ACA       '&.'                                                                  *2AEB: 26 DD          
        TST     $00E1,X     'm...'                                                                *2AED: 6D 89 00 E1    
        BNE     Z2ACA       '&.'                                                                  *2AF1: 26 D7          
        RTS                 '9'                                                                   *2AF3: 39             
                            ** collision detect??? **                                                                                   
Z2AF4   JSR     Z286D       '.(m'                                                                 *2AF4: BD 28 6D       
        BITA    #$01        '..'                                                                  *2AF7: 85 01          
        LBNE    Z2D25       '.&.('                                                                *2AF9: 10 26 02 28    
        TST     $0F,Y       'm/'                                                                  *2AFD: 6D 2F          
        LBNE    Z2D25       '.&."'                                                                *2AFF: 10 26 02 22    
        LDB     ,Y          '..'                                                                  *2B03: E6 A4          
        LDA     $05,Y       '.%'                                                                  *2B05: A6 25          
        BSR     Z2ABC       '..'                                                                  *2B07: 8D B3          
        STX     <$03        '..'                                                                  *2B09: 9F 03          
        CMPX    PENPOS       '.!.'                                                                 *2B0B: BC 21 C8       
        LBEQ    Z2D42       '.'.0'                                                                *2B0E: 10 27 02 30    
        INX                 '0.'                                                                  *2B12: 30 01          
        CMPX    PENPOS       '.!.'                                                                 *2B14: BC 21 C8       
        LBEQ    Z2D42       '.'.''                                                                *2B17: 10 27 02 27    
        LEAX    -$02,X      '0.'                                                                  *2B1B: 30 1E          
        CMPX    PENPOS       '.!.'                                                                 *2B1D: BC 21 C8       
        LBEQ    Z2D42       '.'..'                                                                *2B20: 10 27 02 1E    
        LEAX    -$00DF,X    '0..!'                                                                *2B24: 30 89 FF 21    
        CMPX    PENPOS       '.!.'                                                                 *2B28: BC 21 C8       
        LBEQ    Z2D42       '.'..'                                                                *2B2B: 10 27 02 13    
        INX                 '0.'                                                                  *2B2F: 30 01          
        CMPX    PENPOS       '.!.'                                                                 *2B31: BC 21 C8       
        LBEQ    Z2D42       '.'..'                                                                *2B34: 10 27 02 0A    
        LEAX    -$02,X      '0.'                                                                  *2B38: 30 1E          
        CMPX    PENPOS       '.!.'                                                                 *2B3A: BC 21 C8       
        LBEQ    Z2D42       '.'..'                                                                *2B3D: 10 27 02 01    
        LEAX    $01C0,X     '0...'                                                                *2B41: 30 89 01 C0    
        CMPX    PENPOS       '.!.'                                                                 *2B45: BC 21 C8       
        LBEQ    Z2D42       '.'..'                                                                *2B48: 10 27 01 F6    
        INX                 '0.'                                                                  *2B4C: 30 01          
        CMPX    PENPOS       '.!.'                                                                 *2B4E: BC 21 C8       
        LBEQ    Z2D42       '.'..'                                                                *2B51: 10 27 01 ED    
        LDX     <$03        '..'                                                                  *2B55: 9E 03          
        COM     COUNT1      's .'                                                                 *2B57: 73 20 00       
        LBEQ    Z2C46       '.'..'                                                                *2B5A: 10 27 00 E8    
        CMPB    M21DD       '.!.'                                                                 *2B5E: F1 21 DD       
        BCS     Z2BD7       '%t'                                                                  *2B61: 25 74          
M2B63   PSHD                '4.'                                                                  *2B63: 34 06          
        LDD     #RESET      '...'                                                                 *2B65: CC FF FE       
        STD     M21FB       '.!.'                                                                 *2B68: FD 21 FB       
        LDD     #Z2C46      '.,F'                                                                 *2B6B: CC 2C 46       
        COM     COUNT1      's .'                                                                 *2B6E: 73 20 00       
        BEQ     Z2B76       ''.'                                                                  *2B71: 27 03          
        LDD     #Z2BD7      '.+.'                                                                 *2B73: CC 2B D7       
Z2B76   STD     Z21FD       '.!.'                                                                 *2B76: FD 21 FD       
        LDD     #M2B88      '.+.'                                                                 *2B79: CC 2B 88       
        STD     Z21FF       '.!.'                                                                 *2B7C: FD 21 FF       
        PULD                '5.'                                                                  *2B7F: 35 06          
        TST     $7F,X       'm..'                                                                 *2B81: 6D 88 7F       
        LBNE    Z2D94       '.&..'                                                                *2B84: 10 26 02 0C    
M2B88   TST     $019F,X     'm...'                                                                *2B88: 6D 89 01 9F    
        LBNE    Z2C46       '.&..'                                                                *2B8C: 10 26 00 B6    
        CMPB    #$00        '..'                                                                  *2B90: C1 00          
        LBLS    Z2C46       '.#..'                                                                *2B92: 10 23 00 B0    
        JSR     Z284C       '.(L'                                                                 *2B96: BD 28 4C       
        DEX                 '0.'                                                                  *2B99: 30 1F          
        JSR     Z2AA0       '.*.'                                                                 *2B9B: BD 2A A0       
        STB     ,Y          '..'                                                                  *2B9E: E7 A4          
        STA     $05,Y       '.%'                                                                  *2BA0: A7 25          
        LDB     #$0D        '..'                                                                  *2BA2: C6 0D          
        STB     <$00        '..'                                                                  *2BA4: D7 00          
        COM     $0A,Y       'c*'                                                                  *2BA6: 63 2A          
        BEQ     Z2BC1       ''.'                                                                  *2BA8: 27 17          
        LDY     #ENEMY1     '..!.'                                                                *2BAA: 10 8E 21 92    
        JSR     Z3337       '.37'                                                                 *2BAE: BD 33 37       
        LDY     #M21C0      '..!.'                                                                *2BB1: 10 8E 21 C0    
        LEAX    $00A0,X     '0...'                                                                *2BB5: 30 89 00 A0    
        LDB     #$03        '..'                                                                  *2BB9: C6 03          
        STB     <$00        '..'                                                                  *2BBB: D7 00          
        JSR     DRWSPR      '.(R'                                                                 *2BBD: BD 28 52       
        RTS                 '9'                                                                   *2BC0: 39             
Z2BC1   LDY     #CRYSTL     '..!x'                                                                *2BC1: 10 8E 21 78    
        JSR     Z3337       '.37'                                                                 *2BC5: BD 33 37       
        LDY     #ENMAUL     '..!.'                                                                *2BC8: 10 8E 21 B4    
        LEAX    $60,X       '0.`'                                                                 *2BCC: 30 88 60       
        LDB     #$03        '..'                                                                  *2BCF: C6 03          
        STB     <$00        '..'                                                                  *2BD1: D7 00          
        JSR     DRWSPR      '.(R'                                                                 *2BD3: BD 28 52       
        RTS                 '9'                                                                   *2BD6: 39             
                            ** subroutine (specfied by pointer) **                                                                      
Z2BD7   PSHD                '4.'                                                                  *2BD7: 34 06          
        LDD     #M0002      '...'                                                                 *2BD9: CC 00 02       
        STD     M21FB       '.!.'                                                                 *2BDC: FD 21 FB       
        LDD     #M2B63      '.+c'                                                                 *2BDF: CC 2B 63       
        STD     Z21FD       '.!.'                                                                 *2BE2: FD 21 FD       
        LDD     #M2BF5      '.+.'                                                                 *2BE5: CC 2B F5       
        STD     Z21FF       '.!.'                                                                 *2BE8: FD 21 FF       
        PULD                '5.'                                                                  *2BEB: 35 06          
        TST     $0082,X     'm...'                                                                *2BED: 6D 89 00 82    
        LBNE    Z2D94       '.&..'                                                                *2BF1: 10 26 01 9F    
M2BF5   TST     $01A2,X     * (skip specfied by pointer)                                          *2BF5: 6D 89 01 A2    
        LBNE    Z2C46       '.&.I'                                                                *2BF9: 10 26 00 49    
        CMPB    #$1E        '..'                                                                  *2BFD: C1 1E          
        BCC     Z2C46       '$E'                                                                  *2BFF: 24 45          
        JSR     Z284C       '.(L'                                                                 *2C01: BD 28 4C       
        INX                 '0.'                                                                  *2C04: 30 01          
        JSR     Z2AA0       '.*.'                                                                 *2C06: BD 2A A0       
        STB     ,Y          '..'                                                                  *2C09: E7 A4          
        STA     $05,Y       '.%'                                                                  *2C0B: A7 25          
        COM     $0A,Y       'c*'                                                                  *2C0D: 63 2A          
        BEQ     Z2C2C       ''.'                                                                  *2C0F: 27 1B          
        LDY     #ENEMY1     '..!.'                                                                *2C11: 10 8E 21 92    
        LDB     #$0D        '..'                                                                  *2C15: C6 0D          
        STB     <$00        '..'                                                                  *2C17: D7 00          
        JSR     Z3337       '.37'                                                                 *2C19: BD 33 37       
        LEAX    $00A0,X     '0...'                                                                *2C1C: 30 89 00 A0    
        LDY     #M21BA      '..!.'                                                                *2C20: 10 8E 21 BA    
        LDB     #$03        '..'                                                                  *2C24: C6 03          
        STB     <$00        '..'                                                                  *2C26: D7 00          
        JSR     DRWSPR      '.(R'                                                                 *2C28: BD 28 52       
        RTS                 '9'                                                                   *2C2B: 39             
Z2C2C   LDY     #CRYSTL     '..!x'                                                                *2C2C: 10 8E 21 78    
        LDB     #$0D        '..'                                                                  *2C30: C6 0D          
        STB     <$00        '..'                                                                  *2C32: D7 00          
        JSR     Z3337       '.37'                                                                 *2C34: BD 33 37       
        LDB     #$03        '..'                                                                  *2C37: C6 03          
        STB     <$00        '..'                                                                  *2C39: D7 00          
        LDY     #ENEMY2     '..!.'                                                                *2C3B: 10 8E 21 AE    
        LEAX    $60,X       '0.`'                                                                 *2C3F: 30 88 60       
        JSR     DRWSPR      '.(R'                                                                 *2C42: BD 28 52       
        RTS                 '9'                                                                   *2C45: 39             
Z2C46   CMPA    M21DE       '.!.'                                                                 *2C46: B1 21 DE       
        BHI     Z2CBA       '"o'                                                                  *2C49: 22 6F          
Z2C4B   PSHD                '4.'                                                                  *2C4B: 34 06          
        LDD     #Z2D25      '.-%'                                                                 *2C4D: CC 2D 25       
        STD     Z21FD       '.!.'                                                                 *2C50: FD 21 FD       
        LDD     #STRDSC     '...'                                                                 *2C53: CC 01 C0       
        STD     M21FB       '.!.'                                                                 *2C56: FD 21 FB       
        LDD     #M2C69      '.,i'                                                                 *2C59: CC 2C 69       
        STD     Z21FF       '.!.'                                                                 *2C5C: FD 21 FF       
        PULD                '5.'                                                                  *2C5F: 35 06          
        TST     $0240,X     'm..@'                                                                *2C61: 6D 89 02 40    
        LBNE    Z2D94       '.&.+'                                                                *2C65: 10 26 01 2B    
M2C69   STA     <$03        '..'                                                                  *2C69: 97 03          
        LDA     $0241,X     '...A'                                                                *2C6B: A6 89 02 41    
        CMPA    #$54        '.T'                                                                  *2C6F: 81 54          
        LBEQ    Z2D25       '.'..'                                                                *2C71: 10 27 00 B0    
        CMPA    #$5F        '._'                                                                  *2C75: 81 5F          
        LBEQ    Z2D25       '.'..'                                                                *2C77: 10 27 00 AA    
        CMPA    #$55        '.U'                                                                  *2C7B: 81 55          
        LBEQ    Z2D25       '.'..'                                                                *2C7D: 10 27 00 A4    
        CMPA    #$F5        '..'                                                                  *2C81: 81 F5          
        LBEQ    Z2D25       '.'..'                                                                *2C83: 10 27 00 9E    
        LDA     <$03        '..'                                                                  *2C87: 96 03          
        CMPX    #M1900      '...'                                                                 *2C89: 8C 19 00       
        LBCC    Z2D25       '.$..'                                                                *2C8C: 10 24 00 95    
        JSR     Z284C       '.(L'                                                                 *2C90: BD 28 4C       
        LEAX    $00E0,X     '0...'                                                                *2C93: 30 89 00 E0    
        JSR     Z2AA0       '.*.'                                                                 *2C97: BD 2A A0       
        STB     ,Y          '..'                                                                  *2C9A: E7 A4          
        STA     $05,Y       '.%'                                                                  *2C9C: A7 25          
        COM     $0A,Y       'c*'                                                                  *2C9E: 63 2A          
        BEQ     Z2CAE       ''.'                                                                  *2CA0: 27 0C          
        LDY     #ENEMY1     '..!.'                                                                *2CA2: 10 8E 21 92    
        LDB     #$0D        '..'                                                                  *2CA6: C6 0D          
        STB     <$00        '..'                                                                  *2CA8: D7 00          
        JSR     Z3337       '.37'                                                                 *2CAA: BD 33 37       
        RTS                 '9'                                                                   *2CAD: 39             
Z2CAE   LDY     #CRYSTL     '..!x'                                                                *2CAE: 10 8E 21 78    
        LDB     #$0D        '..'                                                                  *2CB2: C6 0D          
        STB     <$00        '..'                                                                  *2CB4: D7 00          
        JSR     Z3337       '.37'                                                                 *2CB6: BD 33 37       
        RTS                 '9'                                                                   *2CB9: 39             
Z2CBA   PSHD                '4.'                                                                  *2CBA: 34 06          
        LDD     #Z2C4B      '.,K'                                                                 *2CBC: CC 2C 4B       
        STD     Z21FD       '.!.'                                                                 *2CBF: FD 21 FD       
        LDD     #MFE40      '..@'                                                                 *2CC2: CC FE 40       
        STD     M21FB       '.!.'                                                                 *2CC5: FD 21 FB       
        LDD     #M2CD7      '.,.'                                                                 *2CC8: CC 2C D7       
        STD     Z21FF       '.!.'                                                                 *2CCB: FD 21 FF       
        PULD                '5.'                                                                  *2CCE: 35 06          
        TST     -$80,X      'm..'                                                                 *2CD0: 6D 88 80       
        LBNE    Z2D94       '.&..'                                                                *2CD3: 10 26 00 BD    
M2CD7   STB     <$03        '..'                                                                  *2CD7: D7 03          
        LDB     -$7F,X      '...'                                                                 *2CD9: E6 88 81       
        CMPB    #$54        '.T'                                                                  *2CDC: C1 54          
        BEQ     Z2CEE       ''.'                                                                  *2CDE: 27 0E          
        CMPB    #$7F        '..'                                                                  *2CE0: C1 7F          
        BEQ     Z2CEE       ''.'                                                                  *2CE2: 27 0A          
        CMPB    #$55        '.U'                                                                  *2CE4: C1 55          
        BEQ     Z2CEE       ''.'                                                                  *2CE6: 27 06          
        CMPB    #$FD        '..'                                                                  *2CE8: C1 FD          
        BEQ     Z2CEE       ''.'                                                                  *2CEA: 27 02          
        BRA     Z2CF3       ' .'                                                                  *2CEC: 20 05          
Z2CEE   LDB     <$03        '..'                                                                  *2CEE: D6 03          
        JMP     Z2C4B       '~,K'                                                                 *2CF0: 7E 2C 4B       
Z2CF3   LDB     <$03        '..'                                                                  *2CF3: D6 03          
        CMPX    #M0620      '.. '                                                                 *2CF5: 8C 06 20       
        LBLS    Z2C4B       '.#.O'                                                                *2CF8: 10 23 FF 4F    
        JSR     Z284C       '.(L'                                                                 *2CFC: BD 28 4C       
        LEAX    -$00E0,X    '0.. '                                                                *2CFF: 30 89 FF 20    
        JSR     Z2AA0       '.*.'                                                                 *2D03: BD 2A A0       
        STB     ,Y          '..'                                                                  *2D06: E7 A4          
        STA     $05,Y       '.%'                                                                  *2D08: A7 25          
        COM     $0A,Y       'c*'                                                                  *2D0A: 63 2A          
        BEQ     Z2D1A       ''.'                                                                  *2D0C: 27 0C          
        LDY     #ENEMY1     '..!.'                                                                *2D0E: 10 8E 21 92    
        LDB     #$0D        '..'                                                                  *2D12: C6 0D          
        STB     <$00        '..'                                                                  *2D14: D7 00          
        JSR     Z3337       '.37'                                                                 *2D16: BD 33 37       
        RTS                 '9'                                                                   *2D19: 39             
Z2D1A   LDY     #CRYSTL     '..!x'                                                                *2D1A: 10 8E 21 78    
        LDB     #$0D        '..'                                                                  *2D1E: C6 0D          
        STB     <$00        '..'                                                                  *2D20: D7 00          
        JSR     Z3337       '.37'                                                                 *2D22: BD 33 37       
Z2D25   RTS                 '9'                                                                   *2D25: 39             
Z2D26   LDX     M21F9       '.!.'                                                                 *2D26: BE 21 F9       
M2D29   LDY     #ICECUB     '..!B'                                                                *2D29: 10 8E 21 42    
        LDB     #$0D        '..'                                                                  *2D2D: C6 0D          
        STB     <$00        '..'                                                                  *2D2F: D7 00          
        JSR     DRWSPR      '.(R'                                                                 *2D31: BD 28 52       
        JSR     Z286D       '.(m'                                                                 *2D34: BD 28 6D       
        BITA    #$03        '..'                                                                  *2D37: 85 03          
        BNE     Z2D41       '&.'                                                                  *2D39: 26 06          
        CLR     M21F8       '.!.'                                                                 *2D3B: 7F 21 F8       
        JSR     Z284C       '.(L'                                                                 *2D3E: BD 28 4C       
Z2D41   RTS                 '9'                                                                   *2D41: 39             
                            ** some subroutine **                                                                                       
Z2D42   LDD     #M2FA0      * set 2FA0 =                                                          *2D42: CC 2F A0       
        STD     <$00        * store... ?                                                          *2D45: DD 00          
        LEAS    $02,S       * move the system stack two places up (for...)                        *2D47: 32 62          
        INC     SKILVL      * increase skill level                                                *2D49: 7C 37 CA       
        LDD     #MD030      * ?                                                                   *2D4C: CC D0 30       
        STD     M2201       * ?                                                                   *2D4F: FD 22 01       
        STD     <$03        * ?                                                                   *2D52: DD 03          
        CLR     M21D7       * clear ...                                                           *2D54: 7F 21 D7       
Z2D57   JSR     Z2E42       '..B'                                                                 *2D57: BD 2E 42       
        LDD     #M2FA0      './.'                                                                 *2D5A: CC 2F A0       
        STD     <$00        '..'                                                                  *2D5D: DD 00          
        LDD     M2201       '.".'                                                                 *2D5F: FC 22 01       
        SUBA    #$10        '..'                                                                  *2D62: 80 10          
        ADDB    #$10        '..'                                                                  *2D64: CB 10          
        STD     M2201       '.".'                                                                 *2D66: FD 22 01       
        CMPB    #$D0        '..'                                                                  *2D69: C1 D0          
        BEQ     LOSLIV      ''.'                                                                  *2D6B: 27 04          
        STD     <$03        '..'                                                                  *2D6D: DD 03          
        BRA     Z2D57       ' .'                                                                  *2D6F: 20 E6          
LOSLIV  DEC     LIFES       * lost a life!                                                        *2D71: 7A 20 5F       
        LBNE    GMSTRT      * restart game if more lifes left                                     *2D74: 10 26 F4 B3    
        LDY     #SCORE      * point to score                                                      *2D78: 10 8E 2E 63    
Z2D7C   LDA     ,Y+         * read score                                                          *2D7C: A6 A0          
        CMPA    $07,Y       * compare with high score                                             *2D7E: A1 27          
        BEQ     Z2D7C       * loop until done                                                     *2D80: 27 FA          
        BHI     NEWHSC      * if higher, store new high score                                     *2D82: 22 01          
        RTS                 * Return                                                              *2D84: 39             
NEWHSC  LDY     #SCORE      * point at data area starting at $2E63                                *2D85: 10 8E 2E 63    
Z2D89   LDA     ,Y+         * get byte and increment pointer                                      *2D89: A6 A0          
        STA     $07,Y       * store byte seven memory bytes further on                            *2D8B: A7 27          
        CMPY    #HISCOR     * check                                                               *2D8D: 10 8C 2E 6B    
        BCS     Z2D89       '%.'                                                                  *2D91: 25 F6          
        RTS                 '9'                                                                   *2D93: 39             
                            ** some subroutine **                                                                                       
Z2D94   PSHS    Y,X,D       '46'                                                                  *2D94: 34 36          
        CMPB    #$1E        '..'                                                                  *2D96: C1 1E          
        BEQ     Z2DBD       ''#'                                                                  *2D98: 27 23          
        CMPB    #$00        '..'                                                                  *2D9A: C1 00          
        BEQ     Z2DBD       ''.'                                                                  *2D9C: 27 1F          
        TST     M21F8       '}!.'                                                                 *2D9E: 7D 21 F8       
        BNE     Z2DBD       '&.'                                                                  *2DA1: 26 1A          
        TFR     X,D         '..'                                                                  *2DA3: 1F 10          
        ADDD    M21FB       '.!.'                                                                 *2DA5: F3 21 FB       
        TFR     D,X         '..'                                                                  *2DA8: 1F 01          
        TST     $00C0,X     'm...'                                                                *2DAA: 6D 89 00 C0    
        BEQ     Z2DBD       ''.'                                                                  *2DAE: 27 0D          
        LDA     $40,X       '..@'                                                                 *2DB0: A6 88 40       
        CMPA    #$55        '.U'                                                                  *2DB3: 81 55          
        BNE     Z2DC3       '&.'                                                                  *2DB5: 26 0C          
        STX     M21F9       '.!.'                                                                 *2DB7: BF 21 F9       
        COM     M21F8       's!.'                                                                 *2DBA: 73 21 F8       
Z2DBD   PULS    Y,X,D       '56'                                                                  *2DBD: 35 36          
        JMP     [Z21FD]     'n.!.'                                                                *2DBF: 6E 9F 21 FD    
Z2DC3   CMPA    #$FD        '..'                                                                  *2DC3: 81 FD          
        BEQ     Z2DBD       ''.'                                                                  *2DC5: 27 F6          
        CMPA    #$7F        '..'                                                                  *2DC7: 81 7F          
        BEQ     Z2DBD       ''.'                                                                  *2DC9: 27 F2          
        CMPA    #$F5        '..'                                                                  *2DCB: 81 F5          
        BEQ     Z2DBD       ''.'                                                                  *2DCD: 27 EE          
        CMPA    #$5F        '._'                                                                  *2DCF: 81 5F          
        BEQ     Z2DBD       ''.'                                                                  *2DD1: 27 EA          
        CMPA    #$54        '.T'                                                                  *2DD3: 81 54          
        BEQ     Z2DBD       ''.'                                                                  *2DD5: 27 E6          
        PULS    Y,X,D       '56'                                                                  *2DD7: 35 36          
        JMP     [Z21FF]     'n.!.'                                                                *2DD9: 6E 9F 21 FF    
                            ** subroutine playing sound **                                                                              
Z2DDD   PSHS    Y,X         * store registers Y,X                                                 *2DDD: 34 30          
        LDY     #M21DF      * point to sound table?                                               *2DDF: 10 8E 21 DF    
Z2DE3   LDB     ,Y          * set byte                                                            *2DE3: E6 A4          
        LDA     $05,Y       * set byte 5 memory locations further                                 *2DE5: A6 25          
        JSR     Z2ABC       * jump to some subroutine                                             *2DE7: BD 2A BC       
        STX     <$00        *                                                                     *2DEA: 9F 00          
        CMPX    ,S          '..'                                                                  *2DEC: AC E4          
        BEQ     Z2E34       ''D'                                                                  *2DEE: 27 44          
        DEX                 '0.'                                                                  *2DF0: 30 1F          
        CMPX    ,S          '..'                                                                  *2DF2: AC E4          
        BEQ     Z2E34       ''>'                                                                  *2DF4: 27 3E          
        LEAX    $02,X       '0.'                                                                  *2DF6: 30 02          
        CMPX    ,S          '..'                                                                  *2DF8: AC E4          
        BEQ     Z2E34       ''8'                                                                  *2DFA: 27 38          
        LDX     <$00        '..'                                                                  *2DFC: 9E 00          
        LEAX    $00E0,X     '0...'                                                                *2DFE: 30 89 00 E0    
        STX     <$00        '..'                                                                  *2E02: 9F 00          
        CMPX    ,S          '..'                                                                  *2E04: AC E4          
        BEQ     Z2E34       '','                                                                  *2E06: 27 2C          
        DEX                 '0.'                                                                  *2E08: 30 1F          
        CMPX    ,S          '..'                                                                  *2E0A: AC E4          
        BEQ     Z2E34       ''&'                                                                  *2E0C: 27 26          
        LEAX    $02,X       '0.'                                                                  *2E0E: 30 02          
        CMPX    ,S          '..'                                                                  *2E10: AC E4          
        BEQ     Z2E34       '' '                                                                  *2E12: 27 20          
        LDX     <$00        '..'                                                                  *2E14: 9E 00          
        LEAX    -$01C0,X    '0..@'                                                                *2E16: 30 89 FE 40    
        CMPX    ,S          '..'                                                                  *2E1A: AC E4          
        BEQ     Z2E34       ''.'                                                                  *2E1C: 27 16          
        DEX                 '0.'                                                                  *2E1E: 30 1F          
        CMPX    ,S          '..'                                                                  *2E20: AC E4          
        BEQ     Z2E34       ''.'                                                                  *2E22: 27 10          
        LEAX    $02,X       '0.'                                                                  *2E24: 30 02          
        CMPX    ,S          '..'                                                                  *2E26: AC E4          
        BEQ     Z2E34       ''.'                                                                  *2E28: 27 0A          
        INY                 '1!'                                                                  *2E2A: 31 21          
        CMPY    #M21E4      '..!.'                                                                *2E2C: 10 8C 21 E4    
        BCS     Z2DE3       '%.'                                                                  *2E30: 25 B1          
        PULS    PC,Y,X      '5.'                                                                  *2E32: 35 B0          
Z2E34   LDA     $05,Y       '.%'                                                                  *2E34: A6 25          
        LDB     ,Y          '..'                                                                  *2E36: E6 A4          
        INC     $0F,Y       'l/'                                                                  *2E38: 6C 2F          
        JSR     Z2ABC       * jump to subroutine                                                  *2E3A: BD 2A BC       
        JSR     Z284C       * jump to subroutine                                                  *2E3D: BD 28 4C       
        PULS    PC,Y,X      * restore registers PC,Y,X                                            *2E40: 35 B0          
Z2E42   PSHA                '4.'                                                                  *2E42: 34 02          
        LDA     #$3C        * set 3C (= 60 & 111100)                                              *2E44: 86 3C          
        STA     SNDSET      * store at $FF23 (PIA control register B): enable sound               *2E46: B7 FF 23       
        PULA                '5.'                                                                  *2E49: 35 02          
Z2E4B   STB     SNDOUT      '.. '                                                                 *2E4B: F7 FF 20       
        DECA                'J'                                                                   *2E4E: 4A             
        BNE     Z2E4B       '&.'                                                                  *2E4F: 26 FA          
        LDA     <$03        *                                                                     *2E51: 96 03          
        CLRB                * clear acc B                                                         *2E53: 5F             
Z2E54   STB     SNDOUT      *                                                                     *2E54: F7 FF 20       
        DECA                'J'                                                                   *2E57: 4A             
        BNE     Z2E54       '&.'                                                                  *2E58: 26 FA          
        LDA     <$04        '..'                                                                  *2E5A: 96 04          
        LDB     <$01        '..'                                                                  *2E5C: D6 01          
        DEC     <$00        '..'                                                                  *2E5E: 0A 00          
        BNE     Z2E4B       '&.'                                                                  *2E60: 26 E9          
        RTS                 * Return                                                              *2E62: 39             
                            ** DATA AREA ? **                                                                                           
SCORE                                                                                             *2E63: 00 FF          
M2E65                                                                                             *2E65: 00 FF          
                                                                                                  *2E67: 00 FF          
                                                                                                  *2E69: 00 FF          
H                                                                                                 *2E6B: 00 FF          
                                                                                                  *2E6D: 00 FF          
                                                                                                  *2E6F: 00 FF          
                                                                                                  *2E71: 00 FF          
M2E73                                                                                             *2E73: 00 00          
M2E75                                                                                             *2E75: 00 00          
                            ** write score subroutine **                                                                                
Z2E77   LDY     #VSCORE     * point to displayed score start                                      *2E77: 10 8E 04 39    
        STY     M2007       *                                                                     *2E7B: 10 BF 20 07    
        LDY     #SCORE      '...c'                                                                *2E7F: 10 8E 2E 63    
        LDA     M2E74       '..t'                                                                 *2E83: B6 2E 74       
        LEAY    A,Y         '1.'                                                                  *2E86: 31 A6          
        LDA     ,Y          '..'                                                                  *2E88: A6 A4          
        ADDA    M2E73       '..s'                                                                 *2E8A: BB 2E 73       
Z2E8D   STA     ,Y          '..'                                                                  *2E8D: A7 A4          
        CMPA    #$0A        '..'                                                                  *2E8F: 81 0A          
        BCS     Z2EA6       '%.'                                                                  *2E91: 25 13          
        SUBA    #$0A        '..'                                                                  *2E93: 80 0A          
        STA     ,Y          '..'                                                                  *2E95: A7 A4          
        BSR     Z2EA6       '..'                                                                  *2E97: 8D 0D          
        DEY                 '1?'                                                                  *2E99: 31 3F          
        LDA     ,Y          '..'                                                                  *2E9B: A6 A4          
        INCA                'L'                                                                   *2E9D: 4C             
        DEC     M2E74       'z.t'                                                                 *2E9E: 7A 2E 74       
        BMI     Z2EA5       '+.'                                                                  *2EA1: 2B 02          
        BRA     Z2E8D       ' .'                                                                  *2EA3: 20 E8          
Z2EA5   RTS                 '9'                                                                   *2EA5: 39             
Z2EA6   PSHS    Y,X,D       '46'                                                                  *2EA6: 34 36          
        LDB     #$07        '..'                                                                  *2EA8: C6 07          
        MUL                 '='                                                                   *2EAA: 3D             
        ADDD    #M31A9      '.1.'                                                                 *2EAB: C3 31 A9       
        TFR     D,X         '..'                                                                  *2EAE: 1F 01          
        LDY     M2007       '.. .'                                                                *2EB0: 10 BE 20 07    
        LDB     M2E74       '..t'                                                                 *2EB4: F6 2E 74       
        LEAY    B,Y         '1.'                                                                  *2EB7: 31 A5          
        LDA     #$07        '..'                                                                  *2EB9: 86 07          
        STA     <$00        '..'                                                                  *2EBB: 97 00          
Z2EBD   LDA     ,X+         '..'                                                                  *2EBD: A6 80          
        STA     ,Y          '..'                                                                  *2EBF: A7 A4          
        LEAY    $20,Y       '1. '                                                                 *2EC1: 31 A8 20       
        DEC     <$00        '..'                                                                  *2EC4: 0A 00          
        BNE     Z2EBD       '&.'                                                                  *2EC6: 26 F5          
        PULS    PC,Y,X,D    '5.'                                                                  *2EC8: 35 B6          
Z2ECA   JSR     Z286D       '.(m'                                                                 *2ECA: BD 28 6D       
        ANDA    #$03        '..'                                                                  *2ECD: 84 03          
        LDB     #$2A        '.*'                                                                  *2ECF: C6 2A          
        MUL                 '='                                                                   *2ED1: 3D             
        TFR     B,A         '..'                                                                  *2ED2: 1F 98          
        LDB     RNDSD1      '...'                                                                 *2ED4: F6 01 17       
        ANDB    #$1E        '..'                                                                  *2ED7: C4 1E          
        JSR     Z2ABC       '.*.'                                                                 *2ED9: BD 2A BC       
        LDA     $0100,X     '....'                                                                *2EDC: A6 89 01 00    
        CMPA    #$55        '.U'                                                                  *2EE0: 81 55          
        BNE     Z2ECA       '&.'                                                                  *2EE2: 26 E6          
        LDY     #ICUBRK     '..!\'                                                                *2EE4: 10 8E 21 5C    
        LDB     #$0C        '..'                                                                  *2EE8: C6 0C          
        STB     <$00        '..'                                                                  *2EEA: D7 00          
        JSR     DRWSPR      '.(R'                                                                 *2EEC: BD 28 52       
        DEC     <$0A        '..'                                                                  *2EEF: 0A 0A          
        BNE     Z2ECA       '&.'                                                                  *2EF1: 26 D7          
        RTS                 '9'                                                                   *2EF3: 39             
                            ** Pengon clears screen by pushing it upwards **                                                            
SCROLL  LDX     #RSTART      point to $2F03 (no operation)                                        *2EF4: 8E 2F 03      *
        CLR     <$71        * Set warm start (jump to $2F03 at reset)                             *2EF7: 0F 71          
        LDX     #SCORE      * point to data area between $2E63 and $2E75                          *2EF9: 8E 2E 63       
Z2EFC   CLR     ,X+         * clear data                                                          *2EFC: 6F 80          
        CMPX    #M2E75      * check for end                                                       *2EFE: 8C 2E 75       
        BCS     Z2EFC       * loop if not done                                                    *2F01: 25 F9          
RSTART   NOP                * no operation                                                         *2F03: 12            
        LDA     #$90        * set $90 (default skill level factor)                                *2F04: 86 90          
        STA     SKILVL      * store default skill level factor                                    *2F06: B7 37 CA       
        JSR     PMODE4      * jump to routine setting up? display                                 *2F09: BD 27 87       
        LDX     #M1BC0      * point to start of bottom 10 rows of graphics screen                 *2F0C: 8E 1B C0       
Z2F0F   CLR     ,X+         * clear pixels                                                        *2F0F: 6F 80          
        CMPX    #VIDEND     * check for end of graphics screen                                    *2F11: 8C 1D 00       
        BCS     Z2F0F       * loop until done                                                     *2F14: 25 F9          
        LDA     #$04        * set counter of 4                                                    *2F16: 86 04          
        STA     <$00        * store counter at COUNT1                                             *2F18: 97 00          
Z2F1A   JSR     Z302E       * jump to subroutine scrolling screen 5 rows up                       *2F1A: BD 30 2E       
        DEC     <$00        * count down                                                          *2F1D: 0A 00          
        BNE     Z2F1A       * loop (4 times = scroll 20 rows?)                                    *2F1F: 26 F9          
        LDY     #PENPSU     * point to sprite data (pengon push up)                               *2F21: 10 8E 20 A2    
        LDX     #M1A10      * point to halfway row 176 on screen                                  *2F25: 8E 1A 10       
        LDB     #$0A        * set counter of 10                                                   *2F28: C6 0A          
        STB     <$00        * store counter at COUNT1                                             *2F2A: D7 00          
        JSR     DRWSPR      * jump to subroutine for drawing sprite                               *2F2C: BD 28 52       
        LDY     #PENFT3     * point to sprite data (pengon back 2?)                               *2F2F: 10 8E 20 F6    
        LDX     #M1AF0      * point to halfway row 183 on screen                                  *2F33: 8E 1A F0       
        STX     M2003       * store pointer at $2003                                              *2F36: BF 20 03       
        LDB     #$04        * set counter of 4                                                    *2F39: C6 04          
        STB     <$00        * store 4 in counter at COUNT1                                        *2F3B: D7 00          
        JSR     DRWSPR      * jump to subroutine for drawing sprite                               *2F3D: BD 28 52       
        LDB     #$30        * set counter of 48                                                   *2F40: C6 30          
        STB     <$01        * store 48 in counter at M2001                                        *2F42: D7 01          
Z2F44   JSR     Z302E       * jump to subroutine scrolling screen 5 rows up                       *2F44: BD 30 2E       
        DEC     <$01        * decrement counter at M2001 (starting at 48)                         *2F47: 0A 01          
        BEQ     Z2F78       * branch out of here after 48 loops                                   *2F49: 27 2D          
        LDX     M2003       * retrieve pointer from $2003                                         *2F4B: BE 20 03       
        LEAX    -$80,X      * point 5 screen rows back                                            *2F4E: 30 88 80       
        STX     M2003       * store pointer again at $2003                                        *2F51: BF 20 03       
        CMPX    #VIDRAM     * check if reached start of screen                                    *2F54: 8C 04 00       
        BCS     Z2F44       * loop until done                                                     *2F57: 25 EB          
        COM     M2005       * erm... invert byte at $2005 (??)                                    *2F59: 73 20 05       
        BEQ     Z2F6B       * branch/skip next 5 instructions if result is zero                   *2F5C: 27 0D          
        LDY     #PENFT3     * point to sprite data (pengon back 2?)                               *2F5E: 10 8E 20 F6    
        LDB     #$04        * set counter of 4                                                    *2F62: C6 04          
        STB     <$00        * store counter at COUNT1                                             *2F64: D7 00          
        JSR     DRWSPR      * jump to subroutine for drawing sprite                               *2F66: BD 28 52       
        BRA     Z2F44       * branch back to loop again                                           *2F69: 20 D9          
Z2F6B   LDY     #PENFT4     * point to sprite data (?)                                            *2F6B: 10 8E 20 FE    
        LDB     #$04        * set counter of 4                                                    *2F6F: C6 04          
        STB     <$00        * store counter at COUNT1                                             *2F71: D7 00          
        JSR     DRWSPR      * jump to subroutine for drawing sprite                               *2F73: BD 28 52       
        BRA     Z2F44       * branch back to loop again                                           *2F76: 20 CC          
                            ** Main screen routine **                                                                                   
Z2F78   JSR     Z303D       * jump to some subroutine doing what?                                 *2F78: BD 30 3D       
        LDU     #M1009      * set user stack at $1009                                             *2F7B: CE 10 09       
        LDY     #SAUTHR     * point to author string                                              *2F7E: 10 8E 20 23    
        LDB     #$0E        * set counter of 15                                                   *2F82: C6 0E          
        STB     <$00        * store counter at COUNT1                                             *2F84: D7 00          
        JSR     DRWTXT      * jump to some subroutine doing what?                                 *2F86: BD 32 D6       
        LDY     #SCOPYR     * point to data area at $2044 (containing...?)                        *2F89: 10 8E 20 44    
        LDB     #$1B        * set counter of 27                                                   *2F8D: C6 1B          
        STB     <$00        * store counter at COUNT1                                             *2F8F: D7 00          
        LDU     #M1402      * set user stack at $1402                                             *2F91: CE 14 02       
        JSR     DRWTXT      * jump to some subroutine doing what?                                 *2F94: BD 32 D6       
        LDY     #SLEVEL     * point to skill level string                                         *2F97: 10 8E 20 10    
        LDB     #$13        * set counter of 13                                                   *2F9B: C6 13          
        STB     <$00        * store counter at COUNT1                                             *2F9D: D7 00          
        LDU     #M1606      * set user stack at $1606                                             *2F9F: CE 16 06       
        JSR     DRWTXT      * jump to some subroutine doing what?                                 *2FA2: BD 32 D6       
        LDY     #SSCORE     *                                                                     *2FA5: 10 8E 20 31    
        LDB     #$06        *                                                                     *2FA9: C6 06          
        STB     <$00        *                                                                     *2FAB: D7 00          
        LDU     #M1808      *                                                                     *2FAD: CE 18 08       
        JSR     DRWTXT      *                                                                     *2FB0: BD 32 D6       
        LDY     #SHISCO     *                                                                     *2FB3: 10 8E 20 38    
        LDB     #$0B        *                                                                     *2FB7: C6 0B          
        STB     <$00        *                                                                     *2FB9: D7 00          
        LDU     #M1A06      *                                                                     *2FBB: CE 1A 06       
        JSR     DRWTXT      *                                                                     *2FBE: BD 32 D6       
        LDY     #M1810      *                                                                     *2FC1: 10 8E 18 10    
        STY     M2007       *                                                                     *2FC5: 10 BF 20 07    
        LDY     #SCORE      *                                                                     *2FC9: 10 8E 2E 63    
        JSR     Z32FC       *                                                                     *2FCD: BD 32 FC       
        LDY     #M1A13      *                                                                     *2FD0: 10 8E 1A 13    
        STY     M2007       *                                                                     *2FD4: 10 BF 20 07    
        LDY     #HISCOR     *                                                                     *2FD8: 10 8E 2E 6B    
        JSR     Z32FC       *                                                                     *2FDC: BD 32 FC       
        LDX     #M3387      *                                                                     *2FDF: 8E 33 87       
        STX     COUNT2      *                                                                     *2FE2: BF 20 01       
Z2FE5   JSR     Z334A       * Jump to some subroutine ?playing song?                              *2FE5: BD 33 4A       
        JSR     [POLCAT]    * poll keyboard                                                       *2FE8: AD 9F A0 00    
        BEQ     Z2FE5       * wait until key pressed                                              *2FEC: 27 F7          
        CLR     M381C       * clear some memory byte                                              *2FEE: 7F 38 1C       
        CLR     M381D       * clear some memory byte                                              *2FF1: 7F 38 1D       
        CLR     M381E       * clear some memory byte                                              *2FF4: 7F 38 1E       
        CLR     M381F       * clear some memory byte                                              *2FF7: 7F 38 1F       
        CMPA    #$31        * key pressed: is it 1?                                               *2FFA: 81 31          
        BNE     Z3002       * skip on if not                                                      *2FFC: 26 04          
        LDA     #$90        * else set skill factor $90                                           *2FFE: 86 90          
        BRA     Z3020       * skip rest                                                                           *3000: 20 1E          
Z3002   CMPA    #$32        * key pressed: is it 2?                                                               *3002: 81 32          
        BNE     Z300A       * skip on if not                                                                      *3004: 26 04          
        LDA     #$80        * else set skill factor $80                                                           *3006: 86 80          
        BRA     Z3020       * skip rest                                                                           *3008: 20 16          
Z300A   CMPA    #$33        * key pressed: is it 3?                                                               *300A: 81 33          
        BNE     Z3012       * skip on if not                                                                      *300C: 26 04          
        LDA     #$70        * else set skill factor $70                                                           *300E: 86 70          
        BRA     Z3020       * skip rest                                                                           *3010: 20 0E          
Z3012   CMPA    #$34        * key pressed: is it 4?'                                                              *3012: 81 34          
        BNE     Z301A       * skip on if not                                                                      *3014: 26 04          
        LDA     #$50        * else set skill factor $50                                                           *3016: 86 50          
        BRA     Z3020       * skip on if not                                                                      *3018: 20 06          
Z301A   CMPA    #$35        * key pressed: is it 5?                                                               *301A: 81 35          
        BNE     Z2FE5       * branch back if not                                                                  *301C: 26 C7          
        LDA     #$30	    * else set skill factor $30                                                           *301E: 86 30          
Z3020   STA     SKILVL      * store skill factor at $37CA                                                         *3020: B7 37 CA       
        LDA     #$08		*                                                                                     *3023: 86 08          
        STA     M381B		*                                                                                     *3025: B7 38 1B       
        JSR     GMINIT		* jump to game subroutine                                                             *3028: BD 22 05       
        JMP     RSTART		* start over                                                                          *302B: 7E 2F 03       
							** scroll screen up subroutine **                                                                           
Z302E   LDX     #VIDRAM     * point to start of graphics screen                                                   *302E: 8E 04 00       
Z3031   LDD     $0080,X     * load what's 5 rows further                                                          *3031: EC 89 00 80    
        STD     ,X++		* store that 5 rows back                                                              *3035: ED 81          
        CMPX    #VGWEND     * check for end of the graphics                                                       *3037: 8C 1C 00       
        BCS     Z3031       * loop until entire graphics screen has moved 5 rows up                               *303A: 25 F5          
        RTS			        * return                                                                              *303C: 39             
							** another subroutine **                                                                                    
Z303D   LDX     #M0E02      * point to somewhere? on screen                                                       *303D: 8E 0E 02       
        LDY     #M307A      * get what was stored during previous routine                                         *3040: 10 8E 30 7A    
        JSR     Z30C0       * jump to subroutine doing what?                                                      *3044: BD 30 C0       
        LDX     #M0E06      * point to somewhere ? on screen                                                      *3047: 8E 0E 06       
        LDY     #M3084      * point to some sprite ?                                                              *304A: 10 8E 30 84    
        JSR     Z30C0       '.0.'                                                                                 *304E: BD 30 C0       
        LDX     #M0E0A      '...'                                                                                 *3051: 8E 0E 0A       
        LDY     #M3092      '..0.'                                                                                *3054: 10 8E 30 92    
        JSR     Z30C0       '.0.'                                                                                 *3058: BD 30 C0       
        LDX     #M0E0F      '...'                                                                                 *305B: 8E 0E 0F       
        LDY     #M30A2      '..0.'                                                                                *305E: 10 8E 30 A2    
        JSR     Z30C0       '.0.'                                                                                 *3062: BD 30 C0       
        LDX     #M0E14      '...'                                                                                 *3065: 8E 0E 14       
        LDY     #M30B2      '..0.'                                                                                *3068: 10 8E 30 B2    
        JSR     Z30C0       '.0.'                                                                                 *306C: BD 30 C0       
        LDX     #M0E19      '...'                                                                                 *306F: 8E 0E 19       
        LDY     #M3092      '..0.'                                                                                *3072: 10 8E 30 92    
        JSR     Z30C0       '.0.'                                                                                 *3076: BD 30 C0       
        RTS			         																					  *3079: 39                                                                                                   * return
							** DATA BLOCK ? WAVES ? **                                                             						
M307A   FCB     $01			* 0000 0001                                                                           *307A: 01             
        FCB     $01			* 0000 0001                                                                           *307B: 01             
        FCB     $01         * 0000 0001                                                                           *307C: 01             
        FCB     $01         * 0000 0001                                                                           *307D: 01             
        FCB     $02         * 0000 0010                                                                           *307E: 02             
        FCB     $02         * 0000 0010                                                                           *307F: 02             
        FCB     $03         * 0000 0011                                                                           *3080: 03             
        FCB     $03         * 0000 0011                                                                           *3081: 03             
        FCB     $FF         * 0000 0100                                                                           *3082: 04             
        FCB     $FF         * 1111 1111                                                                           *3083: FF             
                                                                                                                  
M3084   FCB     $01         * 0000 0001                                                                           *3084: 01             
        FCB     $01         * 0000 0001                                                                           *3085: 01             
        FCB     $02         * 0000 0010                                                                           *3086: 02             
        FCB     $04         * 0000 0100                                                                           *3087: 04             
        FCB     $01		    * 0000 0001                                                                           *3088: 01             
        FCB     $01         * 0000 0001                                                                           *3089: 01             
        FCB     $02         * 0000 0010                                                                           *308A: 02             
        FCB     $02         * 0000 0010                                                                           *308B: 02             
        FCB     $07         * 0000 0111                                                                           *308C: 07             
        FCB     $03         * 0000 0111                                                                           *308D: 07		       
        FCB     $03         * 0000 0111                                                                           *308E: 07             
        FCB     $03         * 0000 0011                                                                           *308F: 03		       
        FCB     $04         * 0000 0100                                                                           *3090: 04             
        FCB     $FF         * 1111 1111                                                                           *3091: FF             
		                                                                                                          
M3092   FCB     $01         '.'                                                                                   *3092: 01             
        FCB     $01         '.'                                                                                   *3093: 01             
        FCB     $01         '.'                                                                                   *3094: 01             
        FCB     $01         '.'                                                                                   *3095: 01             
        FCB     $06         '.'                                                                                   *3096: 06             
        FCB     $03         '..'                                                                                  *3097: 03             
        FCB     $07         '.'                                                                                   *3098: 07             
        FCB     $02         '..'                                                                                  *3099: 02             
        FCB     $07         '.'                                                                                   *309A: 07             
        FCB     $07         '..'                                                                                  *309B: 07             
        FCB     $02         '.'                                                                                   *309C: 02             
        FCB     $01         '.'                                                                                   *309D: 01             
        FCB     $01         '.'                                                                                   *309E: 01             
        FCB     $01         '.'                                                                                   *309F: 01             
        FCB     $01         '.'                                                                                   *30A0: 01             
        FCB     $FF         '.'                                                                                   *30A1: FF             
        FCB     $01         '.'                                                                                   *30A2: 01             
        FCB     $01         '...'                                                                                 *30A3: 01             
        FCB     $01         '.'                                                                                   *30A4: 01             
        FCB     $01         '.'                                                                                   *30A5: 01             
        FCB     $02         '.'                                                                                   *30A6: 02             
        FCB     $02         '.'                                                                                   *30A7: 02             
        FCB     $02         '.'                                                                                   *30A8: 02             
        FCB     $07          '.'                                                                                  *30A9: 07             
        FCB     $03         '                                                                                     *30AA: 03          '..
        FCB     $02          '.'                                                                                  *30AB: 04             
        FCB     $02         '                                                                                     *30AC: 02          '..
        FCB     $03          '.'                                                                                  *30AD: 03             
        FCB     $03         '                                                                                     *30AE: 03          '..
        FCB     $04          '.'                                                                                  *30AF: 04             
        FCB     $04         '                                                                                     *30B0: 04          '..
        FCB     $FF          '.'                                                                                  *30B1: FF             
        FCB     $01          '.'                                                                                  *30B2: 01             
        FCB     $01                                                                                               *30B3: 01       '...'
        FCB     $01         '.'                                                                                   *30B4: 01             
        FCB     $01         '.'                                                                                   *30B5: 01             
        FCB     $02         '.'                                                                                   *30B6: 02             
        FCB     $02         '.'                                                                                   *30B7: 02             
        FCB     $02         '.'                                                                                   *30B8: 02             
        FCB     $03          '.'                                                                                  *30B9: 03             
        FCB     $03         '                                                                                     *30BA: 03          '..
        FCB     $03          '.'                                                                                  *30BB: 03             
        FCB     $03         '                                                                                     *30BC: 03          '..
        FCB     $04          '.'                                                                                  *30BD: 04             
        FCB     $04         '                                                                                     *30BE: 04          '..
        FCB     $FF          '.'                                                                                  *30BF: FF             
		                    UBROUTINE ?                                                                                              * S
Z30C0   LDU     M211E                                                                                             *30C0: CE 21 1E    *
        LDB     #$07            '.'                                                                               *30C3: C6 06          
        JSR     Z3113                                                                                             *30C5: BD 31 13       
Z30C8   LDA     ,Y+         '..'                                                                                  *30C8: A6 A0          
        CMPA    #$01        '..'                                                                                  *30CA: 81 01          
        BNE     Z30D4       '&.'                                                                                  *30CC: 26 06          
        LEAX    -$00E0,X    '0.. '                                                                                *30CE: 30 89 FF 20    
        BRA     Z30C3       ' .'                                                                                  *30D2: 20 EF          
Z30D4   CMPA    #$02        '..'                                                                                  *30D4: 81 02          
        BNE     Z30DC       '&.'                                                                                  *30D6: 26 04          
        INX                 '0.'                                                                                  *30D8: 30 01          
        BRA     Z30C3       ' .'                                                                                  *30DA: 20 E7          
Z30DC   CMPA    #$03        '..'                                                                                  *30DC: 81 03          
        BNE     Z30E6       '&.'                                                                                  *30DE: 26 06          
        LEAX    $00E0,X     '0...'                                                                                *30E0: 30 89 00 E0    
        BRA     Z30C3       ' .'                                                                                  *30E4: 20 DD          
Z30E6   CMPA    #$04        '..'                                                                                  *30E6: 81 04          
        BNE     Z30EE       '&.'                                                                                  *30E8: 26 04          
        DEX                 '0.'                                                                                  *30EA: 30 1F          
        BRA     Z30C3       ' .'                                                                                  *30EC: 20 D5          
Z30EE   CMPA    #$05        '..'                                                                                  *30EE: 81 05          
        BNE     Z30F8       '&.'                                                                                  *30F0: 26 06          
        LEAX    -$00E0,X    '0.. '                                                                                *30F2: 30 89 FF 20    
        BRA     Z30C8       ' .'                                                                                  *30F6: 20 D0          
Z30F8   CMPA    #$06        '..'                                                                                  *30F8: 81 06          
        BNE     Z3100       '&.'                                                                                  *30FA: 26 04          
        INX                 '0.'                                                                                  *30FC: 30 01          
        BRA     Z30C8       ' .'                                                                                  *30FE: 20 C8          
Z3100   CMPA    #$07        '..'                                                                                  *3100: 81 07          
        BNE     Z310A       '&.'                                                                                  *3102: 26 06          
        LEAX    $00E0,X     '0...'                                                                                *3104: 30 89 00 E0    
        BRA     Z30C8       ' .'                                                                                  *3108: 20 BE          
Z310A   CMPA    #$08        '..'                                                                                  *310A: 81 08          
        BNE     Z3112       '&.'                                                                                  *310C: 26 04          
        DEX                 '0.'                                                                                  *310E: 30 1F          
        BRA     Z30C8       ' .'                                                                                  *3110: 20 B6          
Z3112   RTS                 '9'                                                                                   *3112: 39             
                            * SUBROUTINE ?                                                                                              
Z3113   PSHS    U,Y,X,B     '4t'                                                                                  *3113: 34 74          
Z3115   LDA     ,U+         '..'                                                                                  *3115: A6 C0          
        STA     ,X          '..'                                                                                  *3117: A7 84          
        LEAX    $20,X       '0. '                                                                                 *3119: 30 88 20       
        DECB                'Z'                                                                                   *311C: 5A             
        BNE     Z3115       '&.'                                                                                  *311D: 26 F6          
        PULS    PC,U,Y,X,B  '5.'                                                                                  *311F: 35 F4          
Z3121   PSHS    Y,X         '40'                                                                                  *3121: 34 30          
        LDB     #$07        '..'                                                                                  *3123: C6 07          
        MUL                 '='                                                                                   *3125: 3D             
        ADDD    #M3139      '.19'                                                                                 *3126: C3 31 39       
        TFR     D,U         '..'                                                                                  *3129: 1F 03          
        LDA     #$07        '..'                                                                                  *312B: 86 07          
Z312D   LDB     ,U+         '..'                                                                                  *312D: E6 C0          
        STB     ,X          '..'                                                                                  *312F: E7 84          
        LEAX    $20,X       '0. '                                                                                 *3131: 30 88 20       
        DECA                'J'                                                                                   *3134: 4A             
        BNE     Z312D       '&.'                                                                                  *3135: 26 F6          
        PULS    PC,Y,X      '5.'                                                                                  *3137: 35 B0          
		                                                                                                          
M3139   NEG     <$00        * 0000 0000 * (space)                                                                 *3139: 00 00          
                            * 0000 0000                                                                                                 
        NEG     <$00        * 0000 0000                                                                           *313B: 00 00          
                            * 0000 0000                                                                                                 
        NEG     <$00        * 0000 0000                                                                           *313D: 00 00          
                            * 0000 0000                                                                                                 
        NEG     <$18        * 0000 0000                                                                           *313F: 00 18          
		                                                                                                          
                            * 0001 1000  * !                                                                                            
        FCB     $18         * 0001 1000                                                                           *3141: 18             
        FCB     $18         * 0001 1000                                                                           *3142: 18             
        FCB     $18         * 0001 1000                                                                           *3143: 18             
        FCB     $18         * 0001 1000                                                                           *3144: 18             
        NEG     <$18        * 0000 0000                                                                           *3145: 00 18          
                            * 0001 1000                                                                                                 
							                                                                                      					   
        ROR     $00,X       * 0110 0110  * "                                                                      *3147: 66 00          
                            * 0000 0000                                                                                                 
        NEG     <$00        * 0000 0000                                                                           *3149: 00 00          
                            * 0000 0000                                                                                                 
        NEG     <$00        * 0000 0000                                                                           *314B: 00 00          
                            * 0000 0000                                                                                                 
        NEG     <$66        * 0000 0000                                                                           *314D: 00 66          
		                                                                                                          
                            * 0110 0110  * #                                                                                            
        ROR     ???         * 0110 0110                                                                           *314F: 66 FF          
                            * 1111 1111                                                                                                 
        ROR     ???         * 0110 0110                                                                           *3151: 66 FF          
                            * 1111 1111                                                                                                 
        ROR     $06,S       * 0110 0110                                                                           *3153: 66 66          
                            * 0110 0110                                                                                                 
							                                                                                      					   
        FCB     $18         '.'                                                                                   *3155: 18             
        CWAI    #$6E        '<n'                                                                                  *3156: 3C 6E          
        ASL     -$04,X      'h.'                                                                                  *3158: 68 1C          
        JMP     <$3C        '.<'                                                                                  *315A: 0E 3C          
        ROR     <$66        '.f'                                                                                  *315C: 06 66          
        INC     <$18        '..'                                                                                  *315E: 0C 18          
        LEAX    $06,S       '0f'                                                                                  *3160: 30 66          
        NEG     -$02,X      '`.'                                                                                  *3162: 60 1E          
        PSHU    X,DP        '6.'                                                                                  *3164: 36 18          
        ASL     M6CCC       'xl.'                                                                                 *3166: 78 6C CC       
        ROR     M3030       'v00'                                                                                 *3169: 76 30 30       
        BRA     Z316E       ' .'                                                                                  *316C: 20 00          
Z316E   NEG     <$00        '..'                                                                                  *316E: 00 00          
        NEG     <$0C        '..'                                                                                  *3170: 00 0C          
        FCB     $18         '.'                                                                                   *3172: 18             
        LEAX    -$10,Y      '00'                                                                                  *3173: 30 30          
        LEAX    -$08,X      '0.'                                                                                  *3175: 30 18          
        INC     <$30        '.0'                                                                                  *3177: 0C 30          
        FCB     $18         '.'                                                                                   *3179: 18             
        INC     <$0C        '..'                                                                                  *317A: 0C 0C          
        INC     <$18        '..'                                                                                  *317C: 0C 18          
        LEAX    $00,X       '0.'                                                                                  *317E: 30 00          
        DECB                'Z'                                                                                   *3180: 5A             
        CWAI    #$7E        '<~'                                                                                  *3181: 3C 7E          
        CWAI    #$5A        '<Z'                                                                                  *3183: 3C 5A          
        NEG     <$00        '..'                                                                                  *3185: 00 00          
        FCB     $18         '.'                                                                                   *3187: 18             
        FCB     $18         '.'                                                                                   *3188: 18             
        JMP     Z1818       '~..'                                                                                 *3189: 7E 18 18       
        NEG     <$00        '..'                                                                                  *318C: 00 00          
        NEG     <$00        '..'                                                                                  *318E: 00 00          
        NEG     <$0C        '..'                                                                                  *3190: 00 0C          
        INC     <$08        '..'                                                                                  *3192: 0C 08          
        NEG     <$00        '..'                                                                                  *3194: 00 00          
        NEG     <$7E        '.~'                                                                                  *3196: 00 7E          
        NEG     <$00        '..'                                                                                  *3198: 00 00          
        NEG     <$00        '..'                                                                                  *319A: 00 00          
        NEG     <$00        '..'                                                                                  *319C: 00 00          
        NEG     <$00        '..'                                                                                  *319E: 00 00          
        NEG     <$0C        '..'                                                                                  *31A0: 00 0C          
        ROR     <$06        '..'                                                                                  *31A2: 06 06          
        INC     <$16        '..'                                                                                  *31A4: 0C 16          
        LEAX    $00,S       '0`'                                                                                  *31A6: 30 60          
        NEG     -$04,Y      '`<'                                                                                  *31A8: 60 3C          
        ROR     $06,S       'ff'                                                                                  *31AA: 66 66          
        ROR     $06,S       'ff'                                                                                  *31AC: 66 66          
        ROR     -$04,Y      'f<'                                                                                  *31AE: 66 3C          
        FCB     $18         '.'                                                                                   *31B0: 18             
        FCB     $38         '8'                                                                                   *31B1: 38             
        FCB     $18         '.'                                                                                   *31B2: 18             
        FCB     $18         '.'                                                                                   *31B3: 18             
        FCB     $18         '.'                                                                                   *31B4: 18             
        FCB     $18         '.'                                                                                   *31B5: 18             
        JMP     Z3E63       '~>c'                                                                                 *31B6: 7E 3E 63       
        ROR     <$0C        '..'                                                                                  *31B9: 06 0C          
        FCB     $18         '.'                                                                                   *31BB: 18             
        LEAX    -$01,S      '0.'                                                                                  *31BC: 30 7F          
        CWAI    #$66        '<f'                                                                                  *31BE: 3C 66          
        ROR     <$1C        '..'                                                                                  *31C0: 06 1C          
        ROR     <$66        '.f'                                                                                  *31C2: 06 66          
        CWAI    #$1C        '<.'                                                                                  *31C4: 3C 1C          
        INC     M31C7,PCR   'l..'                                                                                 *31C6: 6C CC FE       
        INC     <$0C        '..'                                                                                  *31C9: 0C 0C          
        INC     <$7E        '.~'                                                                                  *31CB: 0C 7E          
        NEG     $00,S       '``'                                                                                  *31CD: 60 60          
        CWAI    #$06        '<.'                                                                                  *31CF: 3C 06          
        ROR     -$04,Y      'f<'                                                                                  *31D1: 66 3C          
        CWAI    #$66        '<f'                                                                                  *31D3: 3C 66          
        NEG     -$04,S      '`|'                                                                                  *31D5: 60 7C          
        ROR     $06,S       'ff'                                                                                  *31D7: 66 66          
        CWAI    #$7E        '<~'                                                                                  *31D9: 3C 7E          
        ROR     <$0C        '..'                                                                                  *31DB: 06 0C          
        FCB     $18         '.'                                                                                   *31DD: 18             
        NEG     $00,S       '``'                                                                                  *31DE: 60 60          
        NEG     -$04,Y      '`<'                                                                                  *31E0: 60 3C          
        ROR     $06,S       'ff'                                                                                  *31E2: 66 66          
        CWAI    #$66        '<f'                                                                                  *31E4: 3C 66          
        ROR     -$04,Y      'f<'                                                                                  *31E6: 66 3C          
        CWAI    #$66        '<f'                                                                                  *31E8: 3C 66          
        ROR     -$02,Y      'f>'                                                                                  *31EA: 66 3E          
        ROR     <$66        '.f'                                                                                  *31EC: 06 66          
        CWAI    #$00        '<.'                                                                                  *31EE: 3C 00          
        FCB     $18         '.'                                                                                   *31F0: 18             
        NEG     <$00        '..'                                                                                  *31F1: 00 00          
        NEG     <$18        '..'                                                                                  *31F3: 00 18          
        NEG     <$00        '..'                                                                                  *31F5: 00 00          
        FCB     $18         '.'                                                                                   *31F7: 18             
        NEG     <$00        '..'                                                                                  *31F8: 00 00          
        NEG     <$18        '..'                                                                                  *31FA: 00 18          
        FCB     $10         '.'                                                                                   *31FC: 10             
        ROR     <$0C        '..'                                                                                  *31FD: 06 0C          
        FCB     $18         '.'                                                                                   *31FF: 18             
        LEAX    -$08,X      '0.'                                                                                  *3200: 30 18          
        INC     <$06        '..'                                                                                  *3202: 0C 06          
        NEG     <$00        '..'                                                                                  *3204: 00 00          
        JMP     CBUFAD      '~.~'                                                                                 *3206: 7E 00 7E       
        NEG     <$00        '..'                                                                                  *3209: 00 00          
        NEG     -$10,Y      '`0'                                                                                  *320B: 60 30          
        FCB     $18         '.'                                                                                   *320D: 18             
        SUBB    #$18        '..'                                                                                  *320E: C0 18          
        LEAX    $00,S       '0`'                                                                                  *3210: 30 60          
        CWAI    #$66        '<f'                                                                                  *3212: 3C 66          
        ROR     <$0C        '..'                                                                                  *3214: 06 0C          
        FCB     $18         '.'                                                                                   *3216: 18             
        NEG     <$08        '..'                                                                                  *3217: 00 08          
        CWAI    #$66        '<f'                                                                                  *3219: 3C 66          
        ROR     <$3E        '.>'                                                                                  *321B: 06 3E          
        ROR     $06,S       'ff'                                                                                  *321D: 66 66          
        CWAI    #$18        '<.'                                                                                  *321F: 3C 18          
        CWAI    #$66        '<f'                                                                                  *3221: 3C 66          
        ROR     -$02,S      'f~'                                                                                  *3223: 66 7E          
        ROR     $06,S       'ff'                                                                                  *3225: 66 66          
        INC     Z6666       '|ff'                                                                                 *3227: 7C 66 66       
        INC     Z6666       '|ff'                                                                                 *322A: 7C 66 66       
        INC     M3C66       '|<f'                                                                                 *322D: 7C 3C 66       
        NEG     $00,S       '``'                                                                                  *3230: 60 60          
        NEG     $06,S       '`f'                                                                                  *3232: 60 66          
        CWAI    #$6C        '<l'                                                                                  *3234: 3C 6C          
        ROR     Z6666       'vff'                                                                                 *3236: 76 66 66       
        ROR     -$04,S      'f|'                                                                                  *3239: 66 7C          
        INC     -$02,S      'l~'                                                                                  *323B: 6C 7E          
        NEG     $00,S       '``'                                                                                  *323D: 60 60          
        ASL     M6060       'x``'                                                                                 *323F: 78 60 60       
        JMP     Z7E60       '~~`'                                                                                 *3242: 7E 7E 60       
        NEG     -$08,S      '`x'                                                                                  *3245: 60 78          
        NEG     $00,S       '``'                                                                                  *3247: 60 60          
        NEG     -$04,Y      '`<'                                                                                  *3249: 60 3C          
        ROR     $00,S       'f`'                                                                                  *324B: 66 60          
        NEG     $0E,S       '`n'                                                                                  *324D: 60 6E          
        ROR     -$04,Y      'f<'                                                                                  *324F: 66 3C          
        ROR     $06,S       'ff'                                                                                  *3251: 66 66          
        ROR     -$02,S      'f~'                                                                                  *3253: 66 7E          
        ROR     $06,S       'ff'                                                                                  *3255: 66 66          
        ROR     -$02,S      'f~'                                                                                  *3257: 66 7E          
        FCB     $18         '.'                                                                                   *3259: 18             
        FCB     $18         '.'                                                                                   *325A: 18             
        FCB     $18         '.'                                                                                   *325B: 18             
        FCB     $18         '.'                                                                                   *325C: 18             
        FCB     $18         '.'                                                                                   *325D: 18             
        JMP     Z1E0C       '~..'                                                                                 *325E: 7E 1E 0C       
        INC     <$0C        '..'                                                                                  *3261: 0C 0C          
        INC     <$6C        '.l'                                                                                  *3263: 0C 6C          
        CWAI    #$66        '<f'                                                                                  *3265: 3C 66          
        ROR     $0C,S       'fl'                                                                                  *3267: 66 6C          
        ASL     M6C66       'xlf'                                                                                 *3269: 78 6C 66       
        ROR     $00,S       'f`'                                                                                  *326C: 66 60          
        NEG     $00,S       '``'                                                                                  *326E: 60 60          
        NEG     $00,S       '``'                                                                                  *3270: 60 60          
        NEG     -$02,S      '`~'                                                                                  *3272: 60 7E          
        ROR     -$02,S      'f~'                                                                                  *3274: 66 7E          
        ROR     $06,S       'ff'                                                                                  *3276: 66 66          
        ROR     $06,S       'ff'                                                                                  *3278: 66 66          
        ROR     $06,S       'ff'                                                                                  *327A: 66 66          
        ROR     M766E       'vvn'                                                                                 *327C: 76 76 6E       
        JMP     $0E,S       'nn'                                                                                  *327F: 6E 6E          
        ROR     -$04,Y      'f<'                                                                                  *3281: 66 3C          
        ROR     $06,S       'ff'                                                                                  *3283: 66 66          
        ROR     $06,S       'ff'                                                                                  *3285: 66 66          
        ROR     -$04,Y      'f<'                                                                                  *3287: 66 3C          
        INC     Z6666       '|ff'                                                                                 *3289: 7C 66 66       
        INC     M6060       '|``'                                                                                 *328C: 7C 60 60       
        NEG     -$04,Y      '`<'                                                                                  *328F: 60 3C          
        ROR     $06,S       'ff'                                                                                  *3291: 66 66          
        ROR     $0C,S       'fl'                                                                                  *3293: 66 6C          
        ROR     -$05,Y      'f;'                                                                                  *3295: 66 3B          
        INC     -$0A,S      'lv'                                                                                  *3297: 6C 76          
        ROR     -$04,S      'f|'                                                                                  *3299: 66 7C          
        INC     $06,S       'lf'                                                                                  *329B: 6C 66          
        ROR     -$04,Y      'f<'                                                                                  *329D: 66 3C          
        ROR     $00,S       'f`'                                                                                  *329F: 66 60          
        CWAI    #$06        '<.'                                                                                  *32A1: 3C 06          
        ROR     -$04,Y      'f<'                                                                                  *32A3: 66 3C          
        JMP     Z1818       '~..'                                                                                 *32A5: 7E 18 18       
        FCB     $18         '.'                                                                                   *32A8: 18             
        FCB     $18         '.'                                                                                   *32A9: 18             
        FCB     $18         '.'                                                                                   *32AA: 18             
        FCB     $18         '.'                                                                                   *32AB: 18             
        ROR     $06,S       'ff'                                                                                  *32AC: 66 66          
        ROR     $06,S       'ff'                                                                                  *32AE: 66 66          
        ROR     $06,S       'ff'                                                                                  *32B0: 66 66          
        RESET               '>'                                                                                   *32B2: 3E             
        ROR     $06,S       'ff'                                                                                  *32B3: 66 66          
        ROR     $06,S       'ff'                                                                                  *32B5: 66 66          
        ROR     -$04,Y      'f<'                                                                                  *32B7: 66 3C          
        FCB     $18         '.'                                                                                   *32B9: 18             
        ROR     $06,S       'ff'                                                                                  *32BA: 66 66          
        ROR     $06,S       'ff'                                                                                  *32BC: 66 66          
        ROR     -$02,S      'f~'                                                                                  *32BE: 66 7E          
        JMP     Z6666       '~ff'                                                                                 *32C0: 7E 66 66       
        CWAI    #$18        '<.'                                                                                  *32C3: 3C 18          
        CWAI    #$66        '<f'                                                                                  *32C5: 3C 66          
        ROR     $06,S       'ff'                                                                                  *32C7: 66 66          
        ROR     $06,S       'ff'                                                                                  *32C9: 66 66          
        CWAI    #$18        '<.'                                                                                  *32CB: 3C 18          
        FCB     $18         '.'                                                                                   *32CD: 18             
        FCB     $18         '.'                                                                                   *32CE: 18             
        JMP     Z060C       '~..'                                                                                 *32CF: 7E 06 0C       
        FCB     $18         '.'                                                                                   *32D2: 18             
        LEAX    $00,S       '0`'                                                                                  *32D3: 30 60          
		                    ** subroutine for writing screen text **                                                                    
							*     Y: Points to string data                                                                              
							*     COUNT1 ($2000): string length                                                                         
DRWTXT  JMP     Z3476       * ??                                                                                  *32D5: 7E 34 76       
Z32D8   LDA     ,Y+         *                                                                                     *32D8: A6 A0          
        SUBA    #$20        *                                                                                     *32DA: 80 20          
        LDB     #$07        * factor of sprite data length in bytes                                               *32DC: C6 07          
        MUL                 * multiply with factor                                                                *32DE: 3D             
        ADDD    #M3139      * pick character sprite                                                               *32DF: C3 31 39       
        TFR     D,X         * transfer to pointer                                                                 *32E2: 1F 01          
        LDB     #$07        * character sprite height being 7                                                     *32E4: C6 07          
        INU                 *                                                                                     *32E6: 33 41          
        PSHS    U           *                                                                                     *32E8: 34 40          
LOOPT1  LDA     ,X+         * get byte of character sprite                                                        *32EA: A6 80          
        STA     ,U          * store at position where user stack is pointing to                                   *32EC: A7 C4          
        LEAU    $20,U       * next row                                                                            *32EE: 33 C8 20       
        DECB                *                                                                                     *32F1: 5A             
        BNE     LOOPT1      *                                                                                     *32F2: 26 F6          
        PULS    U           '5@'                                                                                  *32F4: 35 40          
        DEC     <$00        '..'                                                                                  *32F6: 0A 00          
        BNE     Z32D8       '&.'                                                                                  *32F8: 26 DE          
        PULS    PC,U,Y,X,D  '5.'                                                                                  *32FA: 35 F6          
Z32FC   LDB     #$FF        '..'                                                                                  *32FC: C6 FF          
Z32FE   INCB                '\'                                                                                   *32FE: 5C             
        STB     M2E74       '..t'                                                                                 *32FF: F7 2E 74       
        LDA     ,Y+         '..'                                                                                  *3302: A6 A0          
        JSR     Z2EA6       '...'                                                                                 *3304: BD 2E A6       
        CMPB    #$06        '..'                                                                                  *3307: C1 06          
        BCS     Z32FE       '%.'                                                                                  *3309: 25 F3          
        RTS                 * return                                                                              *330B: 39             
                            ** Start of execution **                                                                                    
        LDX     #WSTART     * Point to $3314                                                                      *330C: 8E 33 14       
        STX     <$72        * Set warm start (jump to $3314 at reset)                                             *330F: 9F 72          
        CLR     MFF40       * Reset PIA2                                                                          *3311: 7F FF 40       
WSTART  NOP                 * No operation call                                                                   *3314: 12             
        SEIF                * Orcc #50: Turn off interrupts                                                       *3315: 1A 50          
        LDX     #MA9B3      * Point to IRQ Interrupt routines                                                     *3317: 8E A9 B3       
        STX     IRQVE1      * Start Secondary IRQ vector                                                          *331A: BF 01 0D       
        LDX     #VIDRAM     * Point to start of display                                                           *331D: 8E 04 00       
        LDD     #VERTL      * Load %10101010 (pixels for vertical lines) into D reg                               *3320: CC AA AA       
Z3323   STD     ,X++        * Put on screen and point to next 2 bytes                                             *3323: ED 81          
        CMPX    #VGWEND     * Check for end of graphics screen                                                    *3325: 8C 1C 00       
        BCS     Z3323       * Loop until done                                                                     *3328: 25 F9          
Z332A   NOP                 * No Operation call                                                                   *332A: 12             
        JSR     PMODE4      * Jump to routine setting up graphics screen?                                         *332B: BD 27 87       
        JSR     [POLCAT]    * Polcat (color basic rom routine)                                                    *332E: AD 9F A0 00    
        BEQ     Z332A       * Wait for a key to be pressed                                                        *3332: 27 F6          
        JMP     SCROLL      * Jump to Pengon clearing screen                                                      *3334: 7E 2E F4       
                            ** Some sound related subroutine **                                                                         
Z3337   PSHS    Y,X,D       '46'                                                                                  *3337: 34 36          
Z3339   LDD     ,Y++        '..'                                                                                  *3339: EC A1          
        ORA     ,X          '..'                                                                                  *333B: AA 84          
        ORB     $01,X       '..'                                                                                  *333D: EA 01          
        STD     ,X          '..'                                                                                  *333F: ED 84          
        LEAX    $20,X       '0. '                                                                                 *3341: 30 88 20       
        DEC     <$00        '..'                                                                                  *3344: 0A 00          
        BNE     Z3339       '&.'                                                                                  *3346: 26 F1          
        PULS    PC,Y,X,D    '5.'                                                                                  *3348: 35 B6          
Z334A   LDX     COUNT2      '. .'                                                                                 *334A: BE 20 01       
        LDD     ,X++        '..'                                                                                  *334D: EC 81          
        STD     M381B       '.8.'                                                                                 *334F: FD 38 1B       
        LDD     ,X++        '..'                                                                                  *3352: EC 81          
        STD     M381D       '.8.'                                                                                 *3354: FD 38 1D       
        LDA     ,X+         '..'                                                                                  *3357: A6 80          
        STA     M381F       '.8.'                                                                                 *3359: B7 38 1F       
        CLR     M3820       '.8 '                                                                                 *335C: 7F 38 20       
        STX     COUNT2      '. .'                                                                                 *335F: BF 20 01       
        CMPX    #M358A      '.5.'                                                                                 *3362: 8C 35 8A       
        BCS     Z336D       '%.'                                                                                  *3365: 25 06          
        LDX     #M3387      '.3.'                                                                                 *3367: 8E 33 87       
        STX     COUNT2      '. .'                                                                                 *336A: BF 20 01       
Z336D   LDA     #$3C        '.<'                                                                                  *336D: 86 3C          
        STA     SNDSET      '..#'                                                                                 *336F: B7 FF 23       
        JSR     Z380B       '.8.'                                                                                 *3372: BD 38 0B       
        LDA     M381B       '.8.'                                                                                 *3375: B6 38 1B       
        ADDA    M3386       '.3.'                                                                                 *3378: BB 33 86       
        STA     M3386       '.3.'                                                                                 *337B: B7 33 86       
        CMPA    #$08        '..'                                                                                  *337E: 81 08          
        BCS     Z334A       '%.'                                                                                  *3380: 25 C8          
        CLR     M3386       '.3.'                                                                                 *3382: 7F 33 86       
        RTS                 '9'                                                                                   *3385: 39             
                                                                                                                  
                                                                                                                  
Z3476   NEG     <$08                                                                                              *3476 00 08
        LSRA                                                                                                      *3478 44 
							                                                                                      *3479 3E 
                                                                                                                  
                                                                                                                  
                                                                                                                  *3614 39

        END
