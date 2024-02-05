
rule Trojan_Win32_Camec_I{
	meta:
		description = "Trojan:Win32/Camec.I,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {66 3b f3 0f 8c 90 01 01 00 00 00 66 6b ff 40 66 8b 45 dc 0f 80 90 01 01 01 00 00 66 03 fe 0f 80 90 01 01 01 00 00 66 05 06 00 0f 80 90 01 01 01 00 00 66 3d 08 00 90 00 } //01 00 
		$a_00_1 = {54 5f 50 65 67 61 4a 61 6e 65 6c 61 43 6f 6d 61 6e 64 6f 73 } //01 00 
		$a_00_2 = {45 78 74 72 61 74 6f 5f 30 30 31 4a } //01 00 
		$a_00_3 = {45 5f 47 69 72 6f 5f 52 61 70 69 64 6f } //00 00 
	condition:
		any of ($a_*)
 
}