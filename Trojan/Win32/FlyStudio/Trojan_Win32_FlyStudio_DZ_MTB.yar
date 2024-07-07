
rule Trojan_Win32_FlyStudio_DZ_MTB{
	meta:
		description = "Trojan:Win32/FlyStudio.DZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {68 02 00 00 80 6a 00 68 01 00 00 00 6a 00 6a 00 6a 00 68 01 00 01 00 68 03 00 01 06 68 04 00 01 52 68 03 00 00 00 bb } //1
		$a_01_1 = {6a ff 6a 08 68 5a 1b 01 16 68 04 00 01 52 e8 } //1
		$a_01_2 = {31 2e 64 6c 6c 00 52 75 6e 44 6c 6c 48 6f 73 74 43 61 6c 6c 42 61 63 6b } //1 ⸱汤l畒䑮汬潈瑳慃汬慂正
		$a_01_3 = {32 46 38 37 36 31 43 46 31 34 38 46 38 38 43 32 36 34 30 44 42 42 41 37 38 33 45 46 32 39 31 37 } //1 2F8761CF148F88C2640DBBA783EF2917
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}