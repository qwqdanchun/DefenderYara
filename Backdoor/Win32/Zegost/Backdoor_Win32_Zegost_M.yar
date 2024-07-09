
rule Backdoor_Win32_Zegost_M{
	meta:
		description = "Backdoor:Win32/Zegost.M,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 0c 00 00 "
		
	strings :
		$a_03_0 = {d5 07 66 c7 85 ?? ?? ff ff 07 00 66 c7 85 ?? ?? ff ff 10 00 66 c7 85 ?? ?? ff ff 14 00 66 c7 85 ?? ?? ff ff 00 00 8d 85 ?? ?? ff ff 50 } //4
		$a_00_1 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 20 4e 54 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 53 76 63 68 6f 73 74 } //1 SOFTWARE\Microsoft\Windows NT\CurrentVersion\Svchost
		$a_00_2 = {53 65 72 76 69 63 65 44 6c 6c } //1 ServiceDll
		$a_00_3 = {5c 50 61 72 61 6d 65 74 65 72 73 } //1 \Parameters
		$a_00_4 = {47 6c 6f 62 61 6c 5c 6b 69 25 58 6c 6c } //1 Global\ki%Xll
		$a_00_5 = {25 53 79 73 74 65 6d 52 6f 6f 74 25 5c 53 79 73 74 65 6d 33 32 5c 73 76 63 68 6f 73 74 2e 65 78 65 20 2d 6b 20 6e 65 74 73 76 63 73 } //1 %SystemRoot%\System32\svchost.exe -k netsvcs
		$a_00_6 = {69 70 72 69 70 00 00 00 6e 77 73 61 50 41 67 45 6e 54 } //2
		$a_00_7 = {25 73 5c 6e 74 25 73 2e 64 6c 6c } //1 %s\nt%s.dll
		$a_00_8 = {41 6e 74 69 76 69 72 75 73 } //1 Antivirus
		$a_01_9 = {53 59 53 54 45 4d 5c 43 75 72 72 65 6e 74 43 6f 6e 74 72 6f 6c 53 65 74 5c 53 65 72 76 69 63 65 73 5c 25 73 00 00 00 00 6e 65 74 73 76 63 73 } //1
		$a_00_10 = {5c 64 72 69 76 65 72 73 5c 4d 73 52 6d 43 74 72 6c 2e 73 79 73 00 00 00 63 63 65 6e 74 65 72 2e 65 78 65 } //2
		$a_00_11 = {5c 5c 2e 5c 6d 73 72 6d 63 74 72 6c 76 69 70 } //1 \\.\msrmctrlvip
	condition:
		((#a_03_0  & 1)*4+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*2+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_01_9  & 1)*1+(#a_00_10  & 1)*2+(#a_00_11  & 1)*1) >=8
 
}