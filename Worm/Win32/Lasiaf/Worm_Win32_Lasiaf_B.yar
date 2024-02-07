
rule Worm_Win32_Lasiaf_B{
	meta:
		description = "Worm:Win32/Lasiaf.B,SIGNATURE_TYPE_PEHSTR,0d 00 0d 00 04 00 00 0a 00 "
		
	strings :
		$a_01_0 = {5c 00 41 00 73 00 6d 00 61 00 68 00 61 00 6e 00 69 00 5c 00 41 00 73 00 6d 00 61 00 68 00 61 00 6e 00 69 00 2e 00 76 00 62 00 70 00 } //01 00  \Asmahani\Asmahani.vbp
		$a_01_1 = {2d 00 4c 00 61 00 73 00 69 00 61 00 66 00 2d 00 } //01 00  -Lasiaf-
		$a_01_2 = {41 00 73 00 6d 00 61 00 68 00 61 00 6e 00 69 00 27 00 73 00 4d 00 73 00 67 00 2e 00 74 00 78 00 74 00 } //01 00  Asmahani'sMsg.txt
		$a_01_3 = {4d 00 79 00 76 00 77 00 61 00 } //00 00  Myvwa
	condition:
		any of ($a_*)
 
}