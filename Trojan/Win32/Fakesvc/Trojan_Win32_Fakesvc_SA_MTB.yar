
rule Trojan_Win32_Fakesvc_SA_MTB{
	meta:
		description = "Trojan:Win32/Fakesvc.SA!MTB,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 00 56 00 43 00 48 00 4f 00 53 00 49 00 2e 00 45 00 58 00 45 00 } //01 00 
		$a_01_1 = {4b 00 3a 00 5c 00 45 00 58 00 45 00 20 00 43 00 4f 00 4d 00 50 00 49 00 4c 00 45 00 } //01 00 
		$a_01_2 = {4b 00 3a 00 5c 00 41 00 20 00 4d 00 41 00 53 00 54 00 45 00 52 00 20 00 54 00 5c 00 57 00 49 00 4e 00 5f 00 4b 00 45 00 45 00 50 00 45 00 52 00 5c 00 53 00 56 00 43 00 48 00 4f 00 53 00 49 00 2e 00 76 00 62 00 70 00 } //01 00 
		$a_01_3 = {5c 00 67 00 68 00 6f 00 73 00 74 00 2e 00 62 00 61 00 74 00 } //01 00 
		$a_01_4 = {5c 00 57 00 69 00 6e 00 2d 00 53 00 65 00 63 00 75 00 72 00 65 00 5c 00 77 00 73 00 6c 00 6f 00 67 00 6f 00 6e 00 2e 00 65 00 78 00 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}