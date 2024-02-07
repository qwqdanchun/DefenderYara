
rule Trojan_BAT_CloudsClient_A_dha{
	meta:
		description = "Trojan:BAT/CloudsClient.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 07 00 00 04 00 "
		
	strings :
		$a_00_0 = {66 61 36 36 36 36 38 33 2d 64 62 32 36 2d 34 37 36 64 2d 61 65 30 61 2d 32 65 31 64 61 31 33 39 31 36 64 62 } //01 00  fa666683-db26-476d-ae0a-2e1da13916db
		$a_01_1 = {43 00 6c 00 6f 00 75 00 64 00 73 00 41 00 70 00 70 00 6c 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 } //01 00  CloudsApplication
		$a_01_2 = {3e 00 3e 00 20 00 46 00 61 00 69 00 6c 00 65 00 64 00 20 00 74 00 6f 00 20 00 63 00 72 00 65 00 61 00 74 00 69 00 6f 00 6e 00 20 00 73 00 65 00 73 00 73 00 69 00 6f 00 6e 00 3a 00 } //01 00  >> Failed to creation session:
		$a_01_3 = {52 00 65 00 6e 00 61 00 6d 00 65 00 50 00 61 00 74 00 68 00 20 00 4e 00 6f 00 20 00 70 00 65 00 72 00 6d 00 69 00 73 00 73 00 69 00 6f 00 6e 00 } //01 00  RenamePath No permission
		$a_01_4 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //01 00  CreateDecryptor
		$a_01_5 = {43 6c 6f 75 64 73 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 } //01 00  Clouds.Properties.Resources
		$a_01_6 = {46 69 6c 65 20 75 70 6c 6f 61 64 20 73 74 61 72 74 65 64 } //00 00  File upload started
	condition:
		any of ($a_*)
 
}