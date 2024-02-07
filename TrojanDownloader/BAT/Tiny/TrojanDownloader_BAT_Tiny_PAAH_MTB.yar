
rule TrojanDownloader_BAT_Tiny_PAAH_MTB{
	meta:
		description = "TrojanDownloader:BAT/Tiny.PAAH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {24 62 32 30 37 37 66 39 36 2d 36 61 39 33 2d 34 35 66 39 2d 62 62 37 39 2d 38 31 62 37 65 37 61 35 36 36 31 63 } //01 00  $b2077f96-6a93-45f9-bb79-81b7e7a5661c
		$a_01_1 = {2f 00 2f 00 31 00 34 00 34 00 2e 00 32 00 30 00 32 00 2e 00 37 00 2e 00 34 00 32 00 2f 00 64 00 64 00 64 00 64 00 64 00 64 00 3f 00 61 00 3d 00 31 00 } //01 00  //144.202.7.42/dddddd?a=1
		$a_01_2 = {57 00 53 00 63 00 72 00 69 00 70 00 74 00 2e 00 65 00 63 00 68 00 6f 00 28 00 27 00 64 00 61 00 27 00 29 00 3b 00 } //00 00  WScript.echo('da');
	condition:
		any of ($a_*)
 
}