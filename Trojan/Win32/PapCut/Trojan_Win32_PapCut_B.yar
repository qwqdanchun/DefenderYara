
rule Trojan_Win32_PapCut_B{
	meta:
		description = "Trojan:Win32/PapCut.B,SIGNATURE_TYPE_CMDHSTR_EXT,0a 00 0a 00 13 00 00 "
		
	strings :
		$a_02_0 = {63 00 6d 00 64 00 90 08 00 02 68 00 74 00 74 00 70 00 } //10
		$a_00_1 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 63 00 20 00 70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 } //10 cmd.exe /c powershell
		$a_00_2 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 } //10 powershell.exe
		$a_00_3 = {6d 00 73 00 68 00 74 00 61 00 2e 00 65 00 78 00 65 00 } //10 mshta.exe
		$a_00_4 = {62 00 69 00 74 00 73 00 61 00 64 00 6d 00 69 00 6e 00 2e 00 65 00 78 00 65 00 } //10 bitsadmin.exe
		$a_00_5 = {6d 00 73 00 69 00 65 00 78 00 65 00 63 00 2e 00 65 00 78 00 65 00 } //10 msiexec.exe
		$a_00_6 = {63 00 65 00 72 00 74 00 75 00 74 00 69 00 6c 00 2e 00 65 00 78 00 65 00 } //10 certutil.exe
		$a_00_7 = {73 00 63 00 68 00 74 00 61 00 73 00 6b 00 73 00 2e 00 65 00 78 00 65 00 } //10 schtasks.exe
		$a_00_8 = {77 00 68 00 6f 00 61 00 6d 00 69 00 2e 00 65 00 78 00 65 00 } //10 whoami.exe
		$a_00_9 = {77 00 67 00 65 00 74 00 2e 00 65 00 78 00 65 00 } //10 wget.exe
		$a_00_10 = {63 00 75 00 72 00 6c 00 2e 00 65 00 78 00 65 00 } //10 curl.exe
		$a_02_11 = {77 00 6d 00 69 00 63 00 [0-10] 70 00 72 00 6f 00 63 00 65 00 73 00 73 00 20 00 63 00 61 00 6c 00 6c 00 20 00 63 00 72 00 65 00 61 00 74 00 65 00 } //10
		$a_00_12 = {63 00 73 00 63 00 72 00 69 00 70 00 74 00 2e 00 65 00 78 00 65 00 } //10 cscript.exe
		$a_00_13 = {77 00 73 00 63 00 72 00 69 00 70 00 74 00 2e 00 65 00 78 00 65 00 } //10 wscript.exe
		$a_00_14 = {6e 00 65 00 74 00 20 00 75 00 73 00 65 00 72 00 20 00 } //10 net user 
		$a_00_15 = {6e 00 65 00 74 00 20 00 6c 00 6f 00 63 00 61 00 6c 00 67 00 72 00 6f 00 75 00 70 00 20 00 } //10 net localgroup 
		$a_00_16 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 } //10 taskkill
		$a_00_17 = {6d 00 73 00 70 00 61 00 69 00 6e 00 74 00 2e 00 65 00 78 00 65 00 } //10 mspaint.exe
		$a_00_18 = {63 00 61 00 6c 00 63 00 2e 00 65 00 78 00 65 00 } //10 calc.exe
	condition:
		((#a_02_0  & 1)*10+(#a_00_1  & 1)*10+(#a_00_2  & 1)*10+(#a_00_3  & 1)*10+(#a_00_4  & 1)*10+(#a_00_5  & 1)*10+(#a_00_6  & 1)*10+(#a_00_7  & 1)*10+(#a_00_8  & 1)*10+(#a_00_9  & 1)*10+(#a_00_10  & 1)*10+(#a_02_11  & 1)*10+(#a_00_12  & 1)*10+(#a_00_13  & 1)*10+(#a_00_14  & 1)*10+(#a_00_15  & 1)*10+(#a_00_16  & 1)*10+(#a_00_17  & 1)*10+(#a_00_18  & 1)*10) >=10
 
}