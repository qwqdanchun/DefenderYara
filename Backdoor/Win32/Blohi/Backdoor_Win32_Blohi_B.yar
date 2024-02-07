
rule Backdoor_Win32_Blohi_B{
	meta:
		description = "Backdoor:Win32/Blohi.B,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {62 00 6c 00 6f 00 67 00 2e 00 6e 00 61 00 76 00 65 00 72 00 2e 00 63 00 6f 00 6d 00 2f 00 50 00 6f 00 73 00 74 00 56 00 69 00 65 00 77 00 2e 00 6e 00 68 00 6e 00 } //01 00  blog.naver.com/PostView.nhn
		$a_01_1 = {53 00 65 00 6c 00 65 00 63 00 74 00 20 00 2a 00 20 00 66 00 72 00 6f 00 6d 00 20 00 41 00 6e 00 74 00 69 00 56 00 69 00 72 00 75 00 73 00 50 00 72 00 6f 00 64 00 75 00 63 00 74 00 } //01 00  Select * from AntiVirusProduct
		$a_01_2 = {7b 00 52 00 69 00 67 00 68 00 74 00 20 00 43 00 74 00 72 00 6c 00 7d 00 } //02 00  {Right Ctrl}
		$a_01_3 = {73 00 6d 00 3d 00 74 00 61 00 62 00 5f 00 68 00 74 00 79 00 2e 00 74 00 6f 00 70 00 26 00 77 00 68 00 65 00 72 00 65 00 3d 00 6e 00 65 00 78 00 65 00 61 00 72 00 63 00 68 00 26 00 69 00 65 00 3d 00 75 00 74 00 66 00 38 00 26 00 71 00 75 00 65 00 72 00 79 00 3d 00 } //05 00  sm=tab_hty.top&where=nexearch&ie=utf8&query=
		$a_01_4 = {49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 61 00 6c 00 20 00 49 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 22 00 } //00 00  Internetal IExplore"
	condition:
		any of ($a_*)
 
}