
rule Trojan_Win32_Glupteba_QU_MTB{
	meta:
		description = "Trojan:Win32/Glupteba.QU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {c1 ea 05 89 90 02 02 8b 90 02 02 03 90 02 02 89 90 02 02 8b 90 02 02 33 90 02 02 89 90 02 02 8b 90 02 02 33 90 02 02 89 90 02 02 8b 90 02 02 29 90 02 02 c7 90 02 06 8b 90 02 02 01 90 02 02 8b 90 02 02 2b 90 02 02 89 90 02 02 e9 90 00 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}