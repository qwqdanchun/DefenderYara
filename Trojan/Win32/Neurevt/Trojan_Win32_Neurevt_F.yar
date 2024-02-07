
rule Trojan_Win32_Neurevt_F{
	meta:
		description = "Trojan:Win32/Neurevt.F,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {34 00 44 00 35 00 41 00 39 00 30 00 30 00 30 00 30 00 33 00 30 00 30 00 30 00 30 00 30 00 30 00 30 00 34 00 30 00 30 00 30 00 30 00 30 00 30 00 46 00 46 00 46 00 46 00 30 00 30 00 30 00 30 00 42 00 38 00 } //01 00  4D5A90000300000004000000FFFF0000B8
		$a_01_1 = {43 00 3a 00 5c 00 7e 00 74 00 6d 00 70 00 31 00 33 00 31 00 35 00 5c 00 } //01 00  C:\~tmp1315\
		$a_01_2 = {51 43 44 52 75 6e 4d 6f 64 65 2e 43 6f 6e 6e 65 63 74 69 6f 6e } //00 00  QCDRunMode.Connection
		$a_00_3 = {5d 04 } //00 00  ѝ
	condition:
		any of ($a_*)
 
}