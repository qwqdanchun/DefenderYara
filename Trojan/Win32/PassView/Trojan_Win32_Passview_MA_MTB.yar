
rule Trojan_Win32_Passview_MA_MTB{
	meta:
		description = "Trojan:Win32/Passview.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {56 41 b5 f8 3b a1 90 01 04 3a 4f ad 33 99 90 01 04 0c 00 aa 00 60 d3 93 90 00 } //01 00 
		$a_00_1 = {6d 4d 61 69 6e 00 0d 01 2e 00 c4 a7 ca de d5 f9 b0 d4 b8 f6 d0 d4 bb af b9 a4 be df 20 2d 20 57 61 72 4d 70 71 } //00 00 
	condition:
		any of ($a_*)
 
}