
rule Trojan_BAT_RedLine_MC_MTB{
	meta:
		description = "Trojan:BAT/RedLine.MC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 03 00 00 0a 00 "
		
	strings :
		$a_01_0 = {13 04 12 03 12 00 28 02 00 00 06 74 01 00 00 1b 13 05 11 05 28 04 00 00 0a 13 06 11 04 13 07 28 01 00 00 0a 1f 33 8d 02 00 00 01 25 d0 05 00 00 04 } //01 00 
		$a_01_1 = {43 6f 6e 66 69 67 75 72 61 74 69 6f 6e 46 69 6c 65 53 6f 75 72 63 65 57 61 74 63 68 65 72 } //01 00  ConfigurationFileSourceWatcher
		$a_01_2 = {54 72 61 6e 73 66 6f 72 6d 46 69 6e 61 6c 42 6c 6f 63 6b } //00 00  TransformFinalBlock
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_RedLine_MC_MTB_2{
	meta:
		description = "Trojan:BAT/RedLine.MC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {0b 07 06 72 01 00 00 70 28 90 01 03 0a 72 04 02 00 70 6f 90 01 03 0a 1f 64 73 0e 00 00 0a 1f 10 6f 90 01 03 0a 28 90 01 03 0a 72 46 02 00 70 6f 90 01 03 0a 6f 90 01 03 0a 17 73 11 00 00 0a 0c 08 02 16 02 8e 69 6f 90 01 03 0a 08 6f 90 01 03 0a de 0a 08 2c 06 08 6f 90 01 03 0a dc 07 6f 90 01 03 0a 0d de 14 90 00 } //01 00 
		$a_01_1 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_01_2 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //01 00  MemoryStream
		$a_01_3 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //01 00  CreateDecryptor
		$a_01_4 = {47 65 74 42 79 74 65 73 } //01 00  GetBytes
		$a_01_5 = {54 6f 41 72 72 61 79 } //00 00  ToArray
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_RedLine_MC_MTB_3{
	meta:
		description = "Trojan:BAT/RedLine.MC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1f 00 1f 00 08 00 00 05 00 "
		
	strings :
		$a_01_0 = {5b 00 5e 00 5c 00 75 00 30 00 30 00 32 00 30 00 2d 00 5c 00 75 00 30 00 30 00 37 00 46 00 5d 00 55 00 4e 00 4b 00 4e 00 4f 00 57 00 4e 00 } //05 00  [^\u0020-\u007F]UNKNOWN
		$a_01_1 = {52 00 65 00 6d 00 6f 00 76 00 65 00 67 00 5b 00 40 00 6e 00 61 00 6d 00 65 00 3d 00 5c 00 50 00 61 00 73 00 73 00 77 00 53 00 74 00 72 00 69 00 6e 00 67 00 2e 00 52 00 65 00 6d 00 6f 00 76 00 65 00 6f 00 72 00 64 00 5c 00 } //05 00  Removeg[@name=\PasswString.Removeord\
		$a_01_2 = {76 00 61 00 6c 00 75 00 53 00 74 00 72 00 69 00 6e 00 67 00 2e 00 52 00 65 00 6d 00 6f 00 76 00 65 00 65 00 52 00 4f 00 4f 00 54 00 5c 00 53 00 65 00 63 00 75 00 72 00 69 00 74 00 79 00 43 00 65 00 6e 00 74 00 65 00 72 00 } //05 00  valuString.RemoveeROOT\SecurityCenter
		$a_01_3 = {52 00 4f 00 4f 00 54 00 5c 00 53 00 65 00 63 00 75 00 72 00 69 00 74 00 79 00 43 00 65 00 6e 00 74 00 65 00 72 00 32 00 57 00 65 00 62 00 20 00 44 00 61 00 74 00 61 00 45 00 78 00 74 00 65 00 6e 00 73 00 69 00 6f 00 6e 00 20 00 43 00 6f 00 6f 00 6b 00 69 00 65 00 73 00 } //05 00  ROOT\SecurityCenter2Web DataExtension Cookies
		$a_01_4 = {4e 00 6f 00 72 00 64 00 56 00 70 00 6e 00 2e 00 65 00 78 00 65 00 2a 00 4e 00 6f 00 47 00 65 00 74 00 44 00 69 00 72 00 65 00 63 00 74 00 6f 00 72 00 69 00 65 00 73 00 72 00 64 00 } //02 00  NordVpn.exe*NoGetDirectoriesrd
		$a_01_5 = {4e 00 61 00 6d 00 65 00 53 00 45 00 4c 00 45 00 43 00 54 00 20 00 2a 00 20 00 46 00 52 00 4f 00 4d 00 } //02 00  NameSELECT * FROM
		$a_01_6 = {52 00 65 00 70 00 6c 00 61 00 63 00 65 00 69 00 6e 00 67 00 5b 00 40 00 6e 00 61 00 6d 00 65 00 3d 00 5c 00 55 00 53 00 74 00 72 00 69 00 6e 00 67 00 2e 00 52 00 65 00 70 00 6c 00 61 00 63 00 65 00 73 00 65 00 72 00 6e 00 61 00 6d 00 65 00 } //02 00  Replaceing[@name=\UString.Replacesername
		$a_01_7 = {53 00 74 00 72 00 69 00 6e 00 67 00 2e 00 52 00 65 00 70 00 6c 00 61 00 63 00 65 00 6c 00 75 00 65 00 6d 00 6f 00 7a 00 5f 00 63 00 6f 00 6f 00 6b 00 69 00 65 00 73 00 } //00 00  String.Replaceluemoz_cookies
	condition:
		any of ($a_*)
 
}