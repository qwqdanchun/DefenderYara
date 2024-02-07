
rule TrojanDropper_Win32_Machime_B{
	meta:
		description = "TrojanDropper:Win32/Machime.B,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {45 00 72 00 72 00 6f 00 72 00 2d 00 47 00 65 00 74 00 41 00 64 00 61 00 70 00 74 00 65 00 72 00 49 00 6e 00 66 00 6f 00 4c 00 69 00 73 00 74 00 00 00 } //01 00 
		$a_01_1 = {25 00 73 00 2e 00 75 00 6e 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 25 00 64 00 2e 00 74 00 6d 00 70 00 00 00 } //01 00 
		$a_03_2 = {73 00 70 00 6f 00 72 00 74 00 2e 00 90 02 0c 2e 00 6b 00 72 00 90 00 } //01 00 
		$a_01_3 = {45 54 61 67 3a 20 22 63 30 63 30 37 31 39 32 62 63 63 31 63 38 31 3a 64 39 66 22 } //01 00  ETag: "c0c07192bcc1c81:d9f"
		$a_02_4 = {81 f9 00 04 00 00 73 0b df 6c 24 04 b8 90 01 04 eb 90 01 03 7f 3a 7c 08 81 f9 00 00 10 00 73 11 df 6c 24 04 90 00 } //01 00 
		$a_00_5 = {3c 00 25 00 31 00 30 00 5b 00 5e 00 7c 00 5d 00 7c 00 25 00 32 00 35 00 30 00 5b 00 5e 00 3a 00 5d 00 3a 00 25 00 75 00 7c 00 25 00 31 00 30 00 30 00 5b 00 5e 00 7c 00 5d 00 7c 00 25 00 31 00 30 00 5b 00 5e 00 3e 00 5d 00 } //00 00  <%10[^|]|%250[^:]:%u|%100[^|]|%10[^>]
	condition:
		any of ($a_*)
 
}