
rule Trojan_WinNT_SDrop_A_MTB{
	meta:
		description = "Trojan:WinNT/SDrop.A!MTB,SIGNATURE_TYPE_JAVAHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {69 6e 76 6f 69 63 65 73 65 63 75 72 65 2e 6e 65 74 } //01 00  invoicesecure.net
		$a_00_1 = {2f 66 6f 6f 74 65 72 2e 6a 70 67 } //01 00  /footer.jpg
		$a_00_2 = {43 3a 5c 50 72 6f 67 72 61 6d 44 61 74 61 5c 64 72 76 72 33 32 2e 65 78 65 } //00 00  C:\ProgramData\drvr32.exe
		$a_00_3 = {bf 5b } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_WinNT_SDrop_A_MTB_2{
	meta:
		description = "Trojan:WinNT/SDrop.A!MTB,SIGNATURE_TYPE_JAVAHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {4d 76 6f 71 6d 71 72 74 70 6a 62 2e 6a 61 76 61 } //01 00  Mvoqmqrtpjb.java
		$a_00_1 = {72 65 73 6f 75 72 63 65 73 2f 67 62 70 61 7a 78 74 64 78 63 } //01 00  resources/gbpazxtdxc
		$a_00_2 = {61 6f 78 63 64 6e 72 72 63 6c 2e 76 62 73 } //01 00  aoxcdnrrcl.vbs
		$a_02_3 = {52 75 6e 74 69 6d 65 90 02 05 65 78 65 63 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}