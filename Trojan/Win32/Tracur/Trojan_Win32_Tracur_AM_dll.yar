
rule Trojan_Win32_Tracur_AM_dll{
	meta:
		description = "Trojan:Win32/Tracur.AM!dll,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_00_0 = {49 00 45 00 20 00 4d 00 41 00 4e 00 41 00 47 00 45 00 52 00 } //1 IE MANAGER
		$a_00_1 = {43 00 4c 00 53 00 49 00 44 00 5c 00 7b 00 44 00 45 00 32 00 37 00 34 00 43 00 32 00 43 00 2d 00 32 00 31 00 33 00 33 00 2d 00 34 00 42 00 34 00 42 00 2d 00 39 00 33 00 42 00 33 00 2d 00 38 00 46 00 32 00 31 00 34 00 38 00 36 00 44 00 41 00 42 00 43 00 30 00 7d 00 5c 00 49 00 6e 00 50 00 72 00 6f 00 63 00 53 00 65 00 72 00 76 00 65 00 72 00 33 00 32 00 } //1 CLSID\{DE274C2C-2133-4B4B-93B3-8F21486DABC0}\InProcServer32
		$a_01_2 = {26 75 73 65 72 5f 69 64 3d 00 00 00 3f 74 79 70 65 3d 66 6c 61 73 68 5f 6e 26 64 69 72 5f 6e 61 6d 65 3d } //1
		$a_01_3 = {26 70 61 73 73 77 6f 72 64 3d 00 00 26 61 63 63 6f 75 6e 74 3d 00 00 00 26 6b 65 79 5f 6e 61 6d 65 3d 00 00 26 4f 53 3d } //1
		$a_01_4 = {21 54 69 62 69 61 20 4b 65 79 6c 6f 67 67 65 72 5c 72 65 63 6b 65 79 5f 52 45 53 5c 49 45 5c 42 48 4f } //1 !Tibia Keylogger\reckey_RES\IE\BHO
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}