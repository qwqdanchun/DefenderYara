
rule Backdoor_Linux_WireLurker_A{
	meta:
		description = "Backdoor:Linux/WireLurker.A,SIGNATURE_TYPE_MACHOHSTR_EXT,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 3a 2f 2f 77 77 77 2e 63 6f 6d 65 69 6e 62 61 62 79 2e 63 6f 6d 2f 61 70 70 2f 61 70 70 2e 70 68 70 3f 73 6e 3d 25 73 26 70 6e 3d 25 73 26 6d 6e 3d 25 73 26 70 76 3d 25 73 26 61 70 70 69 64 3d 25 73 26 6f 73 3d 6d 61 63 73 65 72 76 69 63 65 26 70 74 3d 25 73 26 6d 73 6e 3d 25 40 26 79 79 3d 25 73 00 } //01 00 
		$a_01_1 = {2f 6d 61 63 2f 73 61 76 65 69 6e 66 6f 2e 70 68 70 00 } //01 00 
		$a_01_2 = {43 6f 75 6c 64 20 6e 6f 74 20 73 74 61 72 74 20 63 6f 6d 2e 61 70 70 6c 65 2e 6d 6f 62 69 6c 65 2e 69 6e 73 74 61 6c 6c 61 74 69 6f 6e 5f 70 72 6f 78 79 21 } //01 00  Could not start com.apple.mobile.installation_proxy!
		$a_01_3 = {2f 75 73 72 2f 6c 6f 63 61 6c 2f 6d 61 63 68 6f 6f 6b 2f 77 61 74 63 68 2e 73 68 00 } //01 00  甯牳氯捯污洯捡潨歯眯瑡档献h
		$a_01_4 = {2f 74 6d 70 2f 6d 61 63 68 6f 6f 6b 2e 6c 6f 67 00 } //01 00 
		$a_01_5 = {2f 6f 70 74 2f 63 6f 64 65 2f 61 70 70 2f 6d 79 50 72 6f 6a 65 63 74 2f 6d 61 63 68 6f 6f 6b 2f 6d 61 63 68 6f 6f 6b 2f 00 } //00 00 
		$a_00_6 = {5d 04 00 00 } //31 66 
	condition:
		any of ($a_*)
 
}