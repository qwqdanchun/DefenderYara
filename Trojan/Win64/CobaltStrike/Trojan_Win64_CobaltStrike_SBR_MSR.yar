
rule Trojan_Win64_CobaltStrike_SBR_MSR{
	meta:
		description = "Trojan:Win64/CobaltStrike.SBR!MSR,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 5c 2e 5c 70 69 70 65 5c 4d 53 53 45 2d 31 39 36 36 2d 73 65 72 76 65 72 } //01 00 
		$a_01_1 = {25 63 25 63 25 63 25 63 25 63 25 63 25 63 25 63 25 63 4d 53 53 45 2d 25 64 2d 73 65 72 76 65 72 } //01 00 
		$a_01_2 = {74 65 6d 70 2e 64 6c 6c } //00 00 
	condition:
		any of ($a_*)
 
}