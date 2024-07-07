
rule TrojanSpy_Win32_SocStealer_C{
	meta:
		description = "TrojanSpy:Win32/SocStealer.C,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 7b 00 36 00 44 00 31 00 38 00 37 00 43 00 43 00 38 00 2d 00 33 00 35 00 42 00 44 00 2d 00 34 00 37 00 46 00 36 00 2d 00 38 00 37 00 36 00 30 00 2d 00 44 00 34 00 30 00 36 00 41 00 41 00 31 00 39 00 32 00 37 00 42 00 31 00 7d 00 } //1 SOFTWARE\{6D187CC8-35BD-47F6-8760-D406AA1927B1}
	condition:
		((#a_01_0  & 1)*1) >=1
 
}
rule TrojanSpy_Win32_SocStealer_C_2{
	meta:
		description = "TrojanSpy:Win32/SocStealer.C,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 7b 00 36 00 44 00 31 00 38 00 37 00 43 00 43 00 38 00 2d 00 33 00 35 00 42 00 44 00 2d 00 34 00 37 00 46 00 36 00 2d 00 38 00 37 00 36 00 30 00 2d 00 44 00 34 00 30 00 36 00 41 00 41 00 31 00 39 00 32 00 37 00 42 00 31 00 7d 00 } //1 SOFTWARE\{6D187CC8-35BD-47F6-8760-D406AA1927B1}
		$a_01_1 = {49 6e 73 74 61 6c 6c 53 76 63 } //1 InstallSvc
		$a_01_2 = {5c 5c 2e 5c 50 68 79 73 69 63 61 6c 44 72 69 76 65 30 00 00 30 30 30 30 30 30 2d 30 30 30 30 30 30 2d 30 30 30 30 30 30 2d 30 30 30 30 30 30 2d 30 30 30 30 30 30 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}