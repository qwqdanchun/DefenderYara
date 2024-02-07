
rule PWS_Win32_Emasen_A{
	meta:
		description = "PWS:Win32/Emasen.A,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 08 00 00 06 00 "
		
	strings :
		$a_81_0 = {5a 49 50 20 32 20 53 65 63 75 72 65 20 45 58 45 00 } //06 00 
		$a_03_1 = {3c 55 6e 7a 69 70 44 69 72 3e 43 3a 5c 75 73 65 72 73 5c 70 75 62 6c 69 63 5c 50 75 62 6c 69 63 20 44 6f 63 75 6d 65 6e 74 5c 90 02 20 3c 2f 55 6e 7a 69 70 44 69 72 3e 90 00 } //01 00 
		$a_01_2 = {3c 53 65 74 75 70 45 78 65 3e 73 74 61 70 2e 76 62 73 3c 2f 53 65 74 75 70 45 78 65 3e } //01 00  <SetupExe>stap.vbs</SetupExe>
		$a_01_3 = {3c 53 65 74 75 70 45 78 65 3e 73 74 61 74 2e 76 62 73 3c 2f 53 65 74 75 70 45 78 65 3e } //01 00  <SetupExe>stat.vbs</SetupExe>
		$a_01_4 = {3c 53 65 74 75 70 45 78 65 3e 73 61 73 2e 76 62 73 3c 2f 53 65 74 75 70 45 78 65 3e } //01 00  <SetupExe>sas.vbs</SetupExe>
		$a_01_5 = {3c 53 65 74 75 70 45 78 65 3e 73 61 63 2e 76 62 73 3c 2f 53 65 74 75 70 45 78 65 3e } //01 00  <SetupExe>sac.vbs</SetupExe>
		$a_01_6 = {3c 53 65 74 75 70 45 78 65 3e 73 61 64 2e 76 62 73 3c 2f 53 65 74 75 70 45 78 65 3e } //01 00  <SetupExe>sad.vbs</SetupExe>
		$a_01_7 = {3c 53 65 74 75 70 45 78 65 3e 6b 61 73 2e 76 62 73 3c 2f 53 65 74 75 70 45 78 65 3e } //00 00  <SetupExe>kas.vbs</SetupExe>
		$a_00_8 = {80 10 00 00 07 07 32 11 fb 23 b9 04 } //25 21 
	condition:
		any of ($a_*)
 
}