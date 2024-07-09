
rule TrojanDownloader_Win32_Banload_ADN{
	meta:
		description = "TrojanDownloader:Win32/Banload.ADN,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {32 32 37 36 43 37 33 43 42 42 33 46 34 46 41 33 31 39 32 39 39 41 31 42 39 } //2 2276C73CBB3F4FA319299A1B9
		$a_01_1 = {46 32 32 34 36 30 42 43 30 32 34 35 39 41 46 43 34 30 38 30 43 32 30 32 35 38 42 31 45 44 32 33 } //1 F22460BC02459AFC4080C20258B1ED23
		$a_01_2 = {34 45 39 46 30 30 36 30 44 43 35 36 41 39 31 42 39 46 31 39 39 38 31 37 32 37 37 42 43 43 35 31 41 32 45 45 } //1 4E9F0060DC56A91B9F199817277BCC51A2EE
		$a_01_3 = {44 46 35 38 44 43 34 31 41 31 43 42 45 41 30 41 36 44 43 36 32 33 38 31 46 41 37 36 43 46 32 38 38 37 45 35 } //4 DF58DC41A1CBEA0A6DC62381FA76CF2887E5
		$a_01_4 = {41 42 31 45 39 31 45 43 30 42 37 44 46 30 34 43 } //2 AB1E91EC0B7DF04C
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*4+(#a_01_4  & 1)*2) >=5
 
}
rule TrojanDownloader_Win32_Banload_ADN_2{
	meta:
		description = "TrojanDownloader:Win32/Banload.ADN,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0b 00 08 00 00 "
		
	strings :
		$a_01_0 = {0f b6 44 38 ff 03 c6 b9 ff 00 00 00 99 f7 f9 8b da 8b 45 ec 3b 45 f0 7d 05 ff 45 ec eb 07 c7 45 ec 01 00 00 00 83 f3 10 8d 45 d0 50 89 5d d4 c6 45 d8 00 8d 55 d4 33 c9 } //10
		$a_03_1 = {89 55 f0 81 e3 ff 00 00 80 79 08 4b 81 cb 00 ff ff ff 43 8d 45 e4 8b d3 e8 ?? ?? ?? ?? 8b 55 e4 8b 45 f8 e8 ?? ?? ?? ?? 8b 45 f8 ff 45 f4 4e 0f 85 74 ff ff ff } //1
		$a_01_2 = {45 45 34 31 42 34 33 30 34 45 41 30 31 34 36 46 00 } //2
		$a_01_3 = {41 42 31 45 39 31 45 43 30 42 37 44 46 30 34 43 00 } //2
		$a_01_4 = {42 32 30 35 37 38 46 33 33 32 38 34 46 37 37 33 00 } //2
		$a_01_5 = {32 43 36 30 44 31 32 36 38 35 45 38 31 39 36 44 43 32 46 32 34 34 41 34 30 31 37 41 43 44 33 46 41 33 31 44 38 33 45 32 34 36 42 32 00 } //2
		$a_01_6 = {44 69 67 69 74 65 20 6f 20 74 65 78 74 6f 20 63 6f 6e 66 6f 72 6d 65 20 6d 6f 73 74 72 61 64 6f 20 6e 61 20 63 61 69 78 61 2e } //1 Digite o texto conforme mostrado na caixa.
		$a_01_7 = {73 6d 76 69 63 65 73 00 } //1 浳楶散s
	condition:
		((#a_01_0  & 1)*10+(#a_03_1  & 1)*1+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=11
 
}