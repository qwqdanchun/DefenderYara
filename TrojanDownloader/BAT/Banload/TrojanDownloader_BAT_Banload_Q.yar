
rule TrojanDownloader_BAT_Banload_Q{
	meta:
		description = "TrojanDownloader:BAT/Banload.Q,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {5f 50 72 69 6d 61 72 69 6f 5f 31 } //01 00  _Primario_1
		$a_01_1 = {4d 6f 64 75 6c 6f 5f 50 72 69 6d 61 72 69 6f } //01 00  Modulo_Primario
		$a_01_2 = {61 00 72 00 71 00 75 00 69 00 76 00 6f 00 20 00 65 00 73 00 74 00 e1 00 20 00 64 00 61 00 6e 00 69 00 66 00 69 00 63 00 61 00 64 00 6f 00 20 00 65 00 20 00 6e 00 e3 00 6f 00 20 00 70 00 6f 00 64 00 65 00 20 00 73 00 65 00 72 00 20 00 65 00 78 00 65 00 63 00 75 00 74 00 61 00 64 00 6f 00 20 00 21 00 } //01 00 
		$a_03_3 = {3a 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 44 00 61 00 74 00 61 00 5c 00 90 01 10 90 02 18 2e 00 90 03 05 05 65 00 78 00 65 63 00 70 00 6c 00 90 02 05 68 00 74 00 74 00 70 00 3a 90 00 } //00 00 
		$a_00_4 = {5d 04 } //00 00  ѝ
	condition:
		any of ($a_*)
 
}