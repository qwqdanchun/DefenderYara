
rule Trojan_BAT_ExelaStealer_CCBC_MTB{
	meta:
		description = "Trojan:BAT/ExelaStealer.CCBC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 0e 00 00 01 00 "
		
	strings :
		$a_01_0 = {45 78 65 6c 61 } //01 00  Exela
		$a_01_1 = {47 65 74 57 69 66 69 50 61 73 73 77 6f 72 64 73 } //01 00  GetWifiPasswords
		$a_01_2 = {47 65 74 48 69 73 74 6f 72 79 } //01 00  GetHistory
		$a_01_3 = {4b 69 6c 6c 50 72 6f 63 65 73 73 } //01 00  KillProcess
		$a_01_4 = {47 65 74 43 6f 6f 6b 69 65 73 } //01 00  GetCookies
		$a_01_5 = {41 6e 74 69 56 4d } //01 00  AntiVM
		$a_01_6 = {77 00 69 00 72 00 65 00 73 00 68 00 61 00 72 00 6b 00 } //01 00  wireshark
		$a_01_7 = {72 00 65 00 67 00 65 00 64 00 69 00 74 00 } //01 00  regedit
		$a_01_8 = {76 00 62 00 6f 00 78 00 73 00 65 00 72 00 76 00 69 00 63 00 65 00 } //01 00  vboxservice
		$a_01_9 = {70 00 72 00 6f 00 63 00 65 00 73 00 73 00 68 00 61 00 63 00 6b 00 65 00 72 00 } //01 00  processhacker
		$a_01_10 = {69 00 64 00 61 00 36 00 34 00 } //01 00  ida64
		$a_01_11 = {6f 00 6c 00 6c 00 79 00 64 00 62 00 67 00 } //01 00  ollydbg
		$a_01_12 = {73 00 61 00 6e 00 64 00 62 00 6f 00 78 00 } //01 00  sandbox
		$a_01_13 = {63 00 75 00 63 00 6b 00 6f 00 6f 00 } //00 00  cuckoo
	condition:
		any of ($a_*)
 
}