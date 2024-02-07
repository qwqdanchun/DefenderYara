
rule Trojan_Win32_Startpage_FE{
	meta:
		description = "Trojan:Win32/Startpage.FE,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {70 6c 61 6b 31 2e 46 6f 72 6d 31 2e 72 65 73 6f 75 72 63 65 73 } //01 00  plak1.Form1.resources
		$a_01_1 = {70 6c 61 6b 31 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //02 00  plak1.Properties.Resources.resources
		$a_01_2 = {43 3a 5c 55 73 65 72 73 5c 63 6e 72 5c 44 65 73 6b 74 6f 70 5c 64 6f 67 75 6b 61 6e 5c 70 6c 61 6b 31 5c 70 6c 61 6b 31 5c 6f 62 6a 5c 44 65 62 75 67 5c 70 6c 61 6b 31 2e 70 64 62 } //01 00  C:\Users\cnr\Desktop\dogukan\plak1\plak1\obj\Debug\plak1.pdb
		$a_01_3 = {57 00 69 00 6e 00 33 00 32 00 5f 00 4e 00 65 00 74 00 77 00 6f 00 72 00 6b 00 41 00 64 00 61 00 70 00 74 00 65 00 72 00 43 00 6f 00 6e 00 66 00 69 00 67 00 75 00 72 00 61 00 74 00 69 00 6f 00 6e 00 } //01 00  Win32_NetworkAdapterConfiguration
		$a_01_4 = {4c 00 42 00 4c 00 4d 00 41 00 43 00 49 00 44 00 } //01 00  LBLMACID
		$a_01_5 = {73 00 74 00 61 00 72 00 74 00 20 00 70 00 61 00 67 00 65 00 } //02 00  start page
		$a_01_6 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 6f 00 76 00 65 00 72 00 69 00 64 00 65 00 61 00 2e 00 63 00 6f 00 6d 00 2f 00 63 00 6c 00 69 00 65 00 6e 00 74 00 2f 00 3f 00 6d 00 61 00 63 00 69 00 64 00 3d 00 } //02 00  http://www.overidea.com/client/?macid=
		$a_01_7 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 70 00 6c 00 61 00 6b 00 31 00 2e 00 63 00 6f 00 6d 00 2f 00 47 00 6f 00 6f 00 67 00 6c 00 65 00 2f 00 } //00 00  http://www.plak1.com/Google/
	condition:
		any of ($a_*)
 
}