
rule TrojanDownloader_BAT_Dae_YB_MTB{
	meta:
		description = "TrojanDownloader:BAT/Dae.YB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 06 00 00 02 00 "
		
	strings :
		$a_01_0 = {67 00 78 00 55 00 52 00 69 00 58 00 6a 00 41 00 54 00 } //01 00  gxURiXjAT
		$a_01_1 = {63 00 3a 00 5c 00 55 00 73 00 65 00 72 00 73 00 5c 00 4d 00 61 00 68 00 6d 00 6f 00 75 00 64 00 20 00 4b 00 61 00 69 00 62 00 64 00 61 00 6b 00 69 00 5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 } //01 00  c:\Users\Mahmoud Kaibdaki\Desktop\
		$a_01_2 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 70 00 61 00 73 00 74 00 65 00 62 00 69 00 6e 00 2e 00 63 00 6f 00 6d 00 } //02 00  https://pastebin.com
		$a_01_3 = {46 00 72 00 6f 00 6d 00 42 00 61 00 73 00 65 00 36 00 34 00 53 00 74 00 72 00 69 00 6e 00 67 00 } //02 00  FromBase64String
		$a_01_4 = {67 00 65 00 74 00 5f 00 45 00 78 00 65 00 63 00 75 00 74 00 61 00 62 00 6c 00 65 00 50 00 61 00 74 00 68 00 } //02 00  get_ExecutablePath
		$a_01_5 = {46 00 69 00 6c 00 65 00 53 00 70 00 6c 00 69 00 74 00 } //00 00  FileSplit
	condition:
		any of ($a_*)
 
}