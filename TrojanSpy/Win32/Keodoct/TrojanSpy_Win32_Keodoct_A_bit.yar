
rule TrojanSpy_Win32_Keodoct_A_bit{
	meta:
		description = "TrojanSpy:Win32/Keodoct.A!bit,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {4d 00 72 00 20 00 4f 00 6f 00 64 00 6f 00 63 00 20 00 72 00 65 00 70 00 6f 00 72 00 74 00 69 00 6e 00 67 00 20 00 2c 00 20 00 54 00 68 00 69 00 73 00 20 00 53 00 79 00 73 00 74 00 65 00 6d 00 90 02 20 49 00 73 00 20 00 49 00 6e 00 66 00 65 00 63 00 74 00 65 00 64 00 90 00 } //01 00 
		$a_01_1 = {53 00 65 00 72 00 76 00 65 00 72 00 5c 00 4f 00 6f 00 64 00 6f 00 63 00 4b 00 65 00 79 00 42 00 6f 00 61 00 72 00 64 00 2e 00 6f 00 6b 00 62 00 } //01 00  Server\OodocKeyBoard.okb
		$a_01_2 = {53 00 65 00 72 00 76 00 65 00 72 00 5c 00 4f 00 6f 00 64 00 6f 00 63 00 2e 00 65 00 78 00 65 00 } //01 00  Server\Oodoc.exe
		$a_01_3 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 76 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //01 00  Software\Microsoft\Windows\Currentversion\Run
		$a_01_4 = {5c 00 41 00 70 00 70 00 44 00 61 00 74 00 61 00 5c 00 52 00 6f 00 61 00 6d 00 69 00 6e 00 67 00 5c 00 4d 00 6f 00 7a 00 69 00 6c 00 6c 00 61 00 5c 00 46 00 69 00 72 00 65 00 66 00 6f 00 78 00 5c 00 50 00 72 00 6f 00 66 00 69 00 6c 00 65 00 73 00 5c 00 } //00 00  \AppData\Roaming\Mozilla\Firefox\Profiles\
		$a_00_5 = {5d 04 00 } //00 d2 
	condition:
		any of ($a_*)
 
}