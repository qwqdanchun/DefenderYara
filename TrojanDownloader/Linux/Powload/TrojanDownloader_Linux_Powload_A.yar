
rule TrojanDownloader_Linux_Powload_A{
	meta:
		description = "TrojanDownloader:Linux/Powload.A,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_00_0 = {3d 20 22 63 6d 64 20 2f 4b 20 22 20 2b 20 22 50 22 20 26 20 22 6f 57 65 52 22 20 26 20 22 73 22 20 2b 20 22 48 22 20 2b 20 22 65 6c 4c 2e 65 22 20 2b 20 22 78 22 20 2b 20 22 45 } //1 = "cmd /K " + "P" & "oWeR" & "s" + "H" + "elL.e" + "x" + "E
		$a_00_1 = {2d 57 69 6e 64 6f 77 53 74 79 6c 65 20 68 69 64 64 65 6e 20 2d 45 78 65 63 75 74 69 6f 6e 50 6f 6c 69 63 79 20 42 79 70 61 73 73 20 2d 6e 6f 70 72 6f 66 69 6c 65 20 28 4e 65 77 2d 4f 62 6a 65 63 74 20 53 79 73 74 65 6d 2e 4e 65 74 2e 57 65 62 43 6c 69 65 6e 74 29 2e 44 6f 77 6e 6c 6f 61 64 46 69 6c 65 28 27 68 74 74 70 3a 2f } //1 -WindowStyle hidden -ExecutionPolicy Bypass -noprofile (New-Object System.Net.WebClient).DownloadFile('http:/
		$a_02_2 = {27 2c 27 25 54 45 4d 50 25 5c [0-10] 2e 70 73 31 27 29 3b 20 70 6f 77 65 72 73 68 65 6c 6c 2e 65 78 65 } //1
		$a_02_3 = {2d 57 69 6e 64 6f 77 53 74 79 6c 65 20 68 69 64 64 65 6e 20 2d 45 78 65 63 75 74 69 6f 6e 50 6f 6c 69 63 79 20 42 79 70 61 73 73 20 2d 6e 6f 70 72 6f 66 69 6c 65 20 2d 66 69 6c 65 20 25 54 45 4d 50 25 5c [0-10] 2e 70 73 31 } //1
		$a_02_4 = {22 63 6d 64 20 2f 4b 20 22 20 2b 20 22 70 [0-01] 22 20 26 20 22 [0-01] 57 65 52 22 20 26 20 22 53 68 22 20 2b 20 22 65 6c 6c 2e 65 22 20 2b 20 22 78 22 20 2b 20 22 65 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_02_2  & 1)*1+(#a_02_3  & 1)*1+(#a_02_4  & 1)*1) >=4
 
}