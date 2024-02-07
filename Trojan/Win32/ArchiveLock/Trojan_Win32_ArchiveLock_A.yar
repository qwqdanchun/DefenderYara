
rule Trojan_Win32_ArchiveLock_A{
	meta:
		description = "Trojan:Win32/ArchiveLock.A,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {00 72 65 67 20 64 65 6c 65 74 65 20 48 4b 43 55 5c 53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 20 2f 76 61 20 2f 66 00 } //01 00 
		$a_01_1 = {00 52 45 47 20 41 44 44 20 22 48 4b 45 59 5f 4c 4f 43 41 4c 5f 4d 41 43 48 49 4e 45 5c 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 57 69 6e 64 6f 77 73 20 45 72 72 6f 72 20 52 65 70 6f 72 74 69 6e 67 22 20 2f 76 20 22 44 69 73 61 62 6c 65 41 72 63 68 69 76 65 22 20 2f 74 20 52 45 47 5f 44 57 4f 52 44 20 2f 64 20 31 20 2f 66 00 } //01 00 
		$a_01_2 = {5c 73 76 63 66 6e 6d 61 69 6e 73 74 76 65 73 74 76 73 5c 00 } //00 00  獜捶湦慭湩瑳敶瑳獶\
	condition:
		any of ($a_*)
 
}