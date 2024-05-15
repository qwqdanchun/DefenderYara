
rule Trojan_BAT_Diztakun_CCHT_MTB{
	meta:
		description = "Trojan:BAT/Diztakun.CCHT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {64 69 73 61 62 6c 65 77 64 } //01 00  disablewd
		$a_01_1 = {72 65 73 74 61 72 74 70 63 } //01 00  restartpc
		$a_01_2 = {73 68 65 6c 6c 4b 69 6c 6c } //01 00  shellKill
		$a_01_3 = {64 69 73 61 62 6c 65 74 61 73 6b 6d 67 72 } //01 00  disabletaskmgr
		$a_01_4 = {43 68 65 63 6b 44 65 66 65 6e 64 65 72 } //01 00  CheckDefender
		$a_01_5 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 41 00 6e 00 74 00 69 00 53 00 70 00 79 00 77 00 61 00 72 00 65 00 } //01 00  DisableAntiSpyware
		$a_01_6 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 42 00 65 00 68 00 61 00 76 00 69 00 6f 00 72 00 4d 00 6f 00 6e 00 69 00 74 00 6f 00 72 00 69 00 6e 00 67 00 } //01 00  DisableBehaviorMonitoring
		$a_01_7 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 52 00 65 00 61 00 6c 00 74 00 69 00 6d 00 65 00 4d 00 6f 00 6e 00 69 00 74 00 6f 00 72 00 69 00 6e 00 67 00 } //01 00  DisableRealtimeMonitoring
		$a_01_8 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 49 00 4f 00 41 00 56 00 50 00 72 00 6f 00 74 00 65 00 63 00 74 00 69 00 6f 00 6e 00 } //01 00  DisableIOAVProtection
		$a_01_9 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 53 00 63 00 72 00 69 00 70 00 74 00 53 00 63 00 61 00 6e 00 6e 00 69 00 6e 00 67 00 } //00 00  DisableScriptScanning
	condition:
		any of ($a_*)
 
}