
rule Ransom_Win32_BlackBerserk_MA_MTB{
	meta:
		description = "Ransom:Win32/BlackBerserk.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {42 6c 61 63 6b 2e 42 65 72 73 65 72 6b 40 6f 6e 69 6f 6e 6d 61 69 6c 2e 6f 72 67 } //01 00  Black.Berserk@onionmail.org
		$a_01_1 = {53 00 45 00 4c 00 45 00 43 00 54 00 20 00 2a 00 20 00 46 00 52 00 4f 00 4d 00 20 00 57 00 69 00 6e 00 33 00 32 00 5f 00 53 00 68 00 61 00 64 00 6f 00 77 00 43 00 6f 00 70 00 79 00 } //01 00  SELECT * FROM Win32_ShadowCopy
		$a_01_2 = {42 00 6c 00 61 00 63 00 6b 00 5f 00 52 00 65 00 63 00 6f 00 76 00 65 00 72 00 2e 00 74 00 78 00 74 00 } //01 00  Black_Recover.txt
		$a_01_3 = {2e 00 42 00 6c 00 61 00 63 00 6b 00 } //01 00  .Black
		$a_01_4 = {41 6c 6c 20 66 69 6c 65 73 20 68 61 76 65 20 62 65 65 6e 20 73 74 6f 6c 65 6e 20 61 6e 64 20 65 6e 63 72 79 70 74 65 64 20 62 79 20 75 73 20 61 6e 64 20 6e 6f 77 20 68 61 76 65 20 42 6c 61 63 6b 20 73 75 66 66 69 78 } //01 00  All files have been stolen and encrypted by us and now have Black suffix
		$a_01_5 = {47 00 6c 00 6f 00 62 00 61 00 6c 00 5c 00 42 00 6c 00 61 00 63 00 6b 00 4d 00 75 00 74 00 65 00 78 00 } //01 00  Global\BlackMutex
		$a_01_6 = {2f 00 63 00 20 00 76 00 73 00 73 00 61 00 64 00 6d 00 69 00 6e 00 2e 00 65 00 78 00 65 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 00 20 00 73 00 68 00 61 00 64 00 6f 00 77 00 73 00 20 00 2f 00 61 00 6c 00 6c 00 20 00 2f 00 71 00 75 00 69 00 65 00 74 00 } //01 00  /c vssadmin.exe delete shadows /all /quiet
		$a_01_7 = {77 00 62 00 61 00 64 00 6d 00 69 00 6e 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 00 20 00 63 00 61 00 74 00 61 00 6c 00 6f 00 67 00 20 00 2d 00 71 00 75 00 69 00 65 00 74 00 } //00 00  wbadmin delete catalog -quiet
	condition:
		any of ($a_*)
 
}