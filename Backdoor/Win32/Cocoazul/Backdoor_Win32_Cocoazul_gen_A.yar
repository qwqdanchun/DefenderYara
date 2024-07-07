
rule Backdoor_Win32_Cocoazul_gen_A{
	meta:
		description = "Backdoor:Win32/Cocoazul.gen!A,SIGNATURE_TYPE_PEHSTR,64 00 64 00 15 00 00 "
		
	strings :
		$a_01_0 = {25 30 32 64 2f 25 30 32 64 2f 25 30 34 64 20 25 30 32 64 3a 25 30 32 64 3a 25 30 32 64 } //10 %02d/%02d/%04d %02d:%02d:%02d
		$a_01_1 = {25 31 64 00 5b 4c 5d 00 5b 52 5d 00 5b 4d 5d 00 } //10 ㄥd䱛]剛]䵛]
		$a_01_2 = {0d 0a 4c 6f 67 20 53 74 6f 70 70 65 64 0d 0a } //10
		$a_01_3 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 20 4e 54 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 48 6f 74 66 69 78 5c 51 32 34 36 30 30 39 } //10 SOFTWARE\Microsoft\Windows NT\CurrentVersion\Hotfix\Q246009
		$a_01_4 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 49 6e 74 65 72 6e 65 74 20 41 63 63 6f 75 6e 74 20 4d 61 6e 61 67 65 72 5c 41 63 63 6f 75 6e 74 73 } //10 Software\Microsoft\Internet Account Manager\Accounts
		$a_01_5 = {5c 64 72 69 76 65 72 73 5c 65 74 63 5c 68 6f 73 74 73 } //10 \drivers\etc\hosts
		$a_01_6 = {49 45 3a 50 50 53 00 } //10
		$a_01_7 = {4d 53 4e 00 } //10 卍N
		$a_01_8 = {48 6f 74 6d 61 69 6c 00 } //10 潈浴楡l
		$a_01_9 = {77 77 77 2e 66 2d 73 65 63 75 72 65 2e 63 6f 6d } //1 www.f-secure.com
		$a_01_10 = {77 77 77 2e 6b 61 73 70 65 72 73 6b 79 2e 63 6f 6d } //1 www.kaspersky.com
		$a_01_11 = {77 77 77 2e 73 79 6d 61 6e 74 65 63 2e 63 6f 6d } //1 www.symantec.com
		$a_01_12 = {77 77 77 2e 6d 63 61 66 65 65 2e 63 6f 6d } //1 www.mcafee.com
		$a_01_13 = {44 61 74 61 63 65 6e 74 65 72 20 53 65 72 76 65 72 } //1 Datacenter Server
		$a_01_14 = {53 74 61 6e 64 61 72 64 20 45 64 69 74 69 6f 6e } //1 Standard Edition
		$a_01_15 = {57 65 62 20 45 64 69 74 69 6f 6e } //1 Web Edition
		$a_01_16 = {45 6e 74 65 72 70 72 69 73 65 20 45 64 69 74 69 6f 6e } //1 Enterprise Edition
		$a_01_17 = {48 54 54 50 4d 61 69 6c 20 50 61 73 73 77 6f 72 64 32 00 } //1
		$a_01_18 = {48 54 54 50 4d 61 69 6c 20 55 73 65 72 20 4e 61 6d 65 00 } //1
		$a_01_19 = {50 4f 50 33 20 50 61 73 73 77 6f 72 64 32 00 } //1
		$a_01_20 = {50 4f 50 33 20 55 73 65 72 20 4e 61 6d 65 00 } //1
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*10+(#a_01_4  & 1)*10+(#a_01_5  & 1)*10+(#a_01_6  & 1)*10+(#a_01_7  & 1)*10+(#a_01_8  & 1)*10+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1+(#a_01_15  & 1)*1+(#a_01_16  & 1)*1+(#a_01_17  & 1)*1+(#a_01_18  & 1)*1+(#a_01_19  & 1)*1+(#a_01_20  & 1)*1) >=100
 
}