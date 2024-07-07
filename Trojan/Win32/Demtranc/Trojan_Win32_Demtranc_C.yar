
rule Trojan_Win32_Demtranc_C{
	meta:
		description = "Trojan:Win32/Demtranc.C,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 04 00 00 "
		
	strings :
		$a_03_0 = {b1 3b b2 35 c6 45 90 01 01 2f c6 45 90 01 01 50 c6 45 90 01 01 45 c6 45 90 01 01 53 c6 45 90 01 01 25 c6 45 90 01 01 64 c6 45 90 01 01 4f c6 45 90 01 01 25 c6 45 90 01 01 64 c6 45 90 01 01 2e 90 00 } //1
		$a_03_1 = {50 51 c6 45 90 01 01 69 c6 45 90 01 01 6e c6 45 90 01 01 6f c6 45 90 01 01 73 c6 45 90 01 01 25 c6 45 90 01 01 2e c6 45 90 01 01 25 90 00 } //1
		$a_03_2 = {74 6b c6 85 90 01 04 2b c6 85 90 01 04 4f c6 85 90 01 04 4b c6 85 90 01 04 20 c6 85 90 01 04 53 c6 85 90 01 04 45 c6 85 90 01 04 55 90 00 } //1
		$a_03_3 = {2e b0 6a 88 85 90 01 04 c6 85 90 01 04 73 c6 85 90 01 04 70 c6 85 90 01 04 3f c6 85 90 01 04 25 c6 85 90 01 04 73 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=2
 
}