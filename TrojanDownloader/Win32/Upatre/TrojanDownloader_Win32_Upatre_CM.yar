
rule TrojanDownloader_Win32_Upatre_CM{
	meta:
		description = "TrojanDownloader:Win32/Upatre.CM,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {73 16 8d 55 9c 90 02 18 eb d9 8b 90 01 01 9c 90 02 0c ff 55 9c c7 45 c8 00 00 00 00 8b 4d fc 51 e8 90 01 02 ff ff 5f 5e 5b 8b e5 5d c2 04 00 55 8b ec a1 90 01 02 40 00 5d 90 00 } //01 00 
		$a_03_1 = {8d 55 9c 52 ff 15 90 01 02 40 00 6a 00 6a 00 90 02 08 ff 15 90 01 02 40 00 eb 90 04 01 03 c0 2d d7 59 50 ff 65 9c 90 02 7f 55 8b ec a1 90 01 02 40 00 5d 90 00 } //01 00 
		$a_03_2 = {ad 51 8b cb 2b c1 89 07 8b ca 03 f9 59 49 75 f0 90 02 07 68 90 02 02 00 00 40 48 e9 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}