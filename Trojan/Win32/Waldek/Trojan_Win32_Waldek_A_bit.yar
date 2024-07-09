
rule Trojan_Win32_Waldek_A_bit{
	meta:
		description = "Trojan:Win32/Waldek.A!bit,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {75 0c c7 05 ?? ?? ?? ?? 01 00 00 00 eb 0a c7 05 ?? ?? ?? ?? 00 00 00 00 e8 ?? ?? ?? ?? 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? a3 ?? ?? ?? ?? ff 15 ?? ?? ?? ?? 6a 00 6a 02 50 ff 15 ?? ?? ?? ?? a1 ?? ?? ?? ?? 8d 0c 40 89 0d ?? ?? ?? ?? 85 c9 7e 0c } //1
		$a_03_1 = {57 8b f8 8b 4f 14 83 f9 10 72 02 8b 07 3d ?? ?? ?? ?? 77 35 83 f9 10 72 04 8b 07 eb 02 8b c7 8b 57 10 03 d0 81 fa ?? ?? ?? ?? 76 1d 83 f9 10 72 04 8b 07 eb 02 8b c7 b9 ?? ?? ?? ?? 2b c8 51 57 8b c3 e8 ?? ?? ?? ?? 5f c3 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}