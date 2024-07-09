
rule Backdoor_BAT_Chopper_C{
	meta:
		description = "Backdoor:BAT/Chopper.C,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {28 15 00 00 0a 28 16 00 00 0a 25 72 ?? ?? ?? ?? 72 ?? ?? ?? ?? 28 ?? ?? ?? ?? 25 72 ?? ?? ?? ?? 72 ?? ?? ?? ?? 28 ?? ?? ?? ?? 25 72 ?? ?? ?? ?? 72 ?? ?? ?? ?? 28 ?? ?? ?? ?? 0a 02 } //1
		$a_01_1 = {41 70 70 5f 57 65 62 5f } //1 App_Web_
		$a_01_2 = {25 00 36 00 35 00 25 00 37 00 36 00 25 00 36 00 31 00 25 00 36 00 63 00 25 00 32 00 38 00 25 00 35 00 32 00 } //1 %65%76%61%6c%28%52
		$a_03_3 = {25 00 37 00 34 00 25 00 35 00 62 00 25 00 32 00 32 00 [0-40] 25 00 32 00 32 00 25 00 35 00 64 00 25 00 32 00 39 00 25 00 33 00 62 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}