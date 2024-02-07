
rule Ransom_MSIL_FileCryptor_A_MTB{
	meta:
		description = "Ransom:MSIL/FileCryptor.A!MTB,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {00 20 7c 0c 00 00 28 e4 00 00 06 28 03 00 00 06 39 a5 00 00 00 } //01 00 
		$a_01_1 = {45 06 00 00 00 12 00 00 00 cb ff ff ff 00 00 00 00 bb ff ff ff cb ff ff ff 2d 00 00 00 } //01 00 
		$a_01_2 = {24 32 38 32 62 38 64 38 36 2d 66 33 33 66 2d 34 34 31 65 2d 38 62 62 35 2d 39 35 39 30 33 33 35 31 62 65 33 39 } //00 00  $282b8d86-f33f-441e-8bb5-95903351be39
		$a_01_3 = {00 61 } //02 01  愀
	condition:
		any of ($a_*)
 
}
rule Ransom_MSIL_FileCryptor_A_MTB_2{
	meta:
		description = "Ransom:MSIL/FileCryptor.A!MTB,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {57 00 48 00 59 00 20 00 59 00 4f 00 55 00 20 00 4f 00 50 00 45 00 4e 00 45 00 44 00 20 00 54 00 48 00 45 00 20 00 46 00 55 00 43 00 4b 00 49 00 4e 00 47 00 20 00 46 00 49 00 4c 00 45 00 } //01 00  WHY YOU OPENED THE FUCKING FILE
		$a_01_1 = {2e 00 74 00 78 00 74 00 2e 00 68 00 74 00 6d 00 6c 00 2e 00 64 00 62 00 2e 00 65 00 78 00 65 00 2e 00 6a 00 70 00 67 00 2e 00 70 00 6e 00 67 00 2e 00 67 00 69 00 66 00 2e 00 64 00 6c 00 6c 00 } //01 00  .txt.html.db.exe.jpg.png.gif.dll
		$a_01_2 = {70 61 72 73 65 41 6e 64 45 6e 63 72 79 70 74 } //01 00  parseAndEncrypt
		$a_01_3 = {66 69 6c 65 73 54 6f 45 6e 63 72 79 70 74 } //01 00  filesToEncrypt
		$a_01_4 = {50 00 41 00 59 00 4d 00 45 00 4e 00 54 00 20 00 41 00 44 00 44 00 52 00 45 00 53 00 53 00 3a 00 } //01 00  PAYMENT ADDRESS:
		$a_01_5 = {49 74 20 73 65 65 6d 73 20 6c 69 6b 65 20 79 6f 75 72 20 66 69 6c 65 73 20 68 61 76 65 20 62 65 65 6e 20 65 6e 63 72 79 70 74 65 64 } //00 00  It seems like your files have been encrypted
	condition:
		any of ($a_*)
 
}
rule Ransom_MSIL_FileCryptor_A_MTB_3{
	meta:
		description = "Ransom:MSIL/FileCryptor.A!MTB,SIGNATURE_TYPE_PEHSTR,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 64 00 65 00 6c 00 65 00 74 00 65 00 5f 00 70 00 72 00 6f 00 67 00 72 00 61 00 6d 00 2e 00 64 00 65 00 6c 00 } //01 00  \Microsoft\delete_program.del
		$a_01_1 = {2e 00 63 00 72 00 79 00 70 00 74 00 } //01 00  .crypt
		$a_01_2 = {50 00 72 00 6f 00 63 00 65 00 73 00 73 00 48 00 61 00 63 00 6b 00 65 00 72 00 } //01 00  ProcessHacker
		$a_01_3 = {55 00 53 00 42 00 4e 00 41 00 4d 00 45 00 } //01 00  USBNAME
		$a_01_4 = {2f 00 43 00 20 00 63 00 68 00 6f 00 69 00 63 00 65 00 20 00 2f 00 43 00 20 00 59 00 20 00 2f 00 4e 00 20 00 2f 00 44 00 20 00 59 00 20 00 2f 00 54 00 20 00 33 00 20 00 26 00 20 00 44 00 65 00 6c 00 20 00 22 00 } //01 00  /C choice /C Y /N /D Y /T 3 & Del "
		$a_01_5 = {48 00 69 00 21 00 20 00 79 00 6f 00 75 00 72 00 20 00 69 00 6d 00 70 00 6f 00 72 00 74 00 61 00 6e 00 74 00 20 00 66 00 69 00 6c 00 65 00 73 00 20 00 77 00 65 00 72 00 65 00 20 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 21 00 } //01 00  Hi! your important files were encrypted!
		$a_01_6 = {55 00 53 00 42 00 53 00 50 00 52 00 45 00 41 00 44 00 } //01 00  USBSPREAD
		$a_01_7 = {5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 4b 00 65 00 79 00 62 00 6f 00 61 00 72 00 64 00 44 00 72 00 69 00 76 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //00 00  \WindowsKeyboardDriver.exe
	condition:
		any of ($a_*)
 
}