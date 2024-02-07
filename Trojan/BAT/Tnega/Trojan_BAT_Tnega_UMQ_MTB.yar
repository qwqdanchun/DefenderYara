
rule Trojan_BAT_Tnega_UMQ_MTB{
	meta:
		description = "Trojan:BAT/Tnega.UMQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_81_0 = {61 73 64 66 61 73 64 61 73 66 } //01 00  asdfasdasf
		$a_81_1 = {66 64 73 66 64 73 } //01 00  fdsfds
		$a_81_2 = {67 73 64 66 73 66 73 64 } //01 00  gsdfsfsd
		$a_01_3 = {2e 00 57 00 45 00 42 00 5f 00 57 00 45 00 42 00 53 00 49 00 54 00 45 00 5f 00 42 00 52 00 4f 00 57 00 53 00 45 00 52 00 5f 00 50 00 41 00 47 00 45 00 5f 00 57 00 49 00 52 00 45 00 46 00 52 00 41 00 4d 00 45 00 5f 00 49 00 43 00 4f 00 4e 00 5f 00 31 00 38 00 39 00 33 00 34 00 } //01 00  .WEB_WEBSITE_BROWSER_PAGE_WIREFRAME_ICON_18934
		$a_81_4 = {54 6f 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  ToBase64String
		$a_81_5 = {42 69 74 54 72 65 65 44 65 63 6f 64 65 72 } //01 00  BitTreeDecoder
		$a_81_6 = {44 65 63 6f 64 65 57 69 74 68 4d 61 74 63 68 42 79 74 65 } //00 00  DecodeWithMatchByte
	condition:
		any of ($a_*)
 
}