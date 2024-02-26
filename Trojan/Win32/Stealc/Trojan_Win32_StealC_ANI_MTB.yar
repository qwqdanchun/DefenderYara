
rule Trojan_Win32_StealC_ANI_MTB{
	meta:
		description = "Trojan:Win32/StealC.ANI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {33 c5 33 ed 89 7c 24 18 89 44 24 10 89 2d 90 01 04 8b 44 24 18 01 05 90 01 04 8b 0d 90 01 04 89 4c 24 28 89 6c 24 18 8b 44 24 28 01 44 24 18 8b 44 24 10 33 44 24 18 89 44 24 18 90 00 } //01 00 
		$a_03_1 = {c1 e8 05 03 44 24 38 33 cf c7 05 90 01 04 19 36 6b ff c7 05 90 01 04 ff ff ff ff 89 44 24 18 89 4c 24 10 8b 44 24 18 31 44 24 10 2b 74 24 10 81 c3 90 01 04 ff 4c 24 20 0f 85 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}