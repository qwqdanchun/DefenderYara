
rule Ransom_Win32_Paradise_PA_MTB{
	meta:
		description = "Ransom:Win32/Paradise.PA!MTB,SIGNATURE_TYPE_PEHSTR,0b 00 0b 00 0b 00 00 01 00 "
		
	strings :
		$a_01_0 = {45 6e 63 72 79 70 74 46 6f 6c 64 65 72 } //01 00  EncryptFolder
		$a_01_1 = {45 6e 63 72 79 70 74 46 69 6c 65 } //01 00  EncryptFile
		$a_01_2 = {44 65 6c 65 74 65 53 68 61 64 6f 77 43 6f 70 69 65 73 } //01 00  DeleteShadowCopies
		$a_01_3 = {43 79 63 6c 65 44 65 66 65 6e 64 65 72 } //01 00  CycleDefender
		$a_01_4 = {52 53 41 5f 4d 61 73 74 65 72 50 75 62 6c 69 63 } //01 00  RSA_MasterPublic
		$a_01_5 = {43 72 79 70 74 65 64 45 78 74 65 6e 73 69 6f 6e } //01 00  CryptedExtension
		$a_01_6 = {44 65 63 72 79 70 74 4e 6f 74 65 46 69 6c 65 6e 61 6d 65 } //01 00  DecryptNoteFilename
		$a_01_7 = {49 00 44 00 5f 00 6f 00 66 00 5f 00 63 00 6c 00 69 00 65 00 6e 00 74 00 } //01 00  ID_of_client
		$a_01_8 = {2f 00 43 00 20 00 73 00 63 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 00 20 00 56 00 53 00 53 00 } //01 00  /C sc delete VSS
		$a_01_9 = {5f 00 57 00 48 00 45 00 52 00 45 00 5f 00 4d 00 59 00 5f 00 46 00 49 00 4c 00 45 00 53 00 5f 00 3d 00 23 00 2e 00 68 00 74 00 6d 00 6c 00 } //01 00  _WHERE_MY_FILES_=#.html
		$a_01_10 = {40 00 68 00 65 00 6c 00 70 00 72 00 65 00 73 00 74 00 6f 00 72 00 65 00 } //00 00  @helprestore
	condition:
		any of ($a_*)
 
}
rule Ransom_Win32_Paradise_PA_MTB_2{
	meta:
		description = "Ransom:Win32/Paradise.PA!MTB,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 00 73 00 79 00 73 00 6e 00 61 00 74 00 69 00 76 00 65 00 5c 00 76 00 73 00 73 00 61 00 64 00 6d 00 69 00 6e 00 2e 00 65 00 78 00 65 00 } //01 00  \sysnative\vssadmin.exe
		$a_01_1 = {64 00 65 00 6c 00 65 00 74 00 65 00 20 00 73 00 68 00 61 00 64 00 6f 00 77 00 73 00 20 00 2f 00 61 00 6c 00 6c 00 20 00 2f 00 71 00 75 00 69 00 65 00 74 00 } //01 00  delete shadows /all /quiet
		$a_01_2 = {25 00 53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 50 00 6f 00 6c 00 69 00 63 00 69 00 65 00 73 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 44 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 } //01 00  %SOFTWARE\Policies\Microsoft\Windows Defender
		$a_01_3 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 41 00 6e 00 74 00 69 00 53 00 70 00 79 00 77 00 61 00 72 00 65 00 } //01 00  DisableAntiSpyware
		$a_01_4 = {41 6c 6c 20 79 6f 75 72 20 66 69 6c 65 73 20 68 61 76 65 20 62 65 65 6e 20 62 6c 6f 63 6b 65 64 } //00 00  All your files have been blocked
	condition:
		any of ($a_*)
 
}