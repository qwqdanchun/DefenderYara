
rule TrojanDropper_BAT_CryptInject_EKD_MTB{
	meta:
		description = "TrojanDropper:BAT/CryptInject.EKD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 0a 00 00 "
		
	strings :
		$a_02_0 = {13 09 11 09 28 ?? ?? ?? ?? ?? ?? ?? ?? ?? 0c 72 ?? ?? ?? ?? 13 0b 06 28 ?? ?? ?? ?? ?? ?? ?? ?? ?? 72 ?? ?? ?? ?? 11 0b 72 ?? ?? ?? ?? 28 ?? ?? ?? ?? 08 28 ?? ?? ?? ?? 06 28 ?? ?? ?? ?? ?? ?? ?? ?? ?? 72 ?? ?? ?? ?? 11 0b 72 ?? ?? ?? ?? 28 ?? ?? ?? ?? ?? ?? ?? ?? ?? 26 2a } //1
		$a_00_1 = {23 00 53 00 74 00 61 00 72 00 74 00 75 00 70 00 } //1 #Startup
		$a_00_2 = {41 00 64 00 64 00 49 00 74 00 } //1 AddIt
		$a_00_3 = {23 00 70 00 72 00 6b 00 69 00 6c 00 6c 00 } //1 #prkill
		$a_00_4 = {23 00 43 00 4d 00 44 00 6b 00 69 00 6c 00 6c 00 } //1 #CMDkill
		$a_00_5 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 43 00 4d 00 44 00 } //1 DisableCMD
		$a_00_6 = {23 00 74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 } //1 #taskkill
		$a_00_7 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 54 00 61 00 73 00 6b 00 4d 00 67 00 72 00 } //1 DisableTaskMgr
		$a_00_8 = {23 00 72 00 65 00 73 00 74 00 61 00 72 00 74 00 } //1 #restart
		$a_00_9 = {73 00 68 00 75 00 74 00 64 00 6f 00 77 00 6e 00 } //1 shutdown
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1) >=5
 
}