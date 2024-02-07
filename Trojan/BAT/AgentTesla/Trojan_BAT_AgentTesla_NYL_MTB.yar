
rule Trojan_BAT_AgentTesla_NYL_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NYL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 07 00 00 0a 00 "
		
	strings :
		$a_01_0 = {24 61 34 37 66 61 31 35 65 2d 65 39 39 37 2d 34 65 39 36 2d 39 33 32 39 2d 38 62 63 65 61 34 38 65 63 33 37 38 } //0a 00  $a47fa15e-e997-4e96-9329-8bcea48ec378
		$a_01_1 = {24 39 38 65 63 37 61 66 39 2d 62 66 61 64 2d 34 66 61 37 2d 61 62 39 62 2d 34 65 61 63 35 31 30 32 63 39 66 33 } //01 00  $98ec7af9-bfad-4fa7-ab9b-4eac5102c9f3
		$a_01_2 = {47 65 74 4f 62 6a 65 63 74 } //01 00  GetObject
		$a_01_3 = {47 5a 69 70 53 74 72 65 61 6d } //01 00  GZipStream
		$a_01_4 = {43 6f 6d 70 72 65 73 73 69 6f 6e 4d 6f 64 65 } //01 00  CompressionMode
		$a_01_5 = {47 65 74 54 79 70 65 73 } //01 00  GetTypes
		$a_01_6 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //00 00  DebuggerNonUserCodeAttribute
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_NYL_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.NYL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {05 00 00 73 02 00 00 43 0c 00 00 09 00 00 00 01 00 00 00 02 00 00 00 73 00 00 00 0d 00 00 00 1b 03 00 00 13 06 } //01 00 
		$a_01_1 = {57 f5 a2 ff 09 1f 00 00 00 fa 25 33 00 16 00 00 02 00 00 00 02 01 00 00 22 00 00 00 7a 03 00 00 82 0b 00 00 f2 } //01 00 
		$a_01_2 = {91 32 e9 87 8d e5 88 b6 e5 bc 95 e5 af bc e5 99 a8 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //01 00 
		$a_01_3 = {24 66 35 33 33 65 65 37 35 2d 63 64 34 61 2d 34 35 35 65 2d 38 39 39 36 2d 32 63 65 35 36 35 38 38 35 64 32 63 } //01 00  $f533ee75-cd4a-455e-8996-2ce565885d2c
		$a_01_4 = {43 6f 6e 66 75 73 65 72 45 78 20 76 31 } //00 00  ConfuserEx v1
	condition:
		any of ($a_*)
 
}