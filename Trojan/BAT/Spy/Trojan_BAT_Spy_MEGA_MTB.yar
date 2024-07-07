
rule Trojan_BAT_Spy_MEGA_MTB{
	meta:
		description = "Trojan:BAT/Spy.MEGA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {17 72 01 00 00 70 12 00 73 08 00 00 0a 26 06 2d 01 2a 17 0b 16 0c 16 0d 16 13 04 16 13 05 72 13 00 00 70 28 90 01 03 06 28 90 01 03 0a 72 2d 00 00 70 28 90 01 03 06 28 90 01 03 0a 28 90 01 03 0a 3a ca 00 00 00 72 97 00 00 70 28 90 01 03 06 28 90 01 03 0a 72 a9 00 00 70 28 90 01 03 06 28 90 01 03 0a 1a 28 90 01 03 0a 13 07 28 90 01 03 0a 72 cb 00 00 70 28 90 01 03 06 6f 90 01 03 0a 13 08 11 07 11 08 90 00 } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}