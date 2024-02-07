
rule Trojan_Win32_DarkShadowWiper_A_dha{
	meta:
		description = "Trojan:Win32/DarkShadowWiper.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 06 00 00 03 00 "
		
	strings :
		$a_01_0 = {31 65 32 66 65 32 62 35 2d 64 37 32 38 2d 34 30 63 64 2d 39 37 38 63 2d 38 34 33 64 62 65 33 38 38 39 33 65 } //02 00  1e2fe2b5-d728-40cd-978c-843dbe38893e
		$a_01_1 = {57 69 70 65 72 2d 61 63 74 69 6f 6e } //02 00  Wiper-action
		$a_00_2 = {2f 63 72 65 61 74 65 20 2f 73 63 20 4f 4e 53 54 41 52 54 20 2f 74 6e 20 22 4d 69 63 72 6f 73 6f 66 74 43 72 61 73 68 48 61 6e 64 6c 65 72 55 41 43 } //02 00  /create /sc ONSTART /tn "MicrosoftCrashHandlerUAC
		$a_01_3 = {47 00 6c 00 6f 00 62 00 61 00 6c 00 2d 00 58 00 53 00 6a 00 7a 00 6d 00 51 00 69 00 78 00 46 00 58 00 46 00 66 00 48 00 4f 00 33 00 6e 00 70 00 53 00 59 00 53 00 } //01 00  Global-XSjzmQixFXFfHO3npSYS
		$a_01_4 = {72 00 65 00 6d 00 6f 00 76 00 65 00 72 00 2e 00 62 00 61 00 74 00 } //01 00  remover.bat
		$a_01_5 = {72 00 75 00 6e 00 64 00 6c 00 6c 00 33 00 32 00 2e 00 65 00 78 00 65 00 20 00 61 00 64 00 76 00 61 00 70 00 69 00 33 00 32 00 2e 00 64 00 6c 00 6c 00 2c 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 49 00 64 00 6c 00 65 00 54 00 61 00 73 00 6b 00 73 00 } //00 00  rundll32.exe advapi32.dll,ProcessIdleTasks
	condition:
		any of ($a_*)
 
}