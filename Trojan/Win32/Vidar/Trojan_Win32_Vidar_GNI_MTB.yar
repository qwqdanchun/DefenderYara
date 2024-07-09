
rule Trojan_Win32_Vidar_GNI_MTB{
	meta:
		description = "Trojan:Win32/Vidar.GNI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b 4d 08 03 8d ?? ?? ?? ?? 8a 09 88 08 ?? ?? 8b 45 08 03 85 ?? ?? ?? ?? 0f b6 00 8b 8d ?? ?? ?? ?? 33 84 8d ?? ?? ?? ?? 8b 8d ?? ?? ?? ?? 03 8d ?? ?? ?? ?? 88 01 } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}