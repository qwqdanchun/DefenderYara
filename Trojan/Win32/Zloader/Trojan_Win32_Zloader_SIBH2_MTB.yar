
rule Trojan_Win32_Zloader_SIBH2_MTB{
	meta:
		description = "Trojan:Win32/Zloader.SIBH2!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {89 c7 39 f0 90 18 8b 45 ?? 30 1c 38 68 ?? ?? ?? ?? e8 ?? ?? ?? ?? 83 c4 04 89 da 89 c1 c1 eb ?? d3 e2 89 d8 89 d6 f7 d0 89 55 ?? f7 d6 89 45 ?? 68 ?? ?? ?? ?? e8 ?? ?? ?? ?? 83 c4 04 f7 d0 89 45 ?? 68 ?? ?? ?? ?? e8 ?? ?? ?? ?? 83 c4 04 21 f0 8b 75 90 1b 05 23 75 90 1b 09 09 c6 68 ?? ?? ?? ?? e8 ?? ?? ?? ?? 83 c4 04 89 d9 23 45 90 1b 06 23 4d 90 1b 09 6a 00 51 50 e8 ?? ?? ?? ?? 83 c4 0c 31 f0 89 c6 68 ?? ?? ?? ?? e8 ?? ?? ?? ?? 83 c4 04 0b 45 90 1b 09 21 d8 23 45 90 1b 05 6a 00 50 56 8b 75 ?? e8 ?? ?? ?? ?? 83 c4 0c 89 c3 f7 d7 57 6a 00 e8 ?? ?? ?? ?? 83 c4 08 89 c7 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}