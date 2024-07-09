
rule Ransom_Win32_StopCrypt_SAC_MTB{
	meta:
		description = "Ransom:Win32/StopCrypt.SAC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {d3 e8 03 45 ?? 89 45 ?? 8b 45 ?? 31 45 ?? 8b 45 ?? 31 45 ?? 89 1d ?? ?? ?? ?? 8b 45 ?? 29 45 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}