
rule Trojan_Win32_UpperCider_C_dha{
	meta:
		description = "Trojan:Win32/UpperCider.C!dha,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 04 00 00 03 00 "
		
	strings :
		$a_81_0 = {78 6c 41 75 74 6f 4f 70 65 6e } //03 00  xlAutoOpen
		$a_81_1 = {52 65 67 69 73 74 65 72 58 4c 4c 2e 64 6c 6c } //05 00  RegisterXLL.dll
		$a_03_2 = {ff ff ff 43 72 65 61 c7 45 90 01 01 74 65 52 65 c7 45 90 01 01 6d 6f 74 65 c7 45 90 01 01 54 68 72 65 66 c7 45 90 01 01 61 64 c6 45 90 01 01 00 c7 45 90 01 02 65 72 6e c7 45 90 01 01 65 6c 33 32 c7 45 90 01 01 2e 64 6c 6c c6 45 90 01 01 00 ff 90 01 01 50 ff 90 01 01 68 04 01 00 00 8d 95 90 01 0a 8b f0 ff 95 90 00 } //05 00 
		$a_03_3 = {83 e8 04 83 c1 04 83 c7 04 83 f8 04 73 90 01 01 85 c0 74 90 01 01 8a 19 3a 1f 75 90 01 01 83 f8 01 76 90 01 01 8a 59 01 3a 5f 01 75 90 01 01 83 f8 02 76 90 01 01 8a 41 02 3a 47 02 75 90 01 01 5b b8 90 01 04 5f 2b c6 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}