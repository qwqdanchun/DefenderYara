
rule Trojan_Win32_Yalogger_A{
	meta:
		description = "Trojan:Win32/Yalogger.A,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 04 00 05 00 00 04 00 "
		
	strings :
		$a_01_0 = {48 4f 57 21 21 20 56 32 2e 30 30 3d 3d 3e 20 55 53 45 52 3d 25 73 20 50 41 53 53 3d 25 73 20 5b 20 49 50 3d 25 73 20 43 6f 6d 70 75 74 65 72 4e 61 6d 65 3d 25 73 20 55 73 65 72 4e 61 6d 65 3d 25 73 20 41 74 74 61 63 6b 65 64 3d 25 64 2f 25 64 2f 25 64 20 5d } //01 00  HOW!! V2.00==> USER=%s PASS=%s [ IP=%s ComputerName=%s UserName=%s Attacked=%d/%d/%d ]
		$a_01_1 = {79 6d 73 67 72 3a 53 65 6e 64 49 4d 3f } //01 00  ymsgr:SendIM?
		$a_01_2 = {6b 6b 6b 65 65 65 79 79 79 6c 6c 6c 6f 6f 6f 67 67 67 2e 62 69 6e } //04 00  kkkeeeyyyllloooggg.bin
		$a_01_3 = {5f 5f 43 34 41 33 38 45 46 34 5f 32 32 33 34 5f 34 30 33 35 5f 42 31 44 34 5f 38 42 41 30 44 34 31 38 32 31 37 38 5f 5f } //01 00  __C4A38EF4_2234_4035_B1D4_8BA0D4182178__
		$a_01_4 = {66 6c 61 73 68 00 00 00 42 49 4e 00 77 69 6e 6c 67 6f 6e 00 53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //00 00 
	condition:
		any of ($a_*)
 
}