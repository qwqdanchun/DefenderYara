
rule Trojan_Win32_BHO_X{
	meta:
		description = "Trojan:Win32/BHO.X,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 05 00 00 03 00 "
		
	strings :
		$a_01_0 = {84 b2 96 b1 b4 ba 1a 10 b6 9c 00 aa 00 34 1d 07 61 16 0c d3 af cd d0 11 8a 3e 00 c0 4f c9 e2 6e a0 15 a7 34 87 65 d0 11 92 4a 00 20 af c7 ac 4d 25 44 2c 33 cb 26 d0 11 b4 83 00 c0 4f d9 01 19 ff f1 50 30 b5 98 cf 11 bb 82 00 aa 00 bd ce 0b 1f f2 50 30 b5 98 cf 11 bb 82 00 aa 00 bd ce 0b 00 04 02 00 00 00 00 00 c0 00 00 00 00 00 00 46 } //01 00 
		$a_03_1 = {8d 45 c4 50 68 00 00 00 10 ff 75 08 c7 45 c4 3c 00 00 00 e8 90 01 02 00 00 59 50 ff 75 08 ff 15 90 01 02 00 10 90 00 } //03 00 
		$a_02_2 = {3d e0 93 04 00 76 0b ff 75 ec 8b 4d 08 e8 90 01 02 00 00 90 09 12 00 88 1d 90 01 02 00 10 ff 15 90 01 02 00 10 2b 05 90 01 02 00 10 90 00 } //01 00 
		$a_00_3 = {44 6c 6c 43 61 6e 55 6e 6c 6f 61 64 4e 6f 77 00 44 6c 6c 47 65 74 43 6c 61 73 73 4f 62 6a 65 63 74 00 44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 00 44 6c 6c 55 6e 72 65 67 69 73 74 65 72 53 65 72 76 65 72 } //01 00 
		$a_00_4 = {49 6e 74 65 72 6e 65 74 43 72 61 63 6b 55 72 6c 41 } //00 00  InternetCrackUrlA
	condition:
		any of ($a_*)
 
}