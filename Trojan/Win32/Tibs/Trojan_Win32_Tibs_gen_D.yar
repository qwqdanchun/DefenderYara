
rule Trojan_Win32_Tibs_gen_D{
	meta:
		description = "Trojan:Win32/Tibs.gen!D,SIGNATURE_TYPE_PEHSTR,0a 00 09 00 07 00 00 03 00 "
		
	strings :
		$a_01_0 = {6c 6f 61 64 65 72 62 62 2e 70 68 70 3f 6c 3d } //02 00  loaderbb.php?l=
		$a_01_1 = {67 73 00 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 } //02 00  獧匀景睴牡履楍牣獯景屴楗摮睯屳畃
		$a_01_2 = {26 61 64 76 3d } //02 00  &adv=
		$a_01_3 = {40 00 83 c6 03 66 89 06 58 83 c6 02 24 ff 50 } //05 00 
		$a_01_4 = {38 31 2e 39 35 2e 31 34 36 2e 32 30 35 } //01 00  81.95.146.205
		$a_01_5 = {47 6c 6f 62 61 6c 55 73 65 72 4f 66 66 6c 69 6e 65 } //01 00  GlobalUserOffline
		$a_01_6 = {41 62 6f 72 74 53 79 73 74 65 6d 53 68 75 74 64 6f 77 6e 41 } //00 00  AbortSystemShutdownA
	condition:
		any of ($a_*)
 
}