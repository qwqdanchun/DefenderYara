
rule PUA_Win32_FusionCore_C{
	meta:
		description = "PUA:Win32/FusionCore.C,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {46 55 53 5f 53 48 4f 57 4f 46 46 45 52 53 } //01 00 
		$a_01_1 = {46 55 53 5f 49 4e 49 54 44 4c 4c } //01 00 
		$a_01_2 = {46 55 53 5f 44 45 43 4c 49 4e 45 4f 46 46 45 52 } //01 00 
		$a_01_3 = {46 55 53 5f 47 45 54 44 4c 4c 53 54 41 54 45 } //01 00 
		$a_01_4 = {46 55 53 5f 4e 45 58 54 4f 46 46 45 52 } //01 00 
		$a_01_5 = {46 55 53 5f 49 4e 53 54 41 4c 4c 4f 46 46 45 52 53 } //01 00 
		$a_01_6 = {46 55 53 5f 46 52 45 45 44 4c 4c } //01 00 
		$a_01_7 = {46 55 53 5f 4f 46 46 45 52 5f 44 45 46 41 55 4c 54 5f 43 41 50 54 49 4f 4e } //01 00 
		$a_01_8 = {46 55 53 5f 4f 46 46 45 52 5f 44 45 53 43 } //01 00 
		$a_01_9 = {46 55 53 5f 4f 46 46 45 52 5f 43 41 50 54 49 4f 4e 5f 50 52 45 46 49 58 } //00 00 
	condition:
		any of ($a_*)
 
}