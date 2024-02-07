
rule Backdoor_Win32_Pamgiwo_A{
	meta:
		description = "Backdoor:Win32/Pamgiwo.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 04 00 07 00 00 02 00 "
		
	strings :
		$a_03_0 = {74 70 53 68 3f 42 0f 00 e8 90 01 04 50 ff 35 90 01 04 68 90 01 04 e8 90 01 04 8b d8 83 c4 10 85 db 74 4a 90 00 } //02 00 
		$a_03_1 = {83 f8 01 74 22 3b c3 74 1e 83 f8 02 75 0a 53 53 57 68 90 01 04 eb 17 83 f8 03 75 1c 90 00 } //01 00 
		$a_01_2 = {64 6f 69 74 2e 70 68 70 } //01 00  doit.php
		$a_01_3 = {5b 75 70 64 61 74 65 5d } //01 00  [update]
		$a_01_4 = {5b 64 64 6f 73 5d } //01 00  [ddos]
		$a_01_5 = {25 73 25 64 2e 65 78 65 } //01 00  %s%d.exe
		$a_01_6 = {25 73 3f 76 3d 25 64 26 69 64 3d 25 78 25 78 } //00 00  %s?v=%d&id=%x%x
	condition:
		any of ($a_*)
 
}