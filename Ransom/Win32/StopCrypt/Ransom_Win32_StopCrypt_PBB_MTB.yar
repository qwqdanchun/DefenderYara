
rule Ransom_Win32_StopCrypt_PBB_MTB{
	meta:
		description = "Ransom:Win32/StopCrypt.PBB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b d7 d3 e2 8b 4d ?? 8b c7 d3 e8 03 95 ?? ?? ?? ?? 89 45 ?? 8b 85 ?? ?? ?? ?? 01 45 ?? 8d 04 3e 33 45 ?? 89 1d ?? ?? ?? ?? 33 d0 8b ca 8d 85 ?? ?? ?? ?? e8 ?? ?? ?? ?? 81 c6 47 86 c8 61 ff 8d ?? ?? ?? ?? 0f 85 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}