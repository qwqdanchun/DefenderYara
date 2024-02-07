
rule Trojan_BAT_DllInject_NEAA_MTB{
	meta:
		description = "Trojan:BAT/DllInject.NEAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1b 00 1b 00 07 00 00 05 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 73 00 68 00 6f 00 70 00 70 00 79 00 2e 00 67 00 67 00 2f 00 70 00 72 00 6f 00 64 00 75 00 63 00 74 00 2f 00 6c 00 38 00 54 00 49 00 65 00 51 00 44 00 } //05 00  https://shoppy.gg/product/l8TIeQD
		$a_01_1 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 70 00 61 00 73 00 74 00 65 00 62 00 69 00 6e 00 2e 00 63 00 6f 00 6d 00 2f 00 72 00 61 00 77 00 2f 00 58 00 70 00 53 00 6e 00 38 00 79 00 47 00 71 00 } //05 00  https://pastebin.com/raw/XpSn8yGq
		$a_01_2 = {72 00 62 00 6c 00 78 00 65 00 78 00 70 00 6c 00 6f 00 69 00 74 00 73 00 2e 00 63 00 6f 00 6d 00 } //05 00  rblxexploits.com
		$a_01_3 = {46 00 75 00 72 00 6b 00 55 00 6c 00 74 00 72 00 61 00 } //05 00  FurkUltra
		$a_01_4 = {6c 00 75 00 61 00 2e 00 78 00 73 00 68 00 64 00 } //01 00  lua.xshd
		$a_01_5 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //01 00  WriteProcessMemory
		$a_01_6 = {56 69 72 74 75 61 6c 41 6c 6c 6f 63 45 78 } //00 00  VirtualAllocEx
	condition:
		any of ($a_*)
 
}