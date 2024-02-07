
rule VirTool_BAT_AntiVmc_YF_MTB{
	meta:
		description = "VirTool:BAT/AntiVmc.YF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {5c 00 76 00 6d 00 47 00 75 00 65 00 73 00 74 00 4c 00 69 00 62 00 2e 00 64 00 6c 00 6c 00 } //01 00  \vmGuestLib.dll
		$a_00_1 = {5c 00 76 00 62 00 6f 00 78 00 6d 00 72 00 78 00 6e 00 70 00 2e 00 64 00 6c 00 6c 00 } //01 00  \vboxmrxnp.dll
		$a_00_2 = {53 00 62 00 69 00 65 00 44 00 6c 00 6c 00 2e 00 64 00 6c 00 6c 00 } //01 00  SbieDll.dll
		$a_02_3 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 63 00 20 00 70 00 69 00 6e 00 67 00 20 00 90 02 03 20 00 2d 00 6e 00 20 00 90 02 03 20 00 26 00 20 00 64 00 65 00 6c 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}