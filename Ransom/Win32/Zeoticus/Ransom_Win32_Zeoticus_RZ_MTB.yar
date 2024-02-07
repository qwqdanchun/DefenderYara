
rule Ransom_Win32_Zeoticus_RZ_MTB{
	meta:
		description = "Ransom:Win32/Zeoticus.RZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 3a 5c 6d 61 69 6e 50 72 6f 64 75 63 74 28 6f 6c 64 29 5c 78 38 36 5f 62 69 6c 64 5f 63 72 79 70 74 6f 72 5c 73 68 65 6c 6c 5f 67 65 6e 5c 52 65 6c 65 61 73 65 5c 64 61 74 61 5f 70 72 6f 74 65 63 74 32 2e 70 64 62 } //01 00  C:\mainProduct(old)\x86_bild_cryptor\shell_gen\Release\data_protect2.pdb
		$a_01_1 = {32 30 32 31 46 49 52 53 54 40 74 75 74 61 6e 6f 74 61 2e 63 6f 6d } //01 00  2021FIRST@tutanota.com
		$a_01_2 = {32 30 32 31 46 49 52 53 54 40 70 72 6f 74 6f 6e 6d 61 69 6c 2e 63 6f 6d } //01 00  2021FIRST@protonmail.com
		$a_00_3 = {2e 00 44 00 45 00 46 00 41 00 55 00 4c 00 54 00 5c 00 4b 00 65 00 79 00 62 00 6f 00 61 00 72 00 64 00 20 00 4c 00 61 00 79 00 6f 00 75 00 74 00 5c 00 50 00 72 00 65 00 6c 00 6f 00 61 00 64 00 } //01 00  .DEFAULT\Keyboard Layout\Preload
		$a_00_4 = {25 00 73 00 20 00 2f 00 6e 00 6f 00 64 00 65 00 3a 00 22 00 25 00 77 00 73 00 22 00 20 00 2f 00 75 00 73 00 65 00 72 00 3a 00 22 00 25 00 77 00 73 00 22 00 20 00 2f 00 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 3a 00 22 00 25 00 77 00 73 00 22 00 } //01 00  %s /node:"%ws" /user:"%ws" /password:"%ws"
		$a_00_5 = {25 00 73 00 25 00 78 00 25 00 78 00 25 00 78 00 25 00 78 00 2e 00 7a 00 65 00 6f 00 74 00 69 00 63 00 75 00 73 00 32 00 } //00 00  %s%x%x%x%x.zeoticus2
	condition:
		any of ($a_*)
 
}