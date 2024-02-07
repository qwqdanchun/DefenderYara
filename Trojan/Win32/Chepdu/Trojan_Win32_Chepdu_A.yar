
rule Trojan_Win32_Chepdu_A{
	meta:
		description = "Trojan:Win32/Chepdu.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {25 73 73 69 64 3d 25 73 26 75 72 6c 3d 25 73 26 69 64 3d 25 73 26 69 64 66 65 65 64 3d 25 69 26 65 66 6b 77 64 3d 25 73 } //01 00  %ssid=%s&url=%s&id=%s&idfeed=%i&efkwd=%s
		$a_01_1 = {73 69 64 3d 25 73 26 75 72 6c 3d 25 73 26 69 64 3d 25 73 26 6b 65 79 3d 25 73 26 69 64 66 65 65 64 3d 25 69 } //01 00  sid=%s&url=%s&id=%s&key=%s&idfeed=%i
		$a_00_2 = {52 00 65 00 66 00 65 00 72 00 65 00 72 00 3a 00 20 00 25 00 68 00 73 00 0a 00 00 00 } //01 00 
		$a_01_3 = {64 70 65 63 68 75 00 } //01 00 
		$a_01_4 = {44 50 45 2e 44 4c 4c 00 44 6c 6c 43 61 6e 55 6e 6c 6f 61 64 4e 6f 77 } //00 00 
	condition:
		any of ($a_*)
 
}