
rule Trojan_BAT_ShellcodeInject_AX_MTB{
	meta:
		description = "Trojan:BAT/ShellcodeInject.AX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {54 00 72 00 61 00 72 00 65 00 6e 00 67 00 76 00 61 00 74 00 20 00 46 00 6c 00 66 00 70 00 6e 00 79 00 79 00 20 00 66 00 67 00 68 00 6f 00 66 00 20 00 76 00 66 00 20 00 61 00 62 00 67 00 20 00 66 00 68 00 63 00 63 00 62 00 65 00 67 00 72 00 71 00 20 00 73 00 62 00 65 00 20 00 4a 00 42 00 4a 00 36 00 } //01 00  Trarengvat Flfpnyy fghof vf abg fhccbegrq sbe JBJ6
		$a_01_1 = {4f 00 6e 00 65 00 44 00 72 00 69 00 76 00 65 00 48 00 65 00 6c 00 70 00 65 00 72 00 2e 00 64 00 6c 00 6c 00 } //01 00  OneDriveHelper.dll
		$a_01_2 = {73 68 65 6c 6c 63 6f 64 65 } //01 00  shellcode
		$a_01_3 = {28 52 01 00 06 13 04 11 04 16 8d 50 00 00 01 33 01 2a 1f 10 8d 50 00 00 01 13 05 28 87 00 00 0a 25 17 6f 88 00 00 0a 25 18 6f 89 00 00 0a 25 09 6f 8a 00 00 0a 25 11 05 6f 8b 00 00 0a 6f 8c 00 00 0a } //00 00 
	condition:
		any of ($a_*)
 
}