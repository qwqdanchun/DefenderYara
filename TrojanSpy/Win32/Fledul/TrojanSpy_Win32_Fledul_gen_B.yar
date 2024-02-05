
rule TrojanSpy_Win32_Fledul_gen_B{
	meta:
		description = "TrojanSpy:Win32/Fledul.gen!B,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {31 32 38 78 36 34 78 33 32 2e 69 6e 69 } //01 00 
		$a_01_1 = {68 61 6e 63 6f 6f 6b 31 2e 68 74 6d 6c } //01 00 
		$a_01_2 = {52 34 30 2d 33 33 2d 44 4c 4c 33 32 37 33 2d 32 34 2d 34 32 2d 32 34 } //01 00 
		$a_01_3 = {4a 32 30 2d 34 31 2d 32 30 2d 55 33 35 2d 32 33 2d 32 30 2d 33 39 2d 32 34 2d 32 32 2d 32 33 2d 33 37 } //00 00 
	condition:
		any of ($a_*)
 
}