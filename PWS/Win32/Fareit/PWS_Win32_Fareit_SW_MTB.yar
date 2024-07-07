
rule PWS_Win32_Fareit_SW_MTB{
	meta:
		description = "PWS:Win32/Fareit.SW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {5a 00 4a 00 32 00 45 00 42 00 37 00 6c 00 43 00 6d 00 35 00 30 00 34 00 50 00 71 00 31 00 62 00 6a 00 4c 00 4d 00 4d 00 37 00 4e 00 78 00 63 00 32 00 4a 00 5a 00 6e 00 37 00 58 00 65 00 38 00 46 00 34 00 51 00 4d 00 41 00 31 00 35 00 38 00 } //1 ZJ2EB7lCm504Pq1bjLMM7Nxc2JZn7Xe8F4QMA158
		$a_01_1 = {42 00 75 00 48 00 37 00 4a 00 75 00 52 00 79 00 30 00 65 00 64 00 58 00 42 00 63 00 61 00 49 00 48 00 30 00 4a 00 6d 00 32 00 72 00 69 00 65 00 52 00 51 00 48 00 75 00 33 00 46 00 6e 00 68 00 39 00 35 00 } //1 BuH7JuRy0edXBcaIH0Jm2rieRQHu3Fnh95
		$a_01_2 = {56 00 61 00 6e 00 57 00 56 00 31 00 39 00 37 00 } //1 VanWV197
		$a_01_3 = {44 00 69 00 44 00 61 00 45 00 53 00 6b 00 5a 00 48 00 6e 00 35 00 62 00 51 00 30 00 6a 00 73 00 32 00 } //1 DiDaESkZHn5bQ0js2
		$a_01_4 = {4e 00 6f 00 38 00 30 00 30 00 67 00 63 00 32 00 74 00 73 00 36 00 5a 00 50 00 35 00 6f 00 51 00 70 00 64 00 46 00 6a 00 6d 00 33 00 38 00 } //1 No800gc2ts6ZP5oQpdFjm38
		$a_01_5 = {48 00 69 00 69 00 41 00 4b 00 72 00 69 00 78 00 6a 00 4b 00 42 00 66 00 46 00 74 00 67 00 33 00 34 00 56 00 37 00 33 00 44 00 52 00 4d 00 59 00 73 00 59 00 54 00 6f 00 33 00 4f 00 48 00 66 00 59 00 4f 00 48 00 75 00 31 00 31 00 32 00 } //1 HiiAKrixjKBfFtg34V73DRMYsYTo3OHfYOHu112
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}