
rule Trojan_Win32_Rusparail_A{
	meta:
		description = "Trojan:Win32/Rusparail.A,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {26 51 51 50 61 73 73 57 6f 72 64 3d 00 3f 51 51 4e 75 6d 62 65 72 } //01 00  儦偑獡坳牯㵤㼀兑畎扭牥
		$a_01_1 = {26 70 61 73 73 3d 00 3f 69 64 3d } //03 00 
		$a_01_2 = {42 6f 67 75 73 20 6d 65 73 73 61 67 65 20 63 6f 64 65 20 25 64 00 } //03 00 
		$a_01_3 = {33 36 30 30 67 7a 2e 63 6e 2e 63 6e 00 } //03 00 
		$a_01_4 = {49 45 58 50 4c 4f 50 45 2e 45 58 45 00 } //00 00 
	condition:
		any of ($a_*)
 
}