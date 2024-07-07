
rule Trojan_Win64_Mikey_SIB_MTB{
	meta:
		description = "Trojan:Win64/Mikey.SIB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,20 00 1f 00 05 00 00 "
		
	strings :
		$a_00_0 = {53 65 72 76 69 63 65 4d 61 69 6e } //10 ServiceMain
		$a_00_1 = {73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //10 svchost.exe
		$a_00_2 = {72 00 75 00 6e 00 64 00 6c 00 6c 00 33 00 32 00 2e 00 65 00 78 00 65 00 } //10 rundll32.exe
		$a_03_3 = {45 33 c9 43 8a 3c 11 49 ff c1 4d 3b c8 7d 90 01 01 43 8a 34 11 49 ff c1 eb 90 01 01 41 bc 90 01 04 4d 3b c8 7d 90 01 01 43 8a 2c 11 49 ff c1 eb 90 01 01 bb 90 01 04 44 8a f7 40 80 e7 90 01 01 40 8a c6 c0 e8 90 01 01 40 c0 e7 90 01 01 40 8a ce 40 0a f8 80 e1 90 01 01 40 8a c5 c0 e8 90 01 01 c0 e1 90 01 01 41 c0 ee 90 01 01 0a c8 40 8a c5 24 90 01 01 45 85 e4 74 90 01 01 b1 90 01 01 eb 90 01 01 0f b6 d0 85 db b8 90 01 04 0f 45 d0 41 0f b6 c6 4c 8d 35 90 01 04 0f b6 c9 42 8a 04 30 41 83 c3 04 41 88 45 90 01 01 40 0f b6 c7 49 83 c5 90 01 01 42 8a 04 30 41 88 45 90 01 01 42 8a 0c 31 41 88 4d 90 01 01 0f b6 ca ba 90 01 04 42 8a 0c 31 41 88 4d 90 01 01 4d 3b c8 0f 8c 90 00 } //1
		$a_03_4 = {48 8b f2 4c 8b f9 4d 63 f0 48 8d 2d 90 01 04 44 8b ef 43 0f b6 54 3d 90 01 01 48 8b cd ff 15 90 01 04 43 0f b6 54 3d 90 01 01 48 8b cd 48 8b d8 40 2a dd ff 15 90 01 04 43 0f b6 54 3d 90 01 01 4c 8b e0 48 8b cd 44 2a e5 ff 15 90 01 04 43 0f b6 54 3d 90 01 01 48 8b e8 48 8d 05 90 01 04 48 8b c8 40 2a e8 ff 15 90 01 04 c0 e3 90 01 01 40 8a cd 4c 8b d8 48 8d 05 90 01 04 c0 e1 06 44 2a d8 41 8a c4 49 83 c5 90 01 01 c0 e8 90 01 01 41 0a cb ff c7 0a c3 88 06 48 ff c6 40 80 fd 90 01 01 74 90 01 01 40 c0 ed 90 01 01 41 c0 e4 90 01 01 ff c7 41 0a ec 40 88 2e 48 ff c6 41 80 fb 90 01 01 74 90 01 01 88 0e ff c7 48 ff c6 48 8d 2d 90 01 04 4d 3b 90 01 01 0f 8c 90 00 } //1
	condition:
		((#a_00_0  & 1)*10+(#a_00_1  & 1)*10+(#a_00_2  & 1)*10+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1) >=31
 
}