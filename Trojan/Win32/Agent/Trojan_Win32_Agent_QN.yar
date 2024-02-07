
rule Trojan_Win32_Agent_QN{
	meta:
		description = "Trojan:Win32/Agent.QN,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_02_0 = {0f b7 40 16 25 ff df 00 00 8b 4d 90 01 01 66 89 41 16 eb 13 90 00 } //02 00 
		$a_02_1 = {6a ff 8d 85 90 01 02 ff ff 90 01 01 6a 00 68 90 01 03 00 8b ff 55 a1 90 01 03 00 83 c0 03 ff e0 90 00 } //01 00 
		$a_02_2 = {83 7d 10 65 75 07 c7 45 90 01 01 f5 04 00 00 83 7d 10 66 75 07 c7 45 90 01 01 27 07 00 00 90 00 } //01 00 
		$a_00_3 = {5c 5c 2e 5c 52 65 72 6f 6f 74 } //01 00  \\.\Reroot
		$a_00_4 = {68 74 74 70 3a 2f 2f 25 73 3a 25 64 2f 25 73 } //00 00  http://%s:%d/%s
	condition:
		any of ($a_*)
 
}