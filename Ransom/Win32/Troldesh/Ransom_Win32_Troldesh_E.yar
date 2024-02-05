
rule Ransom_Win32_Troldesh_E{
	meta:
		description = "Ransom:Win32/Troldesh.E,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 1e 00 00 01 00 "
		
	strings :
		$a_80_0 = {00 72 65 67 2e 70 68 70 00 } //  01 00 
		$a_80_1 = {00 70 72 6f 67 2e 70 68 70 00 } //  01 00 
		$a_80_2 = {00 65 72 72 2e 70 68 70 00 } //  01 00 
		$a_80_3 = {00 63 6d 64 2e 70 68 70 00 } //  01 00 
		$a_80_4 = {00 73 79 73 2e 70 68 70 00 } //  01 00 
		$a_80_5 = {00 73 68 64 2e 70 68 70 00 } //  01 00 
		$a_80_6 = {00 73 68 62 3d 00 } //  01 00 
		$a_80_7 = {00 25 30 32 68 68 58 00 } //  01 00 
		$a_80_8 = {2e 6e 6f 5f 6d 6f 72 65 5f 72 61 6e 73 6f 6d } //.no_more_ransom  01 00 
		$a_80_9 = {2e 74 79 73 6f 6e } //.tyson  03 00 
		$a_80_10 = {64 65 73 6b 74 6f 70 2e 69 6e 69 7c 62 6f 6f 74 2e 69 6e 69 7c 42 6f 6f 74 66 6f 6e 74 2e 62 69 6e 7c 6e 74 75 73 65 72 2e 69 6e 69 7c 4e 54 55 53 45 52 2e 44 41 54 7c 49 63 6f 6e 43 61 63 68 65 2e 64 62 } //desktop.ini|boot.ini|Bootfont.bin|ntuser.ini|NTUSER.DAT|IconCache.db  02 00 
		$a_80_11 = {61 34 61 64 34 69 70 32 78 7a 63 6c 68 36 66 64 2e 6f 6e 69 6f 6e } //a4ad4ip2xzclh6fd.onion  02 00 
		$a_80_12 = {61 72 65 75 6b 6f 6e 70 63 79 6d 78 41 42 45 33 4b 4d 48 4f 50 43 54 59 58 } //areukonpcymxABE3KMHOPCTYX  01 00 
		$a_80_13 = {44 65 6c 65 74 65 20 53 68 61 64 6f 77 73 20 2f 41 6c 6c 20 2f 51 75 69 65 74 } //Delete Shadows /All /Quiet  01 00 
		$a_80_14 = {4c 69 73 74 20 53 68 61 64 6f 77 73 } //List Shadows  01 00 
		$a_80_15 = {53 45 4c 45 43 54 20 2a 20 46 52 4f 4d 20 57 69 6e 33 32 5f 4f 70 65 72 61 74 69 6e 67 53 79 73 74 65 6d } //SELECT * FROM Win32_OperatingSystem  01 00 
		$a_80_16 = {53 4f 46 54 57 41 52 45 5c 53 79 73 74 65 6d 33 32 5c 43 6f 6e 66 69 67 75 72 61 74 69 6f 6e 5c } //SOFTWARE\System32\Configuration\  01 00 
		$a_80_17 = {63 73 72 73 73 2e 6c 6e 6b } //csrss.lnk  01 00 
		$a_80_18 = {43 6c 69 65 6e 74 20 53 65 72 76 65 72 20 52 75 6e 74 69 6d 65 20 53 75 62 73 79 73 74 65 6d } //Client Server Runtime Subsystem  01 00 
		$a_80_19 = {57 61 74 63 68 65 72 3a } //Watcher:  01 00 
		$a_80_20 = {57 61 6c 6b 65 72 3a } //Walker:  01 00 
		$a_80_21 = {2d 2d 69 67 6e 6f 72 65 2d 6d 69 73 73 69 6e 67 2d 74 6f 72 72 63 } //--ignore-missing-torrc  01 00 
		$a_80_22 = {2d 2d 53 4f 43 4b 53 50 6f 72 74 } //--SOCKSPort  01 00 
		$a_80_23 = {2d 2d 44 61 74 61 44 69 72 65 63 74 6f 72 79 } //--DataDirectory  01 00 
		$a_80_24 = {2d 2d 62 72 69 64 67 65 } //--bridge  01 00 
		$a_80_25 = {63 61 6e 20 6e 6f 74 20 63 72 65 61 74 65 20 64 69 72 } //can not create dir  01 00 
		$a_80_26 = {63 61 6e 20 6e 6f 74 20 63 6f 70 79 20 66 69 6c 65 } //can not copy file  01 00 
		$a_80_27 = {63 61 6e 20 6e 6f 74 20 61 64 64 20 74 6f 20 61 75 74 6f 72 75 6e } //can not add to autorun  01 00 
		$a_80_28 = {63 61 6e 20 6e 6f 74 20 73 61 76 65 20 76 61 6c 75 65 20 28 6d 61 72 6b 29 } //can not save value (mark)  03 00 
		$a_03_29 = {c6 45 fc 04 8b 06 51 8b ce ff 50 04 57 50 8d 45 90 01 01 50 c6 45 fc 05 90 00 } //00 00 
		$a_00_30 = {87 10 00 00 0c 42 } //7a ea 
	condition:
		any of ($a_*)
 
}