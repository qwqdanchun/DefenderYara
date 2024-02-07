
rule Trojan_Win32_Danglo_A{
	meta:
		description = "Trojan:Win32/Danglo.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 04 00 00 02 00 "
		
	strings :
		$a_03_0 = {ba 01 00 00 00 89 e5 31 c0 83 ec 18 b9 90 01 04 89 54 24 14 ba 90 01 04 89 44 24 10 b8 90 01 04 89 4c 24 0c 89 54 24 08 89 44 24 04 c7 04 24 00 00 00 00 e8 90 00 } //02 00 
		$a_03_1 = {b9 01 00 00 00 89 44 24 08 89 4c 24 04 89 34 24 e8 90 01 04 89 74 24 04 8d 95 64 ff ff ff b8 90 01 04 89 54 24 0c 89 44 24 08 89 3c 24 e8 90 01 04 83 ec 10 85 c0 75 90 01 01 89 1c 24 e8 90 00 } //01 00 
		$a_00_2 = {41 63 63 65 70 74 3a 20 2a 2f 2a } //01 00  Accept: */*
		$a_00_3 = {4c 49 42 47 43 43 57 33 32 2d 45 48 2d 32 2d 53 4a 4c 4a 2d 47 54 48 52 2d 4d 49 4e 47 57 33 32 } //00 00  LIBGCCW32-EH-2-SJLJ-GTHR-MINGW32
	condition:
		any of ($a_*)
 
}