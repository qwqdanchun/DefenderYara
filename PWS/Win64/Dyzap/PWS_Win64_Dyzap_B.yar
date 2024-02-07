
rule PWS_Win64_Dyzap_B{
	meta:
		description = "PWS:Win64/Dyzap.B,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {5c 44 59 52 45 5c 78 36 34 5c 52 65 6c 65 61 73 65 5c 69 65 62 61 74 74 6c 65 2e 70 64 62 } //01 00  \DYRE\x64\Release\iebattle.pdb
		$a_00_1 = {5c 00 5c 00 2e 00 5c 00 70 00 69 00 70 00 65 00 5c 00 52 00 61 00 6e 00 67 00 69 00 73 00 50 00 69 00 70 00 65 00 } //01 00  \\.\pipe\RangisPipe
		$a_00_2 = {2f 25 73 2f 25 73 2f 31 34 2f 65 72 72 6f 72 2f 25 73 } //01 00  /%s/%s/14/error/%s
		$a_03_3 = {41 b8 00 02 00 00 c7 44 24 20 63 63 73 72 c6 44 24 24 00 e8 90 01 04 8b f0 85 c0 74 66 81 fe 80 00 00 00 77 5e 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}