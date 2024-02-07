
rule Ransom_MSIL_Vashicrypt_A{
	meta:
		description = "Ransom:MSIL/Vashicrypt.A,SIGNATURE_TYPE_PEHSTR,0a 00 0a 00 09 00 00 03 00 "
		
	strings :
		$a_01_0 = {52 61 6e 73 6f 6d 77 61 72 65 2d 6d 61 73 74 65 72 5c 53 68 69 76 61 } //02 00  Ransomware-master\Shiva
		$a_01_1 = {53 68 69 76 61 46 6f 72 6d } //01 00  ShivaForm
		$a_01_2 = {6d 65 73 73 61 67 65 43 72 65 61 74 6f 72 } //01 00  messageCreator
		$a_01_3 = {73 65 6c 66 44 65 73 74 72 6f 79 } //01 00  selfDestroy
		$a_01_4 = {73 74 61 72 74 41 63 74 69 6f 6e } //01 00  startAction
		$a_01_5 = {45 6e 63 72 79 70 74 46 69 6c 65 } //01 00  EncryptFile
		$a_01_6 = {65 6e 63 72 79 70 74 44 69 72 65 63 74 6f 72 79 } //01 00  encryptDirectory
		$a_01_7 = {43 72 65 61 74 65 52 61 6e 64 6f 6d 53 74 72 69 6e 67 } //02 00  CreateRandomString
		$a_01_8 = {2f 00 43 00 20 00 74 00 69 00 6d 00 65 00 6f 00 75 00 74 00 20 00 32 00 20 00 26 00 26 00 20 00 44 00 65 00 6c 00 20 00 2f 00 51 00 20 00 2f 00 46 00 } //00 00  /C timeout 2 && Del /Q /F
		$a_01_9 = {00 67 16 00 00 08 74 4c } //e2 ee 
	condition:
		any of ($a_*)
 
}