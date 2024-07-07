
rule PWS_Win32_QQpass_A_MTB{
	meta:
		description = "PWS:Win32/QQpass.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_00_0 = {43 6f 6d 65 74 48 69 74 4d 6f 76 65 } //1 CometHitMove
		$a_02_1 = {69 32 2e 74 69 65 74 75 6b 75 2e 63 6f 6d 2f 90 01 10 2e 70 6e 67 90 00 } //1
		$a_00_2 = {4c 65 61 67 75 65 20 6f 66 20 4c 65 67 65 6e 64 73 2e 65 78 65 00 6c 6f 6c 2e 6c 61 75 6e 63 68 65 72 5f 74 65 6e 63 65 6e 74 2e 65 78 65 00 4c 6f 6c 43 6c 69 65 6e 74 2e 65 78 65 } //1
		$a_00_3 = {43 72 61 63 6b 4d 65 } //1 CrackMe
		$a_00_4 = {26 63 61 6c 6c 62 61 63 6b 3d 31 34 31 37 37 39 30 36 34 31 35 32 32 31 34 36 39 37 26 5f 3d } //1 &callback=141779064152214697&_=
		$a_00_5 = {70 61 74 68 2e 69 6e 69 } //1 path.ini
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=6
 
}