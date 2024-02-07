
rule Backdoor_BAT_GDPH_RDA_MTB{
	meta:
		description = "Backdoor:BAT/GDPH.RDA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {31 00 62 00 30 00 36 00 37 00 39 00 62 00 65 00 37 00 32 00 61 00 64 00 39 00 37 00 36 00 61 00 } //01 00  1b0679be72ad976a
		$a_01_1 = {7e 00 2f 00 77 00 77 00 77 00 77 00 2e 00 61 00 73 00 70 00 78 00 } //01 00  ~/wwww.aspx
		$a_01_2 = {7e 00 2f 00 74 00 65 00 73 00 74 00 33 00 33 00 33 00 2e 00 61 00 73 00 70 00 78 00 } //01 00  ~/test333.aspx
		$a_01_3 = {7e 00 2f 00 74 00 65 00 73 00 74 00 32 00 32 00 32 00 2e 00 61 00 73 00 70 00 78 00 } //01 00  ~/test222.aspx
		$a_01_4 = {70 00 61 00 79 00 6c 00 6f 00 61 00 64 00 } //00 00  payload
	condition:
		any of ($a_*)
 
}