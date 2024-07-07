
rule TrojanSpy_BAT_Dordty_AA_MTB{
	meta:
		description = "TrojanSpy:BAT/Dordty.AA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_00_0 = {4f 78 79 67 65 6e 49 6e 6a 65 63 74 6f 72 } //1 OxygenInjector
		$a_00_1 = {5c 00 69 00 6e 00 6a 00 65 00 63 00 74 00 27 00 } //1 \inject'
		$a_00_2 = {70 00 72 00 6f 00 63 00 65 00 73 00 73 00 2e 00 65 00 6e 00 76 00 2e 00 61 00 6e 00 61 00 72 00 63 00 68 00 79 00 48 00 6f 00 6f 00 6b 00 20 00 3d 00 20 00 27 00 } //1 process.env.anarchyHook = '
		$a_00_3 = {5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 53 00 74 00 61 00 72 00 74 00 20 00 4d 00 65 00 6e 00 75 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 73 00 5c 00 44 00 69 00 73 00 63 00 6f 00 72 00 64 00 20 00 49 00 6e 00 63 00 5c 00 44 00 69 00 73 00 63 00 6f 00 72 00 64 00 2e 00 6c 00 6e 00 6b 00 } //1 \Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord.lnk
		$a_00_4 = {41 00 6e 00 61 00 72 00 63 00 68 00 79 00 47 00 72 00 61 00 62 00 62 00 65 00 72 00 } //1 AnarchyGrabber
		$a_02_5 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 90 02 10 64 00 69 00 73 00 63 00 6f 00 72 00 64 00 61 00 70 00 70 00 2e 00 90 02 10 2f 00 90 00 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_02_5  & 1)*1) >=6
 
}