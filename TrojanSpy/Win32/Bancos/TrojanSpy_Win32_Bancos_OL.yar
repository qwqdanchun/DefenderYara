
rule TrojanSpy_Win32_Bancos_OL{
	meta:
		description = "TrojanSpy:Win32/Bancos.OL,SIGNATURE_TYPE_PEHSTR,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_01_0 = {eb f0 5b 59 59 5d c3 00 00 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 00 00 00 44 61 64 6f 73 20 69 6e 76 e1 6c 69 64 6f 73 2c 20 70 6f 72 20 66 61 76 6f 72 20 74 65 6e 74 65 20 6e 6f 76 61 6d 65 6e 74 65 21 00 50 6f 72 20 66 61 76 6f 72 20 63 6f 6e 66 69 72 6d 65 20 73 75 61 20 69 64 65 6e 74 69 66 69 63 61 e7 e3 6f 20 69 6e 73 65 72 69 6e 64 6f 20 73 75 61 20 53 65 6e 68 61 20 41 64 69 63 69 6f 6e 61 6c 20 64 65 20 33 20 64 ed 67 69 74 6f 73 21 } //00 00 
	condition:
		any of ($a_*)
 
}