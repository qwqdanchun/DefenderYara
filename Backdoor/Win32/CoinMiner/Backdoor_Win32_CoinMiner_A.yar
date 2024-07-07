
rule Backdoor_Win32_CoinMiner_A{
	meta:
		description = "Backdoor:Win32/CoinMiner.A,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 19 00 00 "
		
	strings :
		$a_80_0 = {5c 4d 69 63 72 6f 73 6f 66 74 43 6f 72 70 6f 72 61 74 69 6f 6e 5c 57 69 6e 64 6f 77 73 5c 48 65 6c 70 65 72 73 } //\MicrosoftCorporation\Windows\Helpers  1
		$a_80_1 = {5c 4d 69 63 72 6f 73 6f 66 74 43 6f 72 70 6f 72 61 74 69 6f 6e 5c 57 69 6e 64 6f 77 73 5c 53 79 73 74 65 6d 33 32 } //\MicrosoftCorporation\Windows\System32  1
		$a_80_2 = {5c 57 69 6e 64 6f 77 73 41 70 70 43 65 72 74 69 66 69 63 61 74 69 6f 6e } //\WindowsAppCertification  1
		$a_80_3 = {5c 7b 34 46 43 45 45 44 36 43 2d 42 37 44 39 2d 34 30 35 42 2d 41 38 34 34 2d 43 33 44 42 46 34 31 38 42 46 38 37 7d } //\{4FCEED6C-B7D9-405B-A844-C3DBF418BF87}  2
		$a_80_4 = {5c 7b 43 42 32 38 44 39 44 33 2d 36 42 35 44 2d 34 41 46 41 2d 42 41 33 37 2d 42 34 41 46 41 41 42 46 37 30 42 38 7d } //\{CB28D9D3-6B5D-4AFA-BA37-B4AFAABF70B8}  2
		$a_80_5 = {2f 6d 65 74 68 6f 64 2f 62 6c 61 63 6b 6c 69 73 74 } ///method/blacklist  1
		$a_80_6 = {2f 6d 65 74 68 6f 64 2f 63 68 65 63 6b 43 6f 6e 6e 65 63 74 69 6f 6e } ///method/checkConnection  1
		$a_80_7 = {2f 6d 65 74 68 6f 64 2f 63 6f 72 65 73 } ///method/cores  1
		$a_80_8 = {2f 6d 65 74 68 6f 64 2f 64 65 6c 61 79 } ///method/delay  1
		$a_80_9 = {2f 6d 65 74 68 6f 64 2f 69 6e 73 74 61 6c 6c } ///method/install  1
		$a_80_10 = {2f 6d 65 74 68 6f 64 2f 6d 6f 64 75 6c 65 73 } ///method/modules  1
		$a_80_11 = {2f 6d 65 74 68 6f 64 2f 73 65 74 4f 6e 6c 69 6e 65 } ///method/setOnline  1
		$a_80_12 = {2f 6d 65 74 68 6f 64 2f 75 70 64 61 74 65 } ///method/update  1
		$a_80_13 = {26 68 77 69 64 3d } //&hwid=  1
		$a_80_14 = {26 70 6c 61 74 66 6f 72 6d 3d } //&platform=  1
		$a_80_15 = {26 70 72 6f 63 65 73 73 6f 72 3d } //&processor=  1
		$a_80_16 = {26 70 72 6f 66 69 6c 65 3d } //&profile=  1
		$a_80_17 = {26 76 69 64 65 6f 63 61 72 64 3d } //&videocard=  1
		$a_80_18 = {64 65 6c 65 74 65 5f 62 6f 74 } //delete_bot  2
		$a_80_19 = {69 6e 73 74 61 6c 6c 3d 64 6f 6e 65 } //install=done  1
		$a_80_20 = {72 65 73 74 61 72 74 5f 62 6f 74 } //restart_bot  2
		$a_80_21 = {7b 54 48 52 45 41 44 53 7d } //{THREADS}  1
		$a_80_22 = {7b 45 58 45 5f 50 41 54 48 7d } //{EXE_PATH}  1
		$a_80_23 = {59 58 42 70 4c 6d 64 76 63 47 46 75 5a 57 77 75 63 6e 55 3d } //YXBpLmdvcGFuZWwucnU=  2
		$a_80_24 = {63 33 56 6a 59 32 56 7a 63 77 3d 3d } //c3VjY2Vzcw==  2
	condition:
		((#a_80_0  & 1)*1+(#a_80_1  & 1)*1+(#a_80_2  & 1)*1+(#a_80_3  & 1)*2+(#a_80_4  & 1)*2+(#a_80_5  & 1)*1+(#a_80_6  & 1)*1+(#a_80_7  & 1)*1+(#a_80_8  & 1)*1+(#a_80_9  & 1)*1+(#a_80_10  & 1)*1+(#a_80_11  & 1)*1+(#a_80_12  & 1)*1+(#a_80_13  & 1)*1+(#a_80_14  & 1)*1+(#a_80_15  & 1)*1+(#a_80_16  & 1)*1+(#a_80_17  & 1)*1+(#a_80_18  & 1)*2+(#a_80_19  & 1)*1+(#a_80_20  & 1)*2+(#a_80_21  & 1)*1+(#a_80_22  & 1)*1+(#a_80_23  & 1)*2+(#a_80_24  & 1)*2) >=10
 
}