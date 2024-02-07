
rule Trojan_BAT_Redline_ARL_MTB{
	meta:
		description = "Trojan:BAT/Redline.ARL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 02 00 "
		
	strings :
		$a_03_0 = {11 09 11 0a 9a 13 0b 00 06 11 0b 6f 90 01 03 06 13 0c 11 0c 39 08 00 00 00 00 17 0d 38 12 00 00 00 00 11 0a 17 58 13 0a 11 0a 11 09 90 00 } //01 00 
		$a_01_1 = {54 00 68 00 69 00 73 00 20 00 61 00 73 00 73 00 65 00 6d 00 62 00 6c 00 79 00 20 00 69 00 73 00 20 00 70 00 72 00 6f 00 74 00 65 00 63 00 74 00 65 00 64 00 20 00 62 00 79 00 20 00 61 00 6e 00 20 00 75 00 6e 00 72 00 65 00 67 00 69 00 73 00 74 00 65 00 72 00 65 00 64 00 20 00 76 00 65 00 72 00 73 00 69 00 6f 00 6e 00 20 00 6f 00 66 00 20 00 45 00 7a 00 69 00 72 00 69 00 7a 00 } //01 00  This assembly is protected by an unregistered version of Eziriz
		$a_01_2 = {4e 00 69 00 72 00 74 00 72 00 6f 00 20 00 43 00 50 00 55 00 } //00 00  Nirtro CPU
	condition:
		any of ($a_*)
 
}