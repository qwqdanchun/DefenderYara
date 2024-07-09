
rule Trojan_Win64_TerraCrypt_AB_MTB{
	meta:
		description = "Trojan:Win64/TerraCrypt.AB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {48 83 ec 08 48 c7 04 24 00 00 00 00 48 ff c8 75 ?? 48 83 ec 28 48 8d 15 ?? ?? ?? ?? 48 8d 4c 24 50 e8 ?? ?? ?? ?? 48 8d 15 ?? ?? ?? ?? 48 8d 4c 24 58 e8 ?? ?? ?? ?? 48 8d 15 ?? ?? ?? ?? 48 8d 4c 24 60 e8 ?? ?? ?? ?? 48 8d 15 ?? ?? ?? ?? 48 8d 4c 24 68 e8 ?? ?? ?? ?? 48 8d 15 ?? ?? ?? ?? 48 8d 4c 24 70 e8 ?? ?? ?? ?? c7 44 24 48 00 00 00 00 eb 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}