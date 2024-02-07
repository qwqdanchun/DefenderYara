
rule PWS_Win32_Fareit_W_MTB{
	meta:
		description = "PWS:Win32/Fareit.W!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 07 00 00 01 00 "
		
	strings :
		$a_00_0 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //01 00  MSVBVM60.DLL
		$a_03_1 = {31 34 24 eb 90 0a 50 00 ff 37 90 02 ff 31 34 24 90 02 ff e8 90 02 ff 90 02 ff 83 c2 04 90 02 ff 83 d7 04 90 02 ff 0f 85 90 00 } //01 00 
		$a_03_2 = {31 34 24 85 90 0a 50 00 ff 37 90 02 ff 31 34 24 90 02 ff e8 90 02 ff 90 02 ff 83 c2 04 90 02 ff 83 d7 04 90 02 ff 0f 85 90 00 } //01 00 
		$a_03_3 = {31 34 24 66 90 0a 50 00 ff 37 90 02 ff 31 34 24 90 02 ff e8 90 02 ff 90 02 ff 83 c2 04 90 02 ff 83 d7 04 90 02 ff 0f 85 90 00 } //01 00 
		$a_03_4 = {83 c2 04 66 90 0a ff 00 31 f1 90 02 ff e8 90 02 ff 83 c2 04 90 02 ff 83 d7 04 90 02 ff 0f 85 90 02 ff 51 90 02 ff 8f 04 18 90 00 } //01 00 
		$a_03_5 = {83 c2 04 85 90 0a ff 00 31 f1 90 02 ff e8 90 02 ff 83 c2 04 90 02 ff 83 d7 04 90 02 ff 0f 85 90 02 ff 51 90 02 ff 8f 04 18 90 00 } //01 00 
		$a_03_6 = {83 c2 04 eb 90 0a ff 00 31 f1 90 02 ff e8 90 02 ff 83 c2 04 90 02 ff 83 d7 04 90 02 ff 0f 85 90 02 ff 51 90 02 ff 8f 04 18 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}