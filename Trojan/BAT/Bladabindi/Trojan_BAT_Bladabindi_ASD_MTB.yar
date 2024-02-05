
rule Trojan_BAT_Bladabindi_ASD_MTB{
	meta:
		description = "Trojan:BAT/Bladabindi.ASD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 06 00 00 03 00 "
		
	strings :
		$a_80_0 = {2f 63 20 73 74 61 72 74 20 2f 49 } ///c start /I  03 00 
		$a_80_1 = {68 61 63 6b 61 63 61 64 65 6d 79 } //hackacademy  03 00 
		$a_80_2 = {44 6f 77 6e 6c 6f 61 64 53 74 72 69 6e 67 } //DownloadString  03 00 
		$a_80_3 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //DownloadData  03 00 
		$a_80_4 = {41 73 6b 61 72 5f 4c 6f 61 64 65 72 } //Askar_Loader  03 00 
		$a_02_5 = {fa 01 33 00 16 00 00 01 00 00 00 25 00 00 00 04 90 01 07 0a 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}