
rule Backdoor_BAT_Bladabindi_SA_MSR{
	meta:
		description = "Backdoor:BAT/Bladabindi.SA!MSR,SIGNATURE_TYPE_PEHSTR,05 00 05 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {6c 00 65 00 64 00 20 00 26 00 20 00 32 00 20 00 6e 00 2d 00 20 00 30 00 20 00 67 00 6e 00 69 00 70 00 20 00 63 00 2f 00 20 00 65 00 78 00 65 00 2e 00 64 00 6d 00 63 00 } //01 00  led & 2 n- 0 gnip c/ exe.dmc
		$a_01_1 = {6d 00 61 00 72 00 67 00 6f 00 72 00 70 00 64 00 65 00 77 00 6f 00 6c 00 6c 00 61 00 20 00 65 00 74 00 65 00 6c 00 65 00 64 00 20 00 6c 00 6c 00 61 00 77 00 65 00 72 00 69 00 66 00 20 00 68 00 73 00 74 00 65 00 6e 00 } //02 00  margorpdewolla eteled llawerif hsten
		$a_01_2 = {6e 00 75 00 52 00 5c 00 5c 00 6e 00 6f 00 69 00 73 00 72 00 65 00 56 00 74 00 6e 00 65 00 72 00 72 00 75 00 43 00 5c 00 5c 00 73 00 77 00 6f 00 64 00 6e 00 69 00 57 00 5c 00 5c 00 74 00 66 00 6f 00 73 00 6f 00 72 00 63 00 69 00 4d 00 5c 00 5c 00 65 00 72 00 61 00 77 00 74 00 66 00 6f 00 53 00 } //02 00  nuR\\noisreVtnerruC\\swodniW\\tfosorciM\\erawtfoS
		$a_01_3 = {65 00 6d 00 6f 00 6c 00 6f 00 76 00 65 00 65 00 6d 00 6f 00 6d 00 6f 00 6f 00 64 00 79 00 35 00 35 00 2e 00 64 00 32 00 64 00 6e 00 73 00 2e 00 6e 00 65 00 74 00 } //00 00  emoloveemomoody55.d2dns.net
	condition:
		any of ($a_*)
 
}