
rule TrojanSpy_Win32_Plimrost_B{
	meta:
		description = "TrojanSpy:Win32/Plimrost.B,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_00_0 = {48 00 61 00 72 00 64 00 43 00 6f 00 72 00 65 00 20 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 20 00 46 00 6f 00 72 00 20 00 3a 00 20 00 50 00 75 00 62 00 6c 00 69 00 63 00 } //1 HardCore Software For : Public
		$a_00_1 = {3f 00 61 00 63 00 74 00 69 00 6f 00 6e 00 3d 00 61 00 64 00 64 00 26 00 75 00 73 00 65 00 72 00 6e 00 61 00 6d 00 65 00 3d 00 } //1 ?action=add&username=
		$a_03_2 = {f4 02 a9 e7 0b ?? ?? ?? ?? 23 ?? ?? 2a 31 ?? ?? 32 04 00 ?? ?? ?? ?? 35 ?? ?? 04 ?? ?? 64 72 ff 10 00 } //1
		$a_03_3 = {f4 3e eb 6e ?? ?? b3 fb e6 e5 70 ?? ?? 35 ?? ?? 6b ?? ?? f4 1a } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=3
 
}