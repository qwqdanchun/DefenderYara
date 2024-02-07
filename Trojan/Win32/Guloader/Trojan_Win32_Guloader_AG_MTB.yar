
rule Trojan_Win32_Guloader_AG_MTB{
	meta:
		description = "Trojan:Win32/Guloader.AG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {63 00 71 00 53 00 75 00 6f 00 6f 00 78 00 61 00 4c 00 70 00 69 00 42 00 76 00 63 00 39 00 46 00 46 00 55 00 44 00 41 00 35 00 6e 00 6d 00 68 00 41 00 70 00 56 00 51 00 72 00 77 00 54 00 6a 00 34 00 4a 00 64 00 49 00 5a 00 4d 00 4b 00 69 00 33 00 33 00 } //01 00  cqSuooxaLpiBvc9FFUDA5nmhApVQrwTj4JdIZMKi33
		$a_01_1 = {7a 00 53 00 74 00 54 00 56 00 33 00 70 00 4d 00 6b 00 59 00 41 00 4c 00 37 00 45 00 48 00 66 00 6f 00 51 00 68 00 67 00 6f 00 55 00 37 00 55 00 61 00 4e 00 39 00 32 00 70 00 72 00 6c 00 66 00 44 00 6d 00 32 00 35 00 41 00 6f 00 74 00 32 00 34 00 35 00 } //01 00  zStTV3pMkYAL7EHfoQhgoU7UaN92prlfDm25Aot245
		$a_01_2 = {49 00 64 00 64 00 35 00 77 00 34 00 34 00 43 00 30 00 44 00 75 00 64 00 56 00 5a 00 6e 00 5a 00 78 00 44 00 64 00 68 00 6a 00 74 00 71 00 4c 00 55 00 55 00 51 00 42 00 69 00 64 00 47 00 33 00 6b 00 65 00 76 00 31 00 36 00 37 00 } //01 00  Idd5w44C0DudVZnZxDdhjtqLUUQBidG3kev167
		$a_01_3 = {49 00 72 00 74 00 58 00 62 00 36 00 74 00 39 00 64 00 6c 00 5a 00 65 00 6b 00 64 00 34 00 36 00 45 00 4f 00 4f 00 78 00 78 00 45 00 57 00 71 00 6a 00 70 00 4c 00 55 00 63 00 31 00 37 00 37 00 } //01 00  IrtXb6t9dlZekd46EOOxxEWqjpLUc177
		$a_01_4 = {51 00 4d 00 64 00 39 00 4d 00 37 00 37 00 5a 00 55 00 30 00 53 00 48 00 38 00 79 00 4a 00 50 00 4e 00 42 00 4c 00 7a 00 74 00 64 00 66 00 68 00 33 00 32 00 33 00 33 00 } //01 00  QMd9M77ZU0SH8yJPNBLztdfh3233
		$a_00_5 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //00 00  MSVBVM60.DLL
	condition:
		any of ($a_*)
 
}