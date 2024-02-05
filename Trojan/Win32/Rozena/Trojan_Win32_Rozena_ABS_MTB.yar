
rule Trojan_Win32_Rozena_ABS_MTB{
	meta:
		description = "Trojan:Win32/Rozena.ABS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {53 56 57 6a 04 68 00 30 00 00 68 1f 03 00 00 6a 00 ff 15 90 01 04 8b d8 ba 3d 06 00 00 8b f3 8a 8a 90 01 04 8d 76 01 83 ea 01 88 4e ff 79 ef 90 00 } //01 00 
		$a_03_1 = {8d 45 f8 50 68 90 01 04 57 e8 90 01 04 8a 45 f8 83 c4 0c 88 04 1e 83 c7 02 46 81 fe 3d 06 00 00 72 dc 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}