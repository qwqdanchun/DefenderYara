
rule Trojan_Win32_Stecred_A{
	meta:
		description = "Trojan:Win32/Stecred.A,SIGNATURE_TYPE_PEHSTR,06 00 06 00 09 00 00 "
		
	strings :
		$a_01_0 = {4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 56 00 69 00 72 00 74 00 75 00 61 00 6c 00 50 00 43 00 37 00 55 00 73 00 65 00 72 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 4d 00 61 00 6b 00 65 00 53 00 75 00 72 00 65 00 57 00 65 00 27 00 72 00 65 00 54 00 68 00 65 00 4f 00 6e 00 6c 00 79 00 4f 00 6e 00 65 00 4d 00 75 00 74 00 65 00 78 00 } //1 MicrosoftVirtualPC7UserServiceMakeSureWe'reTheOnlyOneMutex
		$a_01_1 = {5c 00 52 00 45 00 47 00 49 00 53 00 54 00 52 00 59 00 5c 00 4d 00 41 00 43 00 48 00 49 00 4e 00 45 00 5c 00 53 00 59 00 53 00 54 00 45 00 4d 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 53 00 65 00 74 00 5c 00 45 00 6e 00 75 00 6d 00 5c 00 50 00 43 00 49 00 } //1 \REGISTRY\MACHINE\SYSTEM\CurrentControlSet\Enum\PCI
		$a_01_2 = {31 00 2d 00 64 00 72 00 69 00 76 00 65 00 72 00 2d 00 76 00 6d 00 73 00 72 00 76 00 63 00 } //1 1-driver-vmsrvc
		$a_01_3 = {76 00 6d 00 6d 00 65 00 6d 00 63 00 74 00 6c 00 } //1 vmmemctl
		$a_01_4 = {70 00 72 00 6c 00 5f 00 74 00 67 00 } //1 prl_tg
		$a_01_5 = {53 00 45 00 4c 00 45 00 43 00 54 00 20 00 44 00 49 00 53 00 54 00 49 00 4e 00 43 00 54 00 20 00 75 00 72 00 6c 00 20 00 46 00 52 00 4f 00 4d 00 20 00 6d 00 6f 00 7a 00 5f 00 70 00 6c 00 61 00 63 00 65 00 73 00 } //1 SELECT DISTINCT url FROM moz_places
		$a_01_6 = {47 00 6f 00 6f 00 67 00 6c 00 65 00 5c 00 43 00 68 00 72 00 6f 00 6d 00 65 00 5c 00 55 00 73 00 65 00 72 00 20 00 44 00 61 00 74 00 61 00 5c 00 44 00 65 00 66 00 61 00 75 00 6c 00 74 00 5c 00 48 00 69 00 73 00 74 00 6f 00 72 00 79 00 } //1 Google\Chrome\User Data\Default\History
		$a_01_7 = {4d 00 6f 00 7a 00 69 00 6c 00 6c 00 61 00 5c 00 46 00 69 00 72 00 65 00 66 00 6f 00 78 00 5c 00 50 00 72 00 6f 00 66 00 69 00 6c 00 65 00 73 00 5c 00 2a 00 2e 00 2a 00 } //1 Mozilla\Firefox\Profiles\*.*
		$a_01_8 = {69 6e 73 74 61 6c 6c 65 64 5f 73 6f 66 74 77 61 72 65 2e 62 72 6f 77 73 65 72 73 } //1 installed_software.browsers
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=6
 
}