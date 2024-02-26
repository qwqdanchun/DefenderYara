
rule Trojan_Win32_StealC_CCDJ_MTB{
	meta:
		description = "Trojan:Win32/StealC.CCDJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {83 c4 04 a3 90 01 04 68 90 01 04 e8 90 01 04 83 c4 04 a3 90 01 04 68 90 01 04 e8 90 01 04 83 c4 04 a3 90 01 04 68 90 01 04 e8 90 01 04 83 c4 04 a3 90 01 04 68 90 01 04 e8 90 01 04 83 c4 04 a3 90 01 04 68 90 01 04 e8 90 01 04 83 c4 04 a3 90 01 04 68 90 01 04 e8 90 01 04 83 c4 04 a3 90 01 04 68 90 01 04 e8 90 01 04 83 c4 04 90 00 } //01 00 
		$a_01_1 = {38 33 33 33 35 33 35 34 33 33 35 37 37 32 30 39 31 33 39 34 36 39 38 38 38 34 30 31 } //01 00  8333535433577209139469888401
		$a_01_2 = {56 4d 77 61 72 65 } //01 00  VMware
		$a_01_3 = {48 41 4c 39 54 48 } //01 00  HAL9TH
		$a_01_4 = {4a 6f 68 6e 44 6f 65 } //00 00  JohnDoe
	condition:
		any of ($a_*)
 
}