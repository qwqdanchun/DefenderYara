
rule Trojan_Win32_FormBook_BV_MTB{
	meta:
		description = "Trojan:Win32/FormBook.BV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 34 00 61 00 54 00 43 00 30 00 77 00 78 00 4b 00 41 00 39 00 54 00 64 00 50 00 4b 00 73 00 4e 00 73 00 57 00 4f 00 37 00 47 00 57 00 30 00 67 00 6a 00 38 00 6c 00 46 00 33 00 66 00 68 00 6a 00 35 00 78 00 43 00 32 00 55 00 31 00 39 00 36 00 } //01 00  ht4aTC0wxKA9TdPKsNsWO7GW0gj8lF3fhj5xC2U196
		$a_01_1 = {50 00 50 00 44 00 46 00 75 00 4a 00 77 00 76 00 49 00 58 00 6a 00 56 00 68 00 31 00 33 00 38 00 42 00 77 00 79 00 32 00 32 00 36 00 6b 00 6a 00 77 00 50 00 52 00 56 00 6e 00 7a 00 5a 00 42 00 32 00 30 00 34 00 } //01 00  PPDFuJwvIXjVh138Bwy226kjwPRVnzZB204
		$a_01_2 = {51 00 59 00 76 00 78 00 66 00 43 00 69 00 67 00 58 00 33 00 70 00 51 00 4c 00 6a 00 53 00 58 00 62 00 37 00 7a 00 4d 00 63 00 4f 00 78 00 33 00 32 00 32 00 35 00 } //01 00  QYvxfCigX3pQLjSXb7zMcOx3225
		$a_01_3 = {71 00 6f 00 49 00 49 00 4c 00 46 00 39 00 51 00 6b 00 73 00 4b 00 78 00 36 00 4b 00 68 00 59 00 57 00 35 00 56 00 64 00 53 00 71 00 48 00 31 00 38 00 33 00 } //01 00  qoIILF9QksKx6KhYW5VdSqH183
		$a_01_4 = {58 00 39 00 33 00 50 00 6b 00 4c 00 6a 00 32 00 52 00 4e 00 79 00 77 00 34 00 76 00 43 00 32 00 42 00 4e 00 6a 00 73 00 32 00 32 00 31 00 37 00 } //01 00  X93PkLj2RNyw4vC2BNjs2217
		$a_00_5 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //00 00  MSVBVM60.DLL
	condition:
		any of ($a_*)
 
}