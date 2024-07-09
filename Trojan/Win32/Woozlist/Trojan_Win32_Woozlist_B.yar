
rule Trojan_Win32_Woozlist_B{
	meta:
		description = "Trojan:Win32/Woozlist.B,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_03_0 = {6b 72 6e 6c 6e [0-05] 64 30 39 66 32 33 34 30 38 31 38 35 31 31 64 33 39 36 66 36 61 61 66 38 34 34 63 37 65 33 32 35 } //1
		$a_03_1 = {2e 69 6e 69 [0-20] 34 45 44 36 31 39 42 39 46 43 44 41 35 34 38 38 43 31 42 34 39 46 36 39 43 44 39 30 34 39 43 31 38 43 31 30 38 43 42 41 45 31 } //1
		$a_03_2 = {2e 6a 70 67 [0-20] 5c 50 72 6f 67 72 61 6d 5c 6a 69 72 75 2e 74 78 74 } //1
		$a_01_3 = {5c 00 44 00 6f 00 73 00 44 00 65 00 76 00 69 00 63 00 65 00 73 00 5c 00 4c 00 54 00 69 00 61 00 6e 00 } //1 \DosDevices\LTian
		$a_00_4 = {46 37 46 43 31 41 45 34 35 43 35 43 34 37 35 38 41 46 30 33 45 46 31 39 46 31 38 41 33 39 35 44 } //1 F7FC1AE45C5C4758AF03EF19F18A395D
		$a_00_5 = {41 46 36 41 44 38 30 41 41 34 32 34 34 41 35 39 41 46 42 33 44 38 33 45 43 46 35 31 37 33 43 43 } //1 AF6AD80AA4244A59AFB3D83ECF5173CC
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=6
 
}