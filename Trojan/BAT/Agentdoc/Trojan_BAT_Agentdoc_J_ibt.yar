
rule Trojan_BAT_Agentdoc_J_ibt{
	meta:
		description = "Trojan:BAT/Agentdoc.J!ibt,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {4c 00 69 00 6e 00 6b 00 5a 00 69 00 70 00 2e 00 64 00 6c 00 6c 00 } //01 00  LinkZip.dll
		$a_01_1 = {62 00 64 00 2e 00 68 00 74 00 61 00 } //01 00  bd.hta
		$a_01_2 = {6d 00 73 00 68 00 74 00 61 00 2e 00 65 00 78 00 65 00 } //01 00  mshta.exe
		$a_01_3 = {72 3f 00 00 70 02 7b 02 00 00 04 72 0f 00 00 70 28 12 00 00 0a 28 19 00 00 0a 26 } //01 00 
		$a_01_4 = {02 7b 02 00 00 04 0e 04 28 12 00 00 0a 05 28 13 00 00 0a 28 04 00 00 06 28 14 00 00 0a } //00 00 
	condition:
		any of ($a_*)
 
}