
rule Backdoor_BAT_Hataol_A{
	meta:
		description = "Backdoor:BAT/Hataol.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {2e 00 6e 00 6f 00 2d 00 69 00 70 00 2e 00 62 00 69 00 7a 00 } //01 00  .no-ip.biz
		$a_01_1 = {5f 00 53 00 4b 00 41 00 20 00 62 00 61 00 74 00 65 00 } //01 00  _SKA bate
		$a_03_2 = {52 00 65 00 73 00 74 00 61 00 72 00 74 00 90 01 02 73 00 65 00 6e 00 64 00 66 00 69 00 6c 00 65 00 90 00 } //01 00 
		$a_03_3 = {64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 90 01 02 6a 00 70 00 67 00 90 00 } //01 00 
		$a_03_4 = {70 00 69 00 6e 00 67 00 90 01 02 43 00 6c 00 6f 00 73 00 65 00 90 00 } //00 00 
		$a_00_5 = {5d 04 } //00 00  ѝ
	condition:
		any of ($a_*)
 
}