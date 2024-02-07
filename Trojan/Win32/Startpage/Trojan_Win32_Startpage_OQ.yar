
rule Trojan_Win32_Startpage_OQ{
	meta:
		description = "Trojan:Win32/Startpage.OQ,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 00 57 00 65 00 62 00 4e 00 61 00 76 00 2e 00 76 00 62 00 70 00 } //01 00  \WebNav.vbp
		$a_01_1 = {48 00 4b 00 45 00 59 00 5f 00 43 00 55 00 52 00 52 00 45 00 4e 00 54 00 5f 00 55 00 53 00 45 00 52 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 4d 00 61 00 69 00 6e 00 5c 00 53 00 74 00 61 00 72 00 74 00 20 00 50 00 61 00 67 00 65 00 } //01 00  HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page
		$a_01_2 = {77 00 73 00 63 00 72 00 69 00 70 00 74 00 2e 00 73 00 68 00 65 00 6c 00 6c 00 } //01 00  wscript.shell
		$a_01_3 = {63 00 3a 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 69 00 6d 00 65 00 5c 00 64 00 2e 00 76 00 62 00 73 00 } //00 00  c:\windows\ime\d.vbs
	condition:
		any of ($a_*)
 
}