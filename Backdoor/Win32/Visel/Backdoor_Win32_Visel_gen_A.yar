
rule Backdoor_Win32_Visel_gen_A{
	meta:
		description = "Backdoor:Win32/Visel.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,ffffff99 00 ffffff82 00 0e 00 00 "
		
	strings :
		$a_02_0 = {81 ec 34 02 00 00 a1 90 01 02 40 00 53 55 56 bd 01 00 00 00 55 68 90 01 02 40 00 89 84 24 44 02 00 00 e8 90 01 02 ff ff 83 c4 08 8d 44 24 18 50 6a 28 c7 44 24 20 00 00 00 00 ff 15 90 01 02 40 00 50 ff 15 90 01 02 40 00 85 c0 74 4a 8d 4c 24 20 51 68 90 01 02 40 00 6a 00 ff 15 90 01 02 40 00 85 c0 74 34 8b 54 24 20 8b 44 24 24 6a 00 6a 00 6a 10 8d 4c 24 34 51 89 54 24 3c 8b 54 24 28 6a 00 52 89 6c 24 40 89 44 24 48 c7 44 24 4c 02 00 00 00 ff 15 28 b0 40 00 8d 44 24 38 50 8d 4c 24 20 51 6a 00 68 3f 00 0f 00 6a 00 68 90 01 02 40 00 6a 00 68 90 01 02 40 00 68 02 00 00 80 ff 15 90 01 02 40 00 90 00 } //100
		$a_00_1 = {64 3a 5c 57 6f 72 6b 73 5c 42 79 53 68 65 6c 6c 5f 55 70 31 39 } //1 d:\Works\ByShell_Up19
		$a_00_2 = {62 79 73 68 65 6c 6c 5f 62 79 70 61 73 73 5f 73 79 73 5c 62 79 70 61 73 73 5c 69 33 38 36 5c 62 79 70 61 73 73 2e 70 64 62 } //1 byshell_bypass_sys\bypass\i386\bypass.pdb
		$a_00_3 = {42 79 53 68 65 6c 6c 5f 55 70 31 39 5c 44 61 72 6b 53 68 65 6c 6c 5c 52 65 6c 65 61 73 65 5c 44 61 72 6b 53 68 65 6c 6c 2e 70 64 62 } //1 ByShell_Up19\DarkShell\Release\DarkShell.pdb
		$a_00_4 = {5f 42 5f 79 5f 73 5f 68 5f 65 5f 6c 5f 6c 5f } //1 _B_y_s_h_e_l_l_
		$a_80_5 = {42 79 53 68 65 6c 6c 5f 45 76 65 6e 74 5f 57 61 69 74 } //ByShell_Event_Wait  1
		$a_00_6 = {53 6f 66 74 77 61 72 65 5c 53 74 65 65 6c 4b 65 72 6e 65 6c } //1 Software\SteelKernel
		$a_00_7 = {53 74 65 65 6c 4b 65 72 6e 65 6c 47 72 6f 75 70 } //1 SteelKernelGroup
		$a_01_8 = {5a 77 43 72 65 61 74 65 46 69 6c 65 } //10 ZwCreateFile
		$a_01_9 = {6e 74 6b 72 6e 6c 70 61 2e 65 78 65 } //10 ntkrnlpa.exe
		$a_01_10 = {6e 74 6f 73 6b 72 6e 6c 2e 65 78 65 } //10 ntoskrnl.exe
		$a_01_11 = {6e 74 6b 72 70 61 6d 70 2e 65 78 65 } //10 ntkrpamp.exe
		$a_01_12 = {6e 74 6b 72 6e 6c 6d 70 2e 65 78 65 } //10 ntkrnlmp.exe
		$a_01_13 = {4b 65 53 65 72 76 69 63 65 44 65 73 63 72 69 70 74 6f 72 54 61 62 6c 65 } //10 KeServiceDescriptorTable
	condition:
		((#a_02_0  & 1)*100+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_80_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_01_8  & 1)*10+(#a_01_9  & 1)*10+(#a_01_10  & 1)*10+(#a_01_11  & 1)*10+(#a_01_12  & 1)*10+(#a_01_13  & 1)*10) >=130
 
}