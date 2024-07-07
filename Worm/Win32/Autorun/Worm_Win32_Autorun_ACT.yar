
rule Worm_Win32_Autorun_ACT{
	meta:
		description = "Worm:Win32/Autorun.ACT,SIGNATURE_TYPE_PEHSTR_EXT,50 00 50 00 12 00 00 "
		
	strings :
		$a_00_0 = {53 75 70 70 6f 72 74 20 74 6f 20 77 69 6e 64 6f 77 73 20 73 79 73 74 65 6d 20 73 65 72 76 69 63 65 73 2e } //10 Support to windows system services.
		$a_00_1 = {2e 5c 2e 2e 2e 5c 55 67 6f 73 2e 63 6f 6d } //10 .\...\Ugos.com
		$a_00_2 = {41 4e 41 48 54 41 52 00 44 42 47 53 } //10 乁䡁䅔R䉄升
		$a_00_3 = {3a 5c 52 65 63 79 63 6c 65 64 00 00 78 63 6f 70 79 2e 69 6e 69 } //10
		$a_00_4 = {55 53 42 44 52 49 56 45 52 } //10 USBDRIVER
		$a_02_5 = {73 68 65 6c 6c 5c 90 02 16 5c 43 6f 6d 6d 61 6e 64 3d 25 73 90 00 } //5
		$a_00_6 = {73 68 65 6c 6c 65 78 65 63 75 74 65 3d 25 73 } //5 shellexecute=%s
		$a_00_7 = {5b 61 75 74 6f 72 75 6e 5d } //5 [autorun]
		$a_00_8 = {61 75 74 6f 72 75 6e 2e 69 6e 66 } //5 autorun.inf
		$a_00_9 = {4d 63 61 46 65 65 20 76 69 72 75 73 20 64 65 74 65 63 74 20 70 72 6f 67 72 61 6d 2e } //5 McaFee virus detect program.
		$a_00_10 = {3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 4e 65 74 77 6f 72 6b 20 41 73 73 6f 63 69 61 74 65 73 5c 56 69 72 75 73 53 63 61 6e 5c 4d 63 61 55 70 64 61 74 65 2e 65 78 65 } //5 :\Program Files\Network Associates\VirusScan\McaUpdate.exe
		$a_00_11 = {63 6d 64 20 2f 63 20 73 65 74 20 75 73 65 72 20 3e 3e } //1 cmd /c set user >>
		$a_00_12 = {63 6d 64 20 2f 63 20 6e 65 74 20 76 69 65 77 20 2f 64 6f 6d 61 69 6e 20 3e 3e } //1 cmd /c net view /domain >>
		$a_00_13 = {63 6d 64 20 2f 63 20 73 79 73 74 65 6d 69 6e 66 6f 20 3e 3e } //1 cmd /c systeminfo >>
		$a_00_14 = {63 6d 64 20 2f 63 20 69 70 63 6f 6e 66 69 67 2f 61 6c 6c 20 3e 3e } //1 cmd /c ipconfig/all >>
		$a_00_15 = {3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 43 6f 6d 6d 6f 6e 20 46 69 6c 65 73 5c 53 79 73 74 65 6d 5c } //1 :\Program Files\Common Files\System\
		$a_00_16 = {25 64 2d 25 30 32 64 2d 25 30 32 64 2d 25 30 32 64 2d 25 30 32 64 } //1 %d-%02d-%02d-%02d-%02d
		$a_00_17 = {2e 2e 2e 2e 5c } //1 ....\
	condition:
		((#a_00_0  & 1)*10+(#a_00_1  & 1)*10+(#a_00_2  & 1)*10+(#a_00_3  & 1)*10+(#a_00_4  & 1)*10+(#a_02_5  & 1)*5+(#a_00_6  & 1)*5+(#a_00_7  & 1)*5+(#a_00_8  & 1)*5+(#a_00_9  & 1)*5+(#a_00_10  & 1)*5+(#a_00_11  & 1)*1+(#a_00_12  & 1)*1+(#a_00_13  & 1)*1+(#a_00_14  & 1)*1+(#a_00_15  & 1)*1+(#a_00_16  & 1)*1+(#a_00_17  & 1)*1) >=80
 
}