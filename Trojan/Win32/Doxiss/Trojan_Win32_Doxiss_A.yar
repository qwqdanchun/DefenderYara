
rule Trojan_Win32_Doxiss_A{
	meta:
		description = "Trojan:Win32/Doxiss.A,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 69 00 6d 00 20 00 00 00 } //01 00 
		$a_01_1 = {53 65 76 69 64 6f 72 20 44 69 6f 78 69 73 00 } //01 00 
		$a_01_2 = {5c 00 68 00 61 00 6c 00 2e 00 64 00 6c 00 6c 00 00 00 00 00 10 00 00 00 63 00 6f 00 70 00 79 00 20 00 2f 00 79 00 20 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}