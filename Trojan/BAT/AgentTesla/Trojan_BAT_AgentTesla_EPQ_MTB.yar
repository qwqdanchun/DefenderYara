
rule Trojan_BAT_AgentTesla_EPQ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.EPQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {77 00 5a 00 51 00 3d 00 3d 00 47 00 77 00 5a 00 51 00 3d 00 3d 00 65 00 77 00 5a 00 51 00 3d 00 3d 00 74 00 77 00 5a 00 51 00 3d 00 3d 00 54 00 77 00 5a 00 51 00 3d 00 3d 00 79 00 77 00 5a 00 51 00 3d 00 3d 00 70 00 77 00 5a 00 51 00 3d 00 3d 00 65 00 2f 00 41 00 73 00 73 00 65 00 77 00 5a 00 51 00 3d 00 3d 00 6d 00 77 00 5a 00 51 00 3d 00 3d 00 62 00 77 00 5a 00 51 00 3d 00 3d 00 6c 00 77 00 5a 00 51 00 3d 00 3d 00 79 00 2f 00 4c 00 6f 00 77 00 5a 00 51 00 3d 00 3d 00 61 00 64 00 2f 00 45 00 6e 00 74 00 72 00 79 00 77 00 5a 00 51 00 3d 00 3d 00 50 00 6f 00 69 00 6e 00 74 00 2f 00 77 00 5a 00 51 00 3d 00 3d 00 49 00 6e 00 76 00 77 00 5a 00 51 00 3d 00 3d 00 6f 00 6b 00 65 00 } //01 00  wZQ==GwZQ==ewZQ==twZQ==TwZQ==ywZQ==pwZQ==e/AssewZQ==mwZQ==bwZQ==lwZQ==y/LowZQ==ad/EntrywZQ==Point/wZQ==InvwZQ==oke
		$a_01_1 = {40 00 58 00 41 00 52 00 45 00 41 00 6d 00 73 00 40 00 78 00 65 00 74 00 61 00 6c 00 69 00 53 00 63 00 40 00 58 00 41 00 52 00 45 00 61 00 6e 00 42 00 75 00 40 00 78 00 65 00 74 00 61 00 6c 00 66 00 66 00 65 00 72 00 } //01 00  @XAREAms@xetaliSc@XAREanBu@xetalffer
		$a_01_2 = {52 65 70 6c 61 63 65 } //01 00  Replace
		$a_01_3 = {53 74 61 72 74 73 57 69 74 68 } //01 00  StartsWith
		$a_01_4 = {52 65 73 6f 6c 76 65 4d 65 74 68 6f 64 } //01 00  ResolveMethod
		$a_01_5 = {67 65 74 5f 4d 4b 6f 72 74 7a } //00 00  get_MKortz
	condition:
		any of ($a_*)
 
}