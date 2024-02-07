
rule Trojan_BAT_LokiBot_CXRH_MTB{
	meta:
		description = "Trojan:BAT/LokiBot.CXRH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 6f 00 6e 00 65 00 64 00 72 00 69 00 76 00 65 00 2e 00 6c 00 69 00 76 00 65 00 2e 00 63 00 6f 00 6d 00 2f 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 3f 00 63 00 69 00 64 00 3d 00 30 00 44 00 30 00 46 00 42 00 46 00 44 00 37 00 45 00 45 00 38 00 41 00 31 00 33 00 41 00 42 00 26 00 72 00 65 00 73 00 69 00 64 00 3d 00 44 00 30 00 46 00 42 00 46 00 44 00 37 00 45 00 45 00 38 00 41 00 31 00 33 00 41 00 42 00 25 00 32 00 31 00 31 00 37 00 39 00 26 00 61 00 75 00 74 00 68 00 6b 00 65 00 79 00 3d 00 41 00 41 00 73 00 4d 00 63 00 49 00 46 00 7a 00 69 00 72 00 71 00 36 00 54 00 7a 00 59 00 } //01 00  https://onedrive.live.com/download?cid=0D0FBFD7EE8A13AB&resid=D0FBFD7EE8A13AB%21179&authkey=AAsMcIFzirq6TzY
		$a_01_1 = {42 00 62 00 6c 00 67 00 69 00 69 00 6a 00 78 00 70 00 6f 00 7a 00 61 00 62 00 72 00 62 00 6b 00 65 00 72 00 6b 00 67 00 61 00 69 00 72 00 2e 00 57 00 66 00 64 00 6d 00 72 00 77 00 67 00 79 00 6f 00 75 00 69 00 71 00 6e 00 69 00 62 00 73 00 } //01 00  Bblgiijxpozabrbkerkgair.Wfdmrwgyouiqnibs
		$a_01_2 = {46 00 69 00 6c 00 65 00 5a 00 69 00 6c 00 6c 00 61 00 } //01 00  FileZilla
		$a_01_3 = {4e 00 62 00 65 00 74 00 73 00 63 00 7a 00 70 00 66 00 77 00 63 00 6e 00 70 00 6b 00 6e 00 79 00 64 00 71 00 79 00 65 00 } //01 00  Nbetsczpfwcnpknydqye
		$a_01_4 = {47 00 6f 00 6f 00 67 00 6c 00 65 00 20 00 55 00 70 00 64 00 61 00 74 00 65 00 } //00 00  Google Update
	condition:
		any of ($a_*)
 
}