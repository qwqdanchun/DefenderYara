
rule Worm_Win32_Taterf_B{
	meta:
		description = "Worm:Win32/Taterf.B,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0c 00 00 01 00 "
		
	strings :
		$a_01_0 = {65 78 70 6c 6f 72 65 72 2e 65 78 65 20 25 73 } //01 00  explorer.exe %s
		$a_01_1 = {47 65 74 49 6e 70 75 74 53 74 61 74 65 } //01 00  GetInputState
		$a_01_2 = {43 72 65 61 74 65 52 65 6d 6f 74 65 54 68 72 65 61 64 } //01 00  CreateRemoteThread
		$a_01_3 = {81 7d f8 40 19 01 00 0f 87 } //01 00 
		$a_01_4 = {41 6c 65 72 74 44 69 61 6c 6f 67 } //02 00  AlertDialog
		$a_01_5 = {50 72 6f 64 75 63 74 5f 4e 6f 74 69 66 69 63 61 74 69 6f 6e } //02 00  Product_Notification
		$a_03_6 = {23 33 32 37 37 30 90 02 05 52 61 76 6d 6f 6e 2e 65 78 65 90 00 } //02 00 
		$a_01_7 = {53 50 ff d7 53 53 6a 10 50 ff d6 6a 01 ff 15 } //02 00 
		$a_01_8 = {eb db 57 ff d3 68 a0 0f 00 00 ff 75 fc ff 15 } //03 00 
		$a_03_9 = {83 f8 ff 89 45 d0 75 90 01 01 ff 45 08 83 7d 08 0a 72 90 01 01 8d 4d e4 53 51 ff 75 d4 ff 75 fc 50 90 00 } //03 00 
		$a_01_10 = {53 6a 01 68 01 02 00 00 ff 75 fc ff d6 53 53 68 02 02 00 00 ff 75 fc ff d6 20 } //03 00 
		$a_01_11 = {85 c0 74 15 6a 00 68 41 9c 00 00 68 11 01 00 00 ff 75 08 } //00 00 
	condition:
		any of ($a_*)
 
}