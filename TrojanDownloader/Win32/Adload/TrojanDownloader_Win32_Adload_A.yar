
rule TrojanDownloader_Win32_Adload_A{
	meta:
		description = "TrojanDownloader:Win32/Adload.A,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 04 00 00 "
		
	strings :
		$a_00_0 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 70 6f 6c 69 63 69 65 73 5c 45 78 70 6c 6f 72 65 72 5c 52 75 6e 00 } //10 体呆䅗䕒䵜捩潲潳瑦坜湩潤獷䍜牵敲瑮敖獲潩屮潰楬楣獥䕜灸潬敲屲畒n
		$a_01_1 = {57 69 6e 41 75 74 6f 55 70 00 } //10 楗䅮瑵啯p
		$a_02_2 = {53 55 57 6a 00 6a 00 6a 00 6a 00 68 ?? ?? ?? 00 bd 01 00 00 00 ff 15 ?? ?? ?? 00 8b d8 85 db 89 5c 24 14 0f ?? ?? 00 00 00 8b 84 24 2c 04 00 00 6a 00 68 00 01 00 84 6a 00 6a 00 50 53 ff 15 ?? ?? ?? 00 } //1
		$a_02_3 = {53 55 6a 00 6a 00 6a 00 6a 00 68 ?? ?? ?? 00 bd 01 00 00 00 ff 15 ?? ?? ?? 00 8b d8 85 db 89 5c 24 0c 0f ?? ?? 00 00 00 8b 84 24 14 04 00 00 57 6a 00 68 00 01 00 84 6a 00 6a 00 50 53 ff 15 ?? ?? ?? 00 } //1
	condition:
		((#a_00_0  & 1)*10+(#a_01_1  & 1)*10+(#a_02_2  & 1)*1+(#a_02_3  & 1)*1) >=11
 
}