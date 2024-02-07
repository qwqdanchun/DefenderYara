
rule Trojan_Win32_Barsebey_A{
	meta:
		description = "Trojan:Win32/Barsebey.A,SIGNATURE_TYPE_PEHSTR_EXT,ffffffcd 00 ffffffcc 00 05 00 00 64 00 "
		
	strings :
		$a_01_0 = {0f b6 fb 8b 55 fc 0f b6 54 3a ff 0f b7 ce c1 e9 08 32 d1 88 54 38 ff 8b 45 fc 0f b6 44 38 ff } //66 00 
		$a_01_1 = {32 33 43 35 38 44 31 38 36 45 34 31 36 44 34 41 38 44 35 31 38 41 33 41 37 33 45 31 43 37 41 38 33 46 36 41 36 43 46 38 36 37 39 44 44 35 30 44 43 45 39 41 41 43 30 45 43 34 } //01 00  23C58D186E416D4A8D518A3A73E1C7A83F6A6CF8679DD50DCE9AAC0EC4
		$a_01_2 = {6d 79 77 65 62 73 65 61 72 63 68 2e 63 6f 6d 2f 6a 73 70 2f 63 66 67 5f 72 65 64 69 72 32 } //01 00  mywebsearch.com/jsp/cfg_redir2
		$a_01_3 = {24 24 33 33 36 36 39 39 2e 62 61 74 } //01 00  $$336699.bat
		$a_01_4 = {63 6e 73 79 73 68 6f 73 74 } //00 00  cnsyshost
		$a_00_5 = {80 10 00 00 68 df d7 55 13 3c 48 0c de 8f 1d a5 00 10 00 80 87 10 00 00 66 94 29 d7 2c a8 09 ea 1a 93 3d 8f ec 96 06 00 5d 04 00 00 6d 0a 03 80 5c 31 00 00 6e 0a 03 80 00 00 01 00 2e 00 1b 00 42 65 68 61 76 69 6f 72 3a 57 69 6e 33 32 2f 4f 62 76 4d 61 6c 50 61 74 68 2e 41 00 00 05 40 05 82 70 00 04 00 7a } //08 00 
	condition:
		any of ($a_*)
 
}