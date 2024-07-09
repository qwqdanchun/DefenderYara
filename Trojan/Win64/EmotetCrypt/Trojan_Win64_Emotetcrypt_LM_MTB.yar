
rule Trojan_Win64_Emotetcrypt_LM_MTB{
	meta:
		description = "Trojan:Win64/Emotetcrypt.LM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b c2 c1 e8 ?? 03 d0 48 8b 05 ?? ?? ?? ?? 48 63 ca 48 63 d6 83 c6 ?? 48 6b c9 ?? 48 03 c8 0f b6 04 0a 32 44 2b ff 49 83 ec 01 88 45 ff } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}