
rule Trojan_BAT_AgentTesla_NEAJ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NEAJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 07 00 00 0a 00 "
		
	strings :
		$a_03_0 = {08 18 5d 16 fe 01 08 06 8e b7 17 da fe 01 16 fe 01 5f 08 16 fe 02 5f 2c 0c 09 28 90 01 01 01 00 06 6f 90 01 01 00 00 0a 26 09 06 08 90 00 } //01 00 
		$a_01_1 = {76 61 75 6c 74 63 6c 69 2e 64 6c 6c } //01 00  vaultcli.dll
		$a_01_2 = {47 65 74 45 78 65 63 75 74 69 6e 67 41 73 73 65 6d 62 6c 79 } //01 00  GetExecutingAssembly
		$a_01_3 = {67 65 74 5f 4f 53 56 65 72 73 69 6f 6e } //01 00  get_OSVersion
		$a_01_4 = {43 68 61 6e 67 65 43 6c 69 70 62 6f 61 72 64 43 68 61 69 6e } //01 00  ChangeClipboardChain
		$a_01_5 = {52 65 67 4f 70 65 6e 4b 65 79 45 78 } //01 00  RegOpenKeyEx
		$a_01_6 = {47 65 74 50 72 6f 63 65 73 73 42 79 49 64 } //00 00  GetProcessById
	condition:
		any of ($a_*)
 
}