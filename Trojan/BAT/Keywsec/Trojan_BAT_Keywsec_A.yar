
rule Trojan_BAT_Keywsec_A{
	meta:
		description = "Trojan:BAT/Keywsec.A,SIGNATURE_TYPE_PEHSTR_EXT,09 00 07 00 08 00 00 02 00 "
		
	strings :
		$a_01_0 = {5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 5c 00 } //01 00  \CurrentVersion\Run\
		$a_01_1 = {00 56 65 72 73 69 6f 6e 52 65 61 64 65 72 00 } //01 00 
		$a_01_2 = {6a 00 6f 00 62 00 73 00 2f 00 66 00 65 00 74 00 63 00 68 00 2d 00 76 00 65 00 72 00 73 00 69 00 6f 00 6e 00 73 00 2f 00 3f 00 76 00 3d 00 } //01 00  jobs/fetch-versions/?v=
		$a_01_3 = {2f 00 75 00 70 00 64 00 61 00 74 00 65 00 64 00 2d 00 76 00 65 00 72 00 73 00 69 00 6f 00 6e 00 73 00 2f 00 73 00 65 00 74 00 2f 00 76 00 61 00 6c 00 75 00 65 00 73 00 2f 00 } //01 00  /updated-versions/set/values/
		$a_01_4 = {76 00 65 00 72 00 73 00 69 00 6f 00 6e 00 73 00 2e 00 63 00 6f 00 6e 00 66 00 } //01 00  versions.conf
		$a_01_5 = {44 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 73 00 5c 00 2e 00 2e 00 5c 00 } //01 00  Documents\..\
		$a_01_6 = {5c 00 75 00 70 00 64 00 61 00 74 00 65 00 72 00 2e 00 6c 00 6f 00 67 00 } //01 00  \updater.log
		$a_01_7 = {30 00 2f 00 6d 00 61 00 63 00 2f 00 } //00 00  0/mac/
	condition:
		any of ($a_*)
 
}