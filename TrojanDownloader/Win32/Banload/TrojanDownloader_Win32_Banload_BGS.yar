
rule TrojanDownloader_Win32_Banload_BGS{
	meta:
		description = "TrojanDownloader:Win32/Banload.BGS,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 "
		
	strings :
		$a_01_0 = {2f 61 72 7a 2e 61 64 6b 6a 61 68 33 34 2e 63 6f 6d 2f } //2 /arz.adkjah34.com/
		$a_01_1 = {69 73 74 65 6d 61 2e 6c 6e 6b } //1 istema.lnk
		$a_01_2 = {41 76 69 73 6f 20 64 65 20 53 65 67 75 72 61 6e } //1 Aviso de Seguran
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=4
 
}
rule TrojanDownloader_Win32_Banload_BGS_2{
	meta:
		description = "TrojanDownloader:Win32/Banload.BGS,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 05 00 00 "
		
	strings :
		$a_01_0 = {4d 00 6f 00 30 00 30 00 34 00 35 00 39 00 34 00 36 00 } //1 Mo0045946
		$a_01_1 = {4c 49 53 54 41 4f 53 50 4f 52 52 41 44 45 41 52 51 55 49 56 4f 53 } //1 LISTAOSPORRADEARQUIVOS
		$a_01_2 = {2e 00 70 00 69 00 67 00 } //3 .pig
		$a_01_3 = {69 00 6e 00 64 00 79 00 73 00 6f 00 63 00 6b 00 65 00 74 00 73 00 } //3 indysockets
		$a_01_4 = {03 04 9e 03 84 9d f0 fb ff ff 25 ff 00 00 80 79 07 48 0d 00 ff ff ff 40 } //3
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*3+(#a_01_3  & 1)*3+(#a_01_4  & 1)*3) >=10
 
}
rule TrojanDownloader_Win32_Banload_BGS_3{
	meta:
		description = "TrojanDownloader:Win32/Banload.BGS,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {63 00 62 00 72 00 36 00 30 00 30 00 72 00 72 00 } //1 cbr600rr
		$a_01_1 = {41 00 44 00 38 00 44 00 38 00 32 00 42 00 46 00 46 00 37 00 33 00 39 00 43 00 30 00 } //1 AD8D82BFF739C0
		$a_01_2 = {03 04 9e 03 84 9d f0 fb ff ff 25 ff 00 00 80 79 07 48 0d 00 ff ff ff 40 } //1
		$a_03_3 = {83 c4 88 53 33 d2 89 55 90 90 89 55 8c 89 55 88 89 55 fc 33 c0 55 68 90 01 04 64 ff 30 64 89 20 8d 45 fc ba 90 01 04 e8 90 01 04 6a 32 8d 45 96 50 e8 90 01 04 0f b7 c0 50 e8 90 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}
rule TrojanDownloader_Win32_Banload_BGS_4{
	meta:
		description = "TrojanDownloader:Win32/Banload.BGS,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {55 00 70 00 30 00 34 00 33 00 35 00 33 00 34 00 30 00 30 00 37 00 90 02 0f 5c 00 4b 00 49 00 4f 00 4c 00 2e 00 70 00 69 00 67 00 90 00 } //1
		$a_03_1 = {2e 00 39 00 41 00 37 00 90 01 20 90 02 09 46 00 46 00 38 00 39 00 35 00 31 00 37 00 33 00 39 00 39 00 35 00 36 00 39 00 90 01 80 90 02 9f 4b 00 49 00 4f 00 4c 00 2e 00 70 00 69 00 67 00 90 00 } //1
		$a_01_2 = {03 04 9e 03 84 9d f0 fb ff ff 25 ff 00 00 80 79 07 48 0d 00 ff ff ff 40 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
rule TrojanDownloader_Win32_Banload_BGS_5{
	meta:
		description = "TrojanDownloader:Win32/Banload.BGS,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {68 da 07 00 00 33 c9 8b 15 90 01 03 00 8b 45 90 0a b0 00 ff 75 f0 68 90 01 03 00 68 90 01 03 00 68 90 1b 02 00 68 90 01 04 b8 90 01 04 ba 05 00 00 00 90 00 } //1
		$a_01_1 = {4c 69 73 74 5f 46 69 6c 65 73 5f 47 65 74 41 70 70 64 61 74 61 46 6f 6c 64 65 72 } //1 List_Files_GetAppdataFolder
		$a_01_2 = {03 04 9e 03 84 9d f0 fb ff ff 25 ff 00 00 80 79 07 48 0d 00 ff ff ff 40 } //1
		$a_03_3 = {83 c4 88 53 33 d2 89 55 90 90 89 55 8c 89 55 88 89 55 fc 33 c0 55 68 90 01 04 64 ff 30 64 89 20 8d 45 fc ba 90 01 04 e8 90 01 04 6a 32 8d 45 96 50 e8 90 01 04 0f b7 c0 50 e8 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}
rule TrojanDownloader_Win32_Banload_BGS_6{
	meta:
		description = "TrojanDownloader:Win32/Banload.BGS,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 06 00 00 "
		
	strings :
		$a_01_0 = {55 00 70 00 30 00 39 00 35 00 36 00 34 00 35 00 37 00 } //1 Up0956457
		$a_01_1 = {55 00 48 00 53 00 48 00 55 00 38 00 39 00 34 00 35 00 39 00 38 00 35 00 38 00 } //1 UHSHU89459858
		$a_01_2 = {5c 00 48 00 65 00 79 00 73 00 6f 00 75 00 6c 00 2e 00 65 00 62 00 61 00 79 00 } //1 \Heysoul.ebay
		$a_01_3 = {5c 00 4a 00 6f 00 66 00 66 00 72 00 65 00 79 00 2e 00 73 00 61 00 79 00 } //1 \Joffrey.say
		$a_01_4 = {03 04 9e 03 84 9d f0 fb ff ff 25 ff 00 00 80 79 07 48 0d 00 ff ff ff 40 } //1
		$a_03_5 = {83 c4 88 53 33 d2 89 55 90 90 89 55 8c 89 55 88 89 55 fc 33 c0 55 68 90 01 04 64 ff 30 64 89 20 90 02 05 8d 45 fc ba 90 01 04 e8 90 01 04 90 02 02 8d 45 96 50 e8 90 01 04 0f b7 c0 50 e8 90 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_03_5  & 1)*1) >=4
 
}
rule TrojanDownloader_Win32_Banload_BGS_7{
	meta:
		description = "TrojanDownloader:Win32/Banload.BGS,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 10 00 00 "
		
	strings :
		$a_01_0 = {53 61 66 61 64 61 5f 72 75 73 73 61 } //1 Safada_russa
		$a_01_1 = {44 65 73 65 6d 70 61 63 6f 74 61 72 5a 49 50 5a 49 4e 48 4f } //1 DesempacotarZIPZINHO
		$a_01_2 = {62 61 74 6d 61 6e } //1 batman
		$a_01_3 = {4c 69 73 74 5f 46 69 6c 65 73 5f 47 65 74 41 70 70 64 61 74 61 46 6f 6c 64 65 72 } //1 List_Files_GetAppdataFolder
		$a_01_4 = {61 72 72 6f 63 68 61 32 30 31 36 } //1 arrocha2016
		$a_01_5 = {49 6e 69 63 69 6f 5f 64 6f 5f 50 72 6f 63 65 73 73 6f } //1 Inicio_do_Processo
		$a_01_6 = {42 41 49 58 41 4e 44 4f 5f 4e 4f 5f 50 43 } //1 BAIXANDO_NO_PC
		$a_01_7 = {49 6e 69 63 69 61 72 5f 41 69 76 69 64 61 64 65 4c 44 } //1 Iniciar_AividadeLD
		$a_01_8 = {49 44 49 4f 4d 41 4c 4f 4b 4f 32 } //1 IDIOMALOKO2
		$a_01_9 = {6e 6f 6d 65 70 61 73 74 61 } //1 nomepasta
		$a_01_10 = {5a 00 75 00 6d 00 70 00 65 00 72 00 30 00 30 00 39 00 33 00 38 00 } //1 Zumper00938
		$a_01_11 = {49 4e 49 42 49 52 45 58 54 52 41 43 41 4f } //1 INIBIREXTRACAO
		$a_01_12 = {54 53 54 4f 50 4a 45 41 4e 53 } //1 TSTOPJEANS
		$a_03_13 = {03 04 9e 03 84 9d 90 01 01 fb ff ff 25 ff 00 00 80 79 07 48 0d 00 ff ff ff 40 90 00 } //1
		$a_03_14 = {83 c4 88 53 33 d2 89 55 90 90 89 55 8c 89 55 88 89 55 fc 33 c0 55 68 90 01 04 64 ff 30 64 89 20 90 02 05 8d 45 fc ba 90 01 04 e8 90 01 04 90 02 02 8d 45 96 50 e8 90 01 04 0f b7 c0 50 e8 90 00 } //1
		$a_03_15 = {8b d0 8d 45 e0 b9 00 00 00 00 e8 90 01 04 8b 45 e0 ba 90 01 04 e8 90 01 04 ba 90 01 04 b8 90 01 04 e8 90 01 04 68 90 01 04 e8 90 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_03_13  & 1)*1+(#a_03_14  & 1)*1+(#a_03_15  & 1)*1) >=5
 
}