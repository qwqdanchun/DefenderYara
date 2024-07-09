
rule PWS_Win32_Dyzap_J{
	meta:
		description = "PWS:Win32/Dyzap.J,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {81 e3 ff 00 00 00 0f b6 9b ?? ?? ?? ?? 33 14 9d ?? ?? ?? ?? 03 c1 89 16 03 f1 ff 4d f8 75 ?? 4f 83 e8 20 } //1
		$a_00_1 = {c7 06 0e 00 00 00 89 46 04 83 c1 02 0f b6 79 01 0f b6 19 c1 e7 08 0b fb 0f b6 59 ff c1 e7 08 0b fb 0f b6 59 fe c1 e7 08 0b fb 89 3c 90 42 83 c1 04 83 fa 08 } //1
		$a_03_2 = {0f b6 58 0d 0f b6 40 0c c1 e7 08 0b fb c1 e7 08 0b f8 33 79 0c 8b 45 08 83 c1 10 83 7d 0c 00 89 7d f8 0f 85 ?? ?? ?? ?? 8b 18 d1 fb } //1
	condition:
		((#a_03_0  & 1)*1+(#a_00_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}
rule PWS_Win32_Dyzap_J_2{
	meta:
		description = "PWS:Win32/Dyzap.J,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 07 00 00 "
		
	strings :
		$a_03_0 = {81 e3 ff 00 00 00 0f b6 9b ?? ?? ?? ?? 33 14 9d ?? ?? ?? ?? 03 c1 89 16 03 f1 ff 4d f8 75 ?? 4f 83 e8 20 } //5
		$a_01_1 = {25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 } //1 %02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X
		$a_01_2 = {41 55 54 4f 42 41 43 4b 43 4f 4e 4e } //1 AUTOBACKCONN
		$a_01_3 = {73 65 6e 64 20 62 72 6f 77 73 65 72 20 73 6e 61 70 73 68 6f 74 20 66 61 69 6c 65 64 } //1 send browser snapshot failed
		$a_01_4 = {73 65 6e 64 20 73 79 73 74 65 6d 20 69 6e 66 6f 20 66 61 69 6c 65 64 } //1 send system info failed
		$a_00_5 = {73 00 74 00 75 00 6e 00 31 00 2e 00 76 00 6f 00 69 00 63 00 65 00 65 00 63 00 6c 00 69 00 70 00 73 00 65 00 2e 00 6e 00 65 00 74 00 } //1 stun1.voiceeclipse.net
		$a_01_6 = {68 74 74 70 3a 2f 2f 69 63 61 6e 68 61 7a 69 70 2e 63 6f 6d } //1 http://icanhazip.com
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_00_5  & 1)*1+(#a_01_6  & 1)*1) >=10
 
}
rule PWS_Win32_Dyzap_J_3{
	meta:
		description = "PWS:Win32/Dyzap.J,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 } //1 %02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X
		$a_01_1 = {62 6f 74 69 64 00 00 00 62 74 69 64 00 00 00 00 63 63 73 72 00 00 00 00 64 70 73 72 00 00 00 00 62 74 6e 74 00 00 00 00 73 6c 69 70 } //1
		$a_01_2 = {41 55 54 4f 42 41 43 4b 43 4f 4e 4e } //1 AUTOBACKCONN
		$a_01_3 = {73 65 6e 64 20 62 72 6f 77 73 65 72 20 73 6e 61 70 73 68 6f 74 20 66 61 69 6c 65 64 } //1 send browser snapshot failed
		$a_01_4 = {73 65 6e 64 20 73 79 73 74 65 6d 20 69 6e 66 6f 20 66 61 69 6c 65 64 } //1 send system info failed
		$a_00_5 = {32 00 30 00 33 00 2e 00 31 00 38 00 33 00 2e 00 31 00 37 00 32 00 2e 00 31 00 39 00 36 00 3a 00 33 00 34 00 37 00 38 00 } //1 203.183.172.196:3478
		$a_00_6 = {73 00 74 00 75 00 6e 00 31 00 2e 00 76 00 6f 00 69 00 63 00 65 00 65 00 63 00 6c 00 69 00 70 00 73 00 65 00 2e 00 6e 00 65 00 74 00 } //1 stun1.voiceeclipse.net
		$a_01_7 = {68 74 74 70 3a 2f 2f 69 63 61 6e 68 61 7a 69 70 2e 63 6f 6d } //1 http://icanhazip.com
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}