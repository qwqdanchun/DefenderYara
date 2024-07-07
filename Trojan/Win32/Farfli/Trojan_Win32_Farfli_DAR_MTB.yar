
rule Trojan_Win32_Farfli_DAR_MTB{
	meta:
		description = "Trojan:Win32/Farfli.DAR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {4c 6e 73 43 57 4d 65 49 7a 55 77 56 45 6c 45 59 4e 71 58 51 54 4d 62 67 6e 45 6f 43 48 74 75 54 4e 66 41 74 4f 55 63 61 00 6e 69 44 4a 67 64 4a 7a 46 71 4a 7a 6e 50 64 46 75 57 56 } //1 湌䍳䵗䥥啺噷汅奅煎兘䵔杢䕮䍯瑈呵晎瑁問慣渀䑩杊䩤䙺䩱湺摐畆噗
		$a_01_1 = {59 6b 68 46 79 79 4e 73 4b 56 69 71 58 4f 65 63 43 6c 74 6f 58 00 4d 6e 4b 54 77 64 54 65 70 64 45 76 61 4c 74 6a 4b 4e 00 4c 45 6d 79 76 62 6d 51 50 42 58 4c 63 44 43 75 61 42 63 71 4c } //1 歙䙨祹獎噋煩佘捥汃潴X湍呋摷敔摰癅䱡橴之䰀浅癹浢偑塂捌䍄慵捂䱱
		$a_01_2 = {43 4d 4c 55 77 75 56 6e 62 47 77 71 4b 4b 4d 75 43 56 49 4a 71 6a 6b 45 62 4a 71 72 6d 42 5a 6c 75 42 00 43 66 4c 48 51 46 59 59 79 70 79 63 76 79 73 7a 4e 6e 50 6a 4c 6d 62 56 59 44 51 4d 68 75 65 6e 42 6a 4b 58 4a 53 6d 62 } //1
		$a_01_3 = {73 7a 49 77 45 71 4d 66 42 62 61 72 50 63 66 58 53 45 45 57 53 4d 69 47 00 4c 43 66 78 4c 57 6b 4a 53 73 5a 41 67 6c 52 48 63 6b 42 64 6e 69 62 41 43 4b 67 67 43 44 4d 41 71 6e 65 } //1 穳睉煅晍扂牡捐塦䕓坅䵓䝩䰀晃䱸歗半婳杁剬捈䉫湤扩䍁杋䍧䵄煁敮
		$a_01_4 = {6f 49 6c 6d 50 52 4b 56 43 52 49 71 6a 75 75 54 6a 45 41 76 51 44 73 52 74 6e 6d 59 4f 62 44 54 43 44 6b 6d 70 50 47 44 74 5a 58 55 4c 64 68 73 47 42 53 77 6e 52 46 41 6b 4e 70 70 50 53 4e 72 78 78 63 7a 68 } //1 oIlmPRKVCRIqjuuTjEAvQDsRtnmYObDTCDkmpPGDtZXULdhsGBSwnRFAkNppPSNrxxczh
		$a_01_5 = {33 00 36 00 30 00 53 00 61 00 66 00 65 00 2e 00 65 00 78 00 65 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}