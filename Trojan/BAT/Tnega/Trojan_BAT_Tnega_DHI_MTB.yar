
rule Trojan_BAT_Tnega_DHI_MTB{
	meta:
		description = "Trojan:BAT/Tnega.DHI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 31 00 30 00 55 00 70 00 64 00 61 00 74 00 65 00 41 00 73 00 73 00 69 00 73 00 74 00 61 00 6e 00 74 00 2e 00 65 00 78 00 65 00 } //01 00  Windows10UpdateAssistant.exe
		$a_81_1 = {67 65 74 5f 41 63 74 69 76 61 74 65 50 6f 5f 6e 67 } //01 00  get_ActivatePo_ng
		$a_81_2 = {52 65 61 64 53 65 72 76 65 72 74 44 61 74 61 } //01 00  ReadServertData
		$a_81_3 = {50 52 4f 43 45 53 53 45 4e 54 52 59 33 32 } //01 00  PROCESSENTRY32
		$a_81_4 = {43 6c 69 65 6e 74 2e 43 6f 6e 6e 65 63 74 69 6f 6e } //01 00  Client.Connection
		$a_81_5 = {56 69 72 75 73 44 65 6c 65 74 65 64 } //01 00  VirusDeleted
		$a_81_6 = {44 65 63 6f 64 65 46 72 6f 6d 53 74 72 65 61 6d } //00 00  DecodeFromStream
	condition:
		any of ($a_*)
 
}