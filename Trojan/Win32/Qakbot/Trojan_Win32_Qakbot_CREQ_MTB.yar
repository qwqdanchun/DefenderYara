
rule Trojan_Win32_Qakbot_CREQ_MTB{
	meta:
		description = "Trojan:Win32/Qakbot.CREQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {6d 61 73 71 61 6c 5f 61 6c 6c 6f 63 5f 6d 65 6d 6f 72 79 } //01 00 
		$a_01_1 = {6d 61 73 71 61 6c 5f 65 76 61 6c 75 61 74 69 6f 6e 5f 63 6f 6e 74 65 78 74 5f 73 65 74 5f 72 61 6e 64 5f 73 65 65 64 } //01 00 
		$a_01_2 = {6d 61 73 71 61 6c 5f 66 65 61 74 75 72 65 5f 66 72 6f 6d 5f 75 72 69 } //01 00 
		$a_01_3 = {6d 61 73 71 61 6c 5f 66 72 65 65 5f 65 78 70 72 65 73 73 69 6f 6e } //01 00 
		$a_01_4 = {6d 61 73 71 61 6c 5f 66 72 65 65 5f 73 65 72 76 69 63 65 } //01 00 
		$a_01_5 = {6d 61 73 71 61 6c 5f 67 72 61 70 68 5f 70 61 74 74 65 72 6e 5f 67 65 74 5f 66 6c 61 74 74 65 6e 65 64 5f 74 72 69 70 6c 65 73 } //0a 00 
		$a_01_6 = {70 72 69 6e 74 } //00 00 
	condition:
		any of ($a_*)
 
}