
rule TrojanDownloader_BAT_Small_H{
	meta:
		description = "TrojanDownloader:BAT/Small.H,SIGNATURE_TYPE_PEHSTR,17 00 17 00 07 00 00 0a 00 "
		
	strings :
		$a_01_0 = {46 00 61 00 63 00 65 00 62 00 6f 00 6f 00 6b 00 48 00 61 00 63 00 6b 00 2e 00 65 00 78 00 65 00 } //0a 00  FacebookHack.exe
		$a_01_1 = {66 00 69 00 72 00 65 00 77 00 61 00 6c 00 6c 00 20 00 73 00 65 00 74 00 20 00 6f 00 70 00 6d 00 6f 00 64 00 65 00 20 00 64 00 69 00 73 00 61 00 62 00 6c 00 65 00 } //01 00  firewall set opmode disable
		$a_01_2 = {5c 00 65 00 72 00 69 00 57 00 65 00 6d 00 69 00 4c 00 5c 00 } //01 00  \eriWemiL\
		$a_01_3 = {5c 00 30 00 30 00 30 00 32 00 79 00 65 00 6b 00 6e 00 6f 00 44 00 65 00 5c 00 } //01 00  \0002yeknoDe\
		$a_01_4 = {5c 00 61 00 61 00 7a 00 61 00 6b 00 5c 00 } //01 00  \aazak\
		$a_01_5 = {5c 00 72 00 65 00 74 00 73 00 6b 00 6f 00 72 00 67 00 5c 00 } //01 00  \retskorg\
		$a_01_6 = {5c 00 73 00 75 00 65 00 68 00 70 00 72 00 6f 00 6d 00 5c 00 } //00 00  \suehprom\
	condition:
		any of ($a_*)
 
}