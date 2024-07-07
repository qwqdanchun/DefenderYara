
rule Trojan_BAT_AgentTesla_SBR_MSR{
	meta:
		description = "Trojan:BAT/AgentTesla.SBR!MSR,SIGNATURE_TYPE_PEHSTR_EXT,13 00 13 00 13 00 00 "
		
	strings :
		$a_01_0 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 35 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 30 00 7d 00 } //1 {11111-22222-50001-00000}
		$a_01_1 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 31 00 30 00 30 00 30 00 39 00 2d 00 31 00 31 00 31 00 31 00 32 00 7d 00 } //1 {11111-22222-10009-11112}
		$a_01_2 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 32 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 31 00 7d 00 } //1 {11111-22222-20001-00001}
		$a_01_3 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 32 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 32 00 7d 00 } //1 {11111-22222-20001-00002}
		$a_01_4 = {33 00 32 00 2e 00 64 00 6c 00 6c 00 } //1 32.dll
		$a_01_5 = {66 00 69 00 6c 00 65 00 3a 00 2f 00 2f 00 2f 00 } //1 file:///
		$a_01_6 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 33 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 31 00 7d 00 } //1 {11111-22222-30001-00001}
		$a_01_7 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 33 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 32 00 7d 00 } //1 {11111-22222-30001-00002}
		$a_01_8 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 34 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 31 00 7d 00 } //1 {11111-22222-40001-00001}
		$a_01_9 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 34 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 32 00 7d 00 } //1 {11111-22222-40001-00002}
		$a_01_10 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 35 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 31 00 7d 00 } //1 {11111-22222-50001-00001}
		$a_01_11 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 35 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 32 00 7d 00 } //1 {11111-22222-50001-00002}
		$a_01_12 = {47 00 65 00 74 00 44 00 65 00 6c 00 65 00 67 00 61 00 74 00 65 00 46 00 6f 00 72 00 46 00 75 00 6e 00 63 00 74 00 69 00 6f 00 6e 00 50 00 6f 00 69 00 6e 00 74 00 65 00 72 00 } //1 GetDelegateForFunctionPointer
		$a_01_13 = {47 65 74 48 61 73 68 43 6f 64 65 } //1 GetHashCode
		$a_01_14 = {53 6f 61 70 4e 61 6d 65 2e 64 6c 6c } //1 SoapName.dll
		$a_01_15 = {53 6f 61 70 4e 61 6d 65 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //1 SoapName.My.Resources
		$a_01_16 = {67 65 74 5f 55 6e 69 63 6f 64 } //1 get_Unicod
		$a_01_17 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //1 DebuggerHiddenAttribute
		$a_01_18 = {61 52 33 6e 62 66 38 64 51 70 32 66 65 4c 6d 6b 33 31 2e 6c 53 66 67 41 70 61 74 6b 64 78 73 56 63 47 63 72 6b 74 6f 46 64 2e 72 65 73 6f 75 72 63 65 73 } //1 aR3nbf8dQp2feLmk31.lSfgApatkdxsVcGcrktoFd.resources
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1+(#a_01_15  & 1)*1+(#a_01_16  & 1)*1+(#a_01_17  & 1)*1+(#a_01_18  & 1)*1) >=19
 
}