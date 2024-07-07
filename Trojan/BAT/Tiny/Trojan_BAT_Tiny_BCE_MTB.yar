
rule Trojan_BAT_Tiny_BCE_MTB{
	meta:
		description = "Trojan:BAT/Tiny.BCE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {13 30 06 00 7c 00 00 00 01 00 00 11 28 04 00 00 0a 72 01 00 00 70 28 02 00 00 06 6f 05 00 00 0a 0a 1a 8d 01 00 00 01 0c 08 16 72 90 01 01 00 00 70 a2 08 17 7e 06 00 00 0a a2 08 18 72 90 01 02 00 70 28 02 00 00 06 a2 08 19 17 8c 08 00 00 01 a2 08 0b 20 f4 01 00 00 28 07 00 00 0a 06 72 90 01 01 01 00 70 6f 08 00 00 0a 72 90 01 02 00 70 20 00 01 00 00 14 14 07 74 01 00 00 1b 6f 09 00 00 0a 26 20 f4 01 00 00 28 07 00 00 0a 2a 90 00 } //1
		$a_01_1 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 63 00 64 00 6e 00 2e 00 64 00 69 00 73 00 63 00 6f 00 72 00 64 00 61 00 70 00 70 00 2e 00 63 00 6f 00 6d 00 2f 00 61 00 74 00 74 00 61 00 63 00 68 00 6d 00 65 00 6e 00 74 00 73 00 2f 00 38 00 } //1 https://cdn.discordapp.com/attachments/8
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}