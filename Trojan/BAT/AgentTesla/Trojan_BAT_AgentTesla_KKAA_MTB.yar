
rule Trojan_BAT_AgentTesla_KKAA_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.KKAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 07 00 00 02 00 "
		
	strings :
		$a_01_0 = {53 00 45 00 4c 00 45 00 43 00 54 00 20 00 2a 00 20 00 46 00 52 00 4f 00 4d 00 20 00 57 00 69 00 6e 00 33 00 32 00 5f 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 6f 00 72 00 } //02 00  SELECT * FROM Win32_Processor
		$a_01_1 = {57 00 69 00 6e 00 33 00 32 00 5f 00 4e 00 65 00 74 00 77 00 6f 00 72 00 6b 00 41 00 64 00 61 00 70 00 74 00 65 00 72 00 43 00 6f 00 6e 00 66 00 69 00 67 00 75 00 72 00 61 00 74 00 69 00 6f 00 6e 00 } //02 00  Win32_NetworkAdapterConfiguration
		$a_01_2 = {49 00 50 00 45 00 6e 00 61 00 62 00 6c 00 65 00 64 00 } //02 00  IPEnabled
		$a_01_3 = {57 00 69 00 6e 00 33 00 32 00 5f 00 42 00 61 00 73 00 65 00 42 00 6f 00 61 00 72 00 64 00 } //02 00  Win32_BaseBoard
		$a_01_4 = {46 00 6f 00 72 00 6d 00 61 00 74 00 49 00 44 00 3a 00 20 00 7b 00 30 00 7d 00 } //02 00  FormatID: {0}
		$a_01_5 = {56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 3a 00 20 00 30 00 78 00 7b 00 30 00 3a 00 58 00 7d 00 } //02 00  Version: 0x{0:X}
		$a_01_6 = {5c 00 44 00 65 00 76 00 69 00 63 00 65 00 5c 00 4c 00 61 00 6e 00 6d 00 61 00 6e 00 52 00 65 00 64 00 69 00 72 00 65 00 63 00 74 00 6f 00 72 00 5c 00 } //00 00  \Device\LanmanRedirector\
	condition:
		any of ($a_*)
 
}