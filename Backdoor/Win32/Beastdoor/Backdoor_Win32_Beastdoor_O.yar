
rule Backdoor_Win32_Beastdoor_O{
	meta:
		description = "Backdoor:Win32/Beastdoor.O,SIGNATURE_TYPE_PEHSTR_EXT,16 00 16 00 06 00 00 "
		
	strings :
		$a_00_0 = {50 61 73 73 77 64 } //1 Passwd
		$a_00_1 = {4e 75 6d 20 44 65 6c } //1 Num Del
		$a_00_2 = {50 67 44 6e } //1 PgDn
		$a_00_3 = {42 6f 6f 74 3a 20 5b } //1 Boot: [
		$a_02_4 = {6a 00 68 80 00 00 00 6a 03 6a 00 6a 01 68 00 00 00 80 a1 ?? ?? ?? ?? 8b 00 e8 ?? ?? ?? ?? 50 e8 ?? ?? ?? ?? 8b 15 ?? ?? ?? ?? 89 02 a1 ?? ?? ?? ?? 50 a1 ?? ?? ?? ?? 50 a1 ?? ?? ?? ?? 50 a1 ?? ?? ?? ?? 8b 00 50 e8 ?? ?? ?? ?? a1 ?? ?? ?? ?? 8b 00 50 e8 ?? ?? ?? ?? 6a 00 68 80 00 00 00 6a 03 6a 00 6a 01 68 00 00 00 80 a1 ?? ?? ?? ?? 8b 00 e8 ?? ?? ?? ?? 50 e8 ?? ?? ?? ?? 8b 15 ?? ?? ?? ?? 89 02 a1 ?? ?? ?? ?? 80 38 00 } //10
		$a_02_5 = {53 56 57 55 83 c4 f8 ?? ?? ?? ?? 89 04 24 ?? ?? 8b 14 24 e8 ?? ?? ?? ?? ?? ?? 8b 45 00 e8 ?? ?? ?? ?? 66 85 c0 76 44 66 89 44 24 04 66 bb 01 00 ?? ?? e8 ?? ?? ?? ?? 0f b7 fb 8b 55 00 8a 54 3a ff 0f b7 ce c1 e9 08 32 d1 88 54 38 ff 8b 04 24 0f b6 44 38 ff 66 03 f0 66 69 c6 f1 aa 66 05 bd 54 ?? ?? 43 66 ff 4c 24 04 75 c5 59 5a 5d 5f 5e 5b c3 } //10
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_02_4  & 1)*10+(#a_02_5  & 1)*10) >=22
 
}