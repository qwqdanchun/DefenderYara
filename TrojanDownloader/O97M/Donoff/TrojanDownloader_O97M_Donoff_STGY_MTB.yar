
rule TrojanDownloader_O97M_Donoff_STGY_MTB{
	meta:
		description = "TrojanDownloader:O97M/Donoff.STGY!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 72 65 61 74 65 54 65 78 74 46 69 6c 65 28 73 66 20 26 20 22 5c 65 30 33 38 66 66 37 33 2e 62 61 74 22 2c 20 54 72 75 65 29 } //01 00  CreateTextFile(sf & "\e038ff73.bat", True)
		$a_01_1 = {36 35 36 33 36 38 36 46 32 30 36 46 36 36 36 36 30 41 36 34 36 35 36 43 32 30 32 46 37 31 32 46 36 36 32 46 37 33 32 30 32 35 37 34 36 35 36 44 37 30 32 35 35 43 36 35 33 30 33 33 33 38 36 36 36 36 33 37 33 33 32 45 37 36 36 32 37 33 30 41 36 34 36 35 36 43 32 30 32 46 37 31 32 46 36 36 32 46 37 33 32 30 32 35 37 34 36 35 36 44 37 30 32 35 35 43 36 35 33 30 33 33 33 38 36 36 36 36 } //01 00  6563686F206F66660A64656C202F712F662F73202574656D70255C65303338666637332E7662730A64656C202F712F662F73202574656D70255C653033386666
		$a_01_2 = {36 38 37 34 37 34 30 41 35 33 34 35 35 34 32 30 37 30 33 34 33 44 37 30 33 41 32 46 32 46 33 31 33 37 30 41 35 33 34 35 35 34 32 30 37 30 33 35 33 44 33 38 32 45 33 31 33 38 32 45 33 32 30 41 35 33 34 35 35 34 32 30 37 30 33 36 33 44 33 34 33 30 32 45 33 32 33 30 33 37 30 41 35 33 34 35 35 34 32 30 37 30 33 37 33 44 32 46 37 30 37 32 36 39 37 36 36 31 30 41 35 33 34 35 35 34 32 30 } //01 00  6874740A5345542070343D703A2F2F31370A5345542070353D382E31382E320A5345542070363D34302E3230370A5345542070373D2F70726976610A53455420
		$a_01_3 = {37 30 33 38 33 44 37 34 36 35 32 46 36 33 36 46 36 44 30 41 35 33 34 35 35 34 32 30 37 30 33 39 33 44 37 30 36 31 36 45 37 39 35 46 36 34 30 41 35 33 34 35 35 34 32 30 37 30 33 31 33 30 33 44 36 35 37 34 36 31 36 39 36 43 37 33 30 41 35 33 34 35 35 34 32 30 37 30 33 31 33 31 33 44 32 46 36 31 36 32 36 33 32 45 36 35 30 41 35 33 34 35 35 34 32 30 37 30 33 31 33 32 33 44 37 38 36 35 } //00 00  70383D74652F636F6D0A5345542070393D70616E795F640A534554207031303D657461696C730A534554207031313D2F6162632E650A534554207031323D7865
	condition:
		any of ($a_*)
 
}