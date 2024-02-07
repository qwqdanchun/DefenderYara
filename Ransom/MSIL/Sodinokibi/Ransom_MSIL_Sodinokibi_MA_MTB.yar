
rule Ransom_MSIL_Sodinokibi_MA_MTB{
	meta:
		description = "Ransom:MSIL/Sodinokibi.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 0f 00 00 01 00 "
		
	strings :
		$a_01_0 = {50 00 65 00 6e 00 74 00 65 00 72 00 57 00 61 00 72 00 65 00 2e 00 65 00 78 00 65 00 } //01 00  PenterWare.exe
		$a_01_1 = {2e 00 50 00 4e 00 54 00 2d 00 52 00 4e 00 53 00 4d 00 } //01 00  .PNT-RNSM
		$a_01_2 = {43 00 6f 00 6e 00 74 00 65 00 6e 00 74 00 73 00 20 00 6f 00 66 00 20 00 73 00 68 00 61 00 64 00 6f 00 77 00 20 00 63 00 6f 00 70 00 79 00 20 00 73 00 65 00 74 00 20 00 49 00 44 00 } //01 00  Contents of shadow copy set ID
		$a_01_3 = {48 4b 43 55 5c 53 4f 46 54 57 41 52 45 5c 72 65 63 66 67 5c 73 6b 5f 6b 65 79 } //01 00  HKCU\SOFTWARE\recfg\sk_key
		$a_01_4 = {48 4b 4c 4d 5c 53 4f 46 54 57 41 52 45 5c 72 65 63 66 67 5c 70 6b 5f 6b 65 79 } //01 00  HKLM\SOFTWARE\recfg\pk_key
		$a_01_5 = {48 4b 4c 4d 5c 53 4f 46 54 57 41 52 45 5c 72 65 63 66 67 5c 73 74 61 74 } //01 00  HKLM\SOFTWARE\recfg\stat
		$a_01_6 = {53 65 6c 66 44 65 73 74 72 75 63 74 } //01 00  SelfDestruct
		$a_01_7 = {65 00 63 00 68 00 6f 00 20 00 6a 00 20 00 7c 00 20 00 64 00 65 00 6c 00 20 00 2f 00 46 00 } //01 00  echo j | del /F
		$a_01_8 = {42 61 73 65 36 34 44 65 63 6f 64 65 } //01 00  Base64Decode
		$a_01_9 = {47 65 74 42 79 74 65 73 } //01 00  GetBytes
		$a_01_10 = {53 65 74 4d 61 78 42 79 74 65 73 46 6f 72 45 6e 63 72 79 70 74 69 6f 6e } //01 00  SetMaxBytesForEncryption
		$a_01_11 = {45 00 78 00 65 00 63 00 75 00 74 00 69 00 6e 00 67 00 20 00 68 00 69 00 64 00 64 00 65 00 6e 00 20 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 } //01 00  Executing hidden command
		$a_01_12 = {46 6f 72 63 65 43 6f 70 79 46 69 6c 65 } //01 00  ForceCopyFile
		$a_01_13 = {46 61 73 74 45 6e 63 72 79 70 74 69 6f 6e 4d 61 78 42 79 74 65 73 } //01 00  FastEncryptionMaxBytes
		$a_01_14 = {44 65 63 72 79 70 74 46 69 6c 65 } //00 00  DecryptFile
	condition:
		any of ($a_*)
 
}