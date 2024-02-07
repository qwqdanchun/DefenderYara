
rule Trojan_Win64_Emotetcrypt_FM_MTB{
	meta:
		description = "Trojan:Win64/Emotetcrypt.FM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 09 00 00 0a 00 "
		
	strings :
		$a_81_0 = {7a 6d 74 73 70 71 77 6e 2e 64 6c 6c } //01 00  zmtspqwn.dll
		$a_81_1 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //01 00  DllRegisterServer
		$a_81_2 = {49 73 50 72 6f 63 65 73 73 6f 72 46 65 61 74 75 72 65 50 72 65 73 65 6e 74 } //01 00  IsProcessorFeaturePresent
		$a_81_3 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //01 00  IsDebuggerPresent
		$a_81_4 = {52 61 69 73 65 45 78 63 65 70 74 69 6f 6e } //01 00  RaiseException
		$a_81_5 = {65 66 71 6e 74 79 79 6a 71 6c 78 66 7a 77 77 } //01 00  efqntyyjqlxfzww
		$a_81_6 = {69 6c 61 68 6d 6e 70 6f 6b 70 6f 7a 6f 71 6c 7a 70 } //01 00  ilahmnpokpozoqlzp
		$a_81_7 = {6a 62 68 6a 70 74 7a 6f 64 6f 67 65 77 6c 65 6d } //01 00  jbhjptzodogewlem
		$a_81_8 = {6a 6c 6e 79 6a 6f 6d 6d 78 67 77 69 6b 77 76 64 } //00 00  jlnyjommxgwikwvd
	condition:
		any of ($a_*)
 
}