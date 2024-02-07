
rule Trojan_Win32_Qbot_DB_MTB{
	meta:
		description = "Trojan:Win32/Qbot.DB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_81_0 = {6f 75 74 2e 64 6c 6c } //01 00  out.dll
		$a_81_1 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //01 00  DllRegisterServer
		$a_81_2 = {44 6c 6c 55 6e 72 65 67 69 73 74 65 72 53 65 72 76 65 72 } //01 00  DllUnregisterServer
		$a_81_3 = {72 65 66 65 72 72 69 62 6c 65 6e 65 73 73 } //01 00  referribleness
		$a_81_4 = {73 74 61 70 68 79 6c 65 6d 61 74 6f 6d 61 } //01 00  staphylematoma
		$a_81_5 = {70 65 74 72 6f 6c 69 73 74 } //01 00  petrolist
		$a_81_6 = {64 65 6d 69 63 61 70 6f 6e 69 65 72 } //00 00  demicaponier
	condition:
		any of ($a_*)
 
}