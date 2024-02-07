
rule Ransom_MSIL_AgghCrypt_PA_MTB{
	meta:
		description = "Ransom:MSIL/AgghCrypt.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {64 6f 77 6e 6c 6f 61 64 66 72 6f 6d 77 65 62 } //01 00  downloadfromweb
		$a_01_1 = {70 61 79 6c 6f 61 64 } //01 00  payload
		$a_01_2 = {52 65 6d 65 6d 62 65 72 54 68 61 74 54 68 69 73 52 61 6e 73 6f 6d 77 61 72 65 49 73 43 6f 64 65 64 46 6f 72 45 64 75 63 61 74 69 6f 6e 6e 61 6c 50 75 72 70 6f 73 65 73 } //01 00  RememberThatThisRansomwareIsCodedForEducationnalPurposes
		$a_01_3 = {5c 00 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //01 00  \svchost.exe
		$a_01_4 = {72 00 75 00 6e 00 61 00 73 00 } //01 00  runas
		$a_01_5 = {2f 00 43 00 20 00 63 00 68 00 6f 00 69 00 63 00 65 00 20 00 2f 00 43 00 20 00 59 00 20 00 2f 00 4e 00 20 00 2f 00 44 00 20 00 59 00 20 00 2f 00 54 00 20 00 31 00 20 00 26 00 20 00 44 00 65 00 6c 00 } //01 00  /C choice /C Y /N /D Y /T 1 & Del
		$a_03_6 = {5c 78 36 35 34 35 34 5c 90 02 10 5c 90 02 10 5c 78 36 35 34 35 34 2e 70 64 62 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}