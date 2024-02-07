
rule Trojan_Win32_Quakbot_MB_MTB{
	meta:
		description = "Trojan:Win32/Quakbot.MB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 07 00 00 03 00 "
		
	strings :
		$a_81_0 = {61 44 6f 31 67 65 5a 77 48 2e 64 6c 6c } //03 00  aDo1geZwH.dll
		$a_81_1 = {41 4f 79 70 6f } //03 00  AOypo
		$a_81_2 = {43 49 42 57 70 71 6d 6a } //03 00  CIBWpqmj
		$a_81_3 = {50 6f 73 74 4d 65 73 73 61 67 65 41 } //03 00  PostMessageA
		$a_81_4 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //03 00  IsDebuggerPresent
		$a_81_5 = {49 73 50 72 6f 63 65 73 73 6f 72 46 65 61 74 75 72 65 50 72 65 73 65 6e 74 } //03 00  IsProcessorFeaturePresent
		$a_81_6 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //00 00  DllRegisterServer
	condition:
		any of ($a_*)
 
}