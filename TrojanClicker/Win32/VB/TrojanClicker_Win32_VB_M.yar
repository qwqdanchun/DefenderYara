
rule TrojanClicker_Win32_VB_M{
	meta:
		description = "TrojanClicker:Win32/VB.M,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {70 00 6b 00 2e 00 78 00 69 00 61 00 6f 00 70 00 6f 00 68 00 61 00 69 00 2e 00 63 00 6f 00 6d 00 } //01 00  pk.xiaopohai.com
		$a_01_1 = {55 00 73 00 65 00 72 00 2d 00 41 00 67 00 65 00 6e 00 74 00 3a 00 20 00 43 00 6c 00 69 00 63 00 6b 00 41 00 64 00 73 00 42 00 79 00 49 00 45 00 20 00 } //01 00  User-Agent: ClickAdsByIE 
		$a_01_2 = {41 00 63 00 63 00 65 00 70 00 74 00 3a 00 20 00 74 00 65 00 78 00 74 00 2f 00 78 00 6d 00 6c 00 2c 00 61 00 70 00 70 00 6c 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 2f 00 78 00 6d 00 6c 00 2c 00 } //01 00  Accept: text/xml,application/xml,
		$a_01_3 = {3a 00 2a 00 3a 00 45 00 6e 00 61 00 62 00 6c 00 65 00 64 00 3a 00 53 00 56 00 43 00 48 00 4f 00 53 00 54 00 2e 00 45 00 58 00 45 00 } //00 00  :*:Enabled:SVCHOST.EXE
	condition:
		any of ($a_*)
 
}