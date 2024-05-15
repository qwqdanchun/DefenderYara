
rule TrojanSpy_Win32_GreenCollector_A{
	meta:
		description = "TrojanSpy:Win32/GreenCollector.A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {2e 00 70 00 64 00 66 00 00 00 00 00 6a 00 70 00 67 00 00 00 2e 00 78 00 6c 00 73 00 00 00 00 00 2e 00 78 00 6c 00 73 00 78 00 00 00 2e 00 64 00 6f 00 63 00 00 00 00 00 64 00 6f 00 63 00 78 00 00 00 00 00 2e 00 74 00 69 00 66 00 00 00 00 00 2e 00 6d 00 73 00 67 00 } //01 00 
		$a_01_1 = {65 72 72 6f 72 00 00 00 63 68 6f 6f 73 65 20 64 69 73 6b 20 69 6e 20 63 6d 64 20 61 72 67 75 6d 65 6e 74 73 00 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}