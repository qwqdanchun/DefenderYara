
rule TrojanClicker_Win32_Wimg_A{
	meta:
		description = "TrojanClicker:Win32/Wimg.A,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 04 00 00 "
		
	strings :
		$a_01_0 = {63 00 6e 00 7c 00 64 00 79 00 67 00 6f 00 25 00 6e 00 73 00 6e 00 77 00 7a 00 7a 00 69 00 79 00 64 00 7c 00 78 00 6e 00 79 00 25 00 6e 00 73 00 6e 00 77 00 66 00 6a 00 73 00 } //4 cn|dygo%nsnwzziyd|xny%nsnwfjs
		$a_01_1 = {77 00 62 00 6e 00 73 00 7b 00 67 00 64 00 79 00 6e 00 25 00 6e 00 73 00 6e 00 77 00 } //3 wbns{gdyn%nsnw
		$a_01_2 = {7c 00 69 00 65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 2e 00 65 00 78 00 65 00 7c 00 74 00 68 00 65 00 77 00 6f 00 72 00 6c 00 64 00 2e 00 65 00 78 00 65 00 7c 00 71 00 71 00 62 00 72 00 6f 00 77 00 73 00 65 00 72 00 2e 00 65 00 78 00 65 00 7c 00 6d 00 61 00 78 00 74 00 68 00 6f 00 6e 00 2e 00 65 00 78 00 65 00 7c 00 67 00 72 00 65 00 65 00 } //3 |iexplore.exe|theworld.exe|qqbrowser.exe|maxthon.exe|gree
		$a_01_3 = {2e 00 68 00 74 00 6d 00 6c 00 27 00 20 00 74 00 61 00 72 00 67 00 65 00 74 00 3d 00 27 00 5f 00 73 00 65 00 6c 00 66 00 27 00 3e 00 3c 00 64 00 69 00 76 00 20 00 69 00 64 00 3d 00 27 00 67 00 67 00 67 00 27 00 3e 00 3c 00 2f 00 64 00 69 00 76 00 3e 00 3c 00 2f 00 61 00 3e 00 20 00 } //5 .html' target='_self'><div id='ggg'></div></a> 
	condition:
		((#a_01_0  & 1)*4+(#a_01_1  & 1)*3+(#a_01_2  & 1)*3+(#a_01_3  & 1)*5) >=15
 
}