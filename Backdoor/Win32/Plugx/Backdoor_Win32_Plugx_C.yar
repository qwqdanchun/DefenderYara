
rule Backdoor_Win32_Plugx_C{
	meta:
		description = "Backdoor:Win32/Plugx.C,SIGNATURE_TYPE_PEHSTR_EXT,03 00 02 00 03 00 00 "
		
	strings :
		$a_00_0 = {53 6f 66 74 77 61 72 65 5c 43 6c 61 73 73 65 73 00 00 00 00 78 62 69 6e 30 31 00 } //1
		$a_03_1 = {53 33 c0 b1 ?? 8a 98 ?? ?? ?? 00 32 d9 88 98 ?? ?? ?? 00 40 3d ?? ?? 00 00 72 ea } //1
		$a_03_2 = {6a 40 68 00 10 00 00 68 ?? ?? 00 00 6a 00 ff d3 8b f0 56 68 ?? ?? 00 00 68 ?? ?? 40 00 e8 67 fa ff ff 8b f8 6a 40 68 00 10 00 00 57 6a 00 ff } //1
	condition:
		((#a_00_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=2
 
}