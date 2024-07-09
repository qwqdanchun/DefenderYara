
rule Ransom_Win64_Basta_AC_MTB{
	meta:
		description = "Ransom:Win64/Basta.AC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {4c 8b c3 4c 8d 0d [0-06] b8 ?? ?? ?? ?? 4d 8d 40 ?? f7 eb 8b cb ff c3 c1 fa ?? 8b c2 c1 e8 ?? 03 d0 6b c2 ?? 2b c8 48 63 c1 42 0f b6 8c 08 ?? ?? ?? ?? 43 32 8c 08 ?? ?? ?? ?? 48 8b 44 24 ?? 41 88 4c 00 ?? 3b 9c 24 ?? ?? ?? ?? 72 ?? ff 54 24 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}