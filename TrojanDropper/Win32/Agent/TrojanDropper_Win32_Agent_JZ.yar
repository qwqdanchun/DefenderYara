
rule TrojanDropper_Win32_Agent_JZ{
	meta:
		description = "TrojanDropper:Win32/Agent.JZ,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 02 00 "
		
	strings :
		$a_01_0 = {8a 0e 8a 10 2a d1 88 10 8a ca 8a 16 32 d1 46 88 10 40 4f 75 e1 } //02 00 
		$a_03_1 = {8a 1c 28 32 d8 88 1c 28 8b 4c 24 10 40 3b 90 01 01 76 ef 90 00 } //01 00 
		$a_03_2 = {8b 44 24 10 3d 10 2f 00 00 0f 87 90 01 02 00 00 83 f8 0a 0f 82 90 01 02 00 00 90 00 } //01 00 
		$a_00_3 = {00 70 63 76 69 65 77 00 } //00 00  瀀癣敩w
	condition:
		any of ($a_*)
 
}