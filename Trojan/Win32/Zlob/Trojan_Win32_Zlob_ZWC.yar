
rule Trojan_Win32_Zlob_ZWC{
	meta:
		description = "Trojan:Win32/Zlob.ZWC,SIGNATURE_TYPE_PEHSTR_EXT,31 00 31 00 0b 00 00 "
		
	strings :
		$a_01_0 = {56 41 43 2e 56 69 64 65 6f 00 } //20 䅖⹃楖敤o
		$a_00_1 = {00 72 65 66 72 2e 64 6c 6c } //20
		$a_00_2 = {25 73 5c 6c 61 25 73 25 64 2e 65 78 65 } //3 %s\la%s%d.exe
		$a_00_3 = {76 63 32 30 78 63 30 30 75 } //3 vc20xc00u
		$a_00_4 = {00 63 68 65 63 6b 00 63 6f 70 79 00 72 75 6e 00 } //3 挀敨正挀灯y畲n
		$a_00_5 = {74 65 72 6d 69 6e 61 74 65 70 72 6f 63 65 73 73 } //1 terminateprocess
		$a_01_6 = {47 65 74 55 73 65 72 4f 62 6a 65 63 74 49 6e 66 6f 72 6d 61 74 69 6f 6e 41 } //1 GetUserObjectInformationA
		$a_01_7 = {47 65 74 50 72 6f 63 65 73 73 57 69 6e 64 6f 77 53 74 61 74 69 6f 6e } //1 GetProcessWindowStation
		$a_00_8 = {67 65 74 6c 61 73 74 61 63 74 69 76 65 70 6f 70 75 70 } //1 getlastactivepopup
		$a_01_9 = {48 74 74 70 4f 70 65 6e 52 65 71 75 65 73 74 } //1 HttpOpenRequest
		$a_00_10 = {69 6e 74 65 72 6e 65 74 63 72 61 63 6b 75 72 6c 61 } //1 internetcrackurla
	condition:
		((#a_01_0  & 1)*20+(#a_00_1  & 1)*20+(#a_00_2  & 1)*3+(#a_00_3  & 1)*3+(#a_00_4  & 1)*3+(#a_00_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_00_8  & 1)*1+(#a_01_9  & 1)*1+(#a_00_10  & 1)*1) >=49
 
}