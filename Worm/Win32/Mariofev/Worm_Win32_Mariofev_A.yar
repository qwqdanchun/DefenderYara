
rule Worm_Win32_Mariofev_A{
	meta:
		description = "Worm:Win32/Mariofev.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {33 31 41 43 37 30 34 31 32 45 39 33 39 44 37 32 41 39 32 33 34 43 44 45 42 42 31 41 46 35 38 36 37 42 } //01 00  31AC70412E939D72A9234CDEBB1AF5867B
		$a_01_1 = {33 31 38 39 37 33 35 36 39 35 34 43 32 43 44 33 44 34 31 42 32 32 31 45 33 46 32 34 46 39 39 42 42 41 } //01 00  31897356954C2CD3D41B221E3F24F99BBA
		$a_01_2 = {33 31 43 32 45 31 45 34 44 37 38 45 36 41 31 31 42 38 38 44 46 41 38 30 33 34 35 36 41 31 46 46 41 35 } //01 00  31C2E1E4D78E6A11B88DFA803456A1FFA5
		$a_01_3 = {68 6f 2e 6c 6e 00 00 00 31 00 00 00 6d 6e 2e 6e 00 00 00 00 36 00 00 00 62 6d 66 2e 63 73 00 00 38 00 00 00 6b 6f 2e 6f 00 00 00 00 39 00 00 00 63 63 73 2e 73 6f 00 00 37 } //02 00 
		$a_01_4 = {6e 76 69 65 77 2e 64 6c 6c } //01 00  nview.dll
		$a_01_5 = {6b 65 5f 52 65 67 69 73 74 65 72 41 6e 64 4c 6f 61 64 4e 65 77 4d 6f 64 75 6c 65 } //01 00  ke_RegisterAndLoadNewModule
		$a_01_6 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //00 00  CreateToolhelp32Snapshot
	condition:
		any of ($a_*)
 
}
rule Worm_Win32_Mariofev_A_2{
	meta:
		description = "Worm:Win32/Mariofev.A,SIGNATURE_TYPE_PEHSTR_EXT,34 00 34 00 0a 00 00 32 00 "
		
	strings :
		$a_03_0 = {47 65 74 4d 6f 64 75 6c 65 49 64 00 47 65 74 4d 6f 64 75 6c 65 56 65 72 73 69 6f 6e 00 4d 6f 64 75 6c 65 53 74 61 72 74 75 70 00 90 02 40 4f 6e 4b 65 72 6e 65 6c 45 76 65 6e 74 52 65 63 65 69 76 65 64 00 90 00 } //02 00 
		$a_01_1 = {4d 6f 64 4c 69 67 68 74 48 74 74 70 43 6f 6d 2e 64 6c 6c } //02 00  ModLightHttpCom.dll
		$a_01_2 = {4d 6f 64 43 42 61 63 6b 53 6f 63 6b 73 2e 64 6c 6c } //02 00  ModCBackSocks.dll
		$a_01_3 = {4d 6f 64 43 43 53 6e 69 66 66 65 72 2e 64 6c 6c } //02 00  ModCCSniffer.dll
		$a_01_4 = {4d 6f 64 53 6e 69 66 66 65 72 2e 64 6c 6c } //02 00  ModSniffer.dll
		$a_01_5 = {4d 6f 64 53 4d 42 69 6e 66 2e 64 6c 6c } //02 00  ModSMBinf.dll
		$a_01_6 = {4d 6f 64 44 65 76 49 6e 66 2e 64 6c 6c } //02 00  ModDevInf.dll
		$a_01_7 = {4d 6f 64 4d 61 69 6c 47 72 61 62 62 65 72 2e 64 6c 6c } //02 00  ModMailGrabber.dll
		$a_01_8 = {6c 69 62 73 64 73 64 2e 64 6c 6c } //02 00  libsdsd.dll
		$a_01_9 = {4d 6f 64 43 6f 6d 6d 75 6e 69 63 61 74 69 6f 6e 2e 64 6c 6c } //00 00  ModCommunication.dll
	condition:
		any of ($a_*)
 
}