
rule Worm_Win32_Autorun_AJA_bit{
	meta:
		description = "Worm:Win32/Autorun.AJA!bit,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 69 00 6e 00 66 00 } //01 00  autorun.inf
		$a_01_1 = {2f 00 63 00 20 00 72 00 6d 00 64 00 69 00 72 00 20 00 2f 00 71 00 20 00 2f 00 73 00 } //01 00  /c rmdir /q /s
		$a_01_2 = {3a 00 5a 00 6f 00 6e 00 65 00 2e 00 49 00 64 00 65 00 6e 00 74 00 69 00 66 00 69 00 65 00 72 00 } //01 00  :Zone.Identifier
		$a_01_3 = {5c 00 5f 00 5c 00 44 00 65 00 76 00 69 00 63 00 65 00 4d 00 61 00 6e 00 61 00 67 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //01 00  \_\DeviceManager.exe
		$a_01_4 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 53 00 63 00 61 00 6e 00 4f 00 6e 00 52 00 65 00 61 00 6c 00 74 00 69 00 6d 00 65 00 45 00 6e 00 61 00 62 00 6c 00 65 00 } //01 00  DisableScanOnRealtimeEnable
		$a_01_5 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 42 00 65 00 68 00 61 00 76 00 69 00 6f 00 72 00 4d 00 6f 00 6e 00 69 00 74 00 6f 00 72 00 69 00 6e 00 67 00 } //00 00  DisableBehaviorMonitoring
	condition:
		any of ($a_*)
 
}