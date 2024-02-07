
rule Ransom_Linux_RansomExx_A_MTB{
	meta:
		description = "Ransom:Linux/RansomExx.A!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,03 00 03 00 09 00 00 02 00 "
		
	strings :
		$a_00_0 = {48 8b 45 f8 48 01 d0 48 be 21 4e 45 57 53 5f 46 4f 48 bf 52 5f 53 54 4a 21 2e 74 48 89 30 48 89 78 08 66 c7 40 10 78 74 c6 40 12 00 48 8d 95 60 ff ff ff 48 8b 45 f8 48 89 d6 48 89 c7 e8 bd eb 01 00 83 f8 ff 74 0f 48 8b 45 f8 48 89 c7 e8 7c ea ff ff eb 01 } //02 00 
		$a_02_1 = {48 01 d0 48 be 21 4e 45 57 53 5f 46 4f 48 bf 52 5f 90 02 20 78 74 c6 40 90 01 01 00 48 8d 95 60 ff ff ff 48 8b 45 f8 48 89 d6 48 89 c7 e8 90 01 01 ed 01 00 83 f8 ff 75 4c 48 8b 45 f8 48 8d 35 90 01 01 ff 01 00 48 89 c7 e8 90 01 01 ed ff ff 48 89 45 f0 48 83 7d f0 00 74 31 48 8b 45 f0 48 89 c1 ba 90 01 02 00 00 be 01 00 00 00 48 8d 3d 90 01 01 ff 01 00 e8 90 01 01 ed ff ff 90 00 } //01 00 
		$a_00_2 = {43 72 79 70 74 4f 6e 65 46 69 6c 65 } //01 00  CryptOneFile
		$a_00_3 = {43 72 79 70 74 4f 6e 65 42 6c 6f 63 6b } //01 00  CryptOneBlock
		$a_00_4 = {52 65 61 64 4d 65 53 74 6f 72 65 46 6f 72 44 69 72 } //01 00  ReadMeStoreForDir
		$a_00_5 = {47 65 74 52 61 6e 73 6f 6d 43 6f 6e 66 69 67 } //01 00  GetRansomConfig
		$a_00_6 = {21 4e 45 57 53 5f 46 4f 52 5f 45 49 47 53 49 21 2e 74 78 74 } //01 00  !NEWS_FOR_EIGSI!.txt
		$a_00_7 = {59 6f 75 72 73 20 69 6e 66 6f 72 6d 61 74 69 6f 6e 20 69 73 20 73 65 63 75 72 65 6c 79 20 45 4e 43 52 59 50 54 45 44 } //01 00  Yours information is securely ENCRYPTED
		$a_00_8 = {42 46 43 30 32 41 32 30 38 42 33 37 45 39 42 39 36 41 39 41 42 46 46 43 43 45 44 31 30 38 36 42 38 38 36 35 42 36 37 32 35 34 30 45 35 34 42 30 45 42 44 39 38 31 31 46 38 37 43 34 45 45 45 31 34 42 39 39 42 45 41 44 39 38 38 } //00 00  BFC02A208B37E9B96A9ABFFCCED1086B8865B672540E54B0EBD9811F87C4EEE14B99BEAD988
	condition:
		any of ($a_*)
 
}