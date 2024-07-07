
rule Worm_Win32_Vobfus_M{
	meta:
		description = "Worm:Win32/Vobfus.M,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {04 ec f2 34 6c ec f2 6c 68 ff 5e 90 01 01 00 08 00 71 18 f7 3c 6c ec f2 05 90 01 01 00 fc 58 6c 18 f7 71 74 ff 2f ec f2 00 29 76 90 01 01 00 04 ec f2 34 6c ec f2 6c 68 ff 5e 90 01 01 00 08 00 71 18 f7 3c 6c ec f2 05 90 01 01 00 fc 58 6c 18 f7 71 40 f7 2f ec f2 00 0e 6c 74 ff f5 00 00 00 00 cc 1c 93 05 00 84 f3 c3 00 2b d2 f2 5e 90 01 01 00 04 00 71 14 f7 04 18 f7 f5 00 00 00 00 f5 04 00 00 00 04 3c f7 fe 8e 01 00 00 00 10 00 80 08 90 00 } //1
		$a_03_1 = {00 04 00 00 08 6c 74 ff 43 6c ff 00 0a 6c 6c ff 4a e4 70 70 ff 00 13 f4 01 04 72 ff 6b 70 ff f4 01 ad fe 63 44 ff 7d 00 00 1e 04 42 ff 04 70 ff 04 72 ff 10 90 01 01 07 90 01 01 00 6b 42 ff 6b 72 ff 04 6c ff 10 90 01 01 07 90 01 01 00 00 0a 04 72 ff 64 44 ff 55 00 00 08 90 00 } //1
		$a_01_2 = {a9 f3 00 01 c1 e7 04 60 ff 9d fb 12 fc 0d } //1
		$a_00_3 = {77 73 6f 63 6b 33 32 00 0e 00 00 00 67 65 74 68 6f 73 74 62 79 6e 61 6d 65 00 } //1
		$a_00_4 = {6b 65 72 6e 65 6c 33 32 00 00 00 00 0d 00 00 00 4c 6f 61 64 4c 69 62 72 61 72 79 57 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=5
 
}