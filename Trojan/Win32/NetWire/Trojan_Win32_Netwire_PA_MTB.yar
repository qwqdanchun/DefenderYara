
rule Trojan_Win32_Netwire_PA_MTB{
	meta:
		description = "Trojan:Win32/Netwire.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 "
		
	strings :
		$a_02_0 = {8b c2 83 e0 03 8a 88 ?? ?? ?? ?? 8d 86 ?? ?? ?? ?? 03 c2 30 8a ?? ?? ?? ?? 83 e0 03 30 8a ?? ?? ?? ?? 0f b6 80 ?? ?? ?? ?? 30 82 ?? ?? ?? ?? 8d 87 ?? ?? ?? ?? 03 c2 83 e0 03 0f b6 80 ?? ?? ?? ?? 30 82 ?? ?? ?? ?? 8d 83 ?? ?? ?? ?? 03 c2 83 e0 03 0f b6 80 ?? ?? ?? ?? 30 82 ?? ?? ?? ?? 8b 45 fc 8d 80 ?? ?? ?? ?? 03 c2 83 e0 03 0f b6 80 ?? ?? ?? ?? 30 82 ?? ?? ?? ?? 83 c2 06 81 fa ?? ?? 00 00 0f 82 } //2
		$a_02_1 = {51 6a 40 68 ?? ?? 00 00 68 ?? ?? ?? ?? ff d0 } //1
		$a_01_2 = {56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 } //1 VirtualProtect
	condition:
		((#a_02_0  & 1)*2+(#a_02_1  & 1)*1+(#a_01_2  & 1)*1) >=4
 
}