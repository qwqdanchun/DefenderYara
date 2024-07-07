
rule Worm_BAT_Autorun_Z{
	meta:
		description = "Worm:BAT/Autorun.Z,SIGNATURE_TYPE_PEHSTR_EXT,05 00 04 00 06 00 00 "
		
	strings :
		$a_00_0 = {73 65 74 66 69 6c 65 3d 90 02 20 2e 65 78 65 } //1
		$a_02_1 = {5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 22 90 02 32 22 25 74 65 6d 70 25 5c 25 66 69 6c 65 25 90 00 } //1
		$a_02_2 = {63 6f 70 79 20 25 74 65 6d 70 25 5c 25 66 69 6c 65 25 20 22 25 25 90 01 01 3a 5c 25 66 69 6c 65 25 90 00 } //1
		$a_02_3 = {61 74 74 72 69 62 20 2b 68 20 22 25 25 90 01 01 3a 5c 41 75 74 6f 52 75 6e 2e 69 6e 66 90 00 } //1
		$a_00_4 = {65 63 68 6f 20 6f 70 65 6e 3d 25 66 69 6c 65 25 } //1 echo open=%file%
		$a_00_5 = {65 63 68 6f 20 73 68 65 6c 6c 65 78 65 63 75 74 3d 25 66 69 6c 65 25 } //1 echo shellexecut=%file%
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_02_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=4
 
}
rule Worm_BAT_Autorun_Z_2{
	meta:
		description = "Worm:BAT/Autorun.Z,SIGNATURE_TYPE_PEHSTR,05 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {2e 00 79 00 6f 00 79 00 6f 00 2e 00 70 00 6c 00 2f 00 61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 69 00 6e 00 66 00 } //2 .yoyo.pl/autorun.inf
		$a_01_1 = {2e 53 6d 61 72 74 49 72 63 34 6e 65 74 } //1 .SmartIrc4net
		$a_01_2 = {47 6f 6c 64 54 72 6f 6a 61 6e } //1 GoldTrojan
		$a_01_3 = {5c 00 53 00 65 00 74 00 75 00 70 00 5c 00 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //1 \Setup\svchost.exe
		$a_01_4 = {5c 00 67 00 61 00 6d 00 6d 00 65 00 73 00 73 00 5c 00 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //1 \gammess\svchost.exe
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}