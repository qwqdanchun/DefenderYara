
rule HackTool_Win32_Trilark_B_dha{
	meta:
		description = "HackTool:Win32/Trilark.B!dha,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0c 00 00 "
		
	strings :
		$a_01_0 = {6e 6f 72 74 68 20 6b 6f 72 65 61 } //1 north korea
		$a_01_1 = {68 74 74 70 3a 2f 2f 6b 73 69 2f 73 70 79 2f } //1 http://ksi/spy/
		$a_01_2 = {73 70 79 5c 68 65 6c 70 2e 74 78 74 } //1 spy\help.txt
		$a_01_3 = {73 70 79 5c 64 6f 63 2e 70 68 70 } //1 spy\doc.php
		$a_01_4 = {5f 5f 73 68 65 6c 6c 63 6f 64 65 5f 5f } //1 __shellcode__
		$a_01_5 = {76 62 73 20 6f 62 73 63 75 72 65 20 4f 4b 2e } //1 vbs obscure OK.
		$a_01_6 = {2e 76 62 73 6f 62 73 } //1 .vbsobs
		$a_01_7 = {63 65 72 74 75 74 69 6c 20 2d 66 20 2d 64 65 63 6f 64 65 } //1 certutil -f -decode
		$a_01_8 = {53 00 70 00 79 00 20 00 55 00 52 00 4c 00 3a 00 } //1 Spy URL:
		$a_01_9 = {61 00 73 00 69 00 73 00 74 00 20 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 } //1 asist encrypt
		$a_01_10 = {61 00 73 00 69 00 73 00 74 00 20 00 64 00 65 00 63 00 72 00 79 00 70 00 74 00 } //1 asist decrypt
		$a_01_11 = {52 00 65 00 63 00 6f 00 76 00 65 00 72 00 79 00 20 00 48 00 54 00 41 00 } //1 Recovery HTA
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1) >=10
 
}