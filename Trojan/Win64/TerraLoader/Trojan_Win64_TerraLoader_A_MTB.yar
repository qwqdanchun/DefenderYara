
rule Trojan_Win64_TerraLoader_A_MTB{
	meta:
		description = "Trojan:Win64/TerraLoader.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {0f be 0f 48 8d 7f 90 01 01 c1 cb 90 01 01 ff c2 03 d9 48 63 ca 48 3b c8 90 00 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}