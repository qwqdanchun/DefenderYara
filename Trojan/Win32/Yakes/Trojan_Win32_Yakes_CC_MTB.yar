
rule Trojan_Win32_Yakes_CC_MTB{
	meta:
		description = "Trojan:Win32/Yakes.CC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {32 44 24 53 8b 15 90 01 04 6a 00 52 88 44 24 90 00 } //01 00 
		$a_03_1 = {8b d6 83 f2 03 69 d2 90 02 04 2b d0 89 54 24 90 00 } //01 00 
		$a_01_2 = {51 75 65 72 79 50 65 72 66 6f 72 6d 61 6e 63 65 43 6f 75 6e 74 65 72 } //01 00  QueryPerformanceCounter
		$a_01_3 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //01 00  IsDebuggerPresent
		$a_01_4 = {47 65 74 54 69 63 6b 43 6f 75 6e 74 } //00 00  GetTickCount
	condition:
		any of ($a_*)
 
}