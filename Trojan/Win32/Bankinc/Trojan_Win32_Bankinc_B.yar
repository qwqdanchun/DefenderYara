
rule Trojan_Win32_Bankinc_B{
	meta:
		description = "Trojan:Win32/Bankinc.B,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {73 00 69 00 6e 00 61 00 53 00 53 00 4f 00 45 00 6e 00 63 00 6f 00 64 00 65 00 72 00 2e 00 68 00 65 00 78 00 5f 00 73 00 68 00 61 00 31 00 } //01 00  sinaSSOEncoder.hex_sha1
		$a_00_1 = {2e 00 62 00 61 00 74 00 26 00 65 00 63 00 68 00 6f 00 20 00 64 00 65 00 6c 00 20 00 63 00 3a 00 5c 00 } //01 00  .bat&echo del c:\
		$a_02_2 = {3a 00 38 00 38 00 2f 00 73 00 6f 00 66 00 74 00 2f 00 78 00 69 00 61 00 6f 00 6d 00 69 00 2f 00 70 00 6f 00 73 00 74 00 90 02 10 2e 00 61 00 73 00 70 00 3f 00 69 00 64 00 3d 00 00 90 00 } //01 00 
		$a_00_3 = {00 41 6e 74 69 56 43 2e 64 6c 6c 00 } //01 00  䄀瑮噩⹃汤l
		$a_00_4 = {00 68 6f 75 7a 75 69 00 } //00 00  栀畯畺i
	condition:
		any of ($a_*)
 
}