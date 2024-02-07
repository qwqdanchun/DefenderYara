
rule Trojan_Win32_Kutaki_A_MTB{
	meta:
		description = "Trojan:Win32/Kutaki.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,16 00 16 00 0c 00 00 02 00 "
		
	strings :
		$a_01_0 = {53 00 20 00 20 00 75 00 20 00 20 00 72 00 20 00 20 00 65 00 } //02 00  S  u  r  e
		$a_01_1 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 69 00 6d 00 } //02 00  taskkill /im
		$a_01_2 = {61 00 63 00 68 00 69 00 62 00 61 00 74 00 33 00 32 00 31 00 58 00 } //01 00  achibat321X
		$a_01_3 = {53 48 44 6f 63 56 77 43 74 6c 2e 57 65 62 42 72 6f 77 73 65 72 } //02 00  SHDocVwCtl.WebBrowser
		$a_01_4 = {5c 00 73 00 74 00 2e 00 68 00 74 00 6d 00 } //02 00  \st.htm
		$a_01_5 = {5c 00 77 00 69 00 66 00 65 00 } //02 00  \wife
		$a_01_6 = {6e 00 61 00 6d 00 65 00 62 00 72 00 6f 00 } //02 00  namebro
		$a_01_7 = {61 6c 74 61 66 62 68 61 69 } //02 00  altafbhai
		$a_01_8 = {5d 00 65 00 74 00 65 00 6c 00 65 00 44 00 5b 00 } //02 00  ]eteleD[
		$a_01_9 = {68 65 72 6c 69 63 6f 70 74 65 72 } //02 00  herlicopter
		$a_01_10 = {6b 69 6c 6c 65 72 6d 61 6e } //01 00  killerman
		$a_01_11 = {47 65 74 41 73 79 6e 63 4b 65 79 53 74 61 74 65 } //00 00  GetAsyncKeyState
	condition:
		any of ($a_*)
 
}