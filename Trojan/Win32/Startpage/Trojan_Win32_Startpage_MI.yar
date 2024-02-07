
rule Trojan_Win32_Startpage_MI{
	meta:
		description = "Trojan:Win32/Startpage.MI,SIGNATURE_TYPE_PEHSTR_EXT,1f 00 1f 00 05 00 00 0a 00 "
		
	strings :
		$a_00_0 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 45 78 70 6c 6f 72 65 72 5c 41 64 76 61 6e 63 65 64 00 48 69 64 65 46 69 6c 65 45 78 74 } //0a 00 
		$a_02_1 = {5c 4d 69 63 72 6f 73 6f 66 74 5c 49 6e 74 65 72 6e 61 74 20 45 78 70 6c 6f 72 61 72 5c 90 02 08 2e 6c 6e 6b 90 00 } //0a 00 
		$a_00_2 = {5c 49 6e 74 65 72 6e 61 74 20 45 78 70 6c 6f 72 61 72 22 20 2b 73 00 6f 70 65 6e 20 61 74 74 72 69 62 } //01 00 
		$a_00_3 = {68 74 74 70 3a 2f 2f 62 75 79 2e 68 61 6f 74 65 2e 63 6f 6d 2f 3f } //01 00  http://buy.haote.com/?
		$a_00_4 = {68 74 74 70 3a 2f 2f 77 77 77 2e 67 6f 32 30 30 30 2e 63 6e 2f } //00 00  http://www.go2000.cn/
	condition:
		any of ($a_*)
 
}