
rule Trojan_Win32_Ekstak_G_MTB{
	meta:
		description = "Trojan:Win32/Ekstak.G!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_02_0 = {33 45 ec 89 45 90 01 01 53 b8 90 01 04 b9 90 01 04 33 c1 a9 90 01 04 e9 90 09 0b 00 a1 90 01 04 33 05 90 00 } //01 00 
		$a_02_1 = {8b 45 08 8b 00 a3 90 01 04 3b 45 90 01 01 0f 95 c1 53 b8 90 01 04 b9 90 01 04 33 c1 a9 90 01 04 e9 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Ekstak_G_MTB_2{
	meta:
		description = "Trojan:Win32/Ekstak.G!MTB,SIGNATURE_TYPE_PEHSTR,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {57 57 57 ff 15 54 83 50 00 01 05 70 d9 50 00 68 48 a1 50 00 8d 55 dc 52 ff 15 64 d9 50 00 89 7d fc } //01 00 
		$a_01_1 = {c7 05 a4 dc 50 00 50 72 6f 63 c7 05 a8 dc 50 00 65 73 73 33 c7 05 ac dc 50 00 32 46 69 72 66 c7 05 b0 dc 50 00 73 74 } //00 00 
	condition:
		any of ($a_*)
 
}