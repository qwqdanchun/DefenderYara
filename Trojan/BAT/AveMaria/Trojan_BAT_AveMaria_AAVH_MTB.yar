
rule Trojan_BAT_AveMaria_AAVH_MTB{
	meta:
		description = "Trojan:BAT/AveMaria.AAVH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {73 64 64 64 66 66 68 65 64 66 64 64 66 66 66 66 67 6a 66 73 6b 64 67 73 61 63 73 61 66 70 } //01 00  sdddffhedfddffffgjfskdgsacsafp
		$a_01_1 = {73 67 66 68 6a 66 66 66 67 64 72 66 68 64 64 68 66 66 66 61 64 66 73 66 73 73 63 66 67 64 62 } //01 00  sgfhjfffgdrfhddhfffadfsfsscfgdb
		$a_01_2 = {64 6a 73 66 68 67 64 66 66 61 66 63 66 64 73 73 66 6b 66 68 67 6a } //01 00  djsfhgdffafcfdssfkfhgj
		$a_01_3 = {66 66 63 68 6b 66 64 61 68 66 64 73 66 73 66 6a } //01 00  ffchkfdahfdsfsfj
		$a_01_4 = {66 64 66 63 66 66 72 64 67 66 64 66 73 66 73 66 66 6a } //01 00  fdfcffrdgfdfsfsffj
		$a_01_5 = {68 64 66 66 66 66 66 61 66 73 64 6b 66 73 68 } //01 00  hdfffffafsdkfsh
		$a_01_6 = {68 64 66 66 66 68 66 64 66 66 66 66 6b 64 66 } //01 00  hdfffhfdffffkdf
		$a_01_7 = {52 69 6a 6e 64 61 65 6c 4d 61 6e 61 67 65 64 } //00 00  RijndaelManaged
	condition:
		any of ($a_*)
 
}