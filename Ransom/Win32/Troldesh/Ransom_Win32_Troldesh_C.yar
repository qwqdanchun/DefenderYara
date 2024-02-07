
rule Ransom_Win32_Troldesh_C{
	meta:
		description = "Ransom:Win32/Troldesh.C,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {20 3d 20 49 6e 74 32 53 74 72 28 22 } //01 00   = Int2Str("
		$a_01_1 = {58 00 51 00 38 00 7a 00 68 00 00 00 } //01 00 
		$a_01_2 = {2a 00 5c 00 41 00 44 00 3a 00 5c 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 73 00 5c 00 } //00 00  *\AD:\Downloads\
		$a_00_3 = {7e 15 } //00 00  ᕾ
	condition:
		any of ($a_*)
 
}
rule Ransom_Win32_Troldesh_C_2{
	meta:
		description = "Ransom:Win32/Troldesh.C,SIGNATURE_TYPE_PEHSTR,03 00 03 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 00 74 00 61 00 72 00 74 00 75 00 70 00 29 00 25 00 5c 00 44 00 65 00 63 00 72 00 79 00 70 00 74 00 69 00 6f 00 6e 00 20 00 69 00 6e 00 73 00 74 00 72 00 75 00 63 00 74 00 69 00 6f 00 6e 00 73 00 2e 00 74 00 78 00 74 00 } //01 00  Startup)%\Decryption instructions.txt
		$a_01_1 = {47 00 6c 00 6f 00 62 00 61 00 6c 00 5c 00 73 00 79 00 6e 00 63 00 72 00 6f 00 6e 00 69 00 7a 00 65 00 5f 00 43 00 52 00 59 00 53 00 53 00 30 00 } //01 00  Global\syncronize_CRYSS0
		$a_01_2 = {2e 00 43 00 72 00 79 00 53 00 69 00 53 00 00 00 } //01 00 
		$a_01_3 = {64 00 6f 00 63 00 28 00 2e 00 64 00 6f 00 63 00 3b 00 2e 00 64 00 6f 00 63 00 78 00 3b 00 2e 00 70 00 64 00 66 00 3b 00 2e 00 78 00 6c 00 73 00 3b 00 2e 00 78 00 6c 00 73 00 78 00 3b 00 2e 00 70 00 70 00 74 00 3b 00 29 00 61 00 72 00 63 00 28 00 2e 00 7a 00 69 00 70 00 3b 00 2e 00 72 00 61 00 72 00 3b 00 2e 00 62 00 7a 00 32 00 3b 00 } //01 00  doc(.doc;.docx;.pdf;.xls;.xlsx;.ppt;)arc(.zip;.rar;.bz2;
		$a_01_4 = {73 75 62 6d 69 74 3d 73 75 62 6d 69 74 26 69 64 3d 43 52 59 53 53 30 2d } //01 00  submit=submit&id=CRYSS0-
		$a_01_5 = {76 73 73 61 64 6d 69 6e 20 64 65 6c 65 74 65 20 73 68 61 64 6f 77 73 20 2f 61 6c 6c 20 2f 71 75 69 65 74 } //00 00  vssadmin delete shadows /all /quiet
		$a_01_6 = {00 67 } //16 00  最
	condition:
		any of ($a_*)
 
}