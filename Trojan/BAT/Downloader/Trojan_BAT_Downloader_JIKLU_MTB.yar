
rule Trojan_BAT_Downloader_JIKLU_MTB{
	meta:
		description = "Trojan:BAT/Downloader.JIKLU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 09 00 00 0a 00 "
		
	strings :
		$a_01_0 = {24 64 32 34 64 64 32 38 65 2d 63 63 38 63 2d 34 62 37 63 2d 38 61 31 65 2d 32 33 64 31 34 39 63 35 34 63 66 33 } //01 00  $d24dd28e-cc8c-4b7c-8a1e-23d149c54cf3
		$a_01_1 = {47 65 74 57 69 6e 64 6f 77 73 } //01 00  GetWindows
		$a_01_2 = {49 73 41 53 43 49 49 4c 65 74 74 65 72 } //01 00  IsASCIILetter
		$a_01_3 = {47 65 74 42 69 74 43 6f 75 6e 74 } //01 00  GetBitCount
		$a_01_4 = {49 73 56 61 6c 69 64 42 79 49 72 69 } //01 00  IsValidByIri
		$a_01_5 = {57 72 69 74 65 55 6e 69 63 6f 64 65 53 74 72 69 6e 67 } //01 00  WriteUnicodeString
		$a_01_6 = {52 65 61 64 42 79 74 65 73 } //01 00  ReadBytes
		$a_01_7 = {57 72 69 74 65 42 79 74 65 73 } //01 00  WriteBytes
		$a_01_8 = {53 65 74 57 65 61 6b } //00 00  SetWeak
	condition:
		any of ($a_*)
 
}