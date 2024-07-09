
rule Trojan_BAT_Injector_SN_bit{
	meta:
		description = "Trojan:BAT/Injector.SN!bit,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {08 1f 1d 5d 91 09 1f 1f 5f 63 13 05 11 05 28 ?? ?? ?? ?? 13 06 07 08 11 04 11 06 28 ?? ?? ?? ?? 9c 08 17 58 0c } //2
		$a_01_1 = {4a 00 6f 00 73 00 70 00 65 00 6b 00 } //1 Jospek
		$a_01_2 = {47 00 75 00 76 00 74 00 48 00 6b 00 69 00 6b 00 64 00 52 00 79 00 6e 00 57 00 53 00 72 00 6f 00 44 00 75 00 43 00 77 00 4b 00 47 00 78 00 64 00 79 00 77 00 41 00 47 00 75 00 } //1 GuvtHkikdRynWSroDuCwKGxdywAGu
		$a_01_3 = {61 00 4a 00 45 00 70 00 55 00 6a 00 4d 00 62 00 58 00 47 00 78 00 41 00 46 00 53 00 49 00 31 00 32 00 68 00 5a 00 34 00 30 00 38 00 50 00 51 00 7a 00 4c 00 47 00 73 00 6f 00 54 00 43 00 55 00 55 00 51 00 4f 00 32 00 39 00 41 00 61 00 55 00 } //1 aJEpUjMbXGxAFSI12hZ408PQzLGsoTCUUQO29AaU
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}