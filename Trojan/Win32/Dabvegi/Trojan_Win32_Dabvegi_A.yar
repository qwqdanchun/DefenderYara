
rule Trojan_Win32_Dabvegi_A{
	meta:
		description = "Trojan:Win32/Dabvegi.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 09 00 00 01 00 "
		
	strings :
		$a_00_0 = {2d 00 5b 00 38 00 38 00 5d 00 2d 00 } //01 00  -[88]-
		$a_01_1 = {21 00 6e 00 75 00 6b 00 6b 00 68 00 6e 00 62 00 41 00 } //01 00  !nukkhnbA
		$a_01_2 = {43 72 54 78 74 00 } //01 00  牃硔t
		$a_01_3 = {08 00 00 00 2e 00 62 00 61 00 74 00 00 00 } //01 00 
		$a_01_4 = {54 00 4d 00 50 00 45 00 55 00 3d 00 } //01 00  TMPEU=
		$a_01_5 = {67 65 72 61 6c } //01 00  geral
		$a_01_6 = {50 00 49 00 4e 00 20 00 31 00 } //01 00  PIN 1
		$a_00_7 = {70 61 73 73 63 68 61 72 } //01 00  passchar
		$a_01_8 = {6f 00 63 00 77 00 6f 00 6d 00 } //00 00  ocwom
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Dabvegi_A_2{
	meta:
		description = "Trojan:Win32/Dabvegi.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {43 3a 5c 41 72 71 75 69 76 6f 73 20 64 65 20 70 72 6f 67 72 61 6d 61 73 5c 4d 69 63 72 6f 73 6f 66 74 20 56 69 73 75 61 6c 20 53 74 75 64 69 6f 5c 56 42 39 38 5c 56 42 36 2e 4f 4c 42 } //01 00  C:\Arquivos de programas\Microsoft Visual Studio\VB98\VB6.OLB
		$a_01_1 = {43 72 54 78 74 00 } //01 00  牃硔t
		$a_00_2 = {10 40 00 8b 45 10 8b 08 89 8d 5c ff ff ff c7 85 54 ff ff ff 08 80 00 00 8d 55 94 52 8d 85 54 ff ff ff 50 ff 15 } //01 00 
		$a_01_3 = {2d 00 5b 00 38 00 38 00 5d 00 2d 00 3b 00 } //01 00  -[88]-;
		$a_01_4 = {2d 00 5b 00 37 00 37 00 5d 00 2d 00 3b 00 } //01 00  -[77]-;
		$a_01_5 = {2d 00 5b 00 37 00 36 00 5d 00 2d 00 3b 00 } //00 00  -[76]-;
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Dabvegi_A_3{
	meta:
		description = "Trojan:Win32/Dabvegi.A,SIGNATURE_TYPE_PEHSTR_EXT,20 00 20 00 05 00 00 0a 00 "
		
	strings :
		$a_03_0 = {54 65 6d 70 44 69 72 00 53 79 73 74 65 6d 44 69 72 90 02 05 6f 6d 70 75 74 65 72 4e 61 6d 65 90 02 05 55 73 65 72 4e 61 6d 65 90 02 05 53 65 72 69 61 6c 4e 75 6d 62 65 72 90 02 05 56 6f 6c 75 6d 65 4c 61 62 65 6c 90 00 } //0a 00 
		$a_03_1 = {44 72 69 76 65 54 79 70 65 90 02 05 50 75 74 50 6f 69 6e 74 73 90 02 05 61 73 74 44 69 73 6b 53 70 61 63 65 90 00 } //0a 00 
		$a_00_2 = {2d 00 5b 00 38 00 38 00 5d 00 2d 00 } //02 00  -[88]-
		$a_03_3 = {49 6e 66 45 78 65 90 02 05 52 6e 64 53 74 72 69 6e 67 90 02 05 72 54 78 74 90 00 } //02 00 
		$a_03_4 = {49 6e 74 65 72 6e 65 74 53 74 61 74 65 90 02 05 4e 6f 74 46 69 72 90 02 05 56 46 6f 6c 64 65 72 73 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Dabvegi_A_4{
	meta:
		description = "Trojan:Win32/Dabvegi.A,SIGNATURE_TYPE_PEHSTR,1f 00 1f 00 05 00 00 0a 00 "
		
	strings :
		$a_01_0 = {45 6e 63 72 79 70 74 69 6f 6e 46 69 6c 65 } //0a 00  EncryptionFile
		$a_01_1 = {52 65 6d 6f 76 65 43 6f 6e 63 6f 72 72 65 6e 74 65 73 } //0a 00  RemoveConcorrentes
		$a_01_2 = {2e 00 62 00 61 00 74 00 } //01 00  .bat
		$a_01_3 = {2d 00 5b 00 38 00 38 00 5d 00 2d 00 } //01 00  -[88]-
		$a_01_4 = {21 00 6e 00 75 00 6b 00 6b 00 68 00 6e 00 62 00 41 00 } //00 00  !nukkhnbA
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Dabvegi_A_5{
	meta:
		description = "Trojan:Win32/Dabvegi.A,SIGNATURE_TYPE_PEHSTR,1f 00 1f 00 05 00 00 0a 00 "
		
	strings :
		$a_01_0 = {46 69 6e 64 4e 65 78 74 55 72 6c 43 61 63 68 65 45 6e 74 72 79 41 } //0a 00  FindNextUrlCacheEntryA
		$a_01_1 = {55 52 4c 53 74 61 72 74 73 57 69 74 68 } //0a 00  URLStartsWith
		$a_01_2 = {2e 00 62 00 61 00 74 00 } //01 00  .bat
		$a_01_3 = {2d 00 5b 00 38 00 38 00 5d 00 2d 00 } //01 00  -[88]-
		$a_01_4 = {21 00 6e 00 75 00 6b 00 6b 00 68 00 6e 00 62 00 41 00 } //00 00  !nukkhnbA
	condition:
		any of ($a_*)
 
}