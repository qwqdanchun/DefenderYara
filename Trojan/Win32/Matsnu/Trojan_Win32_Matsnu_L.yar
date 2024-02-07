
rule Trojan_Win32_Matsnu_L{
	meta:
		description = "Trojan:Win32/Matsnu.L,SIGNATURE_TYPE_PEHSTR_EXT,06 00 04 00 08 00 00 01 00 "
		
	strings :
		$a_00_0 = {54 41 53 4b 4b 49 4c 4c 20 2f 46 20 2f 46 49 20 22 55 53 45 52 4e 41 4d 45 20 65 71 20 25 73 22 20 2f 46 49 20 22 50 49 44 20 6e 65 20 25 75 22 20 2f 49 4d 20 73 76 63 68 6f 73 74 2e 65 78 65 } //01 00  TASKKILL /F /FI "USERNAME eq %s" /FI "PID ne %u" /IM svchost.exe
		$a_00_1 = {00 45 58 45 43 44 4c 4c 3a 00 } //02 00  䔀䕘䑃䱌:
		$a_00_2 = {25 73 3f 69 64 3d 25 73 26 63 76 72 3d 35 26 76 65 72 3d 25 73 26 6c 74 79 70 65 3d 6d 6c 26 25 73 } //02 00  %s?id=%s&cvr=5&ver=%s&ltype=ml&%s
		$a_00_3 = {00 4d 41 49 4e 45 52 46 49 4c 45 3a 00 } //02 00 
		$a_03_4 = {0f 31 31 d0 89 45 fc 31 d2 b9 90 01 04 f7 f1 89 c1 b8 90 01 04 f7 e2 89 ca 89 c1 b8 90 01 04 f7 e2 29 c1 31 d2 89 c8 89 4d fc b9 90 01 04 f7 f1 89 d0 59 5a 90 00 } //02 00 
		$a_01_5 = {ff 75 0c ff 75 08 e8 0f 00 00 00 69 64 74 3d 25 75 26 63 6f 64 65 3d 25 75 00 } //01 00 
		$a_00_6 = {69 64 3d 25 73 26 76 65 72 3d 25 73 26 63 76 72 3d 25 75 26 74 68 72 65 61 64 69 64 3d 25 75 26 6c 61 6e 67 3d 30 78 25 30 34 58 26 6f 73 3d 25 73 26 25 73 } //01 00  id=%s&ver=%s&cvr=%u&threadid=%u&lang=0x%04X&os=%s&%s
		$a_00_7 = {64 6c 6c 6c 69 73 74 3d 25 73 26 70 72 6f 63 6c 69 73 74 3d 25 73 } //00 00  dlllist=%s&proclist=%s
	condition:
		any of ($a_*)
 
}