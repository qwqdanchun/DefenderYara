
rule Trojan_AndroidOS_NoCom_A{
	meta:
		description = "Trojan:AndroidOS/NoCom.A,SIGNATURE_TYPE_DEXHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {49 50 61 64 64 72 65 73 } //01 00  IPaddres
		$a_01_1 = {53 65 63 75 72 69 74 79 55 70 64 61 74 65 53 65 72 76 69 63 65 2e 6a 61 76 61 } //01 00  SecurityUpdateService.java
		$a_01_2 = {6e 65 77 52 65 73 65 72 76 53 65 72 76 65 72 } //01 00  newReservServer
		$a_01_3 = {6f 70 65 6e 52 61 77 52 65 73 6f 75 72 63 65 } //01 00  openRawResource
		$a_01_4 = {53 65 63 75 72 69 74 79 2f 55 70 64 61 74 65 2f 53 65 63 75 72 69 74 79 55 70 64 61 74 65 53 65 72 76 69 63 65 } //00 00  Security/Update/SecurityUpdateService
	condition:
		any of ($a_*)
 
}