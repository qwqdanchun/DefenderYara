
rule Trojan_Win32_Hancitor_GP_MTB{
	meta:
		description = "Trojan:Win32/Hancitor.GP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_02_0 = {2b ca 89 0d ?? ?? ?? ?? ba ?? ?? ?? ?? c7 05 ?? ?? ?? ?? 00 00 00 00 0f b6 0d ?? ?? ?? ?? 03 cf 02 c2 04 08 66 81 fb ?? ?? 8d ac 69 ?? ?? ?? ?? 8b 0e a2 ?? ?? ?? ?? 75 ?? 0f b7 05 ?? ?? ?? ?? 2b e8 81 c1 ?? ?? ?? ?? 8b c7 2b c2 89 0e 83 e8 ?? 83 c6 04 83 6c 24 ?? 01 89 0d ?? ?? ?? ?? 75 } //10
	condition:
		((#a_02_0  & 1)*10) >=10
 
}