
rule PWS_Win32_Yunsip_A{
	meta:
		description = "PWS:Win32/Yunsip.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {5b 00 50 00 72 00 69 00 6e 00 74 00 20 00 53 00 63 00 72 00 65 00 65 00 6e 00 5d 00 } //1 [Print Screen]
		$a_03_1 = {6e 00 37 00 5f 00 32 00 30 00 31 00 30 00 5f 00 25 00 64 00 90 09 12 00 47 00 6c 00 6f 00 62 00 61 00 6c 00 5c 00 57 00 69 00 90 00 } //1
		$a_03_2 = {6e 00 38 00 5f 00 32 00 30 00 31 00 31 00 5f 00 25 00 64 00 90 09 12 00 47 00 6c 00 6f 00 62 00 61 00 6c 00 5c 00 57 00 69 00 90 00 } //1
		$a_01_3 = {3c 00 45 00 6e 00 74 00 65 00 72 00 3e 00 } //1 <Enter>
		$a_01_4 = {5c 00 6c 00 6f 00 67 00 2e 00 73 00 63 00 } //1 \log.sc
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}