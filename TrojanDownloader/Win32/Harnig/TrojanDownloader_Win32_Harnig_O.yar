
rule TrojanDownloader_Win32_Harnig_O{
	meta:
		description = "TrojanDownloader:Win32/Harnig.O,SIGNATURE_TYPE_PEHSTR_EXT,1f 00 1f 00 07 00 00 "
		
	strings :
		$a_00_0 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //10 SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_02_1 = {52 00 45 00 47 00 20 00 61 00 64 00 64 00 20 00 48 00 4b 00 [0-04] 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 50 00 6f 00 6c 00 69 00 63 00 69 00 65 00 73 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 20 00 2f 00 76 00 } //10
		$a_02_2 = {6e 00 65 00 74 00 73 00 68 00 2e 00 65 00 78 00 65 00 [0-04] 66 00 69 00 72 00 65 00 77 00 61 00 6c 00 6c 00 20 00 73 00 65 00 74 00 20 00 6f 00 70 00 6d 00 6f 00 64 00 65 00 20 00 64 00 69 00 73 00 61 00 62 00 6c 00 65 00 } //10
		$a_00_3 = {31 00 32 00 37 00 2e 00 30 00 2e 00 30 00 2e 00 31 00 20 00 77 00 77 00 77 00 2e 00 76 00 69 00 72 00 75 00 73 00 74 00 6f 00 74 00 61 00 6c 00 2e 00 63 00 6f 00 6d 00 } //1 127.0.0.1 www.virustotal.com
		$a_00_4 = {31 00 32 00 37 00 2e 00 30 00 2e 00 30 00 2e 00 31 00 20 00 77 00 77 00 77 00 2e 00 62 00 69 00 74 00 64 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 2e 00 63 00 6f 00 6d 00 } //1 127.0.0.1 www.bitdefender.com
		$a_00_5 = {31 00 32 00 37 00 2e 00 30 00 2e 00 30 00 2e 00 31 00 20 00 77 00 77 00 77 00 2e 00 76 00 69 00 72 00 75 00 73 00 73 00 63 00 61 00 6e 00 2e 00 6a 00 6f 00 74 00 74 00 69 00 2e 00 6f 00 72 00 67 00 } //1 127.0.0.1 www.virusscan.jotti.org
		$a_00_6 = {31 00 32 00 37 00 2e 00 30 00 2e 00 30 00 2e 00 31 00 20 00 77 00 77 00 77 00 2e 00 73 00 63 00 61 00 6e 00 6e 00 65 00 72 00 2e 00 6e 00 6f 00 76 00 69 00 72 00 75 00 73 00 74 00 68 00 61 00 6e 00 6b 00 73 00 2e 00 6f 00 72 00 67 00 } //1 127.0.0.1 www.scanner.novirusthanks.org
	condition:
		((#a_00_0  & 1)*10+(#a_02_1  & 1)*10+(#a_02_2  & 1)*10+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1) >=31
 
}