
rule Virus_Win32_Wak_A{
	meta:
		description = "Virus:Win32/Wak.A,SIGNATURE_TYPE_PEHSTR,0b 00 0b 00 0b 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 42 4c 41 43 4b 2d 44 41 59 2e 45 58 45 } //01 00  \BLACK-DAY.EXE
		$a_01_1 = {5c 61 75 74 6f 72 75 6e 2e 69 6e 66 } //01 00  \autorun.inf
		$a_01_2 = {2e 41 53 50 58 } //01 00  .ASPX
		$a_01_3 = {2e 48 54 4d 4c } //01 00  .HTML
		$a_01_4 = {42 79 20 3a 20 77 73 77 68 61 63 6b 65 72 } //01 00  By : wswhacker
		$a_01_5 = {48 69 2c 46 72 69 65 6e 64 3a } //01 00  Hi,Friend:
		$a_01_6 = {59 6f 75 72 20 63 6f 6d 70 75 74 65 72 20 77 65 72 65 20 69 6e 66 65 63 74 20 6d 79 20 77 6f 72 6d 21 } //01 00  Your computer were infect my worm!
		$a_01_7 = {50 6c 65 61 73 65 20 61 64 64 20 6d 79 20 51 51 20 4e 75 6d 3a 35 31 38 38 33 34 30 2c 38 37 34 30 38 37 34 39 2c 37 36 36 36 35 36 33 39 } //01 00  Please add my QQ Num:5188340,87408749,76665639
		$a_01_8 = {54 68 65 20 77 6f 72 6d 20 4e 61 6d 65 3a 42 6c 61 63 6b 2d 44 61 79 } //01 00  The worm Name:Black-Day
		$a_01_9 = {61 76 70 2e 65 78 65 } //01 00  avp.exe
		$a_01_10 = {5c 69 6e 74 65 72 76 69 65 77 2e 65 78 65 } //00 00  \interview.exe
	condition:
		any of ($a_*)
 
}