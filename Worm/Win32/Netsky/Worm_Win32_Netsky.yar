
rule Worm_Win32_Netsky{
	meta:
		description = "Worm:Win32/Netsky,SIGNATURE_TYPE_PEHSTR,08 00 07 00 0c 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 4c 53 49 44 5c 7b 45 36 46 42 35 45 32 30 2d 44 45 33 35 2d 31 31 43 46 2d 39 43 38 37 2d 30 30 41 41 30 30 35 31 32 37 45 44 7d 5c 49 6e 50 72 6f 63 53 65 72 76 65 72 33 32 } //01 00  CLSID\{E6FB5E20-DE35-11CF-9C87-00AA005127ED}\InProcServer32
		$a_01_1 = {4b 61 73 70 65 72 73 6b 79 41 76 } //01 00  KasperskyAv
		$a_01_2 = {43 6f 6e 74 65 6e 74 2d 54 79 70 65 3a 20 61 70 70 6c 69 63 61 74 69 6f 6e 2f 78 2d 7a 69 70 2d 63 6f 6d 70 72 65 73 73 65 64 3b } //01 00  Content-Type: application/x-zip-compressed;
		$a_01_3 = {52 43 50 54 20 54 4f 3a 20 3c } //01 00  RCPT TO: <
		$a_01_4 = {4d 41 49 4c 20 46 52 4f 4d 3a 20 3c } //01 00  MAIL FROM: <
		$a_01_5 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //01 00  SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_01_6 = {73 65 78 2e 64 6f 63 2e 65 78 65 } //01 00  sex.doc.exe
		$a_01_7 = {63 6f 6d 70 69 6c 61 74 69 6f 6e 2e 64 6f 63 2e 65 78 65 } //01 00  compilation.doc.exe
		$a_01_8 = {64 69 63 74 69 6f 6e 61 72 79 2e 64 6f 63 2e 65 78 65 } //01 00  dictionary.doc.exe
		$a_01_9 = {32 31 33 2e 31 39 31 2e 37 34 2e 31 39 } //01 00  213.191.74.19
		$a_01_10 = {31 39 33 2e 31 34 31 2e 34 30 2e 34 32 } //01 00  193.141.40.42
		$a_01_11 = {25 73 2c 20 25 75 20 25 73 20 25 75 20 25 2e 32 75 3a 25 2e 32 75 3a 25 2e 32 75 20 25 73 25 2e 32 75 25 2e 32 75 } //00 00  %s, %u %s %u %.2u:%.2u:%.2u %s%.2u%.2u
	condition:
		any of ($a_*)
 
}