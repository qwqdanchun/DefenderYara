
rule TrojanSpy_Win32_Banker_APG{
	meta:
		description = "TrojanSpy:Win32/Banker.APG,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 0a 00 00 "
		
	strings :
		$a_03_0 = {5b 53 45 4d 50 52 45 90 02 01 4f 4e 4c 49 4e 45 5d 90 00 } //1
		$a_03_1 = {5b 4d 4f 55 53 45 90 02 01 44 49 52 45 49 54 4f 5d 90 00 } //1
		$a_01_2 = {30 34 42 52 41 } //1 04BRA
		$a_01_3 = {30 37 53 49 43 4f 4f } //1 07SICOO
		$a_01_4 = {4c 4f 47 53 3d 3e } //1 LOGS=>
		$a_01_5 = {00 47 42 50 4c 55 47 49 4e 00 } //1 䜀偂啌䥇N
		$a_01_6 = {49 45 00 00 46 49 52 45 46 4f 58 2e 45 58 45 } //1
		$a_03_7 = {42 41 49 44 55 90 02 10 41 56 47 90 02 10 41 56 41 53 54 90 00 } //1
		$a_01_8 = {33 d2 e8 64 7b fe ff 66 83 cb 08 33 c0 5a 59 59 } //1
		$a_01_9 = {fe ca 74 10 eb 5c e8 84 c8 ff ff eb 55 e8 a5 c8 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_03_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=5
 
}