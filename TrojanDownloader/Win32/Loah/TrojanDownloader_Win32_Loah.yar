
rule TrojanDownloader_Win32_Loah{
	meta:
		description = "TrojanDownloader:Win32/Loah,SIGNATURE_TYPE_PEHSTR_EXT,08 00 06 00 09 00 00 "
		
	strings :
		$a_00_0 = {77 77 77 2e 68 61 6f 6c 32 33 2e 6e 65 74 2f 3f 61 30 34 2f 2f } //1 www.haol23.net/?a04//
		$a_00_1 = {7b 38 37 31 43 35 33 38 30 2d 34 32 41 30 2d 31 30 36 39 2d 41 32 45 41 2d 30 38 30 30 32 42 33 30 33 30 39 44 7d } //1 {871C5380-42A0-1069-A2EA-08002B30309D}
		$a_00_2 = {7b 25 30 38 6c 58 2d 25 30 34 58 2d 25 30 34 78 2d 25 30 32 58 25 30 32 58 2d 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 7d } //1 {%08lX-%04X-%04x-%02X%02X-%02X%02X%02X%02X%02X%02X}
		$a_00_3 = {43 75 72 43 6f 64 65 } //1 CurCode
		$a_00_4 = {25 34 2e 34 64 25 32 2e 32 64 25 32 2e 32 64 } //1 %4.4d%2.2d%2.2d
		$a_00_5 = {25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 } //1 %02X%02X%02X%02X%02X%02X
		$a_00_6 = {51 71 48 65 6c 70 65 72 4a 2e 64 6c 6c } //2 QqHelperJ.dll
		$a_00_7 = {68 74 74 70 3a 2f 2f 75 70 64 61 74 65 2e 6d 69 63 72 6f 66 73 6f 74 2e 63 6e 2f 64 6c 2f 31 2e 64 61 74 3f 25 73 } //2 http://update.microfsot.cn/dl/1.dat?%s
		$a_01_8 = {bf 01 00 00 80 57 ff d6 6a 04 8d 45 f4 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*2+(#a_00_7  & 1)*2+(#a_01_8  & 1)*1) >=6
 
}