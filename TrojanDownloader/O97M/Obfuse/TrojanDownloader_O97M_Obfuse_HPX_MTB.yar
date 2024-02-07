
rule TrojanDownloader_O97M_Obfuse_HPX_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.HPX!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {47 65 74 4f 62 6a 65 63 74 28 61 66 73 61 66 32 31 72 32 33 72 61 66 61 73 66 61 73 66 32 32 32 32 33 61 66 61 73 66 28 22 31 22 20 2b 20 22 22 20 2b 20 22 33 22 20 2b 20 22 22 20 2b 20 22 22 20 2b 20 22 31 31 31 37 22 20 2b 20 22 31 32 22 20 2b 20 22 22 20 2b 20 22 32 31 22 20 2b 20 22 32 31 22 20 2b 20 22 31 31 35 31 32 31 31 22 20 2b 20 79 20 2b 20 79 20 2b 20 79 20 2b 20 22 32 38 31 32 37 30 37 30 22 29 29 } //01 00  GetObject(afsaf21r23rafasfasf22223afasf("1" + "" + "3" + "" + "" + "1117" + "12" + "" + "21" + "21" + "1151211" + y + y + y + "28127070"))
		$a_00_1 = {2e 47 65 74 28 61 66 73 61 66 32 31 72 32 33 72 61 66 61 73 66 61 73 66 32 32 32 32 33 61 66 61 73 66 28 22 30 39 39 22 20 2b 20 79 20 2b 20 79 20 2b 20 79 20 2b 20 22 31 22 20 2b 20 79 20 2b 20 22 31 22 20 2b 20 22 37 31 32 32 30 36 33 30 36 32 31 22 20 2b 20 79 20 2b 20 79 20 2b 20 79 20 2b 20 22 30 22 20 2b 20 22 37 22 20 2b 20 22 30 22 20 2b 20 22 39 22 20 2b 20 22 32 22 20 2b 20 22 31 32 22 20 2b 20 79 20 2b 20 79 20 2b 20 22 36 31 32 33 31 31 22 20 2b 20 79 20 2b 20 22 31 31 31 22 20 2b 20 22 22 20 2b 20 79 20 2b 20 22 33 22 20 2b 20 22 31 32 37 31 32 37 22 29 29 } //01 00  .Get(afsaf21r23rafasfasf22223afasf("099" + y + y + y + "1" + y + "1" + "71220630621" + y + y + y + "0" + "7" + "0" + "9" + "2" + "12" + y + y + "612311" + y + "111" + "" + y + "3" + "127127"))
		$a_00_2 = {2e 43 72 65 61 74 65 20 61 66 73 61 66 32 31 72 32 33 72 61 66 61 73 66 61 73 66 32 32 32 32 33 61 66 61 73 66 28 22 31 31 31 31 30 39 31 32 30 31 22 20 2b 20 22 31 31 22 20 2b 20 79 20 2b 20 79 20 2b 20 22 30 35 38 31 31 33 31 33 32 31 31 33 22 29 2c 20 61 61 63 73 61 73 63 61 37 73 63 61 37 63 61 73 63 76 61 73 63 63 73 61 73 63 61 37 73 63 61 37 63 61 73 63 76 61 73 63 2c 20 61 63 73 61 73 63 61 37 73 63 61 37 63 61 73 63 76 61 73 63 2c 20 73 61 63 61 73 63 61 73 63 61 63 73 61 73 63 61 37 73 63 61 37 63 61 73 63 76 61 73 63 } //00 00  .Create afsaf21r23rafasfasf22223afasf("1111091201" + "11" + y + y + "058113132113"), aacsasca7sca7cascvasccsasca7sca7cascvasc, acsasca7sca7cascvasc, sacascascacsasca7sca7cascvasc
	condition:
		any of ($a_*)
 
}