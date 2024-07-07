
rule Trojan_Win32_Glupteba_RQ_MSR{
	meta:
		description = "Trojan:Win32/Glupteba.RQ!MSR,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 "
		
	strings :
		$a_02_0 = {c1 ea 05 03 94 24 90 01 04 03 84 24 90 01 04 89 54 24 90 01 01 e8 90 01 04 33 c2 89 84 24 90 01 04 c7 05 90 01 04 00 00 00 00 8b 84 24 90 01 04 29 44 24 90 01 01 81 3d 90 01 04 d5 01 00 00 90 00 } //2
		$a_02_1 = {c1 ee 05 03 b4 24 90 01 04 03 84 24 90 01 04 89 74 24 90 01 01 8b c8 e8 90 01 04 33 c6 89 84 24 90 01 04 89 2d 90 01 04 8b 84 24 90 01 04 29 44 24 90 01 01 81 3d 90 01 04 d5 01 00 00 90 00 } //2
		$a_02_2 = {c1 ee 05 03 74 24 90 01 01 03 44 24 90 01 01 89 74 24 90 01 01 8b c8 e8 90 01 04 33 c6 2b e8 81 3d 90 01 04 d5 01 00 00 90 00 } //2
	condition:
		((#a_02_0  & 1)*2+(#a_02_1  & 1)*2+(#a_02_2  & 1)*2) >=2
 
}