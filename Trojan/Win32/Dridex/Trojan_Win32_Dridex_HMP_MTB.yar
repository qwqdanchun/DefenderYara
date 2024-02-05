
rule Trojan_Win32_Dridex_HMP_MTB{
	meta:
		description = "Trojan:Win32/Dridex.HMP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 3a 2f 2f 46 69 6c 65 41 70 } //01 00 
		$a_01_1 = {57 69 6e 48 74 74 70 4f 70 65 6e } //01 00 
		$a_01_2 = {56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 } //01 00 
		$a_01_3 = {69 2e 67 79 61 6f 2e 74 6f 70 2f 30 30 31 2f 70 75 70 70 65 } //01 00 
		$a_01_4 = {38 30 39 2e 31 67 53 61 66 61 72 69 36 6b } //01 00 
		$a_01_5 = {66 47 67 36 37 48 68 6c 69 38 39 4a 6a 4b 6b 4c 6c 4d 6d 4e 6e 4f 6f 50 70 51 71 } //01 00 
		$a_01_6 = {2f 65 6b 65 72 6e 65 6c } //00 00 
	condition:
		any of ($a_*)
 
}