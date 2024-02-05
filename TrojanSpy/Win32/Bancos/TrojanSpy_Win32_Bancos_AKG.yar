
rule TrojanSpy_Win32_Bancos_AKG{
	meta:
		description = "TrojanSpy:Win32/Bancos.AKG,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {33 5d e0 3b 5d e4 7f 0b 81 c3 ff 00 00 00 } //01 00 
		$a_03_1 = {38 44 42 33 36 37 44 37 37 30 44 38 34 34 45 37 90 01 0c 73 90 01 0b 65 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}