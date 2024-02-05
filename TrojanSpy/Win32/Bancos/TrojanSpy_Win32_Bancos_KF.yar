
rule TrojanSpy_Win32_Bancos_KF{
	meta:
		description = "TrojanSpy:Win32/Bancos.KF,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {41 00 64 00 6d 00 69 00 6e 00 69 00 73 00 74 00 72 00 61 00 64 00 6f 00 72 00 5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 61 00 6e 00 69 00 6d 00 61 00 e7 00 61 00 6f 00 20 00 63 00 6f 00 6d 00 20 00 65 00 72 00 72 00 6f 00 5c 00 50 00 72 00 6a 00 4d 00 61 00 69 00 6e 00 2e 00 76 00 62 00 70 00 } //01 00 
		$a_01_1 = {77 00 77 00 77 00 2e 00 62 00 61 00 6e 00 65 00 73 00 70 00 61 00 2e 00 63 00 6f 00 6d 00 2e 00 62 00 72 00 } //01 00 
		$a_01_2 = {45 00 72 00 72 00 6f 00 72 00 2e 00 20 00 43 00 6f 00 6d 00 70 00 72 00 75 00 65 00 62 00 65 00 20 00 6c 00 6f 00 73 00 20 00 64 00 61 00 74 00 6f 00 73 00 20 00 64 00 65 00 6c 00 20 00 73 00 65 00 72 00 76 00 69 00 64 00 6f 00 72 00 20 00 46 00 74 00 70 00 20 00 73 00 69 00 6e 00 20 00 73 00 6f 00 6e 00 20 00 63 00 6f 00 72 00 72 00 65 00 63 00 74 00 6f 00 73 00 } //00 00 
	condition:
		any of ($a_*)
 
}