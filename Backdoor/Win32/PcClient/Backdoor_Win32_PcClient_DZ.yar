
rule Backdoor_Win32_PcClient_DZ{
	meta:
		description = "Backdoor:Win32/PcClient.DZ,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {41 69 6e 53 74 61 30 5c 44 65 66 61 75 6c 74 } //01 00  AinSta0\Default
		$a_01_1 = {46 75 63 6b 5f 61 76 70 } //01 00  Fuck_avp
		$a_01_2 = {00 33 36 30 73 64 61 00 } //01 00  ㌀〶摳a
		$a_01_3 = {54 65 72 6d 69 6e 61 6c 20 53 65 72 76 65 72 5c 52 44 50 54 63 70 00 50 6f 72 74 4e 75 6d 62 65 72 } //00 00 
	condition:
		any of ($a_*)
 
}