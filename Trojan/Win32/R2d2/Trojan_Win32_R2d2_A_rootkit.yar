
rule Trojan_Win32_R2d2_A_rootkit{
	meta:
		description = "Trojan:Win32/R2d2.A!rootkit,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 09 00 00 "
		
	strings :
		$a_00_0 = {5c 00 44 00 72 00 69 00 76 00 65 00 72 00 5c 00 6b 00 62 00 64 00 63 00 6c 00 61 00 73 00 73 00 } //1 \Driver\kbdclass
		$a_01_1 = {5a 77 53 65 74 49 6e 66 6f 72 6d 61 74 69 6f 6e 46 69 6c 65 } //1 ZwSetInformationFile
		$a_01_2 = {50 6f 53 74 61 72 74 4e 65 78 74 50 6f 77 65 72 49 72 70 } //1 PoStartNextPowerIrp
		$a_00_3 = {50 00 65 00 6e 00 64 00 69 00 6e 00 67 00 46 00 69 00 6c 00 65 00 52 00 65 00 6e 00 61 00 6d 00 65 00 4f 00 70 00 65 00 72 00 61 00 74 00 69 00 6f 00 6e 00 73 00 } //5 PendingFileRenameOperations
		$a_00_4 = {5c 00 44 00 65 00 76 00 69 00 63 00 65 00 5c 00 4b 00 65 00 79 00 62 00 6f 00 61 00 72 00 64 00 43 00 6c 00 61 00 73 00 73 00 43 00 } //5 \Device\KeyboardClassC
		$a_01_5 = {3d 34 00 00 c0 } //1
		$a_01_6 = {b8 9a 00 00 c0 } //1
		$a_01_7 = {bb 10 00 00 c0 } //1
		$a_03_8 = {68 a8 c5 00 00 68 8e 20 03 00 68 ef 01 00 00 6a 00 6a 01 ff 15 90 01 04 cc 90 00 } //5
	condition:
		((#a_00_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_00_3  & 1)*5+(#a_00_4  & 1)*5+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_03_8  & 1)*5) >=20
 
}
rule Trojan_Win32_R2d2_A_rootkit_2{
	meta:
		description = "Trojan:Win32/R2d2.A!rootkit,SIGNATURE_TYPE_PEHSTR,22 00 22 00 0d 00 00 "
		
	strings :
		$a_01_0 = {50 00 65 00 6e 00 64 00 69 00 6e 00 67 00 46 00 69 00 6c 00 65 00 52 00 65 00 6e 00 61 00 6d 00 65 00 4f 00 70 00 65 00 72 00 61 00 74 00 69 00 6f 00 6e 00 73 00 } //10 PendingFileRenameOperations
		$a_01_1 = {5c 00 44 00 65 00 76 00 69 00 63 00 65 00 5c 00 4b 00 65 00 79 00 62 00 6f 00 61 00 72 00 64 00 43 00 6c 00 61 00 73 00 73 00 43 00 } //10 \Device\KeyboardClassC
		$a_01_2 = {41 00 70 00 70 00 49 00 6e 00 69 00 74 00 5f 00 44 00 4c 00 4c 00 73 00 } //5 AppInit_DLLs
		$a_01_3 = {6d 00 66 00 63 00 34 00 32 00 75 00 6c 00 2e 00 64 00 6c 00 6c 00 } //5 mfc42ul.dll
		$a_01_4 = {73 00 6b 00 79 00 70 00 65 00 2e 00 65 00 78 00 65 00 } //1 skype.exe
		$a_01_5 = {70 00 61 00 6c 00 74 00 61 00 6c 00 6b 00 2e 00 65 00 78 00 65 00 } //1 paltalk.exe
		$a_01_6 = {78 00 2d 00 6c 00 69 00 74 00 65 00 2e 00 65 00 78 00 65 00 } //1 x-lite.exe
		$a_01_7 = {76 00 6f 00 69 00 70 00 62 00 75 00 73 00 74 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //1 voipbuster.exe
		$a_01_8 = {73 00 69 00 6d 00 70 00 70 00 72 00 6f 00 2e 00 65 00 78 00 65 00 } //1 simppro.exe
		$a_01_9 = {73 00 69 00 6d 00 70 00 6c 00 69 00 74 00 65 00 2d 00 69 00 63 00 71 00 2d 00 61 00 69 00 6d 00 2e 00 65 00 78 00 65 00 } //1 simplite-icq-aim.exe
		$a_01_10 = {69 00 63 00 71 00 6c 00 69 00 74 00 65 00 2e 00 65 00 78 00 65 00 } //1 icqlite.exe
		$a_01_11 = {73 00 6b 00 79 00 70 00 65 00 70 00 6d 00 2e 00 65 00 78 00 65 00 } //1 skypepm.exe
		$a_01_12 = {6c 00 6f 00 77 00 72 00 61 00 74 00 65 00 76 00 6f 00 69 00 70 00 2e 00 65 00 78 00 65 00 } //1 lowratevoip.exe
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*5+(#a_01_3  & 1)*5+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1) >=34
 
}