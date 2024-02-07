
rule Trojan_Win32_Caphaw_B{
	meta:
		description = "Trojan:Win32/Caphaw.B,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {73 70 61 6d 5f 6d 6f 64 65 } //01 00  spam_mode
		$a_01_1 = {62 6f 74 6e 65 74 } //01 00  botnet
		$a_01_2 = {25 73 3f 25 73 26 76 65 72 73 69 6f 6e 3d 25 69 26 72 3d 25 30 34 58 25 30 34 58 25 30 34 58 26 63 6d 64 3d 70 69 6e 67 26 } //01 00  %s?%s&version=%i&r=%04X%04X%04X&cmd=ping&
		$a_03_3 = {25 73 2f 63 6c 69 65 6e 74 2e 68 74 6d 6c 3f 69 64 3d 25 73 26 6e 65 74 3d 25 73 26 6b 65 79 3d 25 73 26 63 6d 64 3d 63 66 67 90 02 06 2d 63 72 79 70 74 73 70 61 6d 90 02 06 70 69 6e 67 90 02 06 74 61 73 6b 90 00 } //01 00 
		$a_01_4 = {73 70 61 6d 68 61 75 73 2e 6f 72 67 2f 71 75 65 72 79 2f 62 6c 3f 69 70 3d } //00 00  spamhaus.org/query/bl?ip=
		$a_00_5 = {5d 04 } //00 00  ѝ
	condition:
		any of ($a_*)
 
}