
rule Trojan_BAT_DllInject_A_MTB{
	meta:
		description = "Trojan:BAT/DllInject.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 05 00 00 0a 00 "
		
	strings :
		$a_03_0 = {11 00 20 e8 80 00 00 28 90 01 04 00 38 00 00 00 00 02 04 28 04 00 00 06 28 03 00 00 06 03 28 02 00 00 06 28 01 00 00 06 0a 06 28 90 00 } //01 00 
		$a_00_1 = {41 00 6e 00 64 00 72 00 6f 00 69 00 64 00 53 00 74 00 75 00 64 00 69 00 6f 00 2e 00 64 00 6c 00 6c 00 } //01 00  AndroidStudio.dll
		$a_00_2 = {47 65 74 45 6e 74 72 79 41 73 73 65 6d 62 6c 79 } //01 00  GetEntryAssembly
		$a_00_3 = {67 65 74 5f 45 6e 74 72 79 50 6f 69 6e 74 } //01 00  get_EntryPoint
		$a_00_4 = {49 6e 76 6f 6b 65 } //00 00  Invoke
	condition:
		any of ($a_*)
 
}