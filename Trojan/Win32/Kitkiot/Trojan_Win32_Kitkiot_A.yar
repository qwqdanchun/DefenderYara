
rule Trojan_Win32_Kitkiot_A{
	meta:
		description = "Trojan:Win32/Kitkiot.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {63 00 3a 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 64 00 72 00 69 00 76 00 65 00 72 00 73 00 5c 00 25 00 77 00 73 00 2e 00 73 00 79 00 73 00 } //1 c:\windows\system32\drivers\%ws.sys
		$a_01_1 = {5c 00 52 00 45 00 47 00 49 00 53 00 54 00 52 00 59 00 5c 00 4d 00 41 00 43 00 48 00 49 00 4e 00 45 00 5c 00 53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 4e 00 54 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 4e 00 65 00 74 00 77 00 6f 00 72 00 6b 00 43 00 61 00 72 00 64 00 73 00 5c 00 25 00 64 00 } //1 \REGISTRY\MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkCards\%d
		$a_01_2 = {57 69 6e 45 78 65 63 00 b4 a5 b7 a2 ca a7 b0 dc 31 00 } //1
		$a_03_3 = {52 75 6e 50 72 6f 63 65 73 73 20 25 73 90 02 04 65 78 70 6c 6f 72 65 72 2e 65 78 65 90 00 } //1
		$a_01_4 = {28 45 78 65 32 29 5c 44 65 62 75 67 5c 6c 6f 61 64 2e 70 64 62 } //1 (Exe2)\Debug\load.pdb
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}