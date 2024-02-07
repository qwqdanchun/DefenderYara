
rule Trojan_AndroidOS_SpyAgent_N_MTB{
	meta:
		description = "Trojan:AndroidOS/SpyAgent.N!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {73 63 72 65 65 6e 55 6e 4c 6f 63 6b 45 76 65 6e 74 } //01 00  screenUnLockEvent
		$a_00_1 = {69 73 53 63 72 6c 6f 63 6b 65 64 } //01 00  isScrlocked
		$a_00_2 = {73 65 72 76 69 63 65 49 6e 46 69 6c 6c } //01 00  serviceInFill
		$a_00_3 = {72 65 67 69 73 74 65 72 53 43 52 65 63 65 69 76 65 72 } //00 00  registerSCReceiver
	condition:
		any of ($a_*)
 
}