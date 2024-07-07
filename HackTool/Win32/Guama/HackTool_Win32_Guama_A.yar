
rule HackTool_Win32_Guama_A{
	meta:
		description = "HackTool:Win32/Guama.A,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {51 00 51 00 3a 00 31 00 32 00 33 00 34 00 35 00 36 00 } //1 QQ:123456
		$a_01_1 = {68 00 61 00 63 00 6b 00 65 00 72 00 20 00 3d 00 20 00 22 00 45 00 3a 00 5c 00 61 00 73 00 70 00 5c 00 68 00 6f 00 73 00 74 00 49 00 6e 00 67 00 5c 00 77 00 77 00 77 00 72 00 6f 00 6f 00 74 00 5c 00 7a 00 62 00 64 00 71 00 5f 00 6e 00 65 00 74 00 5c 00 68 00 74 00 64 00 6f 00 63 00 53 00 5c 00 49 00 6e 00 63 00 } //1 hacker = "E:\asp\hostIng\wwwroot\zbdq_net\htdocS\Inc
		$a_01_2 = {43 00 61 00 6c 00 6c 00 20 00 47 00 65 00 74 00 41 00 6c 00 6c 00 28 00 68 00 61 00 63 00 6b 00 65 00 72 00 29 00 } //1 Call GetAll(hacker)
		$a_01_3 = {67 00 75 00 6d 00 61 00 20 00 3d 00 20 00 22 00 3c 00 69 00 66 00 72 00 61 00 6d 00 65 00 20 00 73 00 72 00 63 00 3d 00 27 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 68 00 61 00 63 00 6b 00 65 00 72 00 2e 00 63 00 6f 00 6d 00 2e 00 63 00 6e 00 27 00 3e 00 3c 00 2f 00 69 00 66 00 72 00 61 00 6d 00 65 00 3e 00 } //1 guma = "<iframe src='http://www.hacker.com.cn'></iframe>
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}