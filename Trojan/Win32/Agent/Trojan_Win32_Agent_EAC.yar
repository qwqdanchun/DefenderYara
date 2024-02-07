
rule Trojan_Win32_Agent_EAC{
	meta:
		description = "Trojan:Win32/Agent.EAC,SIGNATURE_TYPE_PEHSTR,09 00 09 00 0a 00 00 04 00 "
		
	strings :
		$a_01_0 = {51 51 bb e1 d4 b1 a1 a2 ba ec d7 ea a1 a2 bb c6 d7 ea a1 a2 c2 cc d7 ea c3 e2 b7 d1 cb a2 } //01 00 
		$a_01_1 = {73 00 63 00 76 00 68 00 6f 00 73 00 72 00 2e 00 65 00 78 00 65 00 } //01 00  scvhosr.exe
		$a_01_2 = {5f 00 44 00 44 00 4c 00 5f 00 69 00 6e 00 64 00 65 00 78 00 2e 00 68 00 74 00 6d 00 6c 00 } //01 00  _DDL_index.html
		$a_01_3 = {51 00 51 00 56 00 69 00 70 00 4f 00 77 00 6e 00 65 00 72 00 } //01 00  QQVipOwner
		$a_01_4 = {54 00 65 00 6e 00 63 00 65 00 6e 00 74 00 43 00 6f 00 6e 00 49 00 6e 00 66 00 6f 00 46 00 72 00 61 00 6d 00 65 00 } //01 00  TencentConInfoFrame
		$a_01_5 = {53 74 61 72 74 44 6f 77 6e 52 75 6e } //01 00  StartDownRun
		$a_01_6 = {53 68 69 46 61 6e 67 } //01 00  ShiFang
		$a_01_7 = {51 00 51 00 53 00 68 00 6f 00 77 00 65 00 72 00 } //01 00  QQShower
		$a_01_8 = {67 6f 74 6f 20 52 65 70 65 61 74 } //01 00  goto Repeat
		$a_01_9 = {64 65 6c 20 25 30 } //00 00  del %0
	condition:
		any of ($a_*)
 
}