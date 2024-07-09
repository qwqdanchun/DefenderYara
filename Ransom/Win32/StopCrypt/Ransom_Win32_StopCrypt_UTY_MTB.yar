
rule Ransom_Win32_StopCrypt_UTY_MTB{
	meta:
		description = "Ransom:Win32/StopCrypt.UTY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {2b f9 8b d7 c1 e2 ?? 89 54 24 ?? 8b 44 24 ?? 01 44 24 ?? 8b c7 c1 e8 ?? c7 05 ?? ?? ?? ?? ?? ?? ?? ?? c7 05 ?? ?? ?? ?? ?? ?? ?? ?? 89 44 24 ?? 8b 44 24 ?? 01 44 24 ?? 8d 0c 3b 31 4c 24 ?? 8b 44 24 ?? 31 44 24 ?? 8b 44 24 ?? 29 44 24 ?? 81 3d ?? ?? ?? ?? ?? ?? ?? ?? 75 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}