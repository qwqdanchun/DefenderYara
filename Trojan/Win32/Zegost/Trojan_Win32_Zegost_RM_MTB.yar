
rule Trojan_Win32_Zegost_RM_MTB{
	meta:
		description = "Trojan:Win32/Zegost.RM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {99 f7 f9 8b 74 24 90 01 01 80 c2 58 85 f6 76 90 01 01 8b 44 24 90 01 01 8a 08 32 ca 02 ca 88 08 40 4e 75 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}