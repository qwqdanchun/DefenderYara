
rule Trojan_Win32_Fordan_A{
	meta:
		description = "Trojan:Win32/Fordan.A,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 00 41 00 64 00 6d 00 69 00 6e 00 69 00 73 00 74 00 72 00 61 00 74 00 6f 00 72 00 5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 53 00 79 00 73 00 53 00 74 00 61 00 72 00 74 00 55 00 70 00 5c 00 50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 31 00 2e 00 76 00 62 00 70 00 } //01 00  \Administrator\Desktop\SysStartUp\Project1.vbp
		$a_01_1 = {57 00 69 00 6e 00 33 00 32 00 3a 00 76 00 69 00 72 00 75 00 73 00 2e 00 41 00 6c 00 62 00 61 00 4e 00 65 00 74 00 2e 00 61 00 } //01 00  Win32:virus.AlbaNet.a
		$a_01_2 = {45 00 72 00 72 00 6f 00 72 00 20 00 6f 00 63 00 63 00 75 00 72 00 65 00 64 00 20 00 59 00 6f 00 75 00 20 00 77 00 61 00 73 00 20 00 4c 00 75 00 63 00 6b 00 79 00 } //00 00  Error occured You was Lucky
	condition:
		any of ($a_*)
 
}