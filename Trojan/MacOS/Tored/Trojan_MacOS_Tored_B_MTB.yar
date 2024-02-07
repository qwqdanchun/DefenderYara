
rule Trojan_MacOS_Tored_B_MTB{
	meta:
		description = "Trojan:MacOS/Tored.B!MTB,SIGNATURE_TYPE_MACHOHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_00_0 = {62 72 40 66 68 2e 74 6e } //01 00  br@fh.tn
		$a_00_1 = {61 76 40 61 76 2e 74 6e } //01 00  av@av.tn
		$a_00_2 = {66 75 63 6b 65 72 40 66 75 63 6b 2e 66 75 } //01 00  fucker@fuck.fu
		$a_00_3 = {73 65 72 40 6a 68 66 64 2e 69 74 } //01 00  ser@jhfd.it
		$a_00_4 = {49 6e 74 72 6f 73 70 65 63 74 69 6f 6e 2e 47 65 6e 65 72 69 63 50 72 69 6d 69 74 69 76 65 54 79 70 65 49 6e 66 6f } //07 00  Introspection.GenericPrimitiveTypeInfo
		$a_00_5 = {49 6e 66 65 63 74 65 64 20 61 6e 64 20 62 6f 74 65 64 20 62 79 20 4f 53 58 2e 52 61 65 64 62 6f 74 2e 42 2b 2b } //05 00  Infected and boted by OSX.Raedbot.B++
		$a_00_6 = {6b 65 79 6c 6f 67 65 72 20 73 74 61 72 74 65 64 } //00 00  keyloger started
		$a_00_7 = {5d 04 00 } //00 85 
	condition:
		any of ($a_*)
 
}