
rule Trojan_BAT_Zema_GD_MTB{
	meta:
		description = "Trojan:BAT/Zema.GD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 08 00 00 0a 00 "
		
	strings :
		$a_01_0 = {24 00 50 00 45 00 45 00 50 00 5f 00 48 00 55 00 4d 00 41 00 4e 00 5f 00 50 00 45 00 52 00 53 00 4f 00 4e 00 5f 00 41 00 56 00 41 00 54 00 41 00 52 00 5f 00 49 00 43 00 4f 00 4e 00 5f 00 31 00 39 00 } //0a 00  $PEEP_HUMAN_PERSON_AVATAR_ICON_19
		$a_01_1 = {4d 00 41 00 53 00 4b 00 5f 00 46 00 41 00 43 00 45 00 5f 00 45 00 58 00 50 00 52 00 45 00 53 00 53 00 49 00 4f 00 4e 00 5f 00 49 00 43 00 4f 00 4e 00 5f 00 31 00 39 00 32 00 35 00 31 00 35 00 } //01 00  MASK_FACE_EXPRESSION_ICON_192515
		$a_81_2 = {73 64 76 73 64 73 64 76 64 73 } //01 00  sdvsdsdvds
		$a_81_3 = {76 73 64 76 73 64 76 64 73 76 73 64 } //01 00  vsdvsdvdsvsd
		$a_81_4 = {76 73 64 76 73 64 76 73 64 } //01 00  vsdvsdvsd
		$a_81_5 = {76 73 64 76 73 64 73 76 } //01 00  vsdvsdsv
		$a_81_6 = {52 65 73 6f 6c 76 65 53 69 67 6e 61 74 75 72 65 } //01 00  ResolveSignature
		$a_81_7 = {67 65 74 5f 43 75 72 72 65 6e 74 44 6f 6d 61 69 6e } //00 00  get_CurrentDomain
	condition:
		any of ($a_*)
 
}