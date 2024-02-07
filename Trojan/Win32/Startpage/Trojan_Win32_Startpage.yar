
rule Trojan_Win32_Startpage{
	meta:
		description = "Trojan:Win32/Startpage,SIGNATURE_TYPE_PEHSTR,2f 00 2d 00 09 00 00 0a 00 "
		
	strings :
		$a_01_0 = {4d 61 69 6c 48 6f 6f 6b 2e 4d 61 69 6c 54 6f 2e 31 } //0a 00  MailHook.MailTo.1
		$a_01_1 = {48 6f 6d 65 20 49 6d 70 72 6f 76 65 6d 65 6e 74 00 00 00 00 48 6f 6d 65 20 49 6e 73 75 72 61 6e 63 65 } //0a 00 
		$a_01_2 = {45 64 75 63 61 74 69 6f 6e 00 00 57 6f 6d 65 6e 00 00 00 57 69 6e 65 } //0a 00 
		$a_01_3 = {73 65 61 72 63 68 66 6f 72 67 65 2e 63 6f 6d } //05 00  searchforge.com
		$a_01_4 = {25 53 59 53 54 45 4d 52 4f 4f 54 25 5c 53 79 73 74 65 6d 33 32 5c 64 72 69 76 65 72 73 5c 65 74 63 5c 68 6f 73 74 73 } //01 00  %SYSTEMROOT%\System32\drivers\etc\hosts
		$a_01_5 = {77 77 77 2e 30 30 38 6b 2e 63 6f 6d } //01 00  www.008k.com
		$a_01_6 = {6c 69 76 65 73 65 78 6c 69 73 74 2e 63 6f 6d } //01 00  livesexlist.com
		$a_01_7 = {68 74 74 27 2b 27 70 3a 2f 2f 61 64 75 27 2b 27 6c 74 2e 73 65 61 27 2b 27 72 63 68 66 6f 27 } //01 00  htt'+'p://adu'+'lt.sea'+'rchfo'
		$a_01_8 = {68 74 74 70 3a 2f 2f 61 75 74 6f 2e 69 65 2e 73 65 61 72 63 68 66 6f 72 67 65 2e 63 6f 6d 2f } //00 00  http://auto.ie.searchforge.com/
	condition:
		any of ($a_*)
 
}