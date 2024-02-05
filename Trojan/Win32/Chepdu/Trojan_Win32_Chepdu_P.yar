
rule Trojan_Win32_Chepdu_P{
	meta:
		description = "Trojan:Win32/Chepdu.P,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 05 00 00 02 00 "
		
	strings :
		$a_03_0 = {48 4b 45 59 5f 43 55 52 52 45 4e 54 5f 43 4f 4e 46 49 47 90 02 07 48 4b 45 59 5f 44 59 4e 5f 44 41 54 41 90 02 07 48 4b 45 59 5f 50 45 52 46 4f 52 4d 41 4e 43 45 5f 44 41 54 41 90 02 07 48 4b 45 59 5f 55 53 45 52 53 90 02 07 48 4b 45 59 5f 4c 4f 43 41 4c 5f 4d 41 43 48 49 4e 45 90 02 07 48 4b 45 59 5f 43 55 52 52 45 4e 54 5f 55 53 45 52 90 02 07 48 4b 45 59 5f 43 4c 41 53 53 45 53 5f 52 4f 4f 54 90 02 07 48 4b 43 43 90 02 07 48 4b 44 44 90 02 07 48 4b 50 44 90 02 07 48 4b 55 90 02 07 48 4b 4c 4d 90 02 07 48 4b 43 55 90 02 07 48 4b 43 52 90 00 } //02 00 
		$a_03_1 = {0b ca 88 8d 90 01 02 ff ff 90 0a 80 00 0f be 8d 90 01 02 ff ff 90 02 50 0f be 95 90 01 02 ff ff 90 00 } //01 00 
		$a_03_2 = {25 00 00 00 80 79 05 48 83 c8 ff 40 3d 90 01 02 00 00 75 06 90 00 } //01 00 
		$a_01_3 = {b8 01 00 00 00 83 e0 01 85 c0 74 } //01 00 
		$a_01_4 = {81 38 63 73 6d e0 74 } //00 00 
	condition:
		any of ($a_*)
 
}