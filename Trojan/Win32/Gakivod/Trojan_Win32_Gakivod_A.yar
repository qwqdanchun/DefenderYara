
rule Trojan_Win32_Gakivod_A{
	meta:
		description = "Trojan:Win32/Gakivod.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 07 00 00 02 00 "
		
	strings :
		$a_01_0 = {7c ed 8b c6 2b c1 2b c2 2b 45 fc 53 83 e8 3d 99 2b c2 8b f8 d1 ff 33 db 8b f3 69 f6 18 02 00 00 } //02 00 
		$a_01_1 = {8b 4d 10 8b 01 3b c2 76 05 83 f8 2f 76 0c 83 f8 60 72 16 } //02 00 
		$a_01_2 = {48 74 3a 83 e8 0e 74 2b 2d 02 01 00 00 75 37 8b 45 10 c1 e8 10 74 15 3d 00 03 00 00 } //01 00 
		$a_00_3 = {25 00 73 00 25 00 73 00 25 00 64 00 2e 00 6a 00 70 00 67 00 } //01 00  %s%s%d.jpg
		$a_00_4 = {67 00 64 00 69 00 6c 00 6f 00 67 00 2e 00 6c 00 6f 00 67 00 } //01 00  gdilog.log
		$a_00_5 = {32 00 43 00 35 00 30 00 38 00 42 00 44 00 35 00 2d 00 46 00 39 00 43 00 36 00 2d 00 34 00 39 00 35 00 35 00 2d 00 42 00 39 00 33 00 41 00 2d 00 30 00 39 00 42 00 38 00 33 00 35 00 45 00 43 00 33 00 43 00 36 00 34 00 } //01 00  2C508BD5-F9C6-4955-B93A-09B835EC3C64
		$a_00_6 = {30 00 31 00 30 00 35 00 41 00 34 00 33 00 38 00 2d 00 42 00 39 00 43 00 43 00 2d 00 34 00 61 00 32 00 39 00 2d 00 38 00 39 00 42 00 31 00 2d 00 44 00 41 00 31 00 39 00 34 00 44 00 46 00 41 00 34 00 42 00 34 00 30 00 } //00 00  0105A438-B9CC-4a29-89B1-DA194DFA4B40
	condition:
		any of ($a_*)
 
}