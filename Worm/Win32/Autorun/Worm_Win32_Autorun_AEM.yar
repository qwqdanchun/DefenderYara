
rule Worm_Win32_Autorun_AEM{
	meta:
		description = "Worm:Win32/Autorun.AEM,SIGNATURE_TYPE_PEHSTR,06 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 69 00 6e 00 66 00 } //01 00  autorun.inf
		$a_01_1 = {55 00 41 00 43 00 42 00 79 00 70 00 61 00 73 00 73 00 } //01 00  UACBypass
		$a_01_2 = {55 00 53 00 42 00 53 00 70 00 72 00 65 00 61 00 64 00 } //02 00  USBSpread
		$a_01_3 = {63 00 6f 00 6e 00 66 00 69 00 67 00 75 00 72 00 61 00 74 00 69 00 6f 00 6e 00 2f 00 73 00 65 00 6e 00 64 00 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 } //02 00  configuration/sendpassword
		$a_01_4 = {57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 37 00 20 00 43 00 72 00 61 00 63 00 6b 00 } //00 00  Windows 7 Crack
	condition:
		any of ($a_*)
 
}