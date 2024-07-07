
rule Worm_Win32_VB_FS{
	meta:
		description = "Worm:Win32/VB.FS,SIGNATURE_TYPE_PEHSTR_EXT,09 00 07 00 09 00 00 "
		
	strings :
		$a_01_0 = {42 00 2a 00 5c 00 41 00 44 00 3a 00 5c 00 47 00 4f 00 4f 00 47 00 4c 00 45 00 20 00 41 00 44 00 53 00 45 00 4e 00 53 00 45 00 5c 00 32 00 38 00 30 00 35 00 30 00 37 00 20 00 44 00 45 00 4e 00 47 00 41 00 4e 00 20 00 45 00 4d 00 41 00 49 00 4c 00 5c 00 4a 00 50 00 45 00 47 00 2e 00 76 00 62 00 70 00 } //6 B*\AD:\GOOGLE ADSENSE\280507 DENGAN EMAIL\JPEG.vbp
		$a_01_1 = {3a 00 43 00 6c 00 69 00 63 00 6b 00 58 00 31 00 3a 00 } //1 :ClickX1:
		$a_01_2 = {3a 00 57 00 69 00 6e 00 66 00 6f 00 31 00 3a 00 } //1 :Winfo1:
		$a_01_3 = {3a 00 57 00 54 00 61 00 72 00 67 00 65 00 74 00 31 00 3a 00 } //1 :WTarget1:
		$a_01_4 = {3a 00 53 00 74 00 61 00 74 00 44 00 52 00 3a 00 } //1 :StatDR:
		$a_01_5 = {3a 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 58 00 3a 00 } //1 :DownloadX:
		$a_01_6 = {3a 00 41 00 64 00 64 00 72 00 65 00 73 00 73 00 58 00 3a 00 } //1 :AddressX:
		$a_01_7 = {48 00 4b 00 4c 00 4d 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 5c 00 53 00 79 00 73 00 50 00 72 00 6e 00 74 00 } //1 HKLM\Software\Microsoft\Windows\CurrentVersion\Run\SysPrnt
		$a_01_8 = {46 00 77 00 3a 00 20 00 52 00 65 00 73 00 70 00 6f 00 6e 00 73 00 65 00 20 00 55 00 72 00 67 00 65 00 6e 00 74 00 2e 00 2e 00 } //1 Fw: Response Urgent..
	condition:
		((#a_01_0  & 1)*6+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=7
 
}
rule Worm_Win32_VB_FS_2{
	meta:
		description = "Worm:Win32/VB.FS,SIGNATURE_TYPE_PEHSTR_EXT,08 00 05 00 04 00 00 "
		
	strings :
		$a_00_0 = {5c 00 76 00 65 00 6d 00 6f 00 20 00 63 00 6f 00 64 00 65 00 2e 00 76 00 62 00 70 00 } //2 \vemo code.vbp
		$a_01_1 = {73 65 62 61 72 46 6c 61 73 68 44 69 73 6b } //1 sebarFlashDisk
		$a_01_2 = {65 6b 73 70 6c 6f 69 74 61 73 69 5f 66 6f 6c 64 65 72 5f 68 74 74 } //3 eksploitasi_folder_htt
		$a_00_3 = {64 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 2e 00 77 00 72 00 69 00 74 00 65 00 6c 00 6e 00 28 00 72 00 75 00 6e 00 65 00 78 00 65 00 29 00 3b 00 } //2 document.writeln(runexe);
	condition:
		((#a_00_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*3+(#a_00_3  & 1)*2) >=5
 
}