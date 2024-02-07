
rule PWS_BAT_Grivlog_A{
	meta:
		description = "PWS:BAT/Grivlog.A,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {47 72 69 65 76 65 5f 4c 6f 67 67 65 72 5f 53 74 75 62 } //01 00  Grieve_Logger_Stub
		$a_01_1 = {4b 65 79 62 6f 61 72 64 48 6f 6f 6b } //01 00  KeyboardHook
		$a_01_2 = {52 65 74 5f 57 69 6e 43 74 72 6c } //01 00  Ret_WinCtrl
		$a_01_3 = {4b 69 6c 6c 50 72 6f 63 65 73 73 65 73 } //00 00  KillProcesses
	condition:
		any of ($a_*)
 
}