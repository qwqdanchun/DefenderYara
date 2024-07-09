
rule Trojan_Win32_Cridex_GFT_MTB{
	meta:
		description = "Trojan:Win32/Cridex.GFT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 04 00 00 "
		
	strings :
		$a_02_0 = {8b 7d 10 8b e5 33 c8 8d 4e 14 64 89 0d ?? ?? ?? ?? 33 c8 8b 65 e8 0f 84 ?? ?? ?? ?? 85 c0 89 45 0c 8d 15 ?? ?? ?? ?? 89 15 ?? ?? ?? ?? 8b 5d 20 89 5d 08 8b d3 33 15 ?? ?? ?? ?? 81 ea ?? ?? ?? ?? 03 15 ?? ?? ?? ?? 81 ea ?? ?? ?? ?? 89 55 c0 68 ?? ?? ?? ?? 6a 11 6a 64 6a 00 ff 15 ?? ?? ?? ?? 89 05 ?? ?? ?? ?? 81 f8 00 00 00 00 0f 85 } //10
		$a_01_1 = {4f 70 65 6e 43 6c 69 70 62 6f 61 72 64 } //1 OpenClipboard
		$a_01_2 = {53 65 74 43 6c 69 70 62 6f 61 72 64 44 61 74 61 } //1 SetClipboardData
		$a_01_3 = {56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 } //1 VirtualProtect
	condition:
		((#a_02_0  & 1)*10+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=13
 
}