
rule Trojan_Win32_DarkShadowEvents_A_dha{
	meta:
		description = "Trojan:Win32/DarkShadowEvents.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {53 00 63 00 44 00 65 00 76 00 69 00 63 00 65 00 45 00 6e 00 75 00 6d 00 73 00 } //01 00  ScDeviceEnums
		$a_01_1 = {56 00 4d 00 77 00 61 00 72 00 65 00 20 00 50 00 68 00 79 00 73 00 69 00 63 00 61 00 6c 00 20 00 44 00 69 00 73 00 6b 00 20 00 48 00 65 00 6c 00 70 00 65 00 72 00 20 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 } //01 00  VMware Physical Disk Helper Service
		$a_01_2 = {43 00 6f 00 72 00 65 00 4d 00 65 00 73 00 73 00 61 00 67 00 69 00 6e 00 67 00 52 00 65 00 67 00 69 00 73 00 74 00 72 00 61 00 72 00 } //01 00  CoreMessagingRegistrar
		$a_01_3 = {4f 00 6e 00 65 00 53 00 79 00 6e 00 63 00 53 00 76 00 63 00 5f 00 33 00 37 00 39 00 65 00 31 00 } //01 00  OneSyncSvc_379e1
		$a_01_4 = {41 00 76 00 67 00 2e 00 20 00 44 00 69 00 73 00 6b 00 20 00 51 00 75 00 65 00 75 00 65 00 20 00 4c 00 65 00 6e 00 67 00 74 00 68 00 } //00 00  Avg. Disk Queue Length
	condition:
		any of ($a_*)
 
}