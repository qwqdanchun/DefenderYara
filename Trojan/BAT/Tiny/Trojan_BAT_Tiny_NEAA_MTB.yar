
rule Trojan_BAT_Tiny_NEAA_MTB{
	meta:
		description = "Trojan:BAT/Tiny.NEAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 02 00 00 0a 00 "
		
	strings :
		$a_01_0 = {00 72 01 00 00 70 0a 28 03 00 00 06 0b 28 03 00 00 06 26 07 06 28 02 00 00 06 00 07 28 04 00 00 06 00 2a } //05 00 
		$a_01_1 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 72 00 61 00 77 00 2e 00 67 00 69 00 74 00 68 00 75 00 62 00 75 00 73 00 65 00 72 00 63 00 6f 00 6e 00 74 00 65 00 6e 00 74 00 2e 00 63 00 6f 00 6d 00 2f 00 64 00 62 00 2d 00 68 00 6f 00 73 00 74 00 31 00 39 00 32 00 2f 00 64 00 62 00 2d 00 68 00 6f 00 73 00 74 00 31 00 39 00 32 00 2e 00 67 00 69 00 74 00 68 00 75 00 62 00 2e 00 69 00 6f 00 } //00 00  https://raw.githubusercontent.com/db-host192/db-host192.github.io
	condition:
		any of ($a_*)
 
}