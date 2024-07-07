
rule Trojan_Win32_PonyStealer_SIB_MTB{
	meta:
		description = "Trojan:Win32/PonyStealer.SIB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 01 00 02 00 00 "
		
	strings :
		$a_03_0 = {3b 54 24 10 75 90 01 01 90 02 20 90 18 90 02 20 bb 90 01 04 90 02 20 90 18 90 02 20 4b 90 02 20 4b 90 02 20 4b 90 02 20 4b 90 02 20 ff 34 1f 90 02 20 5a 90 02 20 90 18 56 90 02 20 33 14 24 90 02 20 5e 90 00 } //1
		$a_03_1 = {3b 54 24 10 75 90 01 01 90 02 20 90 18 90 02 20 bb 90 01 04 90 02 20 90 18 90 02 20 4b 90 02 20 4b 90 02 20 4b 90 02 20 4b 90 02 20 ff 34 1f 90 02 20 5a 90 02 20 e8 90 01 04 90 02 20 89 14 18 90 02 20 85 db 0f 85 90 01 04 90 02 20 ff e0 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=1
 
}