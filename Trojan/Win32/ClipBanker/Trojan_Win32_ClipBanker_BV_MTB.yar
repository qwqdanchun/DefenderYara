
rule Trojan_Win32_ClipBanker_BV_MTB{
	meta:
		description = "Trojan:Win32/ClipBanker.BV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 07 00 00 "
		
	strings :
		$a_01_0 = {62 63 31 7c 5b 31 33 5d 29 5b 61 2d 7a 41 2d 48 4a 2d 4e 50 2d 5a 30 2d 39 5d 7b 32 35 2c 33 39 7d } //2 bc1|[13])[a-zA-HJ-NP-Z0-9]{25,39}
		$a_01_1 = {30 78 5b 61 2d 66 41 2d 46 30 2d 39 5d 7b 34 30 2c 34 32 7d } //2 0x[a-fA-F0-9]{40,42}
		$a_01_2 = {54 5b 41 2d 5a 61 2d 7a 31 2d 39 5d 7b 33 33 7d } //2 T[A-Za-z1-9]{33}
		$a_01_3 = {44 7c 39 29 5b 35 2d 39 41 2d 48 4a 2d 4e 50 2d 55 5d 5b 31 2d 39 41 2d 48 4a 2d 4e 50 2d 5a 61 2d 6b 6d 2d 7a 5d 7b 33 32 7d } //2 D|9)[5-9A-HJ-NP-U][1-9A-HJ-NP-Za-km-z]{32}
		$a_01_4 = {3a 2f 2f 61 70 69 2e 74 65 6c 65 67 72 61 6d 2e 6f 72 67 2f 62 6f 74 } //2 ://api.telegram.org/bot
		$a_01_5 = {2f 73 65 6e 64 4d 65 73 73 61 67 65 3f 63 68 61 74 5f 69 64 3d } //2 /sendMessage?chat_id=
		$a_01_6 = {5c 00 5c 00 2e 00 5c 00 50 00 68 00 79 00 73 00 69 00 63 00 61 00 6c 00 44 00 72 00 69 00 76 00 65 00 30 00 } //2 \\.\PhysicalDrive0
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2+(#a_01_6  & 1)*2) >=14
 
}