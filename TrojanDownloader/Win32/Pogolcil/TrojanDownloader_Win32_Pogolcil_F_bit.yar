
rule TrojanDownloader_Win32_Pogolcil_F_bit{
	meta:
		description = "TrojanDownloader:Win32/Pogolcil.F!bit,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {75 00 70 00 67 00 72 00 61 00 64 00 65 00 69 00 64 00 3d 00 66 00 35 00 36 00 31 00 39 00 33 00 32 00 63 00 2d 00 30 00 62 00 65 00 66 00 2d 00 34 00 31 00 62 00 39 00 2d 00 39 00 32 00 38 00 39 00 2d 00 62 00 37 00 64 00 35 00 63 00 30 00 39 00 39 00 62 00 38 00 36 00 62 00 } //1 upgradeid=f561932c-0bef-41b9-9289-b7d5c099b86b
		$a_01_1 = {66 00 75 00 63 00 6b 00 69 00 6e 00 67 00 } //1 fucking
		$a_01_2 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 31 00 30 00 37 00 2e 00 31 00 35 00 31 00 2e 00 31 00 35 00 32 00 2e 00 32 00 32 00 30 00 3a 00 35 00 36 00 35 00 38 00 } //1 https://107.151.152.220:5658
		$a_03_3 = {63 00 6c 00 6f 00 75 00 64 00 66 00 72 00 6f 00 6e 00 74 00 2e 00 6e 00 65 00 74 00 2f 00 90 02 20 2e 00 65 00 78 00 65 00 90 00 } //1
		$a_01_4 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //1 Software\Microsoft\Windows\CurrentVersion\Run
		$a_01_5 = {5c 00 50 00 72 00 6f 00 78 00 79 00 47 00 61 00 74 00 65 00 5c 00 } //1 \ProxyGate\
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}