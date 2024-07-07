
rule Worm_Win32_YahLover_A{
	meta:
		description = "Worm:Win32/YahLover.A,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 09 00 08 00 00 "
		
	strings :
		$a_01_0 = {2f 00 75 00 70 00 64 00 61 00 74 00 65 00 2e 00 74 00 78 00 74 00 } //1 /update.txt
		$a_01_1 = {45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 20 00 50 00 61 00 6e 00 65 00 6c 00 } //1 Explorer\Control Panel
		$a_01_2 = {43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 50 00 6f 00 6c 00 69 00 63 00 69 00 65 00 73 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 } //1 CurrentVersion\Policies\System
		$a_01_3 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 52 00 65 00 67 00 69 00 73 00 74 00 72 00 79 00 54 00 6f 00 6f 00 6c 00 73 00 } //2 DisableRegistryTools
		$a_01_4 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 4d 00 61 00 69 00 6e 00 } //1 Software\Microsoft\Internet Explorer\Main
		$a_01_5 = {53 00 74 00 61 00 72 00 74 00 20 00 50 00 61 00 67 00 65 00 } //1 Start Page
		$a_01_6 = {70 00 61 00 67 00 65 00 72 00 5c 00 56 00 69 00 65 00 77 00 5c 00 59 00 4d 00 53 00 47 00 52 00 } //2 pager\View\YMSGR
		$a_01_7 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 69 00 6d 00 20 00 61 00 } //2 taskkill /im a
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*2+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*2+(#a_01_7  & 1)*2) >=9
 
}