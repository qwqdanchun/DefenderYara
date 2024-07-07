
rule Trojan_Win32_Kilim_I{
	meta:
		description = "Trojan:Win32/Kilim.I,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 04 00 00 "
		
	strings :
		$a_01_0 = {33 30 33 30 33 30 37 32 36 31 37 33 36 37 36 35 36 63 36 35 36 62 36 63 36 31 37 33 36 66 37 32 33 30 33 30 33 30 } //10 30303072617367656c656b6c61736f72303030
		$a_01_1 = {32 32 36 33 36 63 36 39 37 30 36 32 36 66 36 31 37 32 36 34 35 32 36 35 36 31 36 34 32 32 32 63 32 30 32 32 36 33 36 63 36 39 37 30 36 32 36 66 36 31 37 32 36 34 35 37 37 32 36 39 37 34 36 35 32 32 32 63 32 30 32 32 36 33 36 66 36 65 37 34 36 35 36 65 37 34 35 33 36 35 37 34 37 34 36 39 } //1 22636c6970626f61726452656164222c2022636c6970626f6172645772697465222c2022636f6e74656e745365747469
		$a_01_2 = {37 34 36 39 36 64 36 35 32 32 33 61 32 30 32 32 33 31 33 33 33 30 33 31 33 38 33 36 33 36 33 38 33 36 33 39 33 35 33 38 33 36 33 38 33 30 33 33 33 38 32 32 32 63 } //1 74696d65223a20223133303138363638363935383638303338222c
		$a_01_3 = {41 70 70 44 61 74 61 25 5c 53 6d 61 72 74 20 50 6c 61 79 65 72 20 49 6e 73 74 61 6c 6c 65 72 2e 65 78 65 } //1 AppData%\Smart Player Installer.exe
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=12
 
}