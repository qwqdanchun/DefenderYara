
rule Trojan_Win32_Redline_PCE_MTB{
	meta:
		description = "Trojan:Win32/Redline.PCE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {83 ec 08 89 54 24 ?? c7 04 24 ?? ?? ?? ?? 8b 44 24 ?? 89 04 24 8b 44 24 ?? 31 04 24 8b 04 24 89 01 } //1
		$a_03_1 = {d3 e2 89 5c 24 ?? 03 54 24 ?? 8b 44 24 ?? 01 44 24 ?? 8b 44 24 ?? 01 44 24 ?? 8b 44 24 ?? 89 44 24 ?? 8b 4c 24 ?? 8b c6 d3 e8 89 44 24 ?? 8b 44 24 ?? 01 44 24 ?? 33 54 24 ?? 8d 4c 24 ?? 89 54 24 ?? 52 8b 54 24 ?? e8 ?? ?? ?? ?? 8b 54 24 ?? 8d 4c 24 ?? 89 1d ?? ?? ?? ?? e8 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}