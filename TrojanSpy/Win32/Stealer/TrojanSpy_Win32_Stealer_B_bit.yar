
rule TrojanSpy_Win32_Stealer_B_bit{
	meta:
		description = "TrojanSpy:Win32/Stealer.B!bit,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 09 00 00 "
		
	strings :
		$a_01_0 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 46 00 20 00 2f 00 49 00 4d 00 } //3 taskkill /F /IM
		$a_01_1 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //3 Software\Microsoft\Windows\CurrentVersion\Run
		$a_01_2 = {53 00 65 00 6c 00 65 00 63 00 74 00 20 00 2a 00 20 00 66 00 72 00 6f 00 6d 00 20 00 57 00 69 00 6e 00 33 00 32 00 5f 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 20 00 57 00 48 00 45 00 52 00 45 00 20 00 4e 00 61 00 6d 00 65 00 } //3 Select * from Win32_Process WHERE Name
		$a_01_3 = {43 00 6f 00 6e 00 74 00 65 00 6e 00 74 00 2d 00 44 00 69 00 73 00 70 00 6f 00 73 00 69 00 74 00 69 00 6f 00 6e 00 3a 00 20 00 66 00 6f 00 72 00 6d 00 2d 00 64 00 61 00 74 00 61 00 3b 00 20 00 6e 00 61 00 6d 00 65 00 3d 00 22 00 75 00 70 00 6c 00 6f 00 61 00 64 00 66 00 69 00 6c 00 65 00 22 00 } //3 Content-Disposition: form-data; name="uploadfile"
		$a_01_4 = {61 00 70 00 6b 00 69 00 6b 00 68 00 6f 00 6a 00 2e 00 63 00 6f 00 6d 00 } //2 apkikhoj.com
		$a_01_5 = {77 00 77 00 77 00 2e 00 65 00 78 00 68 00 6f 00 6e 00 62 00 61 00 6e 00 6b 00 73 00 2e 00 63 00 6f 00 6d 00 } //2 www.exhonbanks.com
		$a_01_6 = {73 00 65 00 65 00 64 00 2d 00 61 00 64 00 76 00 65 00 72 00 74 00 69 00 73 00 69 00 6e 00 67 00 2e 00 63 00 6f 00 6d 00 } //2 seed-advertising.com
		$a_01_7 = {2d 00 2d 00 43 00 4c 00 49 00 50 00 53 00 } //1 --CLIPS
		$a_01_8 = {2d 00 2d 00 50 00 41 00 52 00 53 00 45 00 } //1 --PARSE
	condition:
		((#a_01_0  & 1)*3+(#a_01_1  & 1)*3+(#a_01_2  & 1)*3+(#a_01_3  & 1)*3+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2+(#a_01_6  & 1)*2+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=18
 
}