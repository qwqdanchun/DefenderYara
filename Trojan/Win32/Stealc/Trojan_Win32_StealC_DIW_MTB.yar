
rule Trojan_Win32_StealC_DIW_MTB{
	meta:
		description = "Trojan:Win32/StealC.DIW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {33 ff 8b d0 c1 ea 05 03 d5 8b c8 c1 e1 04 89 54 24 1c 03 cb 8d 14 06 33 ca 89 4c 24 10 89 3d 90 01 04 8b 44 24 1c 01 05 90 01 04 a1 a4 67 7b 00 89 44 24 34 90 00 } //01 00 
		$a_03_1 = {31 7c 24 10 8b 44 24 1c 31 44 24 10 8b 44 24 10 29 44 24 18 a1 90 01 04 3d 93 00 00 00 74 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}