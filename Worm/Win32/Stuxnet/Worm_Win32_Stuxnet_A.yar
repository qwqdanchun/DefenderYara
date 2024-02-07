
rule Worm_Win32_Stuxnet_A{
	meta:
		description = "Worm:Win32/Stuxnet.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 04 00 09 00 00 03 00 "
		
	strings :
		$a_01_0 = {6a 04 8d 4d 10 51 83 c0 08 50 ff 75 08 ff d6 85 c0 75 04 33 c0 eb 21 8b 47 50 85 c0 74 17 8d 4d 0c 51 6a 04 8d 4d 10 51 83 c0 10 50 ff 75 08 ff d6 } //03 00 
		$a_01_1 = {76 15 8b c8 83 e1 0f 83 c1 42 66 89 4c 75 c0 c1 e8 04 46 85 c0 77 eb 33 c0 66 89 44 75 c0 33 f6 8d 45 c0 50 6a 00 6a 00 } //03 00 
		$a_03_2 = {bb 4d 5a 00 00 8b c3 66 39 07 74 90 01 01 8b 75 08 33 d2 8b cf 85 f6 76 0f 8a 01 34 4e 2a c2 88 01 41 4e 0f b6 d0 75 90 00 } //03 00 
		$a_03_3 = {6a 40 8d 45 b8 50 53 ff d6 85 c0 74 90 01 01 83 7d fc 40 75 50 b8 4d 5a 00 00 66 39 45 b8 75 90 00 } //01 00 
		$a_01_4 = {53 48 45 4c 4c 33 32 2e 44 4c 4c 2e 41 53 4c 52 2e } //01 00  SHELL32.DLL.ASLR.
		$a_01_5 = {6e 63 61 63 6e 5f 69 70 5f 74 63 70 3a 25 73 } //01 00  ncacn_ip_tcp:%s
		$a_01_6 = {43 6f 6e 74 65 78 74 3d 22 25 73 22 3e 3c 45 78 65 63 3e 3c 43 6f 6d 6d 61 6e 64 3e } //01 00  Context="%s"><Exec><Command>
		$a_01_7 = {25 53 79 73 74 65 6d 52 6f 6f 74 25 5c 69 6e 66 5c 2a 2e 70 6e 66 } //9c ff  %SystemRoot%\inf\*.pnf
		$a_03_8 = {8b 44 24 0c 03 c6 30 08 c1 c9 90 01 01 8b c1 0f af c1 33 d2 bf 90 01 04 f7 f7 8b d1 69 d2 90 01 04 8d 44 10 01 33 c8 46 3b 74 24 10 72 d2 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}