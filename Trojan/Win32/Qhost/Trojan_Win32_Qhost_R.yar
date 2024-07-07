
rule Trojan_Win32_Qhost_R{
	meta:
		description = "Trojan:Win32/Qhost.R,SIGNATURE_TYPE_PEHSTR_EXT,1c 00 1a 00 0c 00 00 "
		
	strings :
		$a_02_0 = {5c 00 73 00 6d 00 72 00 74 00 6b 00 6e 00 90 02 02 5c 00 72 00 65 00 67 00 2e 00 65 00 78 00 65 00 20 00 61 00 64 00 64 00 20 00 48 00 4b 00 4c 00 4d 00 5c 00 53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 90 02 02 20 00 2f 00 76 00 20 00 90 02 02 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 90 02 02 20 00 2f 00 64 00 90 00 } //10
		$a_02_1 = {40 00 2a 00 5c 00 41 00 44 00 3a 00 5c 00 63 00 61 00 6c 00 69 00 73 00 5c 00 73 00 6f 00 6d 00 75 00 72 00 74 00 6b 00 61 00 6e 00 5c 00 90 02 40 2e 00 76 00 62 00 70 00 90 00 } //10
		$a_00_2 = {73 6d 72 74 6b 6e 73 65 74 75 70 70 65 72 } //5 smrtknsetupper
		$a_00_3 = {73 6f 6d 75 72 74 6b 61 6e 5f 69 73 6c 65 6d } //5 somurtkan_islem
		$a_00_4 = {5c 00 64 00 72 00 69 00 76 00 65 00 72 00 73 00 5c 00 65 00 74 00 63 00 } //1 \drivers\etc
		$a_02_5 = {5c 00 73 00 6d 00 72 00 74 00 6b 00 6e 00 90 02 02 5c 00 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 90 00 } //1
		$a_02_6 = {5c 00 73 00 6d 00 72 00 74 00 6b 00 6e 00 90 02 02 5c 00 67 00 65 00 62 00 65 00 72 00 69 00 70 00 2e 00 74 00 78 00 74 00 90 00 } //1
		$a_00_7 = {6e 00 6f 00 74 00 65 00 70 00 61 00 64 00 2e 00 65 00 78 00 65 00 20 00 63 00 3a 00 5c 00 73 00 79 00 73 00 2e 00 66 00 6c 00 61 00 74 00 5c 00 44 00 6f 00 6b 00 75 00 6d 00 61 00 6e 00 2e 00 74 00 78 00 74 00 } //1 notepad.exe c:\sys.flat\Dokuman.txt
		$a_00_8 = {63 00 6d 00 64 00 20 00 2f 00 43 00 20 00 63 00 6f 00 70 00 79 00 20 00 63 00 3a 00 5c 00 73 00 79 00 73 00 2e 00 66 00 6c 00 61 00 74 00 5c 00 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //1 cmd /C copy c:\sys.flat\svchost.exe
		$a_00_9 = {63 00 6d 00 64 00 20 00 2f 00 43 00 20 00 63 00 6f 00 70 00 79 00 20 00 63 00 3a 00 5c 00 73 00 79 00 73 00 2e 00 66 00 6c 00 61 00 74 00 5c 00 67 00 65 00 62 00 65 00 72 00 69 00 70 00 2e 00 74 00 78 00 74 00 } //1 cmd /C copy c:\sys.flat\geberip.txt
		$a_00_10 = {63 00 6d 00 64 00 20 00 2f 00 43 00 20 00 63 00 6f 00 70 00 79 00 20 00 63 00 3a 00 5c 00 73 00 79 00 73 00 2e 00 66 00 6c 00 61 00 74 00 5c 00 72 00 65 00 67 00 2e 00 65 00 78 00 65 00 } //1 cmd /C copy c:\sys.flat\reg.exe
		$a_00_11 = {6c 00 70 00 70 00 61 00 74 00 68 00 6e 00 61 00 6d 00 65 00 2e 00 62 00 69 00 7a 00 } //1 lppathname.biz
	condition:
		((#a_02_0  & 1)*10+(#a_02_1  & 1)*10+(#a_00_2  & 1)*5+(#a_00_3  & 1)*5+(#a_00_4  & 1)*1+(#a_02_5  & 1)*1+(#a_02_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1+(#a_00_10  & 1)*1+(#a_00_11  & 1)*1) >=26
 
}