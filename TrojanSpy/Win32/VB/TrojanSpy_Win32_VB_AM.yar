
rule TrojanSpy_Win32_VB_AM{
	meta:
		description = "TrojanSpy:Win32/VB.AM,SIGNATURE_TYPE_PEHSTR,12 00 11 00 09 00 00 "
		
	strings :
		$a_01_0 = {47 00 65 00 74 00 20 00 50 00 61 00 73 00 73 00 20 00 46 00 72 00 6f 00 6d 00 20 00 3a 00 } //1 Get Pass From :
		$a_01_1 = {6b 00 61 00 72 00 20 00 6b 00 61 00 72 00 64 00 } //1 kar kard
		$a_01_2 = {54 00 68 00 69 00 73 00 20 00 49 00 73 00 20 00 47 00 61 00 6d 00 65 00 20 00 50 00 6f 00 72 00 74 00 20 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 } //1 This Is Game Port Password
		$a_01_3 = {26 00 52 00 65 00 6d 00 65 00 6d 00 62 00 65 00 72 00 20 00 6d 00 79 00 20 00 49 00 44 00 20 00 26 00 26 00 20 00 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 } //1 &Remember my ID && password
		$a_01_4 = {59 00 21 00 20 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 20 00 3a 00 } //1 Y! Password :
		$a_01_5 = {6e 00 65 00 74 00 20 00 73 00 74 00 6f 00 70 00 } //1 net stop
		$a_01_6 = {59 00 61 00 68 00 6f 00 6f 00 42 00 75 00 64 00 64 00 79 00 4d 00 61 00 69 00 6e 00 } //1 YahooBuddyMain
		$a_01_7 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //10 MSVBVM60.DLL
		$a_01_8 = {5c 00 64 00 72 00 69 00 76 00 65 00 72 00 73 00 5c 00 64 00 69 00 73 00 64 00 6e 00 5c 00 64 00 2e 00 74 00 78 00 74 00 } //1 \drivers\disdn\d.txt
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*10+(#a_01_8  & 1)*1) >=17
 
}