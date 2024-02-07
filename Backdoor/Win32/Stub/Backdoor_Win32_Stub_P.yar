
rule Backdoor_Win32_Stub_P{
	meta:
		description = "Backdoor:Win32/Stub.P,SIGNATURE_TYPE_PEHSTR,0c 00 0c 00 0c 00 00 01 00 "
		
	strings :
		$a_01_0 = {4d 53 47 20 24 6e 69 63 6b 20 68 65 79 2c 20 63 68 65 63 6b 20 74 68 69 73 20 6f 75 74 } //01 00  MSG $nick hey, check this out
		$a_01_1 = {5c 44 6f 63 75 6d 65 6e 74 73 20 61 6e 64 20 53 65 74 74 69 6e 67 73 5c 41 6c 6c 20 55 73 65 72 73 5c 53 74 61 72 74 20 4d 65 6e 75 5c 50 72 6f 67 72 61 6d 73 5c 53 74 61 72 74 75 70 5c } //01 00  \Documents and Settings\All Users\Start Menu\Programs\Startup\
		$a_01_2 = {5c 57 49 4e 44 4f 57 53 5c 53 74 61 72 74 20 4d 65 6e 75 5c 50 72 6f 67 72 61 6d 73 5c 53 74 61 72 74 75 70 5c } //01 00  \WINDOWS\Start Menu\Programs\Startup\
		$a_01_3 = {5c 57 49 4e 4e 54 5c 50 72 6f 66 69 6c 65 73 5c 41 6c 6c 20 55 73 65 72 73 5c 53 74 61 72 74 20 4d 65 6e 75 5c 50 72 6f 67 72 61 6d 73 5c 53 74 61 72 74 75 70 5c } //01 00  \WINNT\Profiles\All Users\Start Menu\Programs\Startup\
		$a_01_4 = {57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 55 6e 69 6e 73 74 61 6c 6c 5c 65 44 6f 6e 6b 65 79 32 30 30 30 } //01 00  Windows\CurrentVersion\Uninstall\eDonkey2000
		$a_01_5 = {5c 73 6f 66 74 77 61 72 65 5c 4d 6f 72 70 68 65 75 73 } //01 00  \software\Morpheus
		$a_01_6 = {5c 4d 79 20 53 68 61 72 65 64 20 46 6f 6c 64 65 72 } //01 00  \My Shared Folder
		$a_01_7 = {5c 73 6f 66 74 77 61 72 65 5c 58 6f 6c 6f 78 } //01 00  \software\Xolox
		$a_01_8 = {5c 73 6f 66 74 77 61 72 65 5c 4b 61 7a 61 61 } //01 00  \software\Kazaa
		$a_01_9 = {5c 73 6f 66 74 77 61 72 65 5c 53 68 61 72 65 61 7a 61 } //01 00  \software\Shareaza
		$a_01_10 = {5c 73 6f 66 74 77 61 72 65 5c 4c 69 6d 65 57 69 72 65 } //01 00  \software\LimeWire
		$a_01_11 = {53 74 75 62 62 6f 73 20 42 6f 74 } //00 00  Stubbos Bot
	condition:
		any of ($a_*)
 
}