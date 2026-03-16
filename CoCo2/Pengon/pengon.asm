
RNDSD1	EQU	$0117	* Random seed 
RNDSD2	EQU	$0118	* Random seed 
ENIGMA	EQU	$01FF	* ???

VIDRAM	EQU	$1E00	* Start of Video Display
VLIFES	EQU	$1E20	* Start of displayed number of lifes 
VTITLE	EQU	$1E2D	* Start of displayed title	
VSCORE	EQU	$1E39	* Start of displayed score
VDROW7	EQU	$1EB0	* Start of seventh row of video display
VR11C6	EQU	$1F05	* Row 11 and column 6 of video display
VR11C7	EQU	$1F06	* Row 11 and column 7 of video display
VGMWIN	EQU	$2000	* Start of game window
V1A10	EQU	$3410	* 
V1A13	EQU	$3413	* 
V1AF0	EQU	$34F0	* 
V1BC0	EQU	$35C0	* 
V1BFE	EQU	$35FE	* 
VGWEND	EQU	$34FF	* End of game window
VIDEND	EQU	$35FF	* End of graphics screen page
V1C00	EQU	$3600	* 
V1D00	EQU	$3700	* 

START	EQU	$4000	* Start address
POLCAT	EQU	$A000	* ROM routine for keyboard polling
INTCON	EQU	$2BF26	* ROM routine for integer conversion

VDGSET	EQU	$FF22	* PIA1 data port B: VDG Configuration 
V0CLR	EQU	$FFC0	* Clear SAM V0 bit (Graphics mode)
V1SET	EQU	$FFC3	* Set SAM V1 bit (Graphics mode)
V2SET	EQU	$FFC5	* Set SAM V2 bit (Graphics mode)
F0CLR	EQU	$FFC6	* Clear SAM F0 bit (Display Offset) 
F0SET	EQU	$FFC7	* Set SAM F0 bit (Display Offset: Add $200) 
F1CLR	EQU	$FFC8	* Clear SAM F1 bit (Display Offset) 
F1SET	EQU	$FFC9	* Set SAM F1 bit (Display Offset: Add $400) 
F2CLR	EQU	$FFCA	* Clear SAM F2 bit (Display Offset) 
F2SET	EQU	$FFCB	* Set SAM F2 bit (Display Offset: Add $800) 
F3CLR	EQU	$FFCC	* Clear SAM F3 bit (Display Offset) 
F3SET	EQU	$FFCD	* Set SAM F3 bit (Display Offset: Add $1000) 
RESET	EQU	$FFFE	* Reset Switch 

	ORG	START
MAIN	NOP		*** Start of execution ***
GO	LDX	#WSTART	* Point to warm start execution point		
	STX	<$72	* Set warm start (jump to $3314 at reset)
WSTART	NOP		
	JSR	PMODE4	* put screen in pmode 4
	LDX	#VIDRAM	* Point to start of display
	LDD	VERTL	* Load %10101010 (pixels for vertical lines) into D reg
Z3323	STD	,X++	* Put on screen and point to next 2 bytes		
	CMPX	#VIDEND	* Check for end of graphics screen
	BCS	Z3323	* Loop until done
			*** Color test screen ***
	LDY	#SCORE	* point to score	
LOOP01	CLR	,Y+	* clear score
	CMPY	#HISCOR	* check for end (= beginning of hi score)
	BNE	LOOP01	* loop until done	
	LDB	#$00	* accumulate 0
	TFR	B,DP	* set Direct Page to zero
	LDB	#$03	* accumulate 3
	STB	LIFES	* set number of lifes to three	
	CLR	M2009	* clear byte at $2009 (some variable) 
	LDA	#$01	* accumulate value 1
	STA	M2AF8	* store 1 at $2AF8 (some variable) 
	CLR	M2D29	* clear byte at $2D29 (some variable) 
	INC	M2D29	* increment byte at $2D29 (set it to 1) 
GMSTRT	LDB	#$64	* accumulate 100
LOOP02	JSR	DELAY	* delay of 100 * x cycles
	DECB		* decrement counter
	BNE	LOOP02	* repeat 100 times	
WAIT01	NOP		* No Operation	
	JSR	[POLCAT]	* Polcat (color basic rom routine)	
	BEQ	WAIT01	* Wait for a key to be pressed
			*** Pengon clears screen by pushing it upwards ***
SCRCLR	LDX	#RSTART	* point to $2F03 (no operation)
	CLR	<$71	* Set warm start (jump to $2F03 at reset)
	LDX	#SCORE	* point to data area between $2E63 and $2E75 
