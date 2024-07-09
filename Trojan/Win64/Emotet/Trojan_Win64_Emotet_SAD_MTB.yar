
rule Trojan_Win64_Emotet_SAD_MTB{
	meta:
		description = "Trojan:Win64/Emotet.SAD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b c2 c1 e8 ?? 03 d0 48 ?? ?? 48 ?? ?? ?? 48 ?? ?? 48 ?? ?? 42 ?? ?? ?? ?? 43 ?? ?? ?? 41 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}