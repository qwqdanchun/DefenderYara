
rule Backdoor_BAT_DCRat_D_MTB{
	meta:
		description = "Backdoor:BAT/DCRat.D!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 04 00 00 02 00 "
		
	strings :
		$a_01_0 = {2f 00 73 00 74 00 72 00 69 00 70 00 63 00 68 00 61 00 72 00 74 00 20 00 2f 00 63 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 3a 00 6c 00 6f 00 63 00 61 00 6c 00 68 00 6f 00 73 00 74 00 20 00 2f 00 70 00 65 00 72 00 69 00 6f 00 64 00 3a 00 35 00 20 00 2f 00 64 00 61 00 74 00 61 00 6f 00 6e 00 6c 00 79 00 20 00 2f 00 73 00 61 00 6d 00 70 00 6c 00 65 00 73 00 } //02 00  /stripchart /computer:localhost /period:5 /dataonly /samples
		$a_01_1 = {64 00 65 00 6c 00 20 00 2f 00 61 00 20 00 2f 00 71 00 20 00 2f 00 66 00 } //02 00  del /a /q /f
		$a_01_2 = {2f 00 63 00 20 00 6e 00 65 00 74 00 20 00 75 00 73 00 65 00 72 00 } //02 00  /c net user
		$a_01_3 = {44 00 43 00 52 00 61 00 74 00 2e 00 43 00 6f 00 64 00 65 00 } //00 00  DCRat.Code
	condition:
		any of ($a_*)
 
}