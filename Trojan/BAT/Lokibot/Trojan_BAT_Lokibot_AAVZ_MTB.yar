
rule Trojan_BAT_Lokibot_AAVZ_MTB{
	meta:
		description = "Trojan:BAT/Lokibot.AAVZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {06 18 5b 8d 90 01 01 00 00 01 0b 16 0c 2b 19 07 08 18 5b 02 08 18 6f 90 01 01 00 00 0a 1f 10 28 90 01 01 00 00 0a d2 9c 08 18 58 0c 08 06 fe 04 0d 09 2d df 90 00 } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}