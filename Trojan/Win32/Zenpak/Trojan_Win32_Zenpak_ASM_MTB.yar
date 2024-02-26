
rule Trojan_Win32_Zenpak_ASM_MTB{
	meta:
		description = "Trojan:Win32/Zenpak.ASM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 02 00 "
		
	strings :
		$a_03_0 = {83 c2 03 83 ea 09 01 35 90 01 02 00 10 8d 05 90 01 02 00 10 31 38 4a 01 1d 90 01 02 00 10 40 31 c2 89 e8 50 8f 05 90 00 } //02 00 
		$a_03_1 = {f7 e1 c1 ea 03 6b c2 0c 8b 4c 24 90 01 01 29 c1 89 c8 83 e8 06 89 4c 24 90 01 01 89 44 24 90 01 01 74 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}