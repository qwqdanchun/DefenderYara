
rule Trojan_Win32_Nedsym_J{
	meta:
		description = "Trojan:Win32/Nedsym.J,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {33 d2 03 04 24 13 54 24 04 83 c4 08 8b d8 ff d3 8b d0 b8 ?? ?? ?? ?? e8 ?? ?? ?? ?? a1 ?? ?? ?? ?? 80 38 22 } //1
		$a_03_1 = {6a 00 6a 00 a1 ?? ?? ?? ?? e8 ?? ?? ?? ?? 50 6a 00 e8 ?? ?? ?? ?? 68 e8 03 00 00 e8 ?? ?? ?? ?? 6a 00 e8 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}