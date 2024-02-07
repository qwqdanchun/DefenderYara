
rule Trojan_BAT_Remcos_A_MTB{
	meta:
		description = "Trojan:BAT/Remcos.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {52 50 46 3a 53 6d 61 72 74 41 73 73 65 6d 62 6c 79 } //01 00  RPF:SmartAssembly
		$a_01_1 = {6e 68 66 66 73 6b 64 73 66 6b 64 64 64 66 64 68 64 61 66 66 66 64 64 64 66 64 64 64 68 67 66 73 64 73 63 66 66 64 66 } //01 00  nhffskdsfkdddfdhdafffdddfdddhgfsdscffdf
		$a_01_2 = {68 6b 67 66 73 66 64 66 66 64 68 66 68 64 64 66 64 72 66 61 68 67 68 64 64 73 73 68 63 66 } //01 00  hkgfsfdffdhfhddfdrfahghddsshcf
		$a_01_3 = {63 68 66 64 64 67 65 66 66 66 67 68 6b 64 61 66 66 73 66 68 64 64 64 68 64 73 68 64 67 68 66 } //01 00  chfddgefffghkdaffsfhdddhdshdghf
		$a_01_4 = {73 64 64 64 64 66 66 73 66 68 65 67 68 64 64 6a 66 66 66 66 66 67 6a 68 73 6b 64 67 67 73 66 61 61 66 63 73 61 66 70 } //01 00  sddddffsfheghddjfffffgjhskdggsfaafcsafp
		$a_01_5 = {73 66 68 6a 66 66 6b 66 68 67 66 64 6a 73 72 66 68 68 64 64 66 68 66 66 66 61 64 73 67 66 61 73 66 68 73 73 63 66 66 67 64 62 } //00 00  sfhjffkfhgfdjsrfhhddfhfffadsgfasfhsscffgdb
	condition:
		any of ($a_*)
 
}