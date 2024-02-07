
rule TrojanDownloader_Win32_Banload_ZEC{
	meta:
		description = "TrojanDownloader:Win32/Banload.ZEC,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 00 73 00 76 00 63 00 68 00 6f 00 75 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //01 00  \svchoust.exe
		$a_01_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 6d 00 65 00 64 00 69 00 61 00 74 00 6f 00 77 00 6e 00 2e 00 63 00 6f 00 6d 00 2e 00 62 00 72 00 } //01 00  http://www.mediatown.com.br
		$a_01_2 = {50 00 72 00 6f 00 63 00 65 00 73 00 73 00 6f 00 20 00 66 00 69 00 6e 00 61 00 6c 00 69 00 7a 00 61 00 64 00 6f 00 20 00 63 00 6f 00 6d 00 20 00 73 00 75 00 63 00 65 00 73 00 73 00 6f 00 21 00 } //01 00  Processo finalizado com sucesso!
		$a_01_3 = {2f 00 73 00 65 00 74 00 75 00 70 00 31 00 2e 00 65 00 78 00 65 00 } //01 00  /setup1.exe
		$a_01_4 = {2f 00 65 00 74 00 69 00 63 00 6f 00 2f 00 6d 00 68 00 6f 00 73 00 74 00 2f 00 6e 00 6f 00 76 00 6f 00 73 00 2f 00 67 00 6f 00 6f 00 67 00 6c 00 65 00 2f 00 63 00 6f 00 6d 00 2f 00 62 00 72 00 2f 00 6d 00 65 00 64 00 46 00 69 00 65 00 6c 00 64 00 } //00 00  /etico/mhost/novos/google/com/br/medField
	condition:
		any of ($a_*)
 
}