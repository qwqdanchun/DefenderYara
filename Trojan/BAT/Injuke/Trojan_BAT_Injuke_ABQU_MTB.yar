
rule Trojan_BAT_Injuke_ABQU_MTB{
	meta:
		description = "Trojan:BAT/Injuke.ABQU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 02 00 00 04 00 "
		
	strings :
		$a_03_0 = {72 23 00 00 70 28 90 01 03 06 13 00 38 90 01 03 00 28 90 01 03 06 11 00 6f 90 01 03 0a 28 90 01 03 0a 28 90 01 03 06 13 01 38 90 01 03 00 dd 90 01 03 ff 26 38 90 01 03 00 dd 05 90 00 } //03 00 
		$a_01_1 = {31 00 37 00 39 00 2e 00 34 00 33 00 2e 00 31 00 37 00 35 00 2e 00 31 00 38 00 37 00 2f 00 6b 00 73 00 6a 00 79 00 2f 00 46 00 6e 00 61 00 76 00 65 00 6e 00 66 00 2e 00 64 00 61 00 74 00 } //00 00  179.43.175.187/ksjy/Fnavenf.dat
	condition:
		any of ($a_*)
 
}