
rule Trojan_BAT_LummaStealer_NA_MTB{
	meta:
		description = "Trojan:BAT/LummaStealer.NA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 05 00 "
		
	strings :
		$a_03_0 = {72 93 00 00 70 1b 28 90 01 01 00 00 06 72 93 00 00 70 28 90 01 01 00 00 0a 13 06 11 06 28 90 01 01 00 00 0a 16 90 00 } //01 00 
		$a_01_1 = {6c 6f 61 64 5f 77 6f 72 6c 64 2e 65 78 65 } //00 00  load_world.exe
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_LummaStealer_NA_MTB_2{
	meta:
		description = "Trojan:BAT/LummaStealer.NA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 05 00 "
		
	strings :
		$a_03_0 = {28 61 38 00 06 0c 28 90 01 02 00 0a 03 6f 90 01 02 00 0a 28 90 01 02 00 06 0d 73 90 01 02 00 0a 13 04 28 90 01 02 00 06 13 05 11 05 08 6f 90 01 02 00 0a 11 05 09 6f 90 01 02 00 0a 11 04 11 05 90 00 } //01 00 
		$a_01_1 = {6c 69 76 65 5f 73 74 72 65 61 6d 5f 66 72 6f 6d 5f 63 6f 73 6d 6f 73 5f 65 76 65 6e 74 73 5f 61 70 70 2e 65 78 65 } //00 00  live_stream_from_cosmos_events_app.exe
	condition:
		any of ($a_*)
 
}