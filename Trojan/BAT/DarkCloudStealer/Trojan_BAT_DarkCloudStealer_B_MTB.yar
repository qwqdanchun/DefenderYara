
rule Trojan_BAT_DarkCloudStealer_B_MTB{
	meta:
		description = "Trojan:BAT/DarkCloudStealer.B!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 03 00 00 "
		
	strings :
		$a_03_0 = {00 00 01 25 16 1f 90 01 01 9d 6f 90 01 01 00 00 0a 90 09 06 00 00 00 0a 17 8d 90 00 } //2
		$a_03_1 = {08 09 07 09 9a 1f 90 01 01 28 90 01 01 00 00 0a 9c 09 17 d6 90 00 } //2
		$a_03_2 = {00 00 0a 1b 9a 0a 06 14 72 90 01 03 70 17 8d 90 01 01 00 00 01 25 16 72 90 01 03 70 a2 14 14 28 90 01 01 00 00 0a 28 90 01 01 00 00 0a 0b 07 28 90 00 } //2
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2+(#a_03_2  & 1)*2) >=6
 
}