
rule Trojan_BAT_Quasar_NAS_MTB{
	meta:
		description = "Trojan:BAT/Quasar.NAS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 03 00 00 05 00 "
		
	strings :
		$a_03_0 = {95 11 0d 1d 95 5a 9e 11 17 20 90 01 03 44 5a 20 90 01 03 4c 61 38 90 01 03 ff 11 0c 1e 11 0c 1e 95 11 0d 1e 95 90 00 } //01 00 
		$a_01_1 = {67 69 74 68 75 62 2e 63 6f 6d 2f 33 46 2f 43 6f 6e 61 72 69 } //01 00  github.com/3F/Conari
		$a_01_2 = {52 00 78 00 4c 00 48 00 58 00 } //00 00  RxLHX
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_Quasar_NAS_MTB_2{
	meta:
		description = "Trojan:BAT/Quasar.NAS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 03 00 00 05 00 "
		
	strings :
		$a_03_0 = {28 10 00 00 0a 72 90 01 01 00 00 70 02 73 90 01 01 00 00 0a 28 90 01 01 00 00 0a 28 90 01 01 00 00 0a 28 90 01 01 00 00 0a 06 02 6f 90 01 01 00 00 0a 0b 25 07 28 90 01 01 00 00 0a 28 17 00 00 0a 90 00 } //01 00 
		$a_01_1 = {71 00 61 00 7a 00 77 00 73 00 78 00 } //01 00  qazwsx
		$a_01_2 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //00 00  DownloadData
	condition:
		any of ($a_*)
 
}