
rule Trojan_BAT_LokiAnti_J_ibt{
	meta:
		description = "Trojan:BAT/LokiAnti.J!ibt,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {73 77 65 74 79 2e 64 6c 6c } //01 00  swety.dll
		$a_01_1 = {01 11 05 11 0a 74 01 00 00 1b 11 0c 11 07 58 11 09 59 93 61 11 } //01 00 
		$a_01_2 = {24 30 36 39 34 39 39 38 39 2d 36 30 65 37 2d 34 61 36 35 2d 62 30 34 65 2d 39 37 36 64 37 34 62 61 39 30 37 64 } //01 00  $06949989-60e7-4a65-b04e-976d74ba907d
		$a_01_3 = {56 69 72 74 75 61 6c 4d 61 63 68 69 6e 65 44 65 74 65 63 74 6f 72 } //01 00  VirtualMachineDetector
		$a_01_4 = {53 54 41 52 54 55 50 5f 49 4e 46 4f 52 4d 41 54 49 4f 4e } //01 00  STARTUP_INFORMATION
		$a_01_5 = {50 52 4f 43 45 53 53 5f 49 4e 46 4f 52 4d 41 54 49 4f 4e } //00 00  PROCESS_INFORMATION
	condition:
		any of ($a_*)
 
}