
rule TrojanProxy_Win32_Koobface_gen_C{
	meta:
		description = "TrojanProxy:Win32/Koobface.gen!C,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 0a 00 00 02 00 "
		
	strings :
		$a_03_0 = {7c f2 83 c5 04 88 14 90 01 01 8b c5 39 55 00 75 90 01 01 5f 90 00 } //01 00 
		$a_03_1 = {6a 1a 68 ff ff 00 00 68 90 01 04 68 90 01 04 e8 90 01 04 ff d0 90 00 } //01 00 
		$a_01_2 = {68 03 1c 00 00 } //01 00 
		$a_01_3 = {c6 45 08 55 c6 45 09 0d } //01 00 
		$a_01_4 = {83 c6 04 83 ff 06 59 8b d8 72 e0 85 db 74 } //01 00 
		$a_01_5 = {2e 75 13 6a 04 68 } //01 00 
		$a_03_6 = {6a 1e 50 68 90 01 02 22 00 53 ff d7 90 00 } //01 00 
		$a_01_7 = {49 41 4d 47 53 59 } //03 00 
		$a_03_8 = {83 c0 05 50 e8 90 01 02 00 00 8b 90 01 01 59 83 90 01 01 03 0f 85 90 01 02 00 00 8d 85 80 f8 ff ff 90 00 } //01 00 
		$a_01_9 = {59 75 0f 47 83 c6 32 3b 7c 24 14 7c e6 } //00 00 
	condition:
		any of ($a_*)
 
}