
rule Trojan_Win32_Agent_CY{
	meta:
		description = "Trojan:Win32/Agent.CY,SIGNATURE_TYPE_PEHSTR_EXT,08 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {c6 84 24 07 03 00 00 61 c6 84 24 08 03 00 00 e9 88 9c 24 09 03 00 00 88 9c 24 0a 03 00 00 88 9c 24 0b 03 00 00 88 9c 24 0c 03 00 00 ff 15 } //2
		$a_01_1 = {eb 03 8d 49 00 0f b7 01 66 89 02 83 c1 02 83 c2 02 66 85 c0 75 ef b8 } //2
		$a_01_2 = {5c 00 5c 00 2e 00 5c 00 70 00 69 00 70 00 65 00 5c 00 4e 00 61 00 6e 00 6e 00 65 00 64 00 50 00 69 00 70 00 65 00 } //1 \\.\pipe\NannedPipe
		$a_01_3 = {49 00 70 00 72 00 69 00 70 00 } //1 Iprip
		$a_01_4 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 4e 00 54 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 53 00 76 00 63 00 68 00 6f 00 73 00 74 00 } //1 SOFTWARE\Microsoft\Windows NT\CurrentVersion\Svchost
		$a_01_5 = {25 00 53 00 79 00 73 00 74 00 65 00 6d 00 52 00 6f 00 6f 00 74 00 25 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 20 00 2d 00 6b 00 20 00 6e 00 65 00 74 00 73 00 76 00 63 00 73 00 } //1 %SystemRoot%\System32\svchost.exe -k netsvcs
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}