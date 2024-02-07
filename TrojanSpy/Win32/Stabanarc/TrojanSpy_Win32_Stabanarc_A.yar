
rule TrojanSpy_Win32_Stabanarc_A{
	meta:
		description = "TrojanSpy:Win32/Stabanarc.A,SIGNATURE_TYPE_PEHSTR,10 00 10 00 14 00 00 01 00 "
		
	strings :
		$a_01_0 = {64 65 6c 20 2f 51 20 2f 46 20 2f 41 3d 2d 4c } //01 00  del /Q /F /A=-L
		$a_01_1 = {41 6d 65 72 69 63 61 6e 20 45 78 70 72 65 73 73 } //01 00  American Express
		$a_01_2 = {56 69 73 61 } //01 00  Visa
		$a_01_3 = {4d 61 73 74 65 72 43 61 72 64 } //01 00  MasterCard
		$a_01_4 = {44 49 53 43 4f 56 45 52 } //01 00  DISCOVER
		$a_01_5 = {77 75 70 64 6d 67 72 5f 75 70 64 61 74 65 2e 65 78 65 } //01 00  wupdmgr_update.exe
		$a_01_6 = {2a 63 6c 69 63 6b 62 61 6e 6b 2a } //01 00  *clickbank*
		$a_01_7 = {2a 66 61 73 74 73 70 72 69 6e 67 2a } //01 00  *fastspring*
		$a_01_8 = {2a 65 73 65 6c 6c 65 72 61 74 65 2a } //01 00  *esellerate*
		$a_01_9 = {63 6f 6e 66 69 72 6d 3a 63 61 72 64 5f } //01 00  confirm:card_
		$a_01_10 = {2a 70 61 67 65 63 6f 6e 66 69 72 6d 61 74 69 6f 6e 2a } //01 00  *pageconfirmation*
		$a_01_11 = {69 6e 66 6f 2e 63 63 } //01 00  info.cc
		$a_01_12 = {2a 62 69 6c 6c 69 6e 67 } //01 00  *billing
		$a_01_13 = {2a 70 61 79 6d 65 6e 74 } //01 00  *payment
		$a_01_14 = {2a 64 69 73 70 6c 61 79 2a 6e 6f 6e 65 2a } //01 00  *display*none*
		$a_01_15 = {2a 63 6f 75 6e 74 79 2a 63 69 74 79 2a } //01 00  *county*city*
		$a_01_16 = {2a 64 69 73 70 6c 61 79 2a 69 6e 6c 69 6e 65 2a 63 6f 6c 6f 72 2a 72 65 64 2a } //01 00  *display*inline*color*red*
		$a_01_17 = {2d 69 6e 66 65 63 74 3d } //01 00  -infect=
		$a_01_18 = {2d 73 65 6c 66 63 75 72 65 } //01 00  -selfcure
		$a_01_19 = {25 00 73 00 5c 00 74 00 72 00 61 00 73 00 68 00 25 00 58 00 } //00 00  %s\trash%X
	condition:
		any of ($a_*)
 
}