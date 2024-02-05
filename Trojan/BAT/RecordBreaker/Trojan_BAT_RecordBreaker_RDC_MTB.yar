
rule Trojan_BAT_RecordBreaker_RDC_MTB{
	meta:
		description = "Trojan:BAT/RecordBreaker.RDC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {30 37 31 39 33 64 34 36 2d 32 62 63 30 2d 34 34 31 33 2d 61 34 32 62 2d 30 37 33 39 64 30 30 35 66 36 33 61 } //02 00 
		$a_03_1 = {e0 4a fe 0c 04 00 fe 90 01 03 20 01 00 00 00 59 8f 90 01 04 e0 4a 61 54 fe 90 01 03 fe 90 01 03 20 02 00 00 00 59 20 00 00 00 00 9c 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}