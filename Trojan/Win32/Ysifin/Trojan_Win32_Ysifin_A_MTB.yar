
rule Trojan_Win32_Ysifin_A_MTB{
	meta:
		description = "Trojan:Win32/Ysifin.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 04 00 00 "
		
	strings :
		$a_01_0 = {53 00 65 00 6c 00 65 00 63 00 74 00 20 00 4e 00 61 00 6d 00 65 00 20 00 66 00 72 00 6f 00 6d 00 20 00 57 00 69 00 6e 00 33 00 32 00 5f 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 20 00 57 00 68 00 65 00 72 00 65 00 20 00 4e 00 61 00 6d 00 65 00 } //2 Select Name from Win32_Process Where Name
		$a_01_1 = {53 00 43 00 48 00 54 00 41 00 53 00 4b 00 53 00 20 00 2f 00 44 00 45 00 4c 00 45 00 54 00 45 00 20 00 2f 00 54 00 4e 00 } //2 SCHTASKS /DELETE /TN
		$a_01_2 = {53 00 45 00 54 00 20 00 73 00 6f 00 6d 00 65 00 4f 00 74 00 68 00 65 00 72 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 3d 00 53 00 6f 00 6d 00 65 00 4f 00 74 00 68 00 65 00 72 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 2e 00 65 00 78 00 65 00 } //2 SET someOtherProgram=SomeOtherProgram.exe
		$a_01_3 = {54 00 41 00 53 00 4b 00 4b 00 49 00 4c 00 4c 00 20 00 2f 00 49 00 4d 00 } //2 TASKKILL /IM
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2) >=8
 
}