
rule Worm_Win32_Foler_C{
	meta:
		description = "Worm:Win32/Foler.C,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {00 65 78 65 00 5c 4d 79 48 6f 6f 64 5c } //01 00 
		$a_01_1 = {00 63 63 6e 66 67 00 00 00 2e 6c 00 00 6e 00 00 00 6b 00 } //01 00 
		$a_01_2 = {28 22 41 53 53 4f 43 49 41 54 4f 52 53 20 4f 46 20 7b 57 69 6e 33 32 5f 44 69 73 6b 50 61 72 74 69 74 69 6f 6e 2e 44 65 76 69 63 65 49 44 3d 27 22 } //01 00  ("ASSOCIATORS OF {Win32_DiskPartition.DeviceID='"
		$a_01_3 = {00 65 6e 63 72 79 70 74 65 64 00 00 00 49 44 5f 4d 4f 4e 00 00 5c 6e 74 74 75 73 65 72 2e 74 78 74 00 } //01 00 
		$a_02_4 = {5c 44 65 73 6b 74 6f 70 5c 55 73 62 50 90 02 20 2e 70 64 62 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}