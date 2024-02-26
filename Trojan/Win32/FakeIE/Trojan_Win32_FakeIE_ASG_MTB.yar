
rule Trojan_Win32_FakeIE_ASG_MTB{
	meta:
		description = "Trojan:Win32/FakeIE.ASG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 0a 00 00 03 00 "
		
	strings :
		$a_01_0 = {37 00 62 00 63 00 36 00 39 00 66 00 63 00 33 00 39 00 37 00 62 00 33 00 64 00 34 00 39 00 64 00 31 00 39 00 66 00 30 00 33 00 62 00 32 00 64 00 30 00 38 00 37 00 64 00 66 00 63 00 63 00 61 00 35 00 31 00 64 00 31 00 34 00 34 00 33 00 35 00 39 00 61 00 34 00 36 00 39 00 39 00 66 00 39 00 } //01 00  7bc69fc397b3d49d19f03b2d087dfcca51d144359a4699f9
		$a_01_1 = {7b 00 38 00 41 00 30 00 41 00 30 00 37 00 30 00 35 00 2d 00 37 00 35 00 42 00 44 00 2d 00 34 00 42 00 33 00 42 00 2d 00 38 00 44 00 31 00 44 00 2d 00 41 00 46 00 34 00 46 00 45 00 46 00 31 00 33 00 43 00 37 00 32 00 42 00 7d 00 } //01 00  {8A0A0705-75BD-4B3B-8D1D-AF4FEF13C72B}
		$a_01_2 = {7b 00 34 00 35 00 43 00 34 00 33 00 42 00 41 00 38 00 2d 00 31 00 34 00 41 00 38 00 2d 00 34 00 46 00 44 00 32 00 2d 00 39 00 38 00 39 00 42 00 2d 00 31 00 41 00 30 00 39 00 39 00 31 00 33 00 32 00 42 00 31 00 39 00 31 00 7d 00 } //01 00  {45C43BA8-14A8-4FD2-989B-1A099132B191}
		$a_01_3 = {73 00 6f 00 67 00 6f 00 75 00 2e 00 63 00 6f 00 6d 00 2f 00 73 00 6f 00 67 00 6f 00 75 00 3f 00 70 00 69 00 64 00 3d 00 73 00 6f 00 67 00 6f 00 75 00 2d 00 6e 00 65 00 74 00 62 00 2d 00 63 00 62 00 66 00 38 00 37 00 31 00 30 00 62 00 34 00 33 00 64 00 66 00 33 00 66 00 32 00 63 00 2d 00 34 00 34 00 34 00 34 00 } //01 00  sogou.com/sogou?pid=sogou-netb-cbf8710b43df3f2c-4444
		$a_01_4 = {62 00 75 00 78 00 38 00 2e 00 63 00 6f 00 6d 00 } //01 00  bux8.com
		$a_01_5 = {35 00 38 00 77 00 61 00 6e 00 67 00 77 00 65 00 69 00 2e 00 63 00 6f 00 6d 00 } //01 00  58wangwei.com
		$a_01_6 = {35 00 38 00 38 00 62 00 2e 00 63 00 6f 00 6d 00 } //01 00  588b.com
		$a_01_7 = {2a 00 2a 00 2a 00 2a 00 6e 00 6f 00 6e 00 6f 00 64 00 69 00 68 00 66 00 67 00 68 00 72 00 65 00 63 00 74 00 2a 00 2a 00 2a 00 2a 00 } //01 00  ****nonodihfghrect****
		$a_01_8 = {6b 00 69 00 73 00 61 00 66 00 65 00 2e 00 64 00 6c 00 6c 00 } //01 00  kisafe.dll
		$a_01_9 = {73 00 65 00 6e 00 74 00 69 00 6e 00 65 00 6c 00 6d 00 66 00 63 00 2e 00 64 00 6c 00 6c 00 } //00 00  sentinelmfc.dll
	condition:
		any of ($a_*)
 
}