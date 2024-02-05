
rule Ransom_Win32_Tobfy_U{
	meta:
		description = "Ransom:Win32/Tobfy.U,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {38 38 38 38 38 61 72 65 5c 63 6c 61 73 73 65 73 00 00 00 00 63 73 73 66 69 6c 65 5c 64 65 66 61 75 6c 74 69 63 6f 6e 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 35 00 36 00 32 00 31 00 31 00 2e 00 64 00 6c 00 6c 00 00 00 } //01 00 
		$a_01_1 = {55 8b ec 83 ec 18 8b 45 08 89 45 ec 8b 4d 0c 89 4d fc 8b 55 ec 89 55 f8 8b 45 fc 89 45 f4 8b 4d f8 89 4d f0 8b 55 f4 89 55 e8 8b 45 f0 8b 08 33 4d e8 8b 55 f0 89 0a 8b e5 5d c3 } //01 00 
		$a_01_2 = {05 fc 57 09 00 50 8b 4d 08 03 0d 74 d0 40 00 51 e8 c3 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}