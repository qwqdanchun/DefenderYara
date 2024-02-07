
rule PWS_Win32_Lmir_AHB{
	meta:
		description = "PWS:Win32/Lmir.AHB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {2e 00 57 00 4f 00 4f 00 4f 00 4c 00 2e 00 } //01 00  .WOOOL.
		$a_01_1 = {7a 00 68 00 65 00 6e 00 67 00 74 00 75 00 2e 00 64 00 61 00 74 00 } //01 00  zhengtu.dat
		$a_01_2 = {5c 00 64 00 61 00 74 00 61 00 5c 00 77 00 6f 00 6f 00 6f 00 6c 00 2e 00 64 00 61 00 74 00 } //01 00  \data\woool.dat
		$a_01_3 = {69 00 66 00 79 00 6f 00 75 00 64 00 6f 00 74 00 68 00 61 00 74 00 61 00 67 00 61 00 69 00 6e 00 69 00 77 00 69 00 6c 00 6c 00 6b 00 69 00 63 00 6b 00 79 00 6f 00 75 00 72 00 61 00 73 00 73 00 } //01 00  ifyoudothatagainiwillkickyourass
		$a_01_4 = {23 00 33 00 32 00 37 00 37 00 30 00 } //01 00  #32770
		$a_01_5 = {52 00 41 00 56 00 4d 00 4f 00 4e 00 } //00 00  RAVMON
	condition:
		any of ($a_*)
 
}