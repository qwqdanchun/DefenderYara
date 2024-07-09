
rule Trojan_Win32_Zloader_SIB_MTB{
	meta:
		description = "Trojan:Win32/Zloader.SIB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 02 00 00 "
		
	strings :
		$a_02_0 = {8b de 2b 5c 24 ?? 83 c3 ?? 8b 00 89 44 24 ?? 8b 44 24 ?? 05 ?? ?? ?? ?? 89 1d ?? ?? ?? ?? 03 c1 83 3d ?? ?? ?? ?? ?? 89 44 24 ?? 74 ?? 8b c7 2b c1 2b 44 24 ?? 03 f0 89 35 ?? ?? ?? ?? eb ?? 8b c8 2b ce 83 c1 03 83 25 ?? ?? ?? ?? ?? 8b 44 24 ?? 8d 34 11 8b 4c 24 ?? 05 ?? ?? ?? ?? 83 c1 ?? a3 ?? ?? ?? ?? 03 f1 8b 4c 24 ?? 83 44 24 ?? 04 89 01 8b ce 2b cb 33 c0 } //10
		$a_02_1 = {41 83 f9 19 7c ?? 8b 15 ?? ?? ?? ?? 68 ?? ?? ?? ?? 6a 40 68 ?? ?? ?? ?? 52 6a ff a3 ?? ?? ?? ?? 89 55 ?? ff 15 ?? ?? ?? ?? 8b 0d ?? ?? ?? ?? a1 ?? ?? ?? ?? 3b 05 ?? ?? ?? ?? 74 ?? 8d 81 ?? ?? ?? ?? 3b 05 ?? ?? ?? ?? 74 ?? 47 83 ff ?? 7c ?? 83 3d ?? ?? ?? ?? ?? a3 f0 88 09 01 75 ?? 0f b6 05 ?? ?? ?? ?? 66 83 c0 ?? 6a ?? 0f b7 c0 5e 2b f0 a1 ?? ?? ?? ?? 2b 05 ?? ?? ?? ?? 3d ?? ?? ?? ?? 75 ?? 8d 46 ?? 0f b7 c0 89 45 ?? eb ?? 6a ?? 58 2b c6 01 05 ?? ?? ?? ?? c6 05 ?? ?? ?? ?? ?? 8b 7d ?? 81 c3 ?? ?? ?? ?? 03 da ff d7 } //10
	condition:
		((#a_02_0  & 1)*10+(#a_02_1  & 1)*10) >=10
 
}