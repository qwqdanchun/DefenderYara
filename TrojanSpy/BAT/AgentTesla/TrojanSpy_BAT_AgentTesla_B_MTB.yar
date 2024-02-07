
rule TrojanSpy_BAT_AgentTesla_B_MTB{
	meta:
		description = "TrojanSpy:BAT/AgentTesla.B!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 09 00 00 02 00 "
		
	strings :
		$a_03_0 = {02 0f 01 28 90 01 01 00 00 0a 02 7b 90 01 01 00 00 04 58 12 00 28 90 01 01 00 00 0a 1a 59 28 90 01 01 00 00 0a 28 90 01 01 00 00 0a 38 00 00 00 00 00 02 90 00 } //02 00 
		$a_01_1 = {44 61 76 69 73 31 31 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //02 00  Davis11.Properties.Resources.resources
		$a_01_2 = {41 00 65 00 65 00 65 00 65 00 } //02 00  Aeeee
		$a_01_3 = {49 00 73 00 6c 00 65 00 42 00 6f 00 74 00 4c 00 } //02 00  IsleBotL
		$a_01_4 = {49 00 73 00 6c 00 65 00 42 00 6f 00 74 00 52 00 } //02 00  IsleBotR
		$a_01_5 = {49 00 73 00 6c 00 65 00 54 00 6f 00 70 00 4c 00 } //02 00  IsleTopL
		$a_01_6 = {49 00 73 00 6c 00 65 00 54 00 6f 00 70 00 52 00 } //02 00  IsleTopR
		$a_01_7 = {61 52 33 6e 62 66 38 64 51 70 32 66 65 4c 6d 6b 33 31 2e 6c 53 66 67 41 70 61 74 6b 64 78 73 56 63 47 63 72 6b 74 6f 46 64 2e 72 65 73 6f 75 72 63 65 73 } //02 00  aR3nbf8dQp2feLmk31.lSfgApatkdxsVcGcrktoFd.resources
		$a_01_8 = {53 00 59 00 53 00 54 00 45 00 4d 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 53 00 65 00 74 00 5c 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 5c 00 53 00 65 00 73 00 73 00 69 00 6f 00 6e 00 20 00 4d 00 61 00 6e 00 61 00 67 00 65 00 72 00 5c 00 45 00 6e 00 76 00 69 00 72 00 6f 00 6e 00 6d 00 65 00 6e 00 74 00 } //00 00  SYSTEM\CurrentControlSet\Control\Session Manager\Environment
	condition:
		any of ($a_*)
 
}