
rule DDoS_Win32_Nitol_M_bit{
	meta:
		description = "DDoS:Win32/Nitol.M!bit,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {25 63 25 63 25 63 25 63 25 63 25 63 2e 65 78 65 } //01 00 
		$a_01_1 = {2f 63 20 40 70 69 6e 67 20 2d 6e 20 35 20 31 32 37 2e 30 2e 30 2e 31 26 64 65 6c } //01 00 
		$a_01_2 = {53 59 53 54 45 4d 5c 43 75 72 72 65 6e 74 43 6f 6e 74 72 6f 6c 53 65 74 5c 53 65 72 76 69 63 65 73 5c 00 00 44 65 73 63 72 69 70 74 69 6f 6e } //01 00 
		$a_03_3 = {8b 4d 08 8a 14 11 32 94 45 90 01 04 8b 85 90 01 04 25 90 01 04 8b 4d 08 88 14 01 66 8b 55 fc 66 83 c2 01 66 89 55 fc e9 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}