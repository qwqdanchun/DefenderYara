
rule Ransom_Win32_Ergop_D{
	meta:
		description = "Ransom:Win32/Ergop.D,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 0b 00 00 03 00 "
		
	strings :
		$a_03_0 = {c7 84 24 84 00 00 00 41 3a 5c 00 33 f6 8d 84 24 90 01 02 00 00 56 50 e8 90 01 02 ff ff 83 c4 0c 85 db 74 90 01 01 f6 c3 01 74 46 8d 84 24 90 01 02 00 00 50 ff 15 90 01 04 83 f8 03 74 90 01 01 83 f8 02 74 90 01 01 83 f8 04 75 90 00 } //03 00 
		$a_03_1 = {74 12 83 e0 fe 50 8d 84 24 90 01 02 00 00 50 ff 15 90 01 04 ff 74 24 90 01 01 8d 84 24 90 01 02 00 00 ff 74 24 90 01 01 50 e8 90 01 02 ff ff 85 c0 75 90 01 01 8d 84 24 90 01 02 00 00 50 8d 84 24 90 01 02 00 00 50 ff 15 90 01 04 ff 35 90 01 04 8d 84 24 90 01 02 00 00 50 ff d3 6a 01 8d 84 24 90 01 02 00 00 50 8d 84 24 90 01 02 00 00 50 ff 15 90 00 } //02 00 
		$a_03_2 = {ff 74 24 2c ff 35 90 01 04 ff 35 90 01 04 e8 90 01 02 00 00 50 68 90 01 04 ff 15 90 01 04 6a 02 53 53 57 ff 15 90 01 04 53 8d 44 24 18 bb 00 03 00 00 50 53 68 90 01 04 57 ff 15 90 00 } //02 00 
		$a_03_3 = {ff d5 eb 40 6a 01 6a 00 68 00 20 00 00 53 e8 90 01 02 ff ff 6a 00 8d 44 24 90 01 01 50 68 00 20 00 00 8d 84 24 90 01 02 00 00 50 53 ff 15 90 01 04 8b 4c 24 90 01 01 33 c0 f7 d9 6a 01 13 c0 f7 d8 50 51 53 e8 90 01 02 ff ff 90 00 } //02 00 
		$a_02_4 = {6c 6f 6f 6b 90 02 08 73 73 6d 73 90 02 08 70 6f 73 74 67 72 65 90 02 08 31 63 90 02 08 65 78 63 65 6c 90 02 08 77 6f 72 64 90 00 } //01 00 
		$a_02_5 = {72 73 61 5f 65 6e 63 72 79 70 74 90 02 08 72 73 61 5f 67 65 6e 6b 65 79 90 00 } //01 00 
		$a_02_6 = {30 31 30 30 30 31 90 02 08 7b 25 30 38 6c 58 2d 25 30 34 58 2d 25 30 34 58 2d 25 30 32 58 25 30 32 58 2d 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 7d 90 00 } //01 00 
		$a_00_7 = {63 64 20 25 75 73 65 72 70 72 6f 66 69 6c 65 25 5c 64 6f 63 75 6d 65 6e 74 73 5c } //02 00  cd %userprofile%\documents\
		$a_00_8 = {61 74 74 72 69 62 20 44 65 66 61 75 6c 74 2e 72 64 70 20 2d 73 20 2d 68 } //01 00  attrib Default.rdp -s -h
		$a_00_9 = {7b 7b 49 44 45 4e 54 49 46 49 45 52 7d 7d } //02 00  {{IDENTIFIER}}
		$a_00_10 = {42 32 33 31 42 37 31 37 31 31 33 39 30 32 45 39 46 37 38 38 43 37 42 44 30 43 37 41 42 41 42 41 46 39 42 31 37 33 41 37 46 36 42 34 33 32 30 37 36 42 38 32 43 42 43 42 37 43 38 31 34 39 46 33 43 46 32 46 35 } //00 00  B231B717113902E9F788C7BD0C7ABABAF9B173A7F6B432076B82CBCB7C8149F3CF2F5
	condition:
		any of ($a_*)
 
}