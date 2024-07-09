
rule TrojanSpy_Win32_Banker_VDE_bit{
	meta:
		description = "TrojanSpy:Win32/Banker.VDE!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {30 10 c1 c2 07 40 49 75 f7 } //1
		$a_03_1 = {8b d0 c6 05 ?? ?? ?? ?? 57 c6 05 ?? ?? ?? ?? 6f c6 05 ?? ?? ?? ?? 77 c6 05 ?? ?? ?? ?? 36 c6 05 ?? ?? ?? ?? 34 c6 05 ?? ?? ?? ?? 44 c6 05 ?? ?? ?? ?? 69 c6 05 ?? ?? ?? ?? 73 c6 05 ?? ?? ?? ?? 61 c6 05 ?? ?? ?? ?? 62 c6 05 ?? ?? ?? ?? 6c c6 05 ?? ?? ?? ?? 65 } //1
		$a_01_2 = {8b c6 24 0f 3c 0a 1c 69 2f 88 04 11 c1 ee 04 49 79 ee } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}