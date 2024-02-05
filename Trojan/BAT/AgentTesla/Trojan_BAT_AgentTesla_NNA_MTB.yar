
rule Trojan_BAT_AgentTesla_NNA_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NNA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 31 00 38 00 35 00 2e 00 32 00 32 00 32 00 2e 00 35 00 38 00 2e 00 35 00 36 00 2f 00 } //01 00 
		$a_01_1 = {28 05 00 00 06 00 28 06 00 00 06 00 28 08 00 00 06 00 2a } //01 00 
		$a_80_2 = {47 65 74 42 79 74 65 41 72 72 61 79 41 73 79 6e 63 } //GetByteArrayAsync  01 00 
		$a_80_3 = {53 74 61 72 74 2d 53 6c 65 65 70 20 2d 73 20 31 39 } //Start-Sleep -s 19  01 00 
		$a_80_4 = {70 6f 77 65 72 73 68 65 6c 6c } //powershell  01 00 
		$a_01_5 = {47 65 74 4d 65 74 68 6f 64 } //01 00 
		$a_01_6 = {52 65 76 65 72 73 65 } //00 00 
	condition:
		any of ($a_*)
 
}