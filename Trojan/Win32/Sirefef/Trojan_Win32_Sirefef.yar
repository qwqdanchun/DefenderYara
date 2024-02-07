
rule Trojan_Win32_Sirefef{
	meta:
		description = "Trojan:Win32/Sirefef,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {47 45 54 20 2f 62 61 64 2e 70 68 70 3f 77 3d 25 75 26 69 3d 25 73 20 48 54 54 50 2f 31 2e 30 } //01 00  GET /bad.php?w=%u&i=%s HTTP/1.0
		$a_00_1 = {73 74 61 74 2e 70 68 70 3f 77 3d 25 75 26 69 3d 25 73 26 61 3d 25 75 } //01 00  stat.php?w=%u&i=%s&a=%u
		$a_02_2 = {75 70 64 61 74 65 2e 64 62 90 02 10 6e 65 77 2f 31 2e 65 78 65 90 00 } //01 00 
		$a_00_3 = {72 00 75 00 6e 00 61 00 73 00 00 00 5c 00 3f 00 3f 00 5c 00 25 00 73 00 5c 00 25 00 78 00 25 00 78 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_00_4 = {72 00 75 00 6e 00 64 00 6c 00 6c 00 33 00 32 00 2e 00 65 00 78 00 65 00 20 00 22 00 25 00 73 00 5c 00 25 00 78 00 25 00 78 00 2e 00 63 00 70 00 6c 00 22 00 2c 00 42 00 65 00 67 00 69 00 6e 00 54 00 61 00 73 00 6b 00 20 00 2a 00 25 00 49 00 36 00 34 00 64 00 2a 00 25 00 78 00 2a 00 25 00 73 00 } //00 00  rundll32.exe "%s\%x%x.cpl",BeginTask *%I64d*%x*%s
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Sirefef_2{
	meta:
		description = "Trojan:Win32/Sirefef,SIGNATURE_TYPE_PEHSTR_EXT,06 00 04 00 06 00 00 03 00 "
		
	strings :
		$a_03_0 = {68 20 bf 02 00 ff d6 e8 90 01 04 85 c0 75 90 01 01 8d 85 90 01 02 ff ff 50 68 02 02 00 00 ff 15 90 00 } //03 00 
		$a_00_1 = {47 45 54 20 2f 62 61 64 2e 70 68 70 3f 77 3d 25 75 26 69 3d 25 73 20 48 54 54 50 2f 31 2e 30 } //03 00  GET /bad.php?w=%u&i=%s HTTP/1.0
		$a_00_2 = {5c 00 42 00 61 00 73 00 65 00 4e 00 61 00 6d 00 65 00 64 00 4f 00 62 00 6a 00 65 00 63 00 74 00 73 00 5c 00 7b 00 38 00 31 00 44 00 30 00 35 00 46 00 39 00 41 00 2d 00 35 00 33 00 34 00 33 00 2d 00 34 00 33 00 39 00 66 00 2d 00 41 00 43 00 41 00 42 00 2d 00 45 00 37 00 38 00 32 00 32 00 45 00 34 00 34 00 31 00 36 00 46 00 39 00 7d 00 } //01 00  \BaseNamedObjects\{81D05F9A-5343-439f-ACAB-E7822E4416F9}
		$a_00_3 = {55 73 65 72 2d 41 67 65 6e 74 3a 20 4f 70 65 72 61 2f 36 20 28 57 69 6e 64 6f 77 73 20 4e 54 20 25 75 2e 25 75 3b 20 55 3b 20 4c 61 6e 67 49 44 3d 25 78 3b 20 25 73 29 } //01 00  User-Agent: Opera/6 (Windows NT %u.%u; U; LangID=%x; %s)
		$a_01_4 = {78 36 34 00 78 38 36 00 } //01 00  㙸4㡸6
		$a_01_5 = {73 74 61 74 2e 70 68 70 3f 77 3d 25 75 26 69 3d 25 73 26 61 3d 25 75 } //00 00  stat.php?w=%u&i=%s&a=%u
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Sirefef_3{
	meta:
		description = "Trojan:Win32/Sirefef,SIGNATURE_TYPE_ARHSTR_EXT,03 00 03 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {47 45 54 20 2f 62 61 64 2e 70 68 70 3f 77 3d 25 75 26 69 3d 25 73 20 48 54 54 50 2f 31 2e 30 } //01 00  GET /bad.php?w=%u&i=%s HTTP/1.0
		$a_00_1 = {73 74 61 74 2e 70 68 70 3f 77 3d 25 75 26 69 3d 25 73 26 61 3d 25 75 } //01 00  stat.php?w=%u&i=%s&a=%u
		$a_02_2 = {75 70 64 61 74 65 2e 64 62 90 02 10 6e 65 77 2f 31 2e 65 78 65 90 00 } //01 00 
		$a_00_3 = {72 00 75 00 6e 00 61 00 73 00 00 00 5c 00 3f 00 3f 00 5c 00 25 00 73 00 5c 00 25 00 78 00 25 00 78 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_00_4 = {72 00 75 00 6e 00 64 00 6c 00 6c 00 33 00 32 00 2e 00 65 00 78 00 65 00 20 00 22 00 25 00 73 00 5c 00 25 00 78 00 25 00 78 00 2e 00 63 00 70 00 6c 00 22 00 2c 00 42 00 65 00 67 00 69 00 6e 00 54 00 61 00 73 00 6b 00 20 00 2a 00 25 00 49 00 36 00 34 00 64 00 2a 00 25 00 78 00 2a 00 25 00 73 00 } //00 00  rundll32.exe "%s\%x%x.cpl",BeginTask *%I64d*%x*%s
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Sirefef_4{
	meta:
		description = "Trojan:Win32/Sirefef,SIGNATURE_TYPE_ARHSTR_EXT,06 00 04 00 06 00 00 03 00 "
		
	strings :
		$a_03_0 = {68 20 bf 02 00 ff d6 e8 90 01 04 85 c0 75 90 01 01 8d 85 90 01 02 ff ff 50 68 02 02 00 00 ff 15 90 00 } //03 00 
		$a_00_1 = {47 45 54 20 2f 62 61 64 2e 70 68 70 3f 77 3d 25 75 26 69 3d 25 73 20 48 54 54 50 2f 31 2e 30 } //03 00  GET /bad.php?w=%u&i=%s HTTP/1.0
		$a_00_2 = {5c 00 42 00 61 00 73 00 65 00 4e 00 61 00 6d 00 65 00 64 00 4f 00 62 00 6a 00 65 00 63 00 74 00 73 00 5c 00 7b 00 38 00 31 00 44 00 30 00 35 00 46 00 39 00 41 00 2d 00 35 00 33 00 34 00 33 00 2d 00 34 00 33 00 39 00 66 00 2d 00 41 00 43 00 41 00 42 00 2d 00 45 00 37 00 38 00 32 00 32 00 45 00 34 00 34 00 31 00 36 00 46 00 39 00 7d 00 } //01 00  \BaseNamedObjects\{81D05F9A-5343-439f-ACAB-E7822E4416F9}
		$a_00_3 = {55 73 65 72 2d 41 67 65 6e 74 3a 20 4f 70 65 72 61 2f 36 20 28 57 69 6e 64 6f 77 73 20 4e 54 20 25 75 2e 25 75 3b 20 55 3b 20 4c 61 6e 67 49 44 3d 25 78 3b 20 25 73 29 } //01 00  User-Agent: Opera/6 (Windows NT %u.%u; U; LangID=%x; %s)
		$a_01_4 = {78 36 34 00 78 38 36 00 } //01 00  㙸4㡸6
		$a_01_5 = {73 74 61 74 2e 70 68 70 3f 77 3d 25 75 26 69 3d 25 73 26 61 3d 25 75 } //00 00  stat.php?w=%u&i=%s&a=%u
	condition:
		any of ($a_*)
 
}