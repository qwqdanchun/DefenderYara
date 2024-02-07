
rule Trojan_BAT_Seraph_B_MTB{
	meta:
		description = "Trojan:BAT/Seraph.B!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_81_0 = {46 69 6c 65 49 6e 66 6f } //01 00  FileInfo
		$a_81_1 = {2f 76 69 64 65 6f 2f } //01 00  /video/
		$a_81_2 = {29 2e 6a 70 67 } //01 00  ).jpg
		$a_81_3 = {2f 76 69 64 65 6f 2f 66 66 6d 70 65 67 2e 65 78 65 } //01 00  /video/ffmpeg.exe
		$a_81_4 = {4e 77 70 6c 77 71 75 6a 61 76 64 70 72 77 70 } //01 00  Nwplwqujavdprwp
		$a_81_5 = {53 65 6d 6f 76 6d 78 7a 65 63 70 74 7a 72 2e 4e 77 70 6c 77 71 75 6a 61 76 64 70 72 77 70 2e 64 6c 6c } //00 00  Semovmxzecptzr.Nwplwqujavdprwp.dll
	condition:
		any of ($a_*)
 
}