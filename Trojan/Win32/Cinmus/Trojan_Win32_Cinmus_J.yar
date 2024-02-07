
rule Trojan_Win32_Cinmus_J{
	meta:
		description = "Trojan:Win32/Cinmus.J,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 04 00 00 05 00 "
		
	strings :
		$a_01_0 = {81 7d e4 00 00 00 83 74 } //01 00 
		$a_03_1 = {83 7d fc 04 7d 90 01 01 8b 45 fc ff 34 85 90 01 04 ff 75 f8 e8 90 01 04 8b 4d fc 8b 15 90 01 04 89 04 8a 90 00 } //01 00 
		$a_03_2 = {83 7d f8 04 0f 8d 90 01 02 00 00 8b 45 f8 ff 34 85 90 01 04 ff 75 fc e8 90 01 04 8b 4d f8 8b 15 90 01 04 89 04 8a 90 00 } //02 00 
		$a_00_3 = {5c 00 42 00 61 00 73 00 65 00 4e 00 61 00 6d 00 65 00 64 00 4f 00 62 00 6a 00 65 00 63 00 74 00 73 00 5c 00 55 00 49 00 44 00 5f 00 31 00 33 00 32 00 39 00 31 00 34 00 37 00 36 00 30 00 32 00 5f 00 4d 00 49 00 45 00 45 00 76 00 65 00 6e 00 74 00 } //00 00  \BaseNamedObjects\UID_1329147602_MIEEvent
	condition:
		any of ($a_*)
 
}