
rule Trojan_Win32_Emotetcrypt_EH_MTB{
	meta:
		description = "Trojan:Win32/Emotetcrypt.EH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 09 00 00 0a 00 "
		
	strings :
		$a_81_0 = {67 76 74 6b 74 77 75 6a 7a 79 2e 64 6c 6c } //01 00  gvtktwujzy.dll
		$a_81_1 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //01 00  DllRegisterServer
		$a_81_2 = {49 73 50 72 6f 63 65 73 73 6f 72 46 65 61 74 75 72 65 50 72 65 73 65 6e 74 } //01 00  IsProcessorFeaturePresent
		$a_81_3 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //01 00  IsDebuggerPresent
		$a_81_4 = {52 61 69 73 65 45 78 63 65 70 74 69 6f 6e } //01 00  RaiseException
		$a_81_5 = {61 72 7a 74 6f 65 6c 61 6f 67 68 77 75 71 67 } //01 00  arztoelaoghwuqg
		$a_81_6 = {62 73 69 62 64 75 6f 64 63 6f 77 61 76 7a 75 79 } //01 00  bsibduodcowavzuy
		$a_81_7 = {62 74 6c 76 76 64 77 65 61 67 6a 64 65 77 64 66 } //01 00  btlvvdweagjdewdf
		$a_81_8 = {62 76 61 77 6e 6c 66 6d 71 64 71 67 67 76 72 69 } //00 00  bvawnlfmqdqggvri
	condition:
		any of ($a_*)
 
}