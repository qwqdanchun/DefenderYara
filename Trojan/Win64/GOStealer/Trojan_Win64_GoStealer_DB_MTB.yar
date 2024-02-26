
rule Trojan_Win64_GoStealer_DB_MTB{
	meta:
		description = "Trojan:Win64/GoStealer.DB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {47 6f 20 62 75 69 6c 64 20 49 44 3a } //01 00  Go build ID:
		$a_01_1 = {47 6f 53 74 65 61 6c 65 72 } //01 00  GoStealer
		$a_01_2 = {62 6f 74 6e 65 74 } //01 00  botnet
		$a_01_3 = {74 65 6c 65 67 72 61 6d 2d 62 6f 74 2d 61 70 69 } //01 00  telegram-bot-api
		$a_01_4 = {5f 63 67 6f 5f 64 75 6d 6d 79 5f 65 78 70 6f 72 74 } //00 00  _cgo_dummy_export
	condition:
		any of ($a_*)
 
}