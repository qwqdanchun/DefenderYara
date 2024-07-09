
rule Trojan_Win32_Smokeloader_GHM_MTB{
	meta:
		description = "Trojan:Win32/Smokeloader.GHM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b c7 c1 e8 ?? 03 c5 33 44 24 ?? 33 c8 8d 44 24 ?? 89 4c 24 ?? e8 ?? ?? ?? ?? 81 44 24 ?? 47 86 c8 61 83 ea } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}
rule Trojan_Win32_Smokeloader_GHM_MTB_2{
	meta:
		description = "Trojan:Win32/Smokeloader.GHM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b c7 c1 e8 ?? 03 c5 33 44 24 ?? 33 c8 8d 44 24 ?? 89 4c 24 ?? e8 ?? ?? ?? ?? 8b 44 24 ?? 29 44 24 ?? 83 ea ?? 0f 85 } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}