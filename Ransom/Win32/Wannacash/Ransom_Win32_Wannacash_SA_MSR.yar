
rule Ransom_Win32_Wannacash_SA_MSR{
	meta:
		description = "Ransom:Win32/Wannacash.SA!MSR,SIGNATURE_TYPE_PEHSTR,04 00 04 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {6e 00 6f 00 61 00 6c 00 6c 00 70 00 6f 00 73 00 73 00 69 00 62 00 6c 00 65 00 40 00 63 00 6f 00 63 00 6b 00 2e 00 6c 00 69 00 20 00 2e 00 68 00 61 00 70 00 70 00 79 00 20 00 6e 00 65 00 77 00 20 00 79 00 65 00 61 00 72 00 } //01 00  noallpossible@cock.li .happy new year
		$a_01_1 = {5a 00 58 00 4e 00 6c 00 64 00 48 00 4e 00 6f 00 64 00 58 00 52 00 31 00 63 00 47 00 5a 00 31 00 59 00 32 00 74 00 31 00 63 00 41 00 3d 00 3d 00 } //01 00  ZXNldHNodXR1cGZ1Y2t1cA==
		$a_01_2 = {58 00 4e 00 43 00 36 00 30 00 4c 00 44 00 51 00 75 00 69 00 44 00 52 00 67 00 4e 00 43 00 77 00 30 00 59 00 48 00 52 00 69 00 4e 00 43 00 34 00 30 00 59 00 54 00 52 00 67 00 4e 00 43 00 2b 00 30 00 4c 00 4c 00 51 00 73 00 4e 00 47 00 43 00 30 00 59 00 77 00 67 00 30 00 59 00 54 00 51 00 73 00 4e 00 43 00 35 00 30 00 4c 00 76 00 52 00 69 00 79 00 35 00 30 00 65 00 48 00 51 00 3d 00 } //01 00  XNC60LDQuiDRgNCw0YHRiNC40YTRgNC+0LLQsNGC0Ywg0YTQsNC50LvRiy50eHQ=
		$a_01_3 = {34 00 70 00 57 00 52 00 49 00 43 00 44 00 51 00 6f 00 79 00 44 00 51 00 6b 00 74 00 43 00 51 00 30 00 4b 00 45 00 67 00 30 00 4c 00 58 00 52 00 67 00 64 00 47 00 43 00 30 00 59 00 77 00 67 00 30 00 59 00 44 00 51 00 76 00 74 00 43 00 79 00 30 00 4c 00 33 00 51 00 76 00 69 00 41 00 33 00 49 00 4e 00 43 00 30 00 30 00 4c 00 33 00 51 00 74 00 64 00 43 00 35 00 49 00 4e 00 43 00 39 00 30 00 4c 00 41 00 67 00 30 00 59 00 48 00 51 00 73 00 74 00 47 00 50 00 30 00 4c 00 66 00 52 00 6a 00 43 00 44 00 52 00 67 00 64 00 43 00 2b 00 49 00 4e 00 43 00 38 00 30 00 4c 00 33 00 51 00 76 00 74 00 43 00 35 00 4c 00 69 00 41 00 3d 00 } //01 00  4pWRICDQoyDQktCQ0KEg0LXRgdGC0Ywg0YDQvtCy0L3QviA3INC00L3QtdC5INC90LAg0YHQstGP0LfRjCDRgdC+INC80L3QvtC5LiA=
		$a_01_4 = {77 00 61 00 6e 00 6e 00 61 00 63 00 61 00 73 00 68 00 5c 00 4c 00 6f 00 63 00 6b 00 42 00 6f 00 78 00 } //01 00  wannacash\LockBox
		$a_01_5 = {54 00 57 00 39 00 36 00 61 00 57 00 78 00 73 00 59 00 53 00 38 00 31 00 4c 00 6a 00 41 00 67 00 4b 00 45 00 78 00 70 00 62 00 6e 00 56 00 34 00 4f 00 79 00 42 00 56 00 4f 00 79 00 42 00 42 00 62 00 6d 00 52 00 79 00 62 00 32 00 6c 00 6b 00 49 00 } //01 00  TW96aWxsYS81LjAgKExpbnV4OyBVOyBBbmRyb2lkI
		$a_01_6 = {61 00 48 00 52 00 30 00 63 00 48 00 4d 00 36 00 4c 00 79 00 39 00 70 00 63 00 47 00 78 00 76 00 5a 00 32 00 64 00 6c 00 63 00 69 00 35 00 76 00 63 00 6d 00 63 00 } //00 00  aHR0cHM6Ly9pcGxvZ2dlci5vcmc
	condition:
		any of ($a_*)
 
}