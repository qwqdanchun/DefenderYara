
rule Ransom_MSIL_ApisCryptor_PAA_MTB{
	meta:
		description = "Ransom:MSIL/ApisCryptor.PAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,41 00 41 00 09 00 00 "
		
	strings :
		$a_01_0 = {63 68 65 63 6b 64 69 73 61 62 6c 65 52 65 63 6f 76 65 72 79 4d 6f 64 65 } //10 checkdisableRecoveryMode
		$a_01_1 = {63 68 65 63 6b 64 65 6c 65 74 65 53 68 61 64 6f 77 43 6f 70 69 65 73 } //10 checkdeleteShadowCopies
		$a_01_2 = {65 6e 63 72 79 70 74 65 64 46 69 6c 65 45 78 74 65 6e 73 69 6f 6e } //10 encryptedFileExtension
		$a_01_3 = {3c 00 45 00 6e 00 63 00 79 00 70 00 74 00 65 00 64 00 4b 00 65 00 79 00 3e 00 } //10 <EncyptedKey>
		$a_01_4 = {69 00 6e 00 66 00 65 00 63 00 74 00 65 00 64 00 20 00 77 00 69 00 74 00 68 00 20 00 61 00 20 00 72 00 61 00 6e 00 73 00 6f 00 6d 00 77 00 61 00 72 00 65 00 20 00 76 00 69 00 72 00 75 00 73 00 2e 00 } //10 infected with a ransomware virus.
		$a_01_5 = {72 00 65 00 61 00 64 00 5f 00 61 00 70 00 69 00 73 00 2e 00 74 00 78 00 74 00 } //10 read_apis.txt
		$a_01_6 = {76 00 73 00 73 00 61 00 64 00 6d 00 69 00 6e 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 00 20 00 73 00 68 00 61 00 64 00 6f 00 77 00 73 00 20 00 2f 00 61 00 6c 00 6c 00 20 00 2f 00 71 00 75 00 69 00 65 00 74 00 20 00 26 00 20 00 77 00 6d 00 69 00 63 00 20 00 73 00 68 00 61 00 64 00 6f 00 77 00 63 00 6f 00 70 00 79 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 00 } //5 vssadmin delete shadows /all /quiet & wmic shadowcopy delete
		$a_01_7 = {62 00 63 00 64 00 65 00 64 00 69 00 74 00 20 00 2f 00 73 00 65 00 74 00 20 00 7b 00 64 00 65 00 66 00 61 00 75 00 6c 00 74 00 7d 00 20 00 62 00 6f 00 6f 00 74 00 73 00 74 00 61 00 74 00 75 00 73 00 70 00 6f 00 6c 00 69 00 63 00 79 00 20 00 69 00 67 00 6e 00 6f 00 72 00 65 00 61 00 6c 00 6c 00 66 00 61 00 69 00 6c 00 75 00 72 00 65 00 73 00 20 00 26 00 20 00 62 00 63 00 64 00 65 00 64 00 69 00 74 00 20 00 2f 00 73 00 65 00 74 00 20 00 7b 00 64 00 65 00 66 00 61 00 75 00 6c 00 74 00 7d 00 20 00 72 00 65 00 63 00 6f 00 76 00 65 00 72 00 79 00 65 00 6e 00 61 00 62 00 6c 00 65 00 64 00 20 00 6e 00 6f 00 } //5 bcdedit /set {default} bootstatuspolicy ignoreallfailures & bcdedit /set {default} recoveryenabled no
		$a_01_8 = {77 00 62 00 61 00 64 00 6d 00 69 00 6e 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 00 20 00 63 00 61 00 74 00 61 00 6c 00 6f 00 67 00 20 00 2d 00 71 00 75 00 69 00 65 00 74 00 } //5 wbadmin delete catalog -quiet
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*10+(#a_01_4  & 1)*10+(#a_01_5  & 1)*10+(#a_01_6  & 1)*5+(#a_01_7  & 1)*5+(#a_01_8  & 1)*5) >=65
 
}