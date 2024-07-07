
rule TrojanDownloader_BAT_Gendwnurl_BS_bit{
	meta:
		description = "TrojanDownloader:BAT/Gendwnurl.BS!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 62 00 69 00 74 00 62 00 75 00 63 00 6b 00 65 00 74 00 2e 00 6f 00 72 00 67 00 2f 00 90 02 25 2f 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 73 00 2f 00 90 02 10 2e 00 65 00 78 00 65 00 90 00 } //1
		$a_03_1 = {43 00 3a 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 44 00 61 00 74 00 61 00 5c 00 90 02 10 2e 00 76 00 62 00 73 00 90 00 } //1
		$a_03_2 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 35 00 2e 00 34 00 35 00 2e 00 38 00 32 00 2e 00 32 00 34 00 33 00 2f 00 90 02 06 2e 00 65 00 78 00 65 00 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}