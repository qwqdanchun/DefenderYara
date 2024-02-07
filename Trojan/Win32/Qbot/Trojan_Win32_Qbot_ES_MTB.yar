
rule Trojan_Win32_Qbot_ES_MTB{
	meta:
		description = "Trojan:Win32/Qbot.ES!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_81_0 = {6f 75 74 2e 64 6c 6c } //01 00  out.dll
		$a_81_1 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //01 00  DllRegisterServer
		$a_81_2 = {44 6c 6c 55 6e 72 65 67 69 73 74 65 72 53 65 72 76 65 72 } //01 00  DllUnregisterServer
		$a_81_3 = {66 73 64 66 73 64 2e 65 78 65 } //01 00  fsdfsd.exe
		$a_81_4 = {73 64 66 73 64 66 73 64 } //01 00  sdfsdfsd
		$a_81_5 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //01 00  IsDebuggerPresent
		$a_81_6 = {46 69 6c 65 54 69 6d 65 54 6f 4c 6f 63 61 6c 46 69 6c 65 54 69 6d 65 } //00 00  FileTimeToLocalFileTime
	condition:
		any of ($a_*)
 
}