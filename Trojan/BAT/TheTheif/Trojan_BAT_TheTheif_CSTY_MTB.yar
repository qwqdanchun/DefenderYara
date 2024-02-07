
rule Trojan_BAT_TheTheif_CSTY_MTB{
	meta:
		description = "Trojan:BAT/TheTheif.CSTY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 03 00 00 05 00 "
		
	strings :
		$a_03_0 = {1a 8d 01 00 00 01 13 05 11 05 16 28 90 01 04 a2 11 05 17 72 90 01 04 a2 11 05 18 73 90 01 04 1f 0a 20 90 01 04 6f 90 01 04 8c 90 01 04 a2 11 05 19 72 90 01 04 a2 11 05 28 90 01 04 0d 08 06 28 90 01 04 28 90 01 04 09 07 28 90 01 04 28 90 01 04 de 03 26 de 00 08 28 09 00 00 0a 26 de 03 26 de 00 09 28 09 00 00 0a 26 de 03 90 00 } //01 00 
		$a_01_1 = {73 00 71 00 6c 00 73 00 38 00 2e 00 65 00 78 00 65 00 } //01 00  sqls8.exe
		$a_01_2 = {64 00 72 00 69 00 76 00 45 00 6e 00 38 00 2e 00 65 00 78 00 65 00 } //00 00  drivEn8.exe
	condition:
		any of ($a_*)
 
}