
rule TrojanProxy_Win32_Banker_GI{
	meta:
		description = "TrojanProxy:Win32/Banker.GI,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {5b 00 44 00 65 00 6c 00 69 00 6d 00 69 00 5d 00 } //01 00 
		$a_01_1 = {5c 00 6f 00 70 00 65 00 72 00 61 00 5c 00 6f 00 70 00 65 00 72 00 61 00 5c 00 6f 00 70 00 65 00 72 00 61 00 70 00 72 00 65 00 66 00 73 00 2e 00 69 00 6e 00 69 00 } //01 00 
		$a_01_2 = {50 00 48 00 50 00 20 00 52 00 65 00 61 00 64 00 20 00 44 00 61 00 74 00 61 00 } //01 00 
		$a_03_3 = {5c 00 4d 00 6f 00 7a 00 69 00 6c 00 6c 00 61 00 5c 00 46 00 69 00 72 00 65 00 66 00 6f 00 78 00 5c 00 50 00 72 00 6f 00 66 00 69 00 6c 00 65 00 73 00 5c 00 90 01 1c 5c 00 70 00 72 00 65 00 66 00 73 00 2e 00 6a 00 73 00 90 01 06 5c 00 75 00 73 00 65 00 72 00 2e 00 6a 00 73 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}