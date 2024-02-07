
rule Trojan_Win32_Alureon_GJ{
	meta:
		description = "Trojan:Win32/Alureon.GJ,SIGNATURE_TYPE_PEHSTR_EXT,7d 00 73 00 08 00 00 32 00 "
		
	strings :
		$a_01_0 = {6a 00 66 00 6c 00 73 00 64 00 6b 00 6a 00 66 00 30 00 30 00 31 00 2e 00 64 00 61 00 74 00 } //3c 00  jflsdkjf001.dat
		$a_01_1 = {73 68 69 6d 61 6e 6f 73 74 6f 72 65 2e 63 6f 6d 2e 74 77 3a 38 30 3b 73 72 61 6d 73 74 6f 72 65 2e 63 6f 6d 2e 74 77 3a 38 30 } //0a 00  shimanostore.com.tw:80;sramstore.com.tw:80
		$a_01_2 = {8b 78 0c 68 3c 20 00 00 6a 08 51 ff d3 8b f0 33 c0 3b f0 74 76 8b 4d 0c 8d 56 34 89 96 34 20 00 00 89 7e 1c } //05 00 
		$a_01_3 = {25 64 2e 25 64 2e 25 64 5f 25 64 2e 25 64 5f 25 64 } //05 00  %d.%d.%d_%d.%d_%d
		$a_01_4 = {66 83 7d dc 09 0f 95 c0 48 83 e0 20 83 c0 20 50 8b 85 4c ff ff ff 51 } //0a 00 
		$a_01_5 = {c7 45 80 6c 00 6c 00 c7 45 86 32 00 2e 00 c7 45 8a 65 00 78 00 c7 45 8e 65 00 20 00 c7 45 92 25 00 73 00 } //0a 00 
		$a_01_6 = {6b 6e 6f 63 6b 2e 70 68 70 3f 6c 6f 67 3d 25 73 7c 69 64 3d 25 73 7c 6f 73 3d 25 73 20 25 73 7c 76 65 72 73 69 6f 6e 3d 25 75 2e 25 75 2e 25 75 2e 25 75 } //05 00  knock.php?log=%s|id=%s|os=%s %s|version=%u.%u.%u.%u
		$a_01_7 = {70 65 65 72 63 6d 64 5f 25 75 5f 25 75 2e 25 75 2e 25 75 2e 25 75 3a 25 75 5f 25 75 3d 25 75 } //00 00  peercmd_%u_%u.%u.%u.%u:%u_%u=%u
		$a_00_8 = {87 10 00 00 87 47 56 1e 5c b9 a8 bc 3c 47 b5 2e 3b 20 00 00 87 10 00 00 5a e4 81 1e e6 dd 57 2a 42 50 2f 4d c8 18 00 00 87 10 00 00 b0 d7 18 30 93 2c f8 87 2d 1f 7c 81 c1 46 00 00 87 10 00 00 99 } //c4 e2 
	condition:
		any of ($a_*)
 
}