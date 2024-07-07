
rule Worm_Win32_Autorun_DC{
	meta:
		description = "Worm:Win32/Autorun.DC,SIGNATURE_TYPE_PEHSTR,20 00 20 00 08 00 00 "
		
	strings :
		$a_01_0 = {57 53 41 53 74 61 72 74 75 70 } //10 WSAStartup
		$a_01_1 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //10 MSVBVM60.DLL
		$a_01_2 = {5c 00 49 00 6e 00 66 00 65 00 63 00 63 00 69 00 6f 00 6e 00 5c 00 53 00 65 00 72 00 76 00 65 00 72 00 2e 00 76 00 62 00 70 00 } //10 \Infeccion\Server.vbp
		$a_01_3 = {5a 00 6f 00 6e 00 65 00 61 00 6c 00 61 00 72 00 6d 00 2e 00 45 00 78 00 65 00 } //1 Zonealarm.Exe
		$a_01_4 = {41 00 6e 00 74 00 69 00 2d 00 54 00 72 00 6f 00 6a 00 61 00 6e 00 2e 00 45 00 78 00 65 00 } //1 Anti-Trojan.Exe
		$a_01_5 = {5c 00 63 00 61 00 70 00 74 00 75 00 72 00 65 00 2e 00 6a 00 70 00 67 00 } //1 \capture.jpg
		$a_01_6 = {5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 2e 00 65 00 78 00 65 00 } //1 \system32\System32.exe
		$a_01_7 = {5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 4d 00 53 00 57 00 49 00 4e 00 53 00 43 00 4b 00 2e 00 4f 00 43 00 58 00 } //1 \system32\MSWINSCK.OCX
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=32
 
}