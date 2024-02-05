
rule Trojan_Win32_Vundo_KS{
	meta:
		description = "Trojan:Win32/Vundo.KS,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {66 81 f9 4d 5a 0f 85 } //01 00 
		$a_01_1 = {66 81 39 50 45 0f 85 } //01 00 
		$a_01_2 = {81 04 24 a2 81 93 4a } //01 00 
		$a_01_3 = {81 04 24 44 24 45 00 } //01 00 
		$a_01_4 = {66 81 38 90 cc 0f 85 } //01 00 
		$a_01_5 = {ff 54 24 2c } //01 00 
		$a_01_6 = {81 38 55 8b ec 5d 0f 85 } //00 00 
	condition:
		any of ($a_*)
 
}