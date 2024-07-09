
rule Ransom_Win64_BastaLoader_KF_MTB{
	meta:
		description = "Ransom:Win64/BastaLoader.KF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {41 89 c8 11 89 ?? ?? ?? ?? 2c ?? 3c ?? 85 65 ?? be ?? ?? ?? ?? c8 ?? ?? ?? 89 76 ?? 65 79 } //1
		$a_03_1 = {89 c8 3b 70 ?? 30 89 ?? ?? ?? ?? 29 aa ?? ?? ?? ?? 89 c8 00 89 ?? ?? ?? ?? 89 c0 05 ?? ?? ?? ?? 0d ?? ?? ?? ?? 0d ?? ?? ?? ?? 0d ?? ?? ?? ?? 69 be ?? ?? ?? ?? ?? ?? ?? ?? 7b } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}