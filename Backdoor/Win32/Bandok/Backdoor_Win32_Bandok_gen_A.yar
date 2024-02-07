
rule Backdoor_Win32_Bandok_gen_A{
	meta:
		description = "Backdoor:Win32/Bandok.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,37 00 32 00 21 00 00 14 00 "
		
	strings :
		$a_01_0 = {7a 61 73 75 63 6b 73 } //0a 00  zasucks
		$a_01_1 = {62 6e 64 6b 31 33 6d 65 } //0a 00  bndk13me
		$a_01_2 = {70 77 73 32 2e 62 6e 64 6b } //01 00  pws2.bndk
		$a_01_3 = {26 63 6f 6e 74 6f 6d 65 26 } //01 00  &contome&
		$a_01_4 = {26 64 65 6c 64 69 72 26 } //01 00  &deldir&
		$a_01_5 = {26 64 65 6c 66 69 6c 65 26 } //01 00  &delfile&
		$a_01_6 = {26 64 69 72 66 69 6c 65 73 26 } //01 00  &dirfiles&
		$a_01_7 = {26 64 6f 72 65 64 69 62 6f 6f 26 } //01 00  &dorediboo&
		$a_01_8 = {26 64 72 76 73 26 } //01 00  &drvs&
		$a_01_9 = {26 65 78 65 63 26 } //01 00  &exec&
		$a_01_10 = {26 67 65 74 72 65 67 26 } //01 00  &getreg&
		$a_01_11 = {26 67 69 6d 6d 65 6d 69 72 72 6f 72 26 } //01 00  &gimmemirror&
		$a_01_12 = {26 67 69 6d 6d 65 77 69 6e 26 } //01 00  &gimmewin&
		$a_01_13 = {26 68 74 74 70 6f 66 66 26 } //01 00  &httpoff&
		$a_01_14 = {26 68 74 74 70 73 65 72 76 6f 6e 26 } //01 00  &httpservon&
		$a_01_15 = {26 69 74 73 6f 66 66 6b 65 79 26 } //01 00  &itsoffkey&
		$a_01_16 = {26 6d 69 72 73 74 6f 70 26 } //01 00  &mirstop&
		$a_01_17 = {26 6d 6b 64 69 72 26 } //01 00  &mkdir&
		$a_01_18 = {26 6f 66 66 6b 65 79 26 } //01 00  &offkey&
		$a_01_19 = {26 6f 6e 6b 65 79 26 } //01 00  &onkey&
		$a_01_20 = {26 70 6f 73 74 74 68 65 6d 26 } //01 00  &postthem&
		$a_01_21 = {26 72 65 64 69 73 74 6f 70 26 } //01 00  &redistop&
		$a_01_22 = {26 72 65 67 63 6f 6e 26 } //01 00  &regcon&
		$a_01_23 = {26 72 73 68 65 6c 6c 26 } //01 00  &rshell&
		$a_01_24 = {26 73 73 68 65 6c 6c 26 } //01 00  &sshell&
		$a_01_25 = {26 76 69 73 69 74 73 69 74 65 26 } //01 00  &visitsite&
		$a_01_26 = {26 77 69 6e 61 63 74 69 6f 6e 26 } //01 00  &winaction&
		$a_01_27 = {61 72 2e 62 6e 64 6b } //01 00  ar.bndk
		$a_01_28 = {25 73 2f 2f 54 56 2e 62 6e 64 6b } //01 00  %s//TV.bndk
		$a_01_29 = {25 73 2f 2f 69 65 67 2e 62 6e 64 6b } //01 00  %s//ieg.bndk
		$a_01_30 = {52 65 63 6f 72 64 43 61 6d } //01 00  RecordCam
		$a_01_31 = {53 74 6f 70 43 61 6d } //01 00  StopCam
		$a_01_32 = {62 69 74 63 68 63 6e } //00 00  bitchcn
	condition:
		any of ($a_*)
 
}