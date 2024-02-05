
rule Trojan_Win32_Sessa_A{
	meta:
		description = "Trojan:Win32/Sessa.A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 73 79 73 74 65 6d 33 32 5c 37 37 37 2e 64 6c 6c } //01 00 
		$a_01_1 = {63 00 6c 00 73 00 69 00 64 00 5c 00 7b 00 30 00 38 00 33 00 38 00 36 00 33 00 66 00 31 00 2d 00 37 00 30 00 64 00 65 00 2d 00 31 00 31 00 64 00 30 00 2d 00 62 00 64 00 34 00 30 00 2d 00 30 00 30 00 61 00 30 00 63 00 39 00 31 00 31 00 63 00 65 00 38 00 36 00 7d 00 5c 00 69 00 6e 00 73 00 74 00 61 00 6e 00 63 00 65 00 5c 00 7b 00 31 00 32 00 39 00 64 00 37 00 65 00 34 00 30 00 2d 00 63 00 31 00 30 00 64 00 2d 00 31 00 31 00 64 00 30 00 2d 00 61 00 66 00 62 00 39 00 2d 00 30 00 30 00 61 00 61 00 30 00 30 00 62 00 36 00 37 00 61 00 34 00 32 00 7d 00 } //00 00 
	condition:
		any of ($a_*)
 
}