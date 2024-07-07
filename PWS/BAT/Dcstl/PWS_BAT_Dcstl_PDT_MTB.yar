
rule PWS_BAT_Dcstl_PDT_MTB{
	meta:
		description = "PWS:BAT/Dcstl.PDT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {70 0a 72 f4 90 01 03 28 90 01 03 0a 6f 90 01 03 0a 28 90 01 03 0a 0b 06 72 90 01 03 70 72 90 01 03 70 07 28 90 01 03 06 00 2a 90 00 } //1
		$a_03_1 = {0a 06 72 14 90 01 03 04 6f 90 01 03 0a 00 06 72 90 01 03 70 03 6f 90 01 03 0a 00 06 72 90 01 03 70 05 6f 90 01 03 0a 00 73 90 01 03 0a 02 06 28 90 01 03 0a 26 2a 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}