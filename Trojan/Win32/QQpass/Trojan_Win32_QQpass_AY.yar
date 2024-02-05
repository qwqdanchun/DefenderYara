
rule Trojan_Win32_QQpass_AY{
	meta:
		description = "Trojan:Win32/QQpass.AY,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 02 00 "
		
	strings :
		$a_01_0 = {2f 6c 69 6e 2e 61 73 70 3f 41 3d 25 73 26 42 3d 25 73 26 } //01 00 
		$a_01_1 = {53 59 53 54 45 4d 33 32 5c 74 73 73 63 61 66 65 2e 64 6c 6c } //02 00 
		$a_01_2 = {70 6f 62 61 6f 2f 47 65 74 54 75 50 69 61 6e 2e 61 73 70 } //01 00 
		$a_01_3 = {64 4e 66 63 48 69 4e 61 2e 45 78 65 } //00 00 
	condition:
		any of ($a_*)
 
}