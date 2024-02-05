
rule HackTool_Linux_SetCapabilityInTmp_C{
	meta:
		description = "HackTool:Linux/SetCapabilityInTmp.C,SIGNATURE_TYPE_CMDHSTR_EXT,16 00 16 00 02 00 00 16 00 "
		
	strings :
		$a_02_0 = {73 00 65 00 74 00 63 00 61 00 70 00 20 00 63 00 61 00 70 00 5f 00 64 00 61 00 63 00 5f 00 6f 00 76 00 65 00 72 00 72 00 69 00 64 00 65 00 2b 00 65 00 90 02 01 70 00 20 00 2f 00 74 00 6d 00 70 00 2f 00 90 00 } //16 00 
		$a_02_1 = {73 00 65 00 74 00 63 00 61 00 70 00 20 00 63 00 61 00 70 00 5f 00 64 00 61 00 63 00 5f 00 6f 00 76 00 65 00 72 00 72 00 69 00 64 00 65 00 3d 00 65 00 90 02 01 70 00 20 00 2f 00 74 00 6d 00 70 00 2f 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}