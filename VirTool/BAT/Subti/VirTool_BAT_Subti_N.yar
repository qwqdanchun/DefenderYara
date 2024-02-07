
rule VirTool_BAT_Subti_N{
	meta:
		description = "VirTool:BAT/Subti.N,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 0d 00 00 01 00 "
		
	strings :
		$a_01_0 = {41 00 6e 00 74 00 69 00 44 00 75 00 6d 00 70 00 } //01 00  AntiDump
		$a_01_1 = {41 00 6e 00 74 00 69 00 53 00 61 00 6e 00 64 00 62 00 6f 00 78 00 69 00 65 00 } //01 00  AntiSandboxie
		$a_01_2 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 43 00 4d 00 44 00 } //01 00  DisableCMD
		$a_01_3 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 53 00 61 00 66 00 65 00 4d 00 6f 00 64 00 65 00 } //01 00  DisableSafeMode
		$a_01_4 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 53 00 79 00 73 00 74 00 65 00 6d 00 52 00 65 00 73 00 74 00 6f 00 72 00 65 00 } //01 00  DisableSystemRestore
		$a_01_5 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 54 00 61 00 73 00 6b 00 4d 00 61 00 6e 00 61 00 67 00 65 00 72 00 } //01 00  DisableTaskManager
		$a_01_6 = {50 00 65 00 72 00 73 00 69 00 73 00 74 00 65 00 6e 00 63 00 65 00 53 00 74 00 61 00 72 00 74 00 75 00 70 00 } //01 00  PersistenceStartup
		$a_01_7 = {50 00 72 00 6f 00 74 00 65 00 63 00 74 00 69 00 6f 00 6e 00 41 00 6e 00 74 00 69 00 4d 00 65 00 6d 00 6f 00 72 00 79 00 } //01 00  ProtectionAntiMemory
		$a_01_8 = {50 00 72 00 6f 00 74 00 65 00 63 00 74 00 69 00 6f 00 6e 00 42 00 53 00 4f 00 44 00 } //01 00  ProtectionBSOD
		$a_01_9 = {50 00 72 00 6f 00 74 00 65 00 63 00 74 00 69 00 6f 00 6e 00 44 00 69 00 73 00 61 00 62 00 6c 00 65 00 55 00 41 00 43 00 } //01 00  ProtectionDisableUAC
		$a_01_10 = {53 00 74 00 61 00 72 00 74 00 75 00 70 00 46 00 6f 00 72 00 63 00 65 00 52 00 65 00 73 00 74 00 61 00 72 00 74 00 } //01 00  StartupForceRestart
		$a_01_11 = {53 00 74 00 61 00 72 00 74 00 75 00 70 00 4d 00 65 00 6c 00 74 00 } //01 00  StartupMelt
		$a_01_12 = {5a 00 6f 00 6e 00 65 00 49 00 44 00 44 00 65 00 6c 00 65 00 74 00 65 00 } //00 00  ZoneIDDelete
		$a_00_13 = {80 10 00 00 bb } //ff 5a 
	condition:
		any of ($a_*)
 
}