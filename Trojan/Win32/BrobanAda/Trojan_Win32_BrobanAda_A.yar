
rule Trojan_Win32_BrobanAda_A{
	meta:
		description = "Trojan:Win32/BrobanAda.A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 04 00 00 01 00 "
		
	strings :
		$a_02_0 = {61 76 69 73 6f 2e 74 78 74 00 00 00 ff ff ff ff 90 01 01 00 00 00 36 38 37 34 37 34 37 30 33 41 32 46 90 00 } //01 00 
		$a_02_1 = {45 78 70 6c 6f 72 65 72 00 00 00 00 ff ff ff ff 90 01 01 00 00 00 90 02 0f 32 46 34 31 32 46 36 32 36 46 36 43 36 35 37 34 36 46 32 45 37 30 36 38 37 30 00 90 00 } //01 00 
		$a_00_2 = {36 35 36 65 36 33 36 66 36 34 36 35 36 34 00 00 ff ff ff ff 02 00 00 00 4f 3d 00 00 ff ff ff ff 03 00 00 00 26 4e 3d 00 ff ff ff ff 03 00 00 00 26 55 3d 00 ff ff ff ff 03 00 00 00 26 56 3d 00 ff ff ff ff 03 00 00 00 26 50 3d 00 ff ff ff ff 03 00 00 00 26 5a 3d 00 ff ff ff ff 05 00 00 00 } //01 00 
		$a_00_3 = {37 30 36 43 37 35 36 37 36 39 36 45 36 33 36 38 37 32 36 46 36 44 36 35 32 45 37 41 36 39 37 30 } //00 00 
		$a_00_4 = {80 } //10 00 
	condition:
		any of ($a_*)
 
}