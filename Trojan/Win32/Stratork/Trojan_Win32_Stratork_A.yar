
rule Trojan_Win32_Stratork_A{
	meta:
		description = "Trojan:Win32/Stratork.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {0f b7 5c 78 fe 33 5d e4 3b 5d e8 7f 0b 81 c3 ff 00 00 00 2b 5d e8 eb 03 } //01 00 
		$a_01_1 = {47 00 6f 00 67 00 6f 00 74 00 68 00 65 00 6c 00 61 00 73 00 74 00 } //01 00  Gogothelast
		$a_01_2 = {73 00 74 00 65 00 6d 00 20 00 69 00 73 00 20 00 64 00 6f 00 77 00 6e 00 2e 00 20 00 46 00 2e 00 2e 00 2e 00 2e 00 20 00 45 00 76 00 } //01 00  stem is down. F.... Ev
		$a_01_3 = {70 00 65 00 64 00 72 00 6f 00 63 00 61 00 63 00 61 00 72 00 6e 00 65 00 69 00 72 00 6f 00 40 00 } //01 00  pedrocacarneiro@
		$a_01_4 = {5c 00 64 00 72 00 69 00 76 00 65 00 72 00 73 00 5c 00 74 00 65 00 78 00 61 00 73 00 72 00 61 00 6e 00 67 00 65 00 72 00 73 00 2e 00 74 00 78 00 74 00 } //00 00  \drivers\texasrangers.txt
	condition:
		any of ($a_*)
 
}