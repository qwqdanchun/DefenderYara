
rule Trojan_Win32_Startpage_OD{
	meta:
		description = "Trojan:Win32/Startpage.OD,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 08 00 00 01 00 "
		
	strings :
		$a_03_0 = {5c 4d 69 63 72 6f 73 6f 66 74 25 53 5c 90 02 02 49 6e 74 65 72 6e 61 74 20 20 45 78 70 6c 6f 72 65 72 90 00 } //01 00 
		$a_03_1 = {5c 4d 69 63 72 6f 73 6f 66 74 90 02 08 5c 90 02 10 49 6e 74 65 72 6e 65 74 20 20 45 78 70 6c 6f 72 61 72 90 00 } //05 00 
		$a_01_2 = {53 68 65 6c 6c 33 32 3a 3a 53 48 43 68 61 6e 67 65 4e 6f 74 69 66 79 28 69 20 30 78 38 30 30 30 30 30 30 2c 20 69 20 30 2c 20 69 20 30 2c 20 69 20 30 29 } //05 00  Shell32::SHChangeNotify(i 0x8000000, i 0, i 0, i 0)
		$a_01_3 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 55 6e 69 6e 73 74 61 6c 6c 5c 33 36 30 } //01 00  SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\360
		$a_01_4 = {68 74 74 70 3a 2f 2f 62 75 79 2e 68 61 6f 74 65 2e 63 6f 6d 2f 3f } //01 00  http://buy.haote.com/?
		$a_01_5 = {68 74 74 70 3a 2f 2f 77 77 77 2e 70 70 31 32 33 34 2e 6e 65 74 2f } //01 00  http://www.pp1234.net/
		$a_01_6 = {68 74 74 70 3a 2f 2f 77 77 77 2e 6d 79 38 38 39 39 2e 63 6f 6d 2f } //01 00  http://www.my8899.com/
		$a_01_7 = {30 78 31 33 33 65 63 32 30 00 2e } //00 00 
	condition:
		any of ($a_*)
 
}