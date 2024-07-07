
rule Worm_Win32_Autorun_gen_BN{
	meta:
		description = "Worm:Win32/Autorun.gen!BN,SIGNATURE_TYPE_PEHSTR_EXT,18 00 0e 00 09 00 00 "
		
	strings :
		$a_03_0 = {4b ff ff 00 20 1b 90 03 01 01 2e 44 00 43 74 ff 04 74 ff 1b 90 03 01 01 44 45 00 43 78 ff 04 78 ff 10 00 07 1c 00 32 04 00 78 ff 74 ff 00 00 13 00 90 00 } //10
		$a_01_1 = {3a 44 ff 2f 00 4e 34 ff 04 34 ff 0b 10 00 04 00 23 70 ff 1b 30 00 2a 23 64 ff 08 08 00 06 34 00 24 15 00 0d 48 00 16 00 6b 76 ff f4 00 c6 32 04 00 70 ff 64 ff 35 34 ff 1c f7 01 00 33 1b } //10
		$a_00_2 = {43 00 3a 00 5c 00 44 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 73 00 20 00 61 00 6e 00 64 00 20 00 53 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 5c 00 41 00 64 00 6d 00 69 00 6e 00 69 00 73 00 74 00 72 00 61 00 74 00 6f 00 72 00 5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 30 00 31 00 5c 00 46 00 75 00 6c 00 6c 00 48 00 6f 00 75 00 73 00 65 00 30 00 31 00 2e 00 76 00 62 00 70 00 } //1 C:\Documents and Settings\Administrator\Desktop\01\FullHouse01.vbp
		$a_00_3 = {43 00 3a 00 5c 00 46 00 75 00 6c 00 6c 00 20 00 48 00 6f 00 75 00 73 00 65 00 5c 00 46 00 75 00 6c 00 6c 00 48 00 6f 00 75 00 73 00 65 00 2e 00 6a 00 70 00 67 00 } //1 C:\Full House\FullHouse.jpg
		$a_00_4 = {5c 00 4b 00 61 00 73 00 70 00 65 00 72 00 73 00 6b 00 79 00 20 00 4c 00 61 00 62 00 } //1 \Kaspersky Lab
		$a_00_5 = {49 6e 66 65 63 74 44 72 69 76 65 73 } //1 InfectDrives
		$a_00_6 = {49 6e 66 65 63 74 55 53 42 } //1 InfectUSB
		$a_00_7 = {5b 00 41 00 55 00 54 00 4f 00 52 00 55 00 4e 00 5d 00 } //1 [AUTORUN]
		$a_00_8 = {53 00 68 00 65 00 6c 00 6c 00 5c 00 4f 00 70 00 65 00 6e 00 5c 00 43 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 3d 00 } //1 Shell\Open\Command=
	condition:
		((#a_03_0  & 1)*10+(#a_01_1  & 1)*10+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1) >=14
 
}