
rule Trojan_Win32_Startpage_NZ{
	meta:
		description = "Trojan:Win32/Startpage.NZ,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 4d 00 61 00 69 00 6e 00 5c 00 53 00 74 00 61 00 72 00 74 00 20 00 50 00 61 00 67 00 65 00 00 00 } //1
		$a_01_1 = {75 00 73 00 65 00 72 00 5f 00 70 00 72 00 65 00 66 00 28 00 22 00 62 00 72 00 6f 00 77 00 73 00 65 00 72 00 2e 00 73 00 74 00 61 00 72 00 74 00 75 00 70 00 2e 00 68 00 6f 00 6d 00 65 00 70 00 61 00 67 00 65 00 22 00 2c 00 20 00 22 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 63 00 68 00 65 00 72 00 63 00 68 00 65 00 2e 00 75 00 73 00 2f 00 } //1 user_pref("browser.startup.homepage", "http://www.cherche.us/
		$a_01_2 = {68 00 6f 00 6d 00 65 00 70 00 61 00 67 00 65 00 22 00 3a 00 20 00 22 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 63 00 68 00 65 00 72 00 63 00 68 00 65 00 2e 00 75 00 73 00 2f 00 } //1 homepage": "http://www.cherche.us/
		$a_01_3 = {75 00 72 00 6c 00 73 00 5f 00 74 00 6f 00 5f 00 72 00 65 00 73 00 74 00 6f 00 72 00 65 00 5f 00 6f 00 6e 00 5f 00 73 00 74 00 61 00 72 00 74 00 75 00 70 00 22 00 3a 00 20 00 5b 00 20 00 22 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 63 00 68 00 65 00 72 00 63 00 68 00 65 00 2e 00 75 00 73 00 2f 00 22 00 20 00 5d 00 00 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}