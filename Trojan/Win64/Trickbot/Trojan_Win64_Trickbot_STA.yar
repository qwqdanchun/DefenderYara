
rule Trojan_Win64_Trickbot_STA{
	meta:
		description = "Trojan:Win64/Trickbot.STA,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_02_0 = {83 f0 69 88 90 02 10 83 f0 65 90 02 10 83 f0 78 90 02 10 83 f0 70 90 02 10 83 f0 6c 90 02 10 83 f0 6f 83 f0 72 83 f0 65 90 02 10 83 f0 2e 90 02 10 83 f0 65 90 02 10 83 f0 78 90 02 10 83 f0 65 90 00 } //01 00 
		$a_02_1 = {83 f0 63 88 90 02 10 83 f0 68 90 02 10 83 f0 72 90 02 10 83 f0 6f 90 02 10 83 f0 6d 90 02 10 83 f0 65 90 02 10 83 f0 2e 90 02 10 83 f0 65 90 02 10 83 f0 78 90 02 10 83 f0 65 90 00 } //01 00 
		$a_01_2 = {c6 45 ed 6b c6 45 ee 6a c6 45 ef 6d c6 45 f0 6b c6 45 f1 69 c6 45 f2 76 c6 45 f3 34 c6 45 f4 6b c6 45 f5 7e c6 45 f6 6b } //01 00 
		$a_00_3 = {70 61 79 6c 6f 61 64 36 34 2e 64 6c 6c } //01 00  payload64.dll
		$a_00_4 = {52 65 66 6c 65 63 74 69 76 65 4c 6f 61 64 65 72 } //00 00  ReflectiveLoader
		$a_00_5 = {5d 04 } //00 00  ѝ
	condition:
		any of ($a_*)
 
}