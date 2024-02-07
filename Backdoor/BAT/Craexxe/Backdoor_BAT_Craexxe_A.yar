
rule Backdoor_BAT_Craexxe_A{
	meta:
		description = "Backdoor:BAT/Craexxe.A,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 08 00 00 08 00 "
		
	strings :
		$a_01_0 = {63 00 72 00 79 00 70 00 6d 00 61 00 70 00 2e 00 63 00 68 00 69 00 63 00 6b 00 65 00 6e 00 6b 00 69 00 6c 00 6c 00 65 00 72 00 2e 00 63 00 6f 00 6d 00 } //01 00  crypmap.chickenkiller.com
		$a_01_1 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 54 00 61 00 73 00 6b 00 4d 00 61 00 6e 00 61 00 67 00 65 00 72 00 20 00 3d 00 20 00 7b 00 30 00 7d 00 } //01 00  DisableTaskManager = {0}
		$a_01_2 = {5c 00 49 00 6d 00 6d 00 69 00 6e 00 65 00 6e 00 74 00 5c 00 50 00 6c 00 75 00 67 00 69 00 6e 00 73 00 5c 00 } //01 00  \Imminent\Plugins\
		$a_01_3 = {4b 00 65 00 79 00 48 00 6f 00 6f 00 6b 00 20 00 52 00 65 00 61 00 64 00 79 00 2e 00 } //01 00  KeyHook Ready.
		$a_01_4 = {73 00 65 00 74 00 20 00 43 00 44 00 41 00 75 00 64 00 69 00 6f 00 20 00 64 00 6f 00 6f 00 72 00 20 00 6f 00 70 00 65 00 6e 00 } //01 00  set CDAudio door open
		$a_01_5 = {73 65 74 5f 55 73 65 53 68 65 6c 6c 45 78 65 63 75 74 65 } //01 00  set_UseShellExecute
		$a_01_6 = {73 65 74 5f 52 65 64 69 72 65 63 74 53 74 61 6e 64 61 72 64 49 6e 70 75 74 } //01 00  set_RedirectStandardInput
		$a_01_7 = {4b 65 79 4c 6f 67 67 65 72 50 61 63 6b 65 74 } //00 00  KeyLoggerPacket
		$a_00_8 = {87 10 00 00 30 57 } //18 39 
	condition:
		any of ($a_*)
 
}