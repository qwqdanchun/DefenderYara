
rule Trojan_Win32_Nando_A_bit{
	meta:
		description = "Trojan:Win32/Nando.A!bit,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 08 00 00 "
		
	strings :
		$a_01_0 = {46 00 42 00 4d 00 53 00 74 00 61 00 6d 00 70 00 00 00 00 00 46 00 42 00 4d 00 65 00 64 00 00 00 46 00 42 00 4d 00 00 00 53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 46 00 42 00 4d 00 53 00 74 00 61 00 6d 00 70 00 00 00 } //1
		$a_01_1 = {70 00 69 00 6e 00 67 00 20 00 31 00 32 00 37 00 2e 00 30 00 2e 00 30 00 2e 00 31 00 20 00 2d 00 6e 00 20 00 31 00 20 00 3e 00 6e 00 75 00 6c 00 20 00 26 00 20 00 2f 00 63 00 20 00 64 00 65 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 73 00 20 00 2f 00 71 00 20 00 25 00 73 00 20 00 26 00 20 00 64 00 65 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 73 00 20 00 2f 00 71 00 20 00 25 00 73 00 20 00 26 00 20 00 64 00 65 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 73 00 20 00 2f 00 71 00 } //1 ping 127.0.0.1 -n 1 >nul & /c del /f /s /q %s & del /f /s /q %s & del /f /s /q
		$a_01_2 = {00 6d 77 7c 76 3e 2a 2c 6c 69 73 6b 2d 64 75 29 60 73 26 65 6b 68 39 30 33 30 3c 2c 6b 69 76 60 2c 7d 76 60 64 77 6d 28 60 64 77 00 } //1 洀籷㹶Ⱚ楬歳搭⥵獠攦桫〹〳ⰼ楫恶紬恶睤⡭摠w
		$a_01_3 = {00 60 7b 78 6a 6b 77 66 7a 28 61 7d 66 00 } //1 怀硻歪晷⡺絡f
		$a_01_4 = {00 6c 66 70 76 68 6a 71 6d 28 61 7d 66 00 } //1 氀灦桶煪⡭絡f
		$a_01_5 = {00 67 62 61 62 71 67 71 67 71 77 60 71 26 63 7c 60 00 } //1 最慢煢照照恷♱籣`
		$a_01_6 = {00 36 35 38 75 61 2b 66 70 63 00 } //1
		$a_01_7 = {5c 44 65 6f 6e 61 6e 5c 52 65 6c 65 61 73 65 5c 44 65 6f 6e 61 6e 2e 70 64 62 } //1 \Deonan\Release\Deonan.pdb
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=6
 
}