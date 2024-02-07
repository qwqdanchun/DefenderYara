
rule Trojan_BAT_Crysan_SWT_MTB{
	meta:
		description = "Trojan:BAT/Crysan.SWT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {54 00 56 00 71 00 51 00 1d 09 1d 09 4d 00 1d 09 1d 09 1d 09 1d 09 } //01 00  TVqQझझMझझझझ
		$a_01_1 = {46 00 68 00 4d 00 45 00 4b 00 30 00 63 00 1d 09 } //01 00  FhMEK0cझ
		$a_01_2 = {1d 09 69 00 75 00 38 00 62 00 33 00 30 00 1d 09 1d 09 } //01 00  झiu8b30झझ
		$a_01_3 = {39 00 43 00 69 00 52 00 1d 09 1d 09 1d 09 47 00 } //01 00  9CiRझझझG
		$a_01_4 = {48 00 77 00 1d 09 1d 09 1d 09 1d 09 4d 00 1d 09 1d 09 } //02 00  HwझझझझMझझ
		$a_81_5 = {47 65 74 45 78 70 6f 72 74 65 64 54 79 70 65 73 } //02 00  GetExportedTypes
		$a_81_6 = {47 65 74 54 79 70 65 } //02 00  GetType
		$a_81_7 = {49 44 65 66 65 72 72 65 64 } //02 00  IDeferred
		$a_81_8 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //02 00  InvokeMember
		$a_81_9 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //00 00  FromBase64String
	condition:
		any of ($a_*)
 
}