
rule Trojan_BAT_DarkCloud_AAGY_MTB{
	meta:
		description = "Trojan:BAT/DarkCloud.AAGY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 03 00 "
		
	strings :
		$a_03_0 = {04 06 18 28 90 01 01 00 00 06 7e 90 01 01 00 00 04 06 19 28 90 01 01 01 00 06 7e 90 01 01 00 00 04 06 28 90 01 01 01 00 06 0d 7e 90 01 01 00 00 04 09 05 16 05 8e 69 28 90 01 01 01 00 06 2a 90 00 } //01 00 
		$a_01_1 = {72 00 65 00 46 00 41 00 64 00 67 00 6d 00 6d 00 66 00 62 00 46 00 41 00 41 00 70 00 41 00 64 00 61 00 70 00 41 00 72 00 61 00 41 00 6d 00 49 00 6b 00 6d 00 41 00 6f 00 41 00 67 00 6a 00 6c 00 46 00 6e 00 68 00 49 00 63 00 62 00 6b 00 } //00 00  reFAdgmmfbFAApAdapAraAmIkmAoAgjlFnhIcbk
	condition:
		any of ($a_*)
 
}