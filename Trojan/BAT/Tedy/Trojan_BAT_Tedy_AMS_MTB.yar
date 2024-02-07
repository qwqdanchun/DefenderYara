
rule Trojan_BAT_Tedy_AMS_MTB{
	meta:
		description = "Trojan:BAT/Tedy.AMS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 00 3a 00 5c 00 57 00 69 00 6e 00 47 00 75 00 69 00 64 00 6f 00 5c 00 47 00 75 00 69 00 64 00 6f 00 41 00 75 00 73 00 69 00 6c 00 69 00 20 00 70 00 72 00 6f 00 76 00 61 00 } //01 00  C:\WinGuido\GuidoAusili prova
		$a_01_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 31 00 38 00 38 00 2e 00 32 00 31 00 33 00 2e 00 31 00 36 00 37 00 2e 00 32 00 34 00 38 00 2f 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 } //01 00  http://188.213.167.248/download
		$a_01_2 = {47 00 41 00 54 00 72 00 61 00 64 00 75 00 74 00 74 00 6f 00 72 00 65 00 2e 00 64 00 6c 00 6c 00 } //01 00  GATraduttore.dll
		$a_01_3 = {4b 00 69 00 6c 00 6c 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 } //00 00  KillExplorer
	condition:
		any of ($a_*)
 
}