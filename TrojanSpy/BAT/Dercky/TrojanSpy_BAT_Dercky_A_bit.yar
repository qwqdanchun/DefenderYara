
rule TrojanSpy_BAT_Dercky_A_bit{
	meta:
		description = "TrojanSpy:BAT/Dercky.A!bit,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 02 00 "
		
	strings :
		$a_01_0 = {30 00 78 00 30 00 30 00 30 00 31 00 30 00 7c 00 7c 00 7c 00 7c 00 7c 00 7c 00 7c 00 7c 00 7c 00 36 00 37 00 35 00 32 00 31 00 38 00 32 00 34 00 } //02 00  0x00010|||||||||67521824
		$a_01_1 = {35 00 38 00 2e 00 32 00 31 00 38 00 2e 00 32 00 30 00 30 00 2e 00 31 00 33 00 } //01 00  58.218.200.13
		$a_01_2 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 64 00 65 00 63 00 2e 00 69 00 70 00 33 00 33 00 36 00 36 00 2e 00 6e 00 65 00 74 00 2f 00 61 00 70 00 69 00 2f 00 3f 00 6b 00 65 00 79 00 3d 00 32 00 30 00 31 00 37 00 31 00 31 00 31 00 39 00 31 00 37 00 34 00 32 00 33 00 39 00 32 00 35 00 36 00 26 00 67 00 65 00 74 00 6e 00 75 00 6d 00 3d 00 39 00 39 00 39 00 39 00 39 00 26 00 70 00 72 00 6f 00 78 00 79 00 74 00 79 00 70 00 65 00 3d 00 30 00 } //01 00  http://dec.ip3366.net/api/?key=20171119174239256&getnum=99999&proxytype=0
		$a_01_3 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //00 00  SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_00_4 = {5d 04 00 } //00 e0 
	condition:
		any of ($a_*)
 
}