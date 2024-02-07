
rule Trojan_Win32_Dafterdod_E{
	meta:
		description = "Trojan:Win32/Dafterdod.E,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 06 00 00 02 00 "
		
	strings :
		$a_00_0 = {51 c7 44 24 0c 10 00 00 00 } //02 00 
		$a_00_1 = {38 5c 08 01 75 0d 80 7c 08 02 0d } //01 00 
		$a_00_2 = {48 45 4c 4c 4f } //01 00  HELLO
		$a_00_3 = {62 61 64 70 61 73 73 } //02 00  badpass
		$a_01_4 = {2f 73 74 61 74 3f 75 70 74 69 6d 65 3d 25 64 26 64 6f 77 6e 6c 69 6e 6b 3d 25 64 26 75 70 6c 69 6e 6b 3d 25 64 26 69 64 3d 25 73 26 73 74 61 74 70 61 73 73 3d 25 73 } //02 00  /stat?uptime=%d&downlink=%d&uplink=%d&id=%s&statpass=%s
		$a_01_5 = {26 67 75 69 64 3d 25 73 26 63 6f 6d 6d 65 6e 74 3d 25 73 26 70 3d 25 64 26 73 3d 25 73 } //00 00  &guid=%s&comment=%s&p=%d&s=%s
		$a_00_6 = {80 10 00 00 88 5e } //ea 0e 
	condition:
		any of ($a_*)
 
}