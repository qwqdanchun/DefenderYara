
rule Trojan_Win32_Hawkeye_A_{
	meta:
		description = "Trojan:Win32/Hawkeye.A!!Hawkeye.A.gen!MTB,SIGNATURE_TYPE_ARHSTR_EXT,09 00 09 00 0a 00 00 01 00 "
		
	strings :
		$a_81_0 = {48 61 77 6b 45 79 65 5f 4b 65 79 6c 6f 67 67 65 72 5f 4b 65 79 6c 6f 67 5f 52 65 63 6f 72 64 73 5f } //01 00  HawkEye_Keylogger_Keylog_Records_
		$a_81_1 = {73 63 72 65 65 6e 73 5c 73 63 72 65 65 6e 73 68 6f 74 } //01 00  screens\screenshot
		$a_81_2 = {53 45 4c 45 43 54 20 2a 20 46 52 4f 4d 20 41 6e 74 69 76 69 72 75 73 50 72 6f 64 75 63 74 } //01 00  SELECT * FROM AntivirusProduct
		$a_81_3 = {57 65 62 42 72 6f 77 73 65 72 50 61 73 73 56 69 65 77 } //01 00  WebBrowserPassView
		$a_81_4 = {5c 70 69 64 6c 6f 63 2e 74 78 74 } //01 00  \pidloc.txt
		$a_81_5 = {5c 70 69 64 2e 74 78 74 } //01 00  \pid.txt
		$a_81_6 = {68 6f 6c 64 65 72 6d 61 69 6c 2e 74 78 74 } //01 00  holdermail.txt
		$a_81_7 = {77 61 6c 6c 65 74 2e 64 61 74 } //01 00  wallet.dat
		$a_81_8 = {4b 65 79 6c 6f 67 20 52 65 63 6f 72 64 73 } //01 00  Keylog Records
		$a_81_9 = {48 61 77 6b 45 79 65 4b 65 79 6c 6f 67 67 65 72 } //00 00  HawkEyeKeylogger
	condition:
		any of ($a_*)
 
}