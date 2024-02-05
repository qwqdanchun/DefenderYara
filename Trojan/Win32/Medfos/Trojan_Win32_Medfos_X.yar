
rule Trojan_Win32_Medfos_X{
	meta:
		description = "Trojan:Win32/Medfos.X,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {68 02 02 00 00 90 03 03 06 ff 76 0c e9 90 16 ff 76 0c 90 03 02 05 ff d7 e9 90 16 ff d7 90 03 01 04 5f e9 90 16 5f 90 03 01 04 c3 e9 90 16 c3 90 00 } //01 00 
		$a_03_1 = {68 02 02 00 00 90 03 03 06 ff 76 0c e9 90 16 ff 76 0c 90 03 02 05 ff d7 e9 90 16 ff d7 90 03 05 08 ff 05 90 01 04 e9 90 16 ff 05 90 01 04 90 03 03 06 ff 45 f4 e9 90 16 ff 45 f4 90 00 } //0a 00 
		$a_03_2 = {0f b6 40 17 90 03 01 04 50 e9 90 16 50 90 03 03 06 ff 76 0c e9 90 16 ff 76 0c 90 03 03 06 ff 75 fc e9 90 16 ff 75 fc 90 03 02 05 ff 15 e9 90 16 ff 15 90 00 } //0a 00 
		$a_03_3 = {8d 44 30 02 90 03 03 06 80 38 e9 e9 90 16 80 38 e9 90 03 11 0f 90 03 05 08 0f 85 90 01 04 e9 90 16 0f 85 90 01 04 90 03 04 07 75 90 01 01 e9 90 16 75 90 01 01 90 03 03 06 03 40 01 e9 90 16 03 40 01 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}