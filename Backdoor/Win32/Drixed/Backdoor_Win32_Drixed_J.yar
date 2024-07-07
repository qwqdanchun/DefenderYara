
rule Backdoor_Win32_Drixed_J{
	meta:
		description = "Backdoor:Win32/Drixed.J,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {74 18 b8 54 00 00 00 e8 90 01 02 00 00 57 6a 08 ff 35 90 01 03 00 ff d0 59 5f c3 b8 52 00 00 00 e8 90 01 02 00 00 90 00 } //1
		$a_01_1 = {80 7a 06 00 75 28 80 7a 05 61 75 22 80 7a 04 74 75 1c 80 7a 03 61 75 16 80 7a 02 64 75 10 80 7a 01 73 75 0a 80 3a 2e 75 05 } //1
		$a_03_2 = {00 00 53 6a 00 68 01 00 10 00 ff d0 8b f0 85 f6 74 04 33 ff eb bd e8 90 01 02 00 00 b8 62 00 00 00 e8 90 01 02 00 00 90 09 08 00 b8 62 00 00 00 e8 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}