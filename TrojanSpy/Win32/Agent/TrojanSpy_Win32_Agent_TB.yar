
rule TrojanSpy_Win32_Agent_TB{
	meta:
		description = "TrojanSpy:Win32/Agent.TB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {8d 7d f0 a5 a0 90 01 02 00 10 a5 a5 90 01 02 a4 80 45 f1 90 01 01 80 45 f2 90 01 01 80 45 f3 90 01 01 80 45 90 01 02 80 45 90 01 02 80 45 90 00 } //01 00 
		$a_02_1 = {32 35 30 00 65 90 01 02 00 25 73 3c 25 73 3e 90 00 } //01 00 
		$a_00_2 = {32 35 30 00 65 32 38 00 71 75 69 74 } //01 00  㔲0㉥8畱瑩
		$a_00_3 = {44 6e 73 51 75 65 72 79 5f 41 } //00 00  DnsQuery_A
	condition:
		any of ($a_*)
 
}