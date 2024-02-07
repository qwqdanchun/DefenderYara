
rule TrojanDownloader_Win32_Bancos_CA{
	meta:
		description = "TrojanDownloader:Win32/Bancos.CA,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0d 00 05 00 00 0a 00 "
		
	strings :
		$a_00_0 = {43 3a 5c 41 72 71 75 69 76 6f 73 20 64 65 20 70 72 6f 67 72 61 6d 61 73 5c 4d 69 63 72 6f 73 6f 66 74 20 56 69 73 75 61 6c 20 53 74 75 64 69 6f 5c 56 42 39 38 5c 56 42 36 2e 4f 4c 42 } //01 00  C:\Arquivos de programas\Microsoft Visual Studio\VB98\VB6.OLB
		$a_00_1 = {65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 2e 00 65 00 78 00 65 00 20 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 70 00 6f 00 72 00 74 00 61 00 6c 00 77 00 65 00 62 00 30 00 34 00 2e 00 73 00 61 00 75 00 64 00 65 00 2e 00 67 00 6f 00 76 00 2e 00 62 00 72 00 2f 00 49 00 6d 00 61 00 67 00 65 00 6e 00 73 00 5f 00 73 00 76 00 73 00 2f 00 62 00 6f 00 74 00 6f 00 65 00 73 00 2f 00 63 00 61 00 72 00 72 00 65 00 67 00 61 00 6e 00 64 00 6f 00 2e 00 67 00 69 00 66 00 } //01 00  explorer.exe http://portalweb04.saude.gov.br/Imagens_svs/botoes/carregando.gif
		$a_00_2 = {43 00 3a 00 5c 00 41 00 72 00 71 00 75 00 69 00 76 00 6f 00 73 00 20 00 64 00 65 00 20 00 70 00 72 00 6f 00 67 00 72 00 61 00 6d 00 61 00 73 00 5c 00 41 00 72 00 71 00 75 00 69 00 76 00 6f 00 73 00 20 00 63 00 6f 00 6d 00 75 00 6e 00 73 00 5c 00 61 00 73 00 6f 00 65 00 6c 00 61 00 2e 00 65 00 78 00 65 00 } //01 00  C:\Arquivos de programas\Arquivos comuns\asoela.exe
		$a_02_3 = {77 00 2e 00 66 00 69 00 72 00 69 00 62 00 65 00 63 00 61 00 34 00 35 00 30 00 30 00 2e 00 70 00 61 00 67 00 65 00 62 00 72 00 2e 00 63 00 6f 00 6d 00 2f 00 6d 00 72 00 62 00 69 00 67 00 2f 00 90 02 10 2e 00 6a 00 70 00 67 00 90 00 } //01 00 
		$a_00_4 = {43 00 3a 00 5c 00 44 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 73 00 20 00 61 00 6e 00 64 00 20 00 53 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 5c 00 64 00 65 00 73 00 73 00 61 00 5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 76 00 62 00 20 00 70 00 75 00 78 00 61 00 64 00 6f 00 72 00 20 00 6d 00 65 00 6c 00 68 00 6f 00 72 00 20 00 6e 00 6f 00 20 00 6a 00 65 00 69 00 74 00 6f 00 5c 00 50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 31 00 2e 00 76 00 62 00 70 00 } //00 00  C:\Documents and Settings\dessa\Desktop\vb puxador melhor no jeito\Project1.vbp
	condition:
		any of ($a_*)
 
}