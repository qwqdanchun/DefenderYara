
rule Trojan_Win32_Glod_A{
	meta:
		description = "Trojan:Win32/Glod.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 0c 00 00 "
		
	strings :
		$a_80_0 = {3c 69 6e 70 75 74 20 74 79 70 65 3d 22 73 75 62 6d 69 74 22 20 76 61 6c 75 65 3d 22 68 6d 22 20 6e 61 6d 65 3d 22 42 31 22 3e } //<input type="submit" value="hm" name="B1">  1
		$a_00_1 = {43 00 3a 00 5c 00 50 00 69 00 63 00 2e 00 62 00 61 00 74 00 } //1 C:\Pic.bat
		$a_00_2 = {43 00 3a 00 5c 00 50 00 69 00 63 00 2e 00 6a 00 70 00 67 00 } //1 C:\Pic.jpg
		$a_02_3 = {2f 00 68 00 74 00 [0-02] 2e 00 74 00 78 00 74 00 } //1
		$a_00_4 = {4b 00 65 00 79 00 73 00 70 00 79 00 20 00 52 00 75 00 6e 00 6e 00 69 00 6e 00 67 00 20 00 4f 00 6e 00 20 00 53 00 79 00 73 00 74 00 65 00 6d 00 } //3 Keyspy Running On System
		$a_00_5 = {5c 00 64 00 6f 00 6e 00 2e 00 65 00 78 00 65 00 } //1 \don.exe
		$a_00_6 = {5c 00 64 00 6f 00 6e 00 78 00 2e 00 65 00 78 00 65 00 } //1 \donx.exe
		$a_02_7 = {5b 00 45 00 73 00 63 00 61 00 70 00 65 00 5d 00 00 00 00 00 ?? 00 00 00 3d 00 3d 00 3d 00 3d 00 3d 00 3d 00 3d 00 3d 00 3d 00 3d 00 3d 00 3d 00 } //1
		$a_00_8 = {26 6e 62 73 70 3b 26 6e 62 73 70 3b 0d 0a 20 20 3c 69 6e 70 75 74 20 74 79 70 65 3d 22 74 65 78 74 22 20 6e 61 6d 65 3d 22 70 63 6e 61 6d 65 22 } //1
		$a_01_9 = {41 00 72 00 65 00 20 00 59 00 6f 00 75 00 20 00 53 00 75 00 72 00 65 00 20 00 59 00 6f 00 75 00 20 00 57 00 61 00 6e 00 74 00 20 00 54 00 6f 00 20 00 43 00 6c 00 65 00 61 00 72 00 20 00 4c 00 6f 00 67 00 } //1 Are You Sure You Want To Clear Log
		$a_00_10 = {77 00 77 00 77 00 2e 00 73 00 61 00 6d 00 61 00 69 00 72 00 2e 00 72 00 75 00 2f 00 70 00 72 00 6f 00 78 00 79 00 2f 00 70 00 72 00 6f 00 78 00 79 00 63 00 68 00 65 00 63 00 6b 00 65 00 72 00 } //1 www.samair.ru/proxy/proxychecker
		$a_00_11 = {6d 00 61 00 69 00 6c 00 2d 00 63 00 61 00 78 00 2e 00 63 00 6f 00 6d 00 2f 00 77 00 65 00 62 00 2e 00 70 00 68 00 70 00 } //1 mail-cax.com/web.php
	condition:
		((#a_80_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_02_3  & 1)*1+(#a_00_4  & 1)*3+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_02_7  & 1)*1+(#a_00_8  & 1)*1+(#a_01_9  & 1)*1+(#a_00_10  & 1)*1+(#a_00_11  & 1)*1) >=5
 
}