
rule Adware_MacOS_Adload_AK_MTB{
	meta:
		description = "Adware:MacOS/Adload.AK!MTB,SIGNATURE_TYPE_MACHOHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {64 65 6c 65 67 61 74 65 63 35 73 68 6f 77 6e 73 62 76 70 77 76 64 } //01 00  delegatec5shownsbvpwvd
		$a_00_1 = {67 65 74 53 74 61 74 65 4f 66 53 61 66 61 72 69 45 78 74 65 6e 73 69 6f 6e 57 69 74 68 49 64 65 6e 74 69 66 69 65 72 } //01 00  getStateOfSafariExtensionWithIdentifier
		$a_00_2 = {44 65 6c 65 67 61 74 65 43 35 63 68 65 63 6b 79 79 46 5a 79 79 } //01 00  DelegateC5checkyyFZyy
		$a_00_3 = {73 68 61 72 65 64 55 73 65 72 44 65 66 61 75 6c 74 73 } //00 00  sharedUserDefaults
	condition:
		any of ($a_*)
 
}