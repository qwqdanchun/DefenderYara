
rule Trojan_Win32_Ekstak_CC_MTB{
	meta:
		description = "Trojan:Win32/Ekstak.CC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 05 00 00 01 00 "
		
	strings :
		$a_02_0 = {3d 4e e6 40 bb 74 90 01 01 f7 05 90 01 04 00 00 ff ff 0f 85 90 01 04 b8 83 9a de cb 90 00 } //01 00 
		$a_02_1 = {3d 4e e6 40 bb 74 90 01 01 f7 05 90 01 04 00 00 ff ff 75 90 01 01 b8 4f e6 40 bb 90 00 } //01 00 
		$a_02_2 = {3d 4e e6 40 bb 74 90 01 01 f7 05 90 01 04 00 00 ff ff 0f 85 90 01 04 b8 90 01 04 81 90 00 } //01 00 
		$a_02_3 = {3d 4e e6 40 bb c6 44 24 90 01 01 74 c6 44 24 90 01 01 70 c6 44 24 90 01 01 72 c6 44 24 90 01 01 79 c6 44 24 90 01 01 2e c6 44 24 90 01 01 64 74 90 01 01 a9 00 00 ff ff 74 90 01 01 f7 d0 90 00 } //01 00 
		$a_02_4 = {6a 0a 58 50 ff 75 9c 56 56 ff 15 90 01 04 50 e8 90 01 04 89 45 a0 50 e8 90 01 04 8b 45 ec 8b 08 8b 09 89 4d 98 50 51 e8 90 01 04 59 59 c3 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}