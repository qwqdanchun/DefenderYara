
rule Trojan_Win32_Valcaryx_B{
	meta:
		description = "Trojan:Win32/Valcaryx.B,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {61 00 63 00 74 00 3d 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 26 00 6f 00 70 00 3d 00 [0-18] 26 00 72 00 69 00 3d 00 25 00 73 00 26 00 6d 00 63 00 3d 00 25 00 73 00 26 00 76 00 73 00 3d 00 25 00 73 00 26 00 74 00 6d 00 3d 00 25 00 73 00 26 00 6f 00 73 00 3d 00 25 00 73 00 26 00 73 00 63 00 3d 00 25 00 73 00 26 00 } //1
		$a_01_1 = {2f 00 50 00 6f 00 70 00 75 00 70 00 52 00 65 00 63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 } //1 /PopupRecmd.exe
		$a_00_2 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 76 00 69 00 70 00 2e 00 66 00 61 00 6e 00 79 00 61 00 72 00 69 00 67 00 68 00 74 00 77 00 61 00 79 00 2e 00 63 00 6f 00 6d 00 2f 00 33 00 36 00 30 00 2f 00 } //1 http://vip.fanyarightway.com/360/
		$a_00_3 = {5c 00 74 00 61 00 73 00 73 00 6b 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 00 00 00 00 5c 00 62 00 69 00 6e 00 64 00 65 00 78 00 65 00 31 00 2e 00 65 00 78 00 65 00 } //1
		$a_01_4 = {5c 00 54 00 65 00 6d 00 70 00 5c 00 71 00 69 00 62 00 69 00 6e 00 67 00 } //1 \Temp\qibing
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}