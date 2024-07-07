
rule Trojan_Win32_Agramat_A{
	meta:
		description = "Trojan:Win32/Agramat.A,SIGNATURE_TYPE_PEHSTR,1b 00 1b 00 06 00 00 "
		
	strings :
		$a_01_0 = {59 00 6f 00 75 00 20 00 68 00 61 00 73 00 20 00 62 00 65 00 65 00 6e 00 20 00 69 00 6e 00 66 00 65 00 63 00 74 00 65 00 64 00 20 00 49 00 20 00 72 00 65 00 70 00 65 00 61 00 74 00 20 00 59 00 6f 00 75 00 20 00 68 00 61 00 73 00 20 00 62 00 65 00 65 00 6e 00 20 00 69 00 6e 00 66 00 65 00 63 00 74 00 65 00 64 00 20 00 61 00 6e 00 64 00 20 00 79 00 6f 00 75 00 72 00 20 00 73 00 79 00 73 00 74 00 65 00 6d 00 20 00 66 00 69 00 6c 00 65 00 73 00 20 00 68 00 61 00 73 00 20 00 62 00 65 00 65 00 6e 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 00 73 00 2e 00 20 00 53 00 6f 00 72 00 72 00 79 00 } //10 You has been infected I repeat You has been infected and your system files has been deletes. Sorry
		$a_01_1 = {53 00 41 00 50 00 49 00 2e 00 53 00 70 00 56 00 6f 00 69 00 63 00 65 00 } //10 SAPI.SpVoice
		$a_01_2 = {49 00 20 00 50 00 72 00 6f 00 4d 00 69 00 73 00 65 00 20 00 2e 00 2e 00 2e 00 20 00 49 00 20 00 57 00 69 00 6c 00 6c 00 20 00 4c 00 6f 00 76 00 65 00 20 00 59 00 6f 00 55 00 20 00 41 00 6c 00 57 00 61 00 79 00 53 00 20 00 42 00 45 00 61 00 21 00 } //10 I ProMise ... I Will Love YoU AlWayS BEa!
		$a_01_3 = {3a 00 3a 00 20 00 57 00 69 00 6e 00 33 00 32 00 5c 00 48 00 69 00 72 00 61 00 2e 00 41 00 20 00 2d 00 20 00 65 00 43 00 4f 00 52 00 45 00 5b 00 47 00 45 00 44 00 5a 00 41 00 43 00 5d 00 20 00 2d 00 20 00 49 00 20 00 41 00 6c 00 77 00 41 00 79 00 53 00 20 00 57 00 69 00 6c 00 4c 00 20 00 4c 00 6f 00 56 00 45 00 20 00 59 00 6f 00 55 00 20 00 42 00 65 00 41 00 20 00 3a 00 3a 00 } //10 :: Win32\Hira.A - eCORE[GEDZAC] - I AlwAyS WilL LoVE YoU BeA ::
		$a_01_4 = {5c 00 73 00 68 00 65 00 6c 00 6c 00 5c 00 6f 00 70 00 65 00 6e 00 5c 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 } //1 \shell\open\command
		$a_01_5 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 53 00 68 00 65 00 6c 00 6c 00 20 00 46 00 6f 00 6c 00 64 00 65 00 72 00 73 00 } //1 Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*10+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=27
 
}