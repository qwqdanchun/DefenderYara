
rule Trojan_BAT_AgentTesla_AU_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.AU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 03 00 "
		
	strings :
		$a_03_0 = {06 07 02 07 18 5a 18 6f 90 01 03 0a 1f 10 28 90 01 03 0a 9c 07 17 58 0b 07 06 8e 69 32 90 00 } //02 00 
		$a_01_1 = {38 00 36 00 20 00 34 00 35 00 20 00 39 00 34 00 20 00 35 00 35 00 20 00 42 00 36 00 20 00 32 00 37 00 20 00 46 00 36 00 20 00 37 00 37 00 20 00 35 00 36 00 20 00 44 00 36 00 20 00 31 00 36 00 20 00 32 00 37 00 20 00 36 00 34 00 20 00 34 00 37 00 20 00 39 00 36 00 20 00 46 00 36 00 20 00 32 00 37 00 20 00 35 00 36 00 20 00 41 00 35 00 20 00 46 00 32 00 20 00 44 00 36 00 20 00 46 00 36 00 20 00 33 00 36 00 20 00 45 00 32 00 20 00 36 00 37 00 20 00 32 00 37 00 20 00 33 00 37 00 20 00 31 00 36 00 20 00 34 00 37 00 20 00 43 00 36 00 20 00 35 00 37 00 20 00 45 00 32 00 20 00 30 00 33 00 20 00 30 00 33 00 20 00 31 00 33 00 20 00 39 00 33 00 20 00 37 00 33 00 20 00 30 00 33 00 20 00 36 00 33 00 20 00 33 00 33 00 } //00 00  86 45 94 55 B6 27 F6 77 56 D6 16 27 64 47 96 F6 27 56 A5 F2 D6 F6 36 E2 67 27 37 16 47 C6 57 E2 03 03 13 93 73 03 63 33
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_AU_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.AU!MTB,SIGNATURE_TYPE_PEHSTR,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {54 68 73 7d 20 70 72 6f 67 72 61 6d 2a 6d 61 6e 6e 6f 74 20 62 65 2a 7c 75 6e 20 69 6e 20 44 4f 5d 2a 6d 6f 64 65 } //01 00  Ths} program*mannot be*|un in DO]*mode
		$a_01_1 = {46 41 32 36 30 35 44 42 44 41 34 36 39 30 37 38 41 41 46 41 35 42 37 34 36 41 32 41 30 33 30 36 46 45 37 33 35 42 38 38 33 30 38 33 38 30 38 32 31 46 37 36 41 32 42 41 37 38 33 30 32 30 34 45 } //00 00  FA2605DBDA469078AAFA5B746A2A0306FE735B88308380821F76A2BA7830204E
	condition:
		any of ($a_*)
 
}