
rule Trojan_WinNT_Wador_A{
	meta:
		description = "Trojan:WinNT/Wador.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {81 38 24 40 41 57 75 09 81 78 04 44 46 4c 41 74 } //01 00 
		$a_01_1 = {bd 49 4d 53 24 ee e6 eb e6 eb e6 eb e6 eb e6 eb } //01 00 
		$a_02_2 = {3d 80 21 10 80 74 90 01 01 3d 84 21 10 80 74 90 01 01 3d 88 21 10 80 75 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}