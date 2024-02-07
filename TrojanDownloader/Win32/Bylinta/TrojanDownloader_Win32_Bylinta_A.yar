
rule TrojanDownloader_Win32_Bylinta_A{
	meta:
		description = "TrojanDownloader:Win32/Bylinta.A,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 08 00 08 00 00 03 00 "
		
	strings :
		$a_03_0 = {b9 ff 01 00 00 33 c0 8d bd d1 f3 ff ff f3 ab 66 ab aa b9 00 02 00 00 33 c0 8d bd 90 01 02 ff ff f3 ab 8d 95 90 01 02 ff ff bf 90 00 } //03 00 
		$a_03_1 = {68 e5 65 32 01 8d 8d d0 f3 ff ff 51 e8 90 01 02 ff ff b9 19 00 00 00 33 c0 bf 90 00 } //02 00 
		$a_03_2 = {74 13 6a 00 68 60 f0 00 00 68 12 01 00 00 50 ff 15 90 01 02 00 10 6a 08 ff 15 90 01 02 00 10 eb cd 90 00 } //06 00 
		$a_01_3 = {43 43 44 4f 53 2e 64 6c 6c 00 49 6e 73 74 61 6c 6c 53 65 72 76 69 63 65 00 52 75 6e 64 6c 6c 49 6e 73 74 61 6c 6c 41 00 52 75 6e 64 6c 6c 55 6e 69 6e 73 74 61 6c 6c 41 00 53 65 72 76 69 63 65 4d 61 69 6e 00 55 6e 69 6e 73 74 61 6c 6c 53 65 72 76 69 63 65 } //02 00 
		$a_01_4 = {41 56 50 2e 50 72 6f 64 75 63 74 5f 4e 6f 74 69 66 69 63 61 74 69 6f 6e } //02 00  AVP.Product_Notification
		$a_01_5 = {43 43 61 74 62 79 6c 69 6e } //01 00  CCatbylin
		$a_01_6 = {5b 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 5d } //01 00  [%02X%02X%02X%02X%02X%02X]
		$a_01_7 = {41 6e 67 65 6c 49 45 2f 31 2e 30 } //00 00  AngelIE/1.0
	condition:
		any of ($a_*)
 
}