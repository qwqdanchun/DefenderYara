
rule Trojan_BAT_AsyncRAT_MBCX_MTB{
	meta:
		description = "Trojan:BAT/AsyncRAT.MBCX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {25 72 4b 23 00 70 6f 90 01 03 0a 25 72 ed 23 00 70 28 90 01 03 0a 28 90 01 03 0a 72 29 24 00 70 90 00 } //01 00 
		$a_01_1 = {62 63 64 33 35 64 66 66 2d 63 39 31 64 2d 34 35 30 38 2d 38 37 65 30 2d 66 37 66 39 32 31 31 38 37 30 31 64 } //01 00 
		$a_01_2 = {65 00 72 00 72 00 2e 00 74 00 78 00 74 00 00 11 70 00 6c 00 73 00 63 00 2e 00 64 00 6c 00 6c } //00 00 
	condition:
		any of ($a_*)
 
}