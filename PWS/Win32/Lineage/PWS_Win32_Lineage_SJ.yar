
rule PWS_Win32_Lineage_SJ{
	meta:
		description = "PWS:Win32/Lineage.SJ,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_02_0 = {53 55 56 57 ff 15 90 01 04 3d c0 d4 01 00 73 07 68 60 ea 00 00 eb 05 68 88 13 00 00 ff 15 90 01 04 33 90 03 0b 0b ff 57 57 ff 15 90 01 04 89 7c 24 db 53 53 ff 15 90 01 04 89 5c 24 90 00 } //01 00 
		$a_02_1 = {ff d5 85 c0 75 63 b9 14 00 00 00 bf 90 01 04 f3 ab 8b fe 83 c9 ff f2 ae f7 d1 2b f9 6a 14 8b d1 8b f7 bf 90 01 04 c1 e9 02 f3 a5 8b ca 83 e1 03 f3 a4 a2 90 01 04 a1 90 01 04 50 ff d5 90 00 } //01 00 
		$a_00_2 = {53 68 65 6c 6c 48 6f 6f 6b 2e 64 6c 6c 00 44 6c 6c 43 61 6e 55 6e 6c 6f 61 64 4e 6f 77 00 44 6c 6c 47 65 74 43 6c 61 73 73 4f 62 6a 65 63 74 00 44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 00 44 6c 6c 55 6e 72 65 67 69 73 74 65 72 53 65 72 76 65 72 00 } //01 00 
		$a_00_3 = {55 4b 4f 53 00 00 00 00 32 30 30 33 00 00 00 00 58 70 00 00 32 4b 00 00 4e 54 00 00 3b 00 00 00 25 64 00 00 } //01 00 
		$a_00_4 = {5f 53 41 46 5f 00 } //00 00  卟䙁_
	condition:
		any of ($a_*)
 
}