
rule Ransom_Win64_FileCoder_RHF_MTB{
	meta:
		description = "Ransom:Win64/FileCoder.RHF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 07 00 00 "
		
	strings :
		$a_01_0 = {56 69 72 74 75 61 6c 50 72 6f 74 73 63 74 } //1 VirtualProtsct
		$a_01_1 = {56 69 72 74 75 61 6c 46 72 65 65 55 6e 6d 61 70 56 69 65 77 4f 66 46 69 6c 65 } //1 VirtualFreeUnmapViewOfFile
		$a_01_2 = {4c 64 72 46 69 6e 64 52 65 73 6f 75 72 63 65 } //1 LdrFindResource
		$a_01_3 = {63 6d 64 20 2f 63 20 70 69 6e 67 20 31 32 37 2e 30 2e 30 2e 31 } //1 cmd /c ping 127.0.0.1
		$a_01_4 = {68 65 72 6f 68 65 72 6f 68 65 72 6f } //1 heroherohero
		$a_03_5 = {2e 64 61 74 61 5f 30 30 90 01 20 2e 64 61 74 61 5f 30 31 90 00 } //1
		$a_03_6 = {50 45 00 00 64 86 10 90 01 11 0b 02 0e 00 00 90 01 01 9f 00 00 90 01 02 00 00 00 00 00 90 01 02 5e 90 00 } //2
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_03_5  & 1)*1+(#a_03_6  & 1)*2) >=8
 
}