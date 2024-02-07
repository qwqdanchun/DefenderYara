
rule Trojan_Win32_Sefnit_AS{
	meta:
		description = "Trojan:Win32/Sefnit.AS,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 02 00 "
		
	strings :
		$a_01_0 = {73 00 79 00 6d 00 61 00 6e 00 74 00 65 00 63 00 00 00 00 00 65 00 73 00 65 00 74 00 00 00 00 00 6b 00 61 00 73 00 70 00 65 00 72 00 73 00 6b 00 79 00 00 00 61 00 76 00 67 00 00 00 6e 00 6f 00 72 00 74 00 6f 00 6e 00 00 00 00 00 61 00 76 00 69 00 72 00 61 00 00 00 61 00 76 00 61 00 73 00 74 00 00 } //02 00 
		$a_01_1 = {2f 00 63 00 72 00 65 00 61 00 74 00 65 00 20 00 2f 00 74 00 6e 00 20 00 22 00 25 00 73 00 22 00 20 00 2f 00 72 00 75 00 20 00 22 00 53 00 59 00 53 00 54 00 45 00 4d 00 22 00 20 00 2f 00 73 00 63 00 20 00 68 00 6f 00 75 00 72 00 6c 00 79 00 20 00 2f 00 6d 00 6f 00 20 00 31 00 20 00 2f 00 74 00 72 00 20 00 22 00 25 00 73 00 20 00 2f 00 77 00 22 00 20 00 2f 00 73 00 74 00 20 00 30 00 30 00 3a 00 30 00 30 00 3a 00 30 00 30 00 } //04 00  /create /tn "%s" /ru "SYSTEM" /sc hourly /mo 1 /tr "%s /w" /st 00:00:00
		$a_03_2 = {2b c8 8b d7 bb 90 01 04 66 33 1c 01 66 89 18 83 c0 02 4a 75 ee 90 00 } //02 00 
		$a_01_3 = {b9 a2 9f a2 98 a2 9e a2 99 a2 88 a2 89 a2 cd a2 a4 a2 83 a2 9e a2 99 a2 8c a2 81 a2 81 a2 88 a2 9f a2 } //02 00 
		$a_03_4 = {eb 35 ff d7 2b c3 3d 30 75 00 00 77 39 90 09 0a 00 2d 26 04 00 00 90 00 } //04 00 
		$a_03_5 = {66 89 14 08 83 c0 02 83 f8 90 01 01 72 dc 8b c6 e8 90 01 04 c3 90 09 0e 00 8b ce ba 90 01 04 66 33 90 90 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}