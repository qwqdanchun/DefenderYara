
rule Ransom_MSIL_Cryptolocker_DR_MTB{
	meta:
		description = "Ransom:MSIL/Cryptolocker.DR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,4a 00 4a 00 0c 00 00 32 00 "
		
	strings :
		$a_81_0 = {76 73 73 61 64 6d 69 6e 20 44 65 6c 65 74 65 20 73 68 61 64 6f 77 73 20 2f 61 6c 6c 20 2f 71 75 69 65 74 } //32 00  vssadmin Delete shadows /all /quiet
		$a_81_1 = {46 72 69 64 61 79 50 72 6f 6a 65 63 74 } //32 00  FridayProject
		$a_81_2 = {61 61 61 5f 54 6f 75 63 68 4d 65 4e 6f 74 5f 2e 74 78 74 } //14 00  aaa_TouchMeNot_.txt
		$a_81_3 = {48 75 7a 75 6e 69 } //14 00  Huzuni
		$a_81_4 = {50 72 6f 6a 65 63 74 46 72 69 64 61 79 } //14 00  ProjectFriday
		$a_81_5 = {2e 61 6d 6f 67 75 73 } //03 00  .amogus
		$a_81_6 = {64 65 6c 20 2f 73 20 2f 66 20 2f 71 20 43 3a 5c 2a 2e 56 48 44 } //03 00  del /s /f /q C:\*.VHD
		$a_81_7 = {44 45 43 52 59 50 54 20 46 49 4c 45 53 } //03 00  DECRYPT FILES
		$a_81_8 = {5f 5f 5f 52 45 43 4f 56 45 52 5f 5f 46 49 4c 45 53 5f 5f } //01 00  ___RECOVER__FILES__
		$a_81_9 = {77 69 6e 64 6f 77 2e 62 61 74 } //01 00  window.bat
		$a_81_10 = {44 69 73 61 62 6c 65 54 61 73 6b 4d 67 72 } //01 00  DisableTaskMgr
		$a_81_11 = {4e 6f 20 66 69 6c 65 73 20 74 6f 20 65 6e 63 72 79 70 74 } //00 00  No files to encrypt
	condition:
		any of ($a_*)
 
}