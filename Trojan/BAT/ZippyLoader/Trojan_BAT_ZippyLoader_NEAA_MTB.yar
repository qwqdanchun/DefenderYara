
rule Trojan_BAT_ZippyLoader_NEAA_MTB{
	meta:
		description = "Trojan:BAT/ZippyLoader.NEAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 04 00 00 0a 00 "
		
	strings :
		$a_01_0 = {00 11 08 06 7e 06 00 00 04 11 06 28 13 00 00 0a 6f 1b 00 00 0a 00 11 08 07 7e 05 00 00 04 11 07 28 13 00 00 0a 6f 1b 00 00 0a 00 00 de 0d } //02 00 
		$a_01_1 = {7a 00 69 00 70 00 70 00 79 00 73 00 68 00 61 00 72 00 65 00 2e 00 63 00 6f 00 6d 00 2f 00 64 00 2f 00 } //02 00  zippyshare.com/d/
		$a_01_2 = {53 00 65 00 63 00 75 00 72 00 69 00 74 00 79 00 48 00 65 00 61 00 6c 00 74 00 68 00 53 00 79 00 73 00 74 00 72 00 61 00 79 00 2e 00 65 00 78 00 65 00 } //02 00  SecurityHealthSystray.exe
		$a_01_3 = {4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 56 00 61 00 75 00 6c 00 74 00 5c 00 54 00 61 00 73 00 6b 00 4d 00 61 00 73 00 74 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //00 00  Microsoft\Vault\TaskMaster.exe
	condition:
		any of ($a_*)
 
}