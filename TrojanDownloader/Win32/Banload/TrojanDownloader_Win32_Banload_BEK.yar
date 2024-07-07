
rule TrojanDownloader_Win32_Banload_BEK{
	meta:
		description = "TrojanDownloader:Win32/Banload.BEK,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {0f b6 44 30 ff 33 c3 89 45 e4 3b 7d e4 7c 0f 8b 45 e4 05 ff 00 00 00 2b c7 89 45 e4 eb 03 29 7d e4 } //2
		$a_00_1 = {32 38 41 31 32 37 41 41 32 41 35 35 42 35 44 35 33 39 35 38 42 39 44 36 32 31 36 38 41 37 45 39 32 44 35 37 42 34 44 43 33 46 35 46 39 44 33 43 39 31 33 36 39 33 33 32 39 34 44 33 37 32 44 39 37 38 46 34 35 46 42 46 } //1 28A127AA2A55B5D53958B9D62168A7E92D57B4DC3F5F9D3C9136933294D372D978F45FBF
		$a_00_2 = {43 41 30 32 34 37 38 41 43 42 33 37 35 37 42 37 44 38 33 38 35 39 42 36 44 45 32 36 36 35 41 37 45 38 31 33 37 30 39 30 46 32 31 34 37 32 38 45 43 43 30 30 34 34 38 31 43 31 30 34 36 33 45 33 36 42 45 42 30 38 42 30 45 45 } //1 CA02478ACB3757B7D83859B6DE2665A7E8137090F214728ECC004481C10463E36BEB08B0EE
	condition:
		((#a_01_0  & 1)*2+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1) >=3
 
}