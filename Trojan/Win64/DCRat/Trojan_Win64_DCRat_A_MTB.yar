
rule Trojan_Win64_DCRat_A_MTB{
	meta:
		description = "Trojan:Win64/DCRat.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {48 ff c7 48 63 05 90 01 02 09 00 48 83 c6 90 01 01 48 39 c7 7c 90 09 09 00 89 90 01 01 41 ff 90 01 01 48 83 c3 90 00 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}