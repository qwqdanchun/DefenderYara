
rule Ransom_MSIL_VenusLocker_A{
	meta:
		description = "Ransom:MSIL/VenusLocker.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {2e 00 56 00 65 00 6e 00 75 00 73 00 66 00 } //01 00  .Venusf
		$a_01_1 = {2e 00 56 00 65 00 6e 00 75 00 73 00 70 00 } //01 00  .Venusp
		$a_01_2 = {56 00 65 00 6e 00 75 00 73 00 4c 00 6f 00 63 00 6b 00 65 00 72 00 20 00 54 00 65 00 61 00 6d 00 } //01 00  VenusLocker Team
		$a_01_3 = {4c 00 6f 00 63 00 6b 00 65 00 72 00 50 00 69 00 63 00 42 00 6f 00 78 00 } //01 00  LockerPicBox
		$a_01_4 = {59 00 6f 00 75 00 72 00 20 00 61 00 72 00 65 00 20 00 68 00 61 00 63 00 6b 00 65 00 64 00 } //01 00  Your are hacked
		$a_01_5 = {5c 56 65 6e 75 73 4c 6f 63 6b 65 72 56 32 5c 56 65 6e 75 73 4c 6f 63 6b 65 72 5c 6f 62 6a 5c 52 65 6c 65 61 73 65 5c 56 65 6e 75 73 4c 6f 63 6b 65 72 2e 70 64 62 00 } //01 00 
		$a_01_6 = {56 65 6e 75 73 4c 6f 63 6b 65 72 2e 65 78 65 00 } //00 00 
		$a_00_7 = {5d 04 00 } //00 fb 
	condition:
		any of ($a_*)
 
}