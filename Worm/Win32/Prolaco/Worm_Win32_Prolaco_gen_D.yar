
rule Worm_Win32_Prolaco_gen_D{
	meta:
		description = "Worm:Win32/Prolaco.gen!D,SIGNATURE_TYPE_PEHSTR_EXT,1f 00 1f 00 05 00 00 0a 00 "
		
	strings :
		$a_10_0 = {4d 2d 53 45 41 52 43 48 20 2a 20 48 54 54 50 2f 31 2e 31 } //0a 00  M-SEARCH * HTTP/1.1
		$a_10_1 = {48 4f 53 54 3a 20 32 33 39 2e 32 35 35 2e 32 35 35 2e 32 35 30 3a 31 39 30 30 } //0a 00  HOST: 239.255.255.250:1900
		$a_02_2 = {6a 40 68 00 30 00 00 ff 70 50 ff 70 34 ff 90 01 02 ff 95 90 01 04 a1 90 01 04 6a 00 ff 70 54 57 ff 70 34 ff 90 01 02 ff 95 90 00 } //01 00 
		$a_09_3 = {8a 45 08 32 04 32 88 04 0a 42 39 da 75 f2 } //01 00 
		$a_08_4 = {66 00 69 00 6c 00 65 00 73 00 2f 00 74 00 65 00 73 00 74 00 2f 00 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 73 00 2e 00 65 00 78 00 65 00 } //00 00  files/test/svchosts.exe
	condition:
		any of ($a_*)
 
}