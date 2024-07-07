
rule Trojan_Win32_Copak_AMMA_MTB{
	meta:
		description = "Trojan:Win32/Copak.AMMA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 "
		
	strings :
		$a_03_0 = {81 c7 01 00 00 00 31 10 bb 90 01 04 21 ff 68 90 01 04 5f 81 c0 01 00 00 00 4b 81 c3 90 01 04 39 f0 90 00 } //2
		$a_03_1 = {8d 14 0a 81 c3 90 01 04 47 81 eb 90 01 04 8b 12 09 df 81 eb 90 01 04 29 ff 81 e2 ff 00 00 00 4f 53 5b 83 ec 04 c7 04 24 90 01 04 5f 81 c1 01 00 00 00 09 db 81 f9 f4 01 00 00 90 00 } //2
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2) >=4
 
}