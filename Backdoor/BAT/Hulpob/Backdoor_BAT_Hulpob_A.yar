
rule Backdoor_BAT_Hulpob_A{
	meta:
		description = "Backdoor:BAT/Hulpob.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {7c 00 42 00 6f 00 74 00 6b 00 69 00 6c 00 6c 00 65 00 72 00 20 00 65 00 78 00 65 00 63 00 75 00 74 00 65 00 64 00 } //01 00  |Botkiller executed
		$a_00_1 = {7c 00 53 00 68 00 65 00 6c 00 6c 00 63 00 6f 00 64 00 65 00 20 00 65 00 78 00 65 00 63 00 75 00 74 00 65 00 64 00 } //01 00  |Shellcode executed
		$a_00_2 = {7c 00 46 00 69 00 6c 00 65 00 20 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 65 00 64 00 20 00 41 00 6e 00 64 00 20 00 45 00 78 00 65 00 63 00 75 00 74 00 65 00 64 00 } //01 00  |File Downloaded And Executed
		$a_03_3 = {1f 1d 0f 01 1a 28 90 01 01 00 00 06 90 00 } //01 00 
		$a_03_4 = {1f 1d 0f 00 1a 28 90 01 01 00 00 06 90 00 } //00 00 
		$a_00_5 = {5d 04 } //00 00  ѝ
	condition:
		any of ($a_*)
 
}