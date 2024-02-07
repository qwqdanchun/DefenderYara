
rule Trojan_Win32_Agent_KM{
	meta:
		description = "Trojan:Win32/Agent.KM,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {83 7d 0c 01 75 38 68 00 20 00 00 6a 00 6a 00 6a 00 68 04 a1 00 00 ff 35 90 01 04 ff 15 90 01 04 a3 90 01 04 6a 00 68 2c 01 00 00 68 57 07 00 00 ff 75 08 ff 15 90 01 04 eb 90 00 } //01 00 
		$a_03_1 = {68 c2 01 00 00 68 f4 01 00 00 6a 64 6a 64 68 00 00 cf 00 68 90 01 04 68 90 01 04 6a 00 ff 15 90 01 04 89 45 cc 6a 00 ff 75 cc e8 90 00 } //01 00 
		$a_01_2 = {49 72 61 71 65 61 61 } //01 00  Iraqeaa
		$a_01_3 = {44 31 33 39 35 36 43 34 35 42 39 34 } //00 00  D13956C45B94
	condition:
		any of ($a_*)
 
}