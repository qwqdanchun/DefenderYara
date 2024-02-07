
rule TrojanDropper_O97M_GraceWire_A_MTB{
	meta:
		description = "TrojanDropper:O97M/GraceWire.A!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {2b 20 22 2e 64 22 20 2b 20 22 6c 6c 22 } //01 00  + ".d" + "ll"
		$a_03_1 = {55 73 65 72 46 6f 72 6d 90 01 01 2e 54 65 78 74 42 6f 78 90 01 01 2e 54 61 67 20 90 01 01 20 22 5c 90 02 20 22 20 2b 20 22 2e 78 6c 73 78 22 90 00 } //01 00 
		$a_01_2 = {4b 69 6c 6c 41 72 72 61 79 20 5a 69 70 46 6f 6c 64 65 72 20 26 20 22 5c 6f 6c 65 22 20 2b 20 22 4f 62 6a 22 20 2b 20 22 65 63 74 2a 2e 62 69 6e 22 } //01 00  KillArray ZipFolder & "\ole" + "Obj" + "ect*.bin"
		$a_01_3 = {2e 49 74 65 6d 28 22 78 6c 5c 65 6d 62 65 64 64 69 6e 67 73 5c 6f 6c 65 4f 62 6a 65 63 74 31 } //01 00  .Item("xl\embeddings\oleObject1
		$a_01_4 = {2e 4e 61 6d 65 73 70 61 63 65 28 5a 69 70 46 6f 6c 64 65 72 29 2e 43 6f 70 79 48 65 72 65 } //00 00  .Namespace(ZipFolder).CopyHere
	condition:
		any of ($a_*)
 
}