
rule Trojan_BAT_AgentTesla_NXZ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NXZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {57 95 a2 3f 09 1f 00 00 00 fa 25 33 00 16 00 00 01 00 00 00 9f 00 00 00 16 00 00 00 64 00 00 00 82 01 00 00 42 } //01 00 
		$a_01_1 = {5f 28 2d 56 2f 73 63 33 31 66 33 37 71 6b 32 37 4c 5f 5e 7c 32 46 41 39 3c 2e 72 65 73 6f 75 72 63 65 73 } //01 00  _(-V/sc31f37qk27L_^|2FA9<.resources
		$a_01_2 = {24 34 34 42 35 46 44 34 37 2d 46 32 42 41 2d 34 43 46 30 2d 41 43 39 39 2d 43 34 31 32 44 37 30 45 45 34 44 41 } //01 00  $44B5FD47-F2BA-4CF0-AC99-C412D70EE4DA
		$a_01_3 = {43 6f 6e 66 75 73 65 72 2e 43 6f 72 65 20 31 2e 35 2e 30 2b 62 35 31 39 37 35 34 39 65 34 } //01 00  Confuser.Core 1.5.0+b5197549e4
		$a_01_4 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //01 00  CreateDecryptor
		$a_01_5 = {43 6f 6e 66 75 73 65 64 42 79 41 74 74 72 69 62 75 74 65 } //00 00  ConfusedByAttribute
	condition:
		any of ($a_*)
 
}