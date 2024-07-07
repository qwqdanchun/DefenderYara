
rule Trojan_Win32_Manuscrypt_RC_MTB{
	meta:
		description = "Trojan:Win32/Manuscrypt.RC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {76 00 2e 00 c7 44 24 90 01 01 7a 00 67 00 90 02 20 c7 44 24 90 01 01 2f 00 25 00 c7 44 24 90 01 01 64 00 2e 00 c7 90 01 01 24 90 02 04 6d 00 6c 00 c7 44 24 90 01 01 74 00 70 00 c7 44 24 90 01 01 73 00 3a 00 c7 44 24 90 01 01 2f 00 2f 00 c7 44 24 90 01 01 76 00 2e 00 c7 44 24 90 01 01 7a 00 67 00 90 02 20 c7 44 24 90 01 01 2f 00 6c 00 c7 44 24 90 01 01 6f 00 67 00 c7 44 24 90 01 01 6f 00 2e 00 c7 44 24 90 01 01 70 00 6e 00 c7 44 24 90 01 01 67 00 00 00 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}