
rule Trojan_Win32_VB_FR{
	meta:
		description = "Trojan:Win32/VB.FR,SIGNATURE_TYPE_PEHSTR,07 00 07 00 08 00 00 "
		
	strings :
		$a_01_0 = {73 00 61 00 6e 00 73 00 68 00 61 00 6f 00 } //1 sanshao
		$a_01_1 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //1 MSVBVM60.DLL
		$a_01_2 = {5c 00 74 00 61 00 73 00 6b 00 6d 00 67 00 72 00 2e 00 65 00 78 00 65 00 } //1 \taskmgr.exe
		$a_01_3 = {6e 00 74 00 73 00 64 00 20 00 2d 00 63 00 20 00 71 00 20 00 2d 00 70 00 6e 00 20 00 33 00 36 00 30 00 } //1 ntsd -c q -pn 360
		$a_01_4 = {53 00 65 00 72 00 76 00 69 00 63 00 65 00 20 00 48 00 6f 00 73 00 74 00 20 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 } //1 Service Host Process
		$a_01_5 = {4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 43 00 6f 00 72 00 70 00 6f 00 72 00 61 00 74 00 69 00 6f 00 6e 00 } //1 Microsoft Corporation
		$a_01_6 = {5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 46 00 69 00 6c 00 65 00 73 00 5c 00 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //1 \Program Files\Internet Explorer\svchost.exe
		$a_01_7 = {48 00 4b 00 4c 00 4d 00 5c 00 53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 5c 00 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //1 HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\svchost.exe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=7
 
}