
rule TrojanSpy_Win32_Agent_FL{
	meta:
		description = "TrojanSpy:Win32/Agent.FL,SIGNATURE_TYPE_PEHSTR_EXT,35 00 34 00 0f 00 00 "
		
	strings :
		$a_80_0 = {2d 34 32 61 65 2d 39 39 41 41 2d 41 44 43 32 31 43 43 42 42 45 31 34 7d } //-42ae-99AA-ADC21CCBBE14}  1
		$a_00_1 = {68 74 74 70 3a 2f 2f 6f 6e 6c 69 6e 65 73 65 61 72 63 68 34 6d 65 64 73 2e 63 6f 6d } //1 http://onlinesearch4meds.com
		$a_80_2 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //SOFTWARE\Microsoft\Windows\CurrentVersion\Run  1
		$a_00_3 = {6c 6f 63 61 6c 68 6f 73 74 } //1 localhost
		$a_00_4 = {45 48 4c 4f 20 } //1 EHLO 
		$a_00_5 = {41 55 54 48 20 4c 4f 47 49 4e } //1 AUTH LOGIN
		$a_00_6 = {4d 41 49 4c 20 46 52 4f 4d 3a 3c } //1 MAIL FROM:<
		$a_00_7 = {52 43 50 54 20 54 4f 3a 3c } //1 RCPT TO:<
		$a_00_8 = {44 6e 73 51 75 65 72 79 5f 41 } //1 DnsQuery_A
		$a_00_9 = {44 6e 73 52 65 63 6f 72 64 4c 69 73 74 46 72 65 65 } //1 DnsRecordListFree
		$a_00_10 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 55 72 6c 41 } //1 InternetOpenUrlA
		$a_00_11 = {43 72 65 61 74 65 4d 75 74 65 78 57 } //1 CreateMutexW
		$a_00_12 = {47 65 74 43 6f 6d 70 75 74 65 72 4e 61 6d 65 45 78 41 } //1 GetComputerNameExA
		$a_00_13 = {47 00 6c 00 6f 00 62 00 61 00 6c 00 5c 00 7b 00 32 00 43 00 36 00 45 00 37 00 30 00 41 00 32 00 2d 00 46 00 42 00 30 00 33 00 2d 00 34 00 33 00 36 00 36 00 2d 00 39 00 31 00 32 00 43 00 2d 00 43 00 41 00 35 00 33 00 43 00 43 00 43 00 41 00 33 00 42 00 36 00 30 00 7d 00 } //20 Global\{2C6E70A2-FB03-4366-912C-CA53CCCA3B60}
		$a_02_14 = {56 33 f6 83 7c 24 0c 01 75 90 01 01 68 90 01 02 00 10 6a 01 56 ff 15 60 c0 00 10 3b c6 a3 48 e0 00 10 74 90 01 01 ff 15 78 c0 00 10 3d b7 00 00 00 74 90 00 } //20
	condition:
		((#a_80_0  & 1)*1+(#a_00_1  & 1)*1+(#a_80_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1+(#a_00_10  & 1)*1+(#a_00_11  & 1)*1+(#a_00_12  & 1)*1+(#a_00_13  & 1)*20+(#a_02_14  & 1)*20) >=52
 
}