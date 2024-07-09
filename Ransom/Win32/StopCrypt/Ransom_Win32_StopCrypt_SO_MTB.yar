
rule Ransom_Win32_StopCrypt_SO_MTB{
	meta:
		description = "Ransom:Win32/StopCrypt.SO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {8d 0c 07 33 4d ?? 89 35 ?? ?? ?? ?? 33 4d ?? 89 4d ?? 8b 45 ?? 01 05 } //1
		$a_03_1 = {c1 e8 05 03 45 ?? 68 ?? ?? ?? ?? 33 45 ?? c7 05 ?? ?? ?? ?? ?? ?? ?? ?? 33 c7 2b d8 8d 45 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}