Z2EFC	CLR	,X+	* clear data
	CMPX	#M2E75	* check for end
	BCS	Z2EFC	* loop if not done
RSTART	NOP		* no operation (re-entry point on warm start 
	LDA	#$90	* accumulate $90 (default skill level factor)
	STA	SKILVL	* store default skill level factor
	JSR	PMODE4	* jump to routine setting up display
	LDX	#V1BC0	* point to ??? of graphics screen
Z2F0F	CLR	,X+	* clear pixels
	CMPX	#V1D00	* check for end
	BCS	Z2F0F	* loop until done
	LDA	#$04	* set counter of 4
	STA	<$00	* store counter at $0000
Z2F1A	JSR	SCROLL	* jump to subroutine scrolling screen 5 rows up 
	DEC	<$00	* count down
	BNE	Z2F1A	* loop (4 times = scroll 20 rows?)
	LDY	#PENPSU	* point to sprite data (pengon push up) 
	LDX	#V1A10	* point to halfway row 176 on screen
	LDB	#$0A	* set counter of 10
	STB	<$00	* store counter at $0000
	JSR	DRWSPR	* jump to subroutine for drawing sprite
	LDY	#PENFT3	* point to sprite data (pengon back 2?)
	LDX	#V1AF0	* point to halfway row 183 on screen
	STX	M2003	* store pointer at $2003
	LDB	#$04	* set counter of 4
	STB	<$00	* store counter at $0000
	JSR	DRWSPR	* jump to subroutine for drawing sprite
	LDB	#$30	* set counter of 48
	STB	<$01	* store counter at $0001
Z2F44	JSR	SCROLL	* jump to subroutine scrolling screen 5 rows up
	DEC	<$01	* decrement counter at $0001 (starting at 48)
	BEQ	DONE01	* branch out of here after 48 loops 
	LDX	M2003	* retrieve pointer from $2003
	LEAX	-$80,X	* point 5 screen rows back
	STX	M2003	* store pointer again at $2003
	CMPX	#VIDRAM	* check if reached start of screen
	BCS	Z2F44	* loop until done
	COM	M2005	* erm... invert byte at $2005 (??)
	BEQ	Z2F6B	* branch/skip next 5 instructions if result is zero
	LDY	#PENFT3	* point to sprite data (pengon back 2?)
	LDB	#$04	* accumulate counter of 4
	STB	<$00	* store counter at $0000
	JSR	DRWSPR	* jump to subroutine for drawing sprite
	BRA	Z2F44	* branch back to loop again
Z2F6B	LDY	#PENFT4	* point to sprite data (?) 
	LDB	#$04	* set counter of 4 
	STB	<$00	* store counter at $0000 
	JSR	DRWSPR	* jump to subroutine for drawing sprite 
	BRA	Z2F44	* branch back to loop again	
DONE01	NOP		* done 	
			*
			*
			*
			*
			*
			*
			*
			*
			*
			*			
			*** END POINT ***
THEEND	NOP		* end point entry			
WAIT02	NOP		* No Operation	
	JSR	[POLCAT]	* Polcat (color basic rom routine)	
	BEQ	WAIT02	* Wait for a key to be pressed
	RTS		* return to BASIC 
			*****************
			** subroutines **
			*****************
			** scroll screen up subroutine **
SCROLL	LDX	#VIDRAM	* point to start of graphics screen
Z3031	LDD	$0080,X	* load what's 5 rows further
	STD	,X++	* store that 5 rows back
	CMPX	#V1C00	* check for end of the screen
	BCS	Z3031	* loop until entire graphics screen has moved 5 rows up
	RTS		* return
			*** subroutine for drawing sprite ***
DRWSPR	PSHS	Y,X,D	* store current Y,X,D register content
Z2854	LDD	,Y++	* load data byte
	STD	,X	* store at screen location
	LEAX	$20,X	* next sprite row 
	DEC	 <$00	* decrement counter 
	BNE	 Z2854	* loop until done (10 times)
	PULS	PC,Y,X,D	* restore Y,X,D registers (and PC?)
DELAY	PSHS	X	* 34 10	* store current content of register X
	LDX	#ENIGMA	* point to $ENIGMA
Z2866	LEAX	-1,X	* decrement pointer
	BNE	 Z2866	* loop until pointer is zero (512 times)
	PULS	X	* 35 10		* restore register X
	RTS		* return
	
	
			** set up graphics screen **
PMODE4	LDA	#$F8	* set value %1111 1000 -> PMODE 4 / SCREEN 1,1 
	STA	VDGSET	* Set VDG config to %1111 1000 setting graphics mode
			** Routine to do something with display? **
	STA	V0CLR	* Clear V0 bit in SAM 
	STA	V1SET	* Set V1 bit in SAM 
	STA	V2SET	* Set V2 bit in SAM	
	STA	F0SET	* Set SAM F0 bit for adding	$200	to display offset 
	STA	F1SET	* Set SAM F1 bit for adding	$400	to display offset 
	STA	F2SET	* Set SAM F2 bit for adding	$800	to display offset 
	STA	F3SET	* Set SAM F3 bit for adding $1000 to display offset 
			* Total offset:		 $1E00 
	RTS		* Return
			***************
			** Data area **
			***************
			** Variables **
VERTL	FDB	$AAAA	* Vertical lines bit pattern			
SCORE	FDB	$00FF	* Score start	 
M2E65	FDB	$00FF	* 2E65
	FDB	$00FF	* 2E67
	FDB	$00FF	* 2E69
HISCOR	FDB	$00FF	* 2E6B
	FDB	$00FF	* 2E6D
	FDB	$00FF	* 2E6F
	FDB	$00FF	* 2E71
M2E73	FDB	$0000	* 2E73
M2E75	FDB	$0000	* 2E75
LIFES	FCB	$00	* Lifes
SKILVL	FCB	$00	* Skill level
PENPOS	FCB	$00	* Pengon position
M2003	FDB	$0000	* some variable
M2005	FDB	$0000	* some variable
M2009	FCB	$00	* some variable
M2AF8	FCB	$00	* some variable
M2D29	FCB	$00	* some variable
M21D2	FCB	$00	* some variable 
			** Sprites **
PENPSU	FDB	$628C	* Pengon pushes up 
	FDB	$CAA6 
	FDB	$CAA6 
	FDB	$5AB4 
	FDB	$6AAC 
	FDB	$6AAC 
	FDB	$2AA8 
	FDB	$2AA8 
	FDB	$2AA8 
	FDB	$0AA0 
PENFT3	FDB	$0440 	* Pengon feet 3
	FDB	$0550 
	FDB	$0400 
	FDB	$1500
PENFT4	FDB	$0440	* Pengon feet 4
	FDB	$1540 
	FDB	$0040 
	FDB	$0150
* 2000			* 0A 80 2B 80 2D E0 2F 70 64 C0 AC 80 AD C0 A8 C0 0A 00 2B 80 2D E4 2F 74 6B F8 AA F0 AA C0 AA C0 02 A0 03 A8 0F 68 1D EC 06 4A 02 6A 06 6A 06 4A 02 A0 03 A8 4D 68 5D EC 3E AC 1C AA 06 AB 07 2A 07 2A 62 8C CA A6 CA A6 5A B4 6A AC 6A AC 2A A8 2A A8 2A A8 0A A0 02 80 0A A0 0A A0 1A B0 2A A8 6A AC EA AE EA AE 6A AC 4A A4 02 80 0A A0 0E E0 1B B0 2E E8 6B AC EB AE EF EC 6F ED 4B A8 A5 C0 AD C0 18 90 10 40 51 00 00 00 A5 C0 A5 C0 46 80 11 40 04 00 00 00 04 40 05 50 04 00 15 00 04 40 15 40 00 40 01 50 07 4A 07 6A 02 30 04 10 01 14 00 00 07 6A 02 C4 11 50 02 00 01 00 00 00 36 55 55 55 55 36 00 00 35 58 55 54 55 54 55 54 55 54 55 54 55 54 55 54 55 54 55 54 55 54 35 58 00 00 00 00 31 58 51 54 54 54 54 54 54 14 40 44 14 50 54 54 50 54 51 14 45 14 35 18 00 00 7F FE FF 7F FD 7F FD 5F F5 5F F5 57 D5 57 F5 57 F5 5F FD 5F FD 7F 7F FE 00 00 00 00 00 80 02 A0 06 B0 0F F8 0D D8 0F F8 0A A8 1A AC 2A AA 2A AA 1A AC 0A A8 02 A0 00 00 00 00 00 00 02 80 0A A0 2E E8 3B B8 6E EC AA AA AA AA AA AA 6A CC 2A A8 2A A8 0A F8 0A D8 0A F8 0F A8 0D A8 0F A8 2A E8 2A B8 6A EC 2E A8 3B A8 6E AC 10 90 10 90 20 DE 08 20 60 06 01 00 08 FF 00 00 00 00 00 FF 00 00 00 FF 00 FF 00 FF 00 FF 00 FF 00 FF 00 FF 00 FF 00 FF 00 FF 00 FF 00 FF 00 FF 00 FF 00 00 00 00 00 00 00 00 00

	END MAIN