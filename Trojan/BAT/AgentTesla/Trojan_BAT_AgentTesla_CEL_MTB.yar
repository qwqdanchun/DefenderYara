
rule Trojan_BAT_AgentTesla_CEL_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.CEL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_00_0 = {e5 ae a2 e4 b8 8d e5 8a b3 39 54 56 71 51 41 41 4d 41 41 41 41 45 41 41 41 41 2f 2f 38 41 41 4c } //01 00 
		$a_00_1 = {a2 e4 b8 8d e5 8a b3 39 67 41 41 41 41 41 34 66 75 67 34 41 74 41 6e 4e 49 62 67 42 54 4d 30 68 } //01 00 
		$a_81_2 = {50 61 63 6b 61 67 65 44 6f 77 6e 6c 6f 61 64 73 } //01 00  PackageDownloads
		$a_81_3 = {47 65 74 4d 61 6e 69 66 65 73 74 52 65 73 6f 75 72 63 65 53 74 72 65 61 6d } //01 00  GetManifestResourceStream
		$a_81_4 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_81_5 = {47 65 74 45 78 65 63 75 74 69 6e 67 41 73 73 65 6d 62 6c 79 } //01 00  GetExecutingAssembly
		$a_81_6 = {47 65 74 53 74 72 69 6e 67 } //00 00  GetString
	condition:
		any of ($a_*)
 
}