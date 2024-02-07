
rule Trojan_Win32_Netfosor_B_dha{
	meta:
		description = "Trojan:Win32/Netfosor.B!dha,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {42 69 74 64 65 66 65 6e 64 65 72 20 32 30 31 33 00 00 00 5c 4b 61 73 70 65 72 73 6b 79 20 4c 61 62 5c 4b 61 73 70 65 72 73 6b 79 20 49 6e 74 65 72 6e 65 74 20 53 65 63 75 72 69 74 79 20 32 30 31 33 } //01 00 
		$a_01_1 = {73 65 63 63 65 6e 74 65 72 2e 78 78 78 } //01 00  seccenter.xxx
		$a_03_2 = {48 89 47 ff 8b 05 90 01 04 48 8d 8c 24 90 90 01 00 00 89 47 07 0f b7 05 90 01 04 ba 00 00 00 40 c7 44 24 28 80 00 00 00 c7 44 24 20 02 00 00 00 66 89 47 0b ff 15 90 00 } //00 00 
		$a_00_3 = {5d } //04 00  ]
	condition:
		any of ($a_*)
 
}