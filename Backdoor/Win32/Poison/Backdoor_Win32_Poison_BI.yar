
rule Backdoor_Win32_Poison_BI{
	meta:
		description = "Backdoor:Win32/Poison.BI,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {b9 ff 00 00 00 33 c0 8d 7c 24 90 01 01 c6 44 24 90 01 01 00 f3 ab 8b 35 90 01 04 6a 00 66 ab 68 80 00 00 00 6a 03 aa 90 00 } //01 00 
		$a_03_1 = {b0 72 b1 63 56 57 88 44 24 90 01 01 88 44 24 90 01 01 88 4c 24 90 00 } //01 00 
		$a_03_2 = {54 c6 44 24 90 01 01 61 c6 44 24 90 01 01 65 c6 44 24 90 01 01 47 c6 44 24 90 01 01 78 c6 44 24 90 01 01 73 90 00 } //01 00 
		$a_01_3 = {73 76 63 68 6f 73 74 20 2e 65 78 65 } //00 00  svchost .exe
	condition:
		any of ($a_*)
 
}