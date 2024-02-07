
rule Trojan_Win32_WebHijack_A_sys{
	meta:
		description = "Trojan:Win32/WebHijack.A!sys,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 03 00 "
		
	strings :
		$a_03_0 = {8b 7f 0c 81 ff 80 0c 00 80 74 90 01 01 81 ff ac 0c 00 80 74 90 00 } //01 00 
		$a_00_1 = {57 65 62 48 69 6a 61 63 6b } //01 00  WebHijack
		$a_00_2 = {5c 00 77 00 65 00 62 00 73 00 61 00 66 00 65 00 } //01 00  \websafe
		$a_00_3 = {5c 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 5c 00 57 00 65 00 62 00 68 00 6a 00 } //01 00  \Control\Webhj
		$a_00_4 = {53 00 65 00 61 00 72 00 63 00 68 00 } //01 00  Search
		$a_00_5 = {5c 00 44 00 65 00 76 00 69 00 63 00 65 00 5c 00 54 00 63 00 70 00 } //00 00  \Device\Tcp
	condition:
		any of ($a_*)
 
}