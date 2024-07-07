
rule TrojanDownloader_Win32_Banload_AOX{
	meta:
		description = "TrojanDownloader:Win32/Banload.AOX,SIGNATURE_TYPE_PEHSTR_EXT,18 01 0e 01 06 00 00 "
		
	strings :
		$a_01_0 = {46 00 42 00 53 00 5c 00 4d 00 79 00 20 00 50 00 72 00 6f 00 79 00 65 00 63 00 74 00 73 00 5c 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 65 00 72 00 20 00 75 00 6c 00 74 00 69 00 6d 00 6f 00 } //100 FBS\My Proyects\Downloader ultimo
		$a_01_1 = {76 00 69 00 64 00 61 00 64 00 65 00 70 00 72 00 6f 00 67 00 72 00 61 00 6d 00 61 00 64 00 6f 00 72 00 2e 00 63 00 6f 00 6d 00 2e 00 62 00 72 00 2f 00 77 00 70 00 2d 00 63 00 6f 00 6e 00 74 00 65 00 6e 00 74 00 2f 00 70 00 6c 00 75 00 67 00 69 00 6e 00 73 00 2f 00 77 00 6c 00 6f 00 67 00 6f 00 6e 00 66 00 2e 00 65 00 78 00 65 00 } //100 vidadeprogramador.com.br/wp-content/plugins/wlogonf.exe
		$a_01_2 = {63 00 67 00 69 00 2d 00 62 00 69 00 6e 00 2f 00 63 00 67 00 69 00 62 00 62 00 73 00 73 00 2e 00 65 00 78 00 65 00 2f 00 43 00 4f 00 52 00 45 00 2d 00 4d 00 61 00 69 00 6e 00 25 00 32 00 30 00 57 00 65 00 62 00 2f 00 } //50 cgi-bin/cgibbss.exe/CORE-Main%20Web/
		$a_01_3 = {3a 00 3a 00 3a 00 20 00 42 00 41 00 4e 00 43 00 4f 00 20 00 44 00 41 00 56 00 49 00 56 00 49 00 45 00 4e 00 44 00 41 00 20 00 3a 00 3a 00 3a 00 } //20 ::: BANCO DAVIVIENDA :::
		$a_01_4 = {63 00 3a 00 5c 00 77 00 6c 00 6f 00 67 00 6f 00 6e 00 66 00 2e 00 65 00 78 00 65 00 } //10 c:\wlogonf.exe
		$a_01_5 = {5c 00 57 00 69 00 6e 00 53 00 65 00 72 00 76 00 69 00 73 00 73 00 2e 00 65 00 78 00 65 00 } //10 \WinServiss.exe
	condition:
		((#a_01_0  & 1)*100+(#a_01_1  & 1)*100+(#a_01_2  & 1)*50+(#a_01_3  & 1)*20+(#a_01_4  & 1)*10+(#a_01_5  & 1)*10) >=270
 
}