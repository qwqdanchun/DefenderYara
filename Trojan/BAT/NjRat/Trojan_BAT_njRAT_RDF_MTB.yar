
rule Trojan_BAT_njRAT_RDF_MTB{
	meta:
		description = "Trojan:BAT/njRAT.RDF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {6e 00 7a 00 77 00 65 00 7a 00 77 00 74 00 7a 00 77 00 73 00 7a 00 77 00 68 00 } //01 00  nzwezwtzwszwh
		$a_01_1 = {66 00 69 00 7a 00 77 00 72 00 7a 00 77 00 65 00 7a 00 77 00 77 00 61 00 6c 00 7a 00 77 00 6c 00 20 00 64 00 7a 00 77 00 65 00 7a 00 77 00 6c 00 7a 00 77 00 65 00 7a 00 77 00 74 00 65 00 20 00 61 00 7a 00 77 00 6c 00 6c 00 6f 00 77 00 65 00 64 00 70 00 72 00 6f 00 67 00 72 00 7a 00 77 00 61 00 6d 00 20 00 22 00 } //01 00  fizwrzwezwwalzwl dzwezwlzwezwte azwllowedprogrzwam "
		$a_01_2 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 } //01 00  cmd.exe
		$a_01_3 = {2f 00 63 00 20 00 70 00 69 00 6e 00 67 00 20 00 30 00 20 00 2d 00 6e 00 20 00 32 00 20 00 26 00 20 00 64 00 65 00 6c 00 20 00 22 00 } //02 00  /c ping 0 -n 2 & del "
		$a_03_4 = {11 05 11 06 9a 0b 07 6f 86 00 00 0a 72 90 01 04 03 28 5e 00 00 0a 6f 87 00 00 0a 2c 90 01 01 06 6f 88 00 00 0a 07 6f 86 00 00 0a 6f 89 00 00 0a 0c de 90 01 01 11 06 17 58 13 06 11 06 11 05 8e 69 90 00 } //02 00 
		$a_01_5 = {28 11 00 00 0a 6f 2c 00 00 0a 1f 1d 0f 00 1a 28 } //00 00 
	condition:
		any of ($a_*)
 
}