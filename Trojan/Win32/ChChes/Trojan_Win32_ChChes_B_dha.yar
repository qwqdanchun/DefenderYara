
rule Trojan_Win32_ChChes_B_dha{
	meta:
		description = "Trojan:Win32/ChChes.B!dha,SIGNATURE_TYPE_PEHSTR,04 00 04 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 52 65 6c 65 61 73 65 5c 6b 75 67 6f 75 2e 70 64 62 } //01 00  \Release\kugou.pdb
		$a_01_1 = {5c 56 4d 5c 57 69 72 74 65 42 6c 61 63 6b 53 61 66 65 5f } //01 00  \VM\WirteBlackSafe_
		$a_01_2 = {5c 00 77 00 69 00 6e 00 2e 00 64 00 61 00 74 00 } //01 00  \win.dat
		$a_01_3 = {43 00 72 00 65 00 61 00 74 00 65 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 20 00 65 00 72 00 72 00 33 00 20 00 25 00 73 00 20 00 65 00 72 00 72 00 69 00 64 00 3a 00 25 00 64 00 } //01 00  CreateProcess err3 %s errid:%d
		$a_01_4 = {66 00 65 00 6e 00 67 00 79 00 75 00 65 00 30 00 } //01 00  fengyue0
		$a_01_5 = {49 00 44 00 41 00 3a 00 20 00 51 00 75 00 69 00 63 00 6b 00 20 00 73 00 74 00 61 00 72 00 74 00 } //00 00  IDA: Quick start
	condition:
		any of ($a_*)
 
}