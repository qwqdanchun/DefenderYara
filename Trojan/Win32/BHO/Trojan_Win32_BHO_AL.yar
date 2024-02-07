
rule Trojan_Win32_BHO_AL{
	meta:
		description = "Trojan:Win32/BHO.AL,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {63 00 6f 00 6e 00 66 00 69 00 67 00 5f 00 63 00 6f 00 6f 00 6b 00 69 00 65 00 73 00 5f 00 30 00 5f 00 } //01 00  config_cookies_0_
		$a_00_1 = {63 00 6f 00 6e 00 66 00 69 00 67 00 5f 00 6b 00 65 00 79 00 77 00 6f 00 72 00 64 00 5f 00 } //01 00  config_keyword_
		$a_00_2 = {48 74 74 70 53 65 6e 64 52 65 71 75 65 73 74 57 } //01 00  HttpSendRequestW
		$a_00_3 = {49 6e 74 65 72 6e 65 74 43 6f 6e 6e 65 63 74 57 } //01 00  InternetConnectW
		$a_02_4 = {2e 00 63 00 6f 00 6d 00 2f 00 63 00 2f 00 76 00 90 02 04 2e 00 6a 00 70 00 67 00 90 00 } //01 00 
		$a_00_5 = {2e 44 4c 4c 00 44 6c 6c 43 61 6e 55 6e 6c 6f 61 64 4e 6f 77 } //00 00  䐮䱌䐀汬慃啮汮慯乤睯
	condition:
		any of ($a_*)
 
}