
rule TrojanDownloader_O97M_EncDoc_HZSM_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.HZSM!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {65 78 65 2e 73 73 72 65 73 2f 6d 6f 63 2e 6d 61 6b 63 69 6c 63 74 73 75 6a 2f 2f 3a 70 74 74 68 } //01 00  exe.ssres/moc.makcilctsuj//:ptth
		$a_01_1 = {22 20 2b 20 22 22 20 2b 20 22 22 20 2b 20 22 22 20 2b 20 22 22 20 2b 20 22 22 20 2b 20 22 22 20 2b 20 22 57 22 20 2b 20 22 22 20 2b 20 22 22 20 2b 20 22 53 63 22 20 2b 20 22 72 69 22 20 2b 20 22 22 20 2b 20 22 22 20 2b 20 22 22 20 2b 20 22 22 20 2b 20 22 70 74 22 20 2b 20 22 2e 53 22 20 2b 20 22 22 20 2b 20 22 22 20 2b 20 22 22 20 2b 20 22 22 20 2b 20 22 22 20 2b 20 22 68 65 22 20 2b 20 22 6c 22 20 2b 20 22 22 20 2b 20 22 22 20 2b 20 22 6c } //00 00  " + "" + "" + "" + "" + "" + "" + "W" + "" + "" + "Sc" + "ri" + "" + "" + "" + "" + "pt" + ".S" + "" + "" + "" + "" + "" + "he" + "l" + "" + "" + "l
	condition:
		any of ($a_*)
 
}