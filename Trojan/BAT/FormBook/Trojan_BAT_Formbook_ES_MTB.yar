
rule Trojan_BAT_Formbook_ES_MTB{
	meta:
		description = "Trojan:BAT/Formbook.ES!MTB,SIGNATURE_TYPE_PEHSTR_EXT,19 00 19 00 0b 00 00 14 00 "
		
	strings :
		$a_81_0 = {24 32 35 33 66 62 35 39 62 2d 37 34 35 65 2d 34 61 32 62 2d 38 62 30 37 2d 39 32 36 33 36 34 32 37 37 66 32 34 } //14 00  $253fb59b-745e-4a2b-8b07-926364277f24
		$a_81_1 = {24 61 31 35 63 35 36 36 33 2d 64 63 35 62 2d 34 66 63 64 2d 61 33 34 37 2d 39 65 37 61 39 63 38 62 65 63 30 35 } //14 00  $a15c5663-dc5b-4fcd-a347-9e7a9c8bec05
		$a_81_2 = {24 64 32 38 34 35 62 38 39 2d 38 33 30 30 2d 34 63 37 34 2d 38 64 63 31 2d 36 31 63 35 66 33 65 32 38 61 33 65 } //01 00  $d2845b89-8300-4c74-8dc1-61c5f3e28a3e
		$a_81_3 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_81_4 = {4c 69 76 69 6e 67 5f 53 74 6f 72 79 2e 52 65 73 6f 75 72 63 65 73 } //01 00  Living_Story.Resources
		$a_81_5 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerBrowsableAttribute
		$a_81_6 = {47 61 6c 6c 65 72 79 55 70 6c 6f 61 64 65 72 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 } //01 00  GalleryUploader.Properties.Resources
		$a_81_7 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //01 00  DebuggerBrowsableState
		$a_81_8 = {46 6f 72 6d 73 46 75 6e 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //01 00  FormsFun.My.Resources
		$a_81_9 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_10 = {41 63 74 69 76 61 74 6f 72 } //00 00  Activator
	condition:
		any of ($a_*)
 
}