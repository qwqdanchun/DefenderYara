
rule DoS_Win32_SharpWipe_B_dha{
	meta:
		description = "DoS:Win32/SharpWipe.B!dha,SIGNATURE_TYPE_PEHSTR_EXT,14 00 0a 00 02 00 00 "
		
	strings :
		$a_03_0 = {20 00 2d 00 c7 45 ?? 61 00 63 00 c7 45 ?? 63 00 65 00 c7 45 ?? 70 00 74 00 c7 45 ?? 65 00 75 00 c7 45 ?? 6c 00 61 00 c7 45 ?? 20 00 2d 00 } //10
		$a_03_1 = {50 00 68 00 c7 45 ?? 79 00 73 00 c7 45 ?? 69 00 63 00 c7 45 ?? 61 00 6c 00 c7 45 ?? 44 00 72 00 c7 45 ?? 69 00 76 00 c7 45 ?? 65 00 25 00 c7 45 ?? 75 00 00 00 } //10
	condition:
		((#a_03_0  & 1)*10+(#a_03_1  & 1)*10) >=10
 
}