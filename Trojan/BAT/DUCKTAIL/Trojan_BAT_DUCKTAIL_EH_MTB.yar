
rule Trojan_BAT_DUCKTAIL_EH_MTB{
	meta:
		description = "Trojan:BAT/DUCKTAIL.EH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 07 00 00 "
		
	strings :
		$a_01_0 = {e9 82 3c ff e5 65 0e ff e5 65 0e ff e5 65 0e ff e5 65 0e ff e5 65 0e ff e5 65 0d ff e8 6f 1d ff fd ba 8a ff ff c2 95 ff e5 65 0e } //10
		$a_01_1 = {e2 d0 2e 73 b1 f1 13 86 61 82 99 c2 c2 42 3c d0 ac 3f b4 e8 64 9b 04 f0 42 1c 3e 18 b0 d0 f8 09 c3 30 c1 4c ee d9 0b b8 bf 29 05 c0 30 9e 0c 05 } //10
		$a_01_2 = {12 12 d6 ff 02 02 d3 ff 02 02 d3 ff 02 02 d3 ff 02 02 d3 ff 02 02 d3 ff 02 02 d3 ff 02 02 d3 ff 02 02 d3 ff 02 02 d3 ff 02 02 d3 ff 22 22 d9 ff } //10
		$a_01_3 = {ee 0b 02 ba 4b b8 56 45 30 c8 12 20 01 54 c8 13 58 90 07 2b 72 ac 20 ee 2a 82 11 24 1c a2 b0 10 10 64 63 60 51 21 18 c2 25 90 10 89 86 74 f5 31 } //10
		$a_01_4 = {68 69 6a 61 63 6b 4c 6f 63 6b 48 6f 6c 64 65 72 2e 41 63 71 75 69 72 65 64 2e } //1 hijackLockHolder.Acquired.
		$a_01_5 = {43 6f 72 65 68 6f 73 74 2e 53 74 61 74 69 63 5c 73 69 6e 67 6c 65 66 69 6c 65 68 6f 73 74 2e 70 64 62 } //1 Corehost.Static\singlefilehost.pdb
		$a_01_6 = {43 72 65 61 74 65 4d 65 6d 6f 72 79 52 65 73 6f 75 72 63 65 4e 6f 74 69 66 69 63 61 74 69 6f 6e } //1 CreateMemoryResourceNotification
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*10+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=13
 
}
rule Trojan_BAT_DUCKTAIL_EH_MTB_2{
	meta:
		description = "Trojan:BAT/DUCKTAIL.EH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 0d 00 00 "
		
	strings :
		$a_01_0 = {2f 00 7b 00 43 00 59 00 52 00 7d 00 2e 00 74 00 78 00 74 00 } //1 /{CYR}.txt
		$a_01_1 = {2f 00 7b 00 4c 00 4f 00 47 00 7d 00 2e 00 74 00 78 00 74 00 } //1 /{LOG}.txt
		$a_01_2 = {2f 00 7b 00 43 00 46 00 47 00 7d 00 2e 00 74 00 78 00 74 00 } //1 /{CFG}.txt
		$a_01_3 = {2f 00 7b 00 50 00 52 00 53 00 7d 00 2e 00 74 00 78 00 74 00 } //1 /{PRS}.txt
		$a_01_4 = {2f 00 7b 00 53 00 43 00 52 00 7d 00 2e 00 6a 00 70 00 67 00 } //1 /{SCR}.jpg
		$a_01_5 = {2f 00 7b 00 50 00 41 00 57 00 } //1 /{PAW
		$a_01_6 = {2f 00 7b 00 48 00 49 00 59 00 } //1 /{HIY
		$a_01_7 = {2f 00 7b 00 44 00 57 00 4e 00 } //1 /{DWN
		$a_01_8 = {54 65 6c 65 67 72 61 6d 2e 42 6f 74 } //1 Telegram.Bot
		$a_01_9 = {41 65 73 45 6e 63 72 79 70 74 } //1 AesEncrypt
		$a_01_10 = {79 00 69 00 39 00 6c 00 63 00 37 00 5a 00 63 00 35 00 45 00 78 00 4a 00 71 00 4a 00 32 00 36 00 70 00 6b 00 64 00 43 00 46 00 4d 00 30 00 64 00 56 00 56 00 49 00 6f 00 71 00 6e 00 2f 00 4c 00 73 00 34 00 2b 00 33 00 44 00 54 00 7a 00 63 00 36 00 31 00 73 00 3d 00 } //1 yi9lc7Zc5ExJqJ26pkdCFM0dVVIoqn/Ls4+3DTzc61s=
		$a_01_11 = {77 00 50 00 69 00 61 00 38 00 62 00 7a 00 32 00 36 00 57 00 48 00 65 00 33 00 35 00 49 00 54 00 69 00 64 00 68 00 6e 00 72 00 7a 00 55 00 37 00 4c 00 56 00 70 00 70 00 6f 00 76 00 74 00 77 00 4a 00 36 00 6e 00 63 00 59 00 56 00 75 00 61 00 33 00 57 00 4d 00 3d 00 } //1 wPia8bz26WHe35ITidhnrzU7LVppovtwJ6ncYVua3WM=
		$a_01_12 = {62 00 72 00 6f 00 77 00 73 00 65 00 72 00 5f 00 68 00 65 00 61 00 64 00 65 00 72 00 73 00 } //1 browser_headers
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1) >=13
 
}