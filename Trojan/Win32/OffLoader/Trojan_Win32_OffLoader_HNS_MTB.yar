
rule Trojan_Win32_OffLoader_HNS_MTB{
	meta:
		description = "Trojan:Win32/OffLoader.HNS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 04 00 00 01 00 "
		
	strings :
		$a_80_0 = {49 6e 6e 6f 44 6f 77 6e 6c 6f 61 64 50 6c 75 67 69 6e 2f 31 2e 35 } //InnoDownloadPlugin/1.5  01 00 
		$a_80_1 = {2e 70 68 70 3f 73 70 6f 74 3d 31 26 61 3d } //.php?spot=1&a=  01 00 
		$a_80_2 = {2d 2d 73 69 6c 65 6e 74 20 2d 2d 61 6c 6c 75 73 65 72 73 3d 30 } //--silent --allusers=0  05 00 
		$a_80_3 = {2e 70 68 70 3f 66 7a 3d 26 64 3d 6e 73 69 73 26 6d 73 67 3d 26 72 3d 6f 66 66 65 72 5f 65 78 65 63 75 74 69 6f 6e 26 72 6b 3d 79 65 73 26 6f 3d } //.php?fz=&d=nsis&msg=&r=offer_execution&rk=yes&o=  00 00 
		$a_00_4 = {78 41 01 00 0e } //00 0e 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_OffLoader_HNS_MTB_2{
	meta:
		description = "Trojan:Win32/OffLoader.HNS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 08 00 00 01 00 "
		
	strings :
		$a_80_0 = {2d 2d 73 69 6c 65 6e 74 20 2d 2d 61 6c 6c 75 73 65 72 73 3d 30 } //--silent --allusers=0  01 00 
		$a_80_1 = {2e 70 68 70 3f 66 7a 3d } //.php?fz=  01 00 
		$a_80_2 = {2e 70 68 70 3f 73 70 6f 74 3d } //.php?spot=  0a 00 
		$a_03_3 = {64 00 3d 00 69 00 6e 00 6e 00 6f 00 26 00 72 00 3d 00 6f 00 66 00 66 00 65 00 72 00 5f 00 65 00 78 00 65 00 63 00 75 00 74 00 69 00 6f 00 6e 00 26 00 90 01 04 3d 00 79 00 65 00 73 00 26 00 6f 00 3d 00 90 00 } //0a 00 
		$a_03_4 = {64 3d 69 6e 6e 6f 26 72 3d 6f 66 66 65 72 5f 65 78 65 63 75 74 69 6f 6e 26 90 01 04 3d 79 65 73 26 6f 3d 90 00 } //02 00 
		$a_03_5 = {2e 00 6f 00 6e 00 6c 00 69 00 6e 00 65 00 2f 00 74 00 72 00 61 00 63 00 6b 00 5f 00 90 02 10 2e 00 70 00 68 00 70 00 3f 00 74 00 69 00 6d 00 3d 00 90 00 } //02 00 
		$a_03_6 = {2e 6f 6e 6c 69 6e 65 2f 74 72 61 63 6b 5f 90 02 10 2e 70 68 70 3f 74 69 6d 3d 90 00 } //02 00 
		$a_01_7 = {73 00 74 00 61 00 74 00 65 00 73 00 2e 00 6c 00 6f 00 67 00 0b 12 00 00 00 00 00 15 00 00 60 01 14 00 00 00 66 00 00 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f } //00 00 
	condition:
		any of ($a_*)
 
}