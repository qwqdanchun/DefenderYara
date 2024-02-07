
rule Trojan_Win32_SmokeLoader_GJP_MTB{
	meta:
		description = "Trojan:Win32/SmokeLoader.GJP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 02 00 00 0a 00 "
		
	strings :
		$a_03_0 = {8b c6 d3 e0 03 45 dc 33 45 ec 33 c2 89 45 ec 8b 45 ec 29 45 fc 81 45 90 01 01 47 86 c8 61 ff 4d e4 0f 85 90 00 } //01 00 
		$a_01_1 = {56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 } //00 00  VirtualProtect
	condition:
		any of ($a_*)
 
}