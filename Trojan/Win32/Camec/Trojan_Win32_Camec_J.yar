
rule Trojan_Win32_Camec_J{
	meta:
		description = "Trojan:Win32/Camec.J,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {31 00 35 00 30 00 41 00 34 00 31 00 35 00 31 00 31 00 35 00 34 00 33 00 35 00 43 00 35 00 32 00 34 00 31 00 35 00 44 00 30 00 45 00 31 00 41 00 30 00 34 00 30 00 36 00 34 00 38 00 34 00 30 00 31 00 31 00 31 00 35 00 31 00 35 00 30 00 42 00 33 00 39 00 } //01 00 
		$a_01_1 = {30 00 39 00 34 00 32 00 35 00 31 00 31 00 35 00 31 00 35 00 35 00 35 00 35 00 39 00 35 00 46 00 35 00 32 00 35 00 42 00 30 00 45 00 31 00 41 00 34 00 33 00 35 00 46 00 35 00 46 00 35 00 30 00 34 00 37 00 31 00 37 00 31 00 35 00 30 00 42 00 33 00 39 00 33 00 42 00 30 00 44 00 35 00 31 00 35 00 38 00 34 00 30 00 31 00 38 00 35 00 41 00 35 00 33 00 30 00 45 00 31 00 34 00 35 00 31 00 35 00 42 00 34 00 33 00 35 00 31 00 35 00 42 00 34 00 35 00 34 00 36 00 31 00 32 00 } //00 00 
	condition:
		any of ($a_*)
 
}