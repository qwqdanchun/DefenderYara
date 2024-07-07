
rule Trojan_Win32_Powessere_L{
	meta:
		description = "Trojan:Win32/Powessere.L,SIGNATURE_TYPE_CMDHSTR_EXT,07 00 07 00 08 00 00 "
		
	strings :
		$a_00_0 = {6d 00 73 00 68 00 74 00 61 00 2e 00 65 00 78 00 65 00 } //65526 mshta.exe
		$a_00_1 = {5c 00 63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 } //1 \cmd.exe
		$a_00_2 = {20 00 2f 00 63 00 20 00 73 00 74 00 61 00 72 00 74 00 20 00 } //1  /c start 
		$a_00_3 = {5c 00 41 00 70 00 70 00 44 00 61 00 74 00 61 00 5c 00 4c 00 6f 00 63 00 61 00 6c 00 5c 00 } //1 \AppData\Local\
		$a_02_4 = {6a 00 61 00 76 00 61 00 73 00 63 00 72 00 69 00 70 00 74 00 3a 00 90 02 20 3d 00 90 02 20 3b 00 90 00 } //1
		$a_00_5 = {3d 00 6e 00 65 00 77 00 20 00 41 00 63 00 74 00 69 00 76 00 65 00 58 00 4f 00 62 00 6a 00 65 00 63 00 74 00 28 00 57 00 53 00 63 00 72 00 69 00 70 00 74 00 2e 00 53 00 68 00 65 00 6c 00 6c 00 29 00 3b 00 } //1 =new ActiveXObject(WScript.Shell);
		$a_02_6 = {2e 00 52 00 65 00 67 00 52 00 65 00 61 00 64 00 28 00 48 00 4b 00 43 00 55 00 5c 00 5c 00 73 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 5c 00 90 02 20 5c 00 5c 00 90 02 20 29 00 3b 00 90 00 } //1
		$a_02_7 = {3b 00 65 00 76 00 61 00 6c 00 28 00 90 02 20 29 00 3b 00 90 00 } //1
	condition:
		((#a_00_0  & 1)*65526+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_02_4  & 1)*1+(#a_00_5  & 1)*1+(#a_02_6  & 1)*1+(#a_02_7  & 1)*1) >=7
 
}