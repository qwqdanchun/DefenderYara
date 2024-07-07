
rule Trojan_Win32_RvRat_A_MTB{
	meta:
		description = "Trojan:Win32/RvRat.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {52 00 65 00 76 00 43 00 6f 00 64 00 65 00 2d 00 } //1 RevCode-
		$a_01_1 = {26 00 74 00 61 00 73 00 6b 00 5f 00 69 00 64 00 3d 00 } //1 &task_id=
		$a_01_2 = {47 00 6f 00 74 00 6f 00 20 00 44 00 65 00 6c 00 66 00 69 00 6c 00 65 00 } //1 Goto Delfile
		$a_01_3 = {3a 00 44 00 65 00 6c 00 66 00 69 00 6c 00 65 00 } //1 :Delfile
		$a_01_4 = {5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //1 \Software\Microsoft\Windows\CurrentVersion\Run
		$a_01_5 = {72 00 65 00 76 00 63 00 6f 00 64 00 65 00 73 00 74 00 61 00 6d 00 70 00 35 00 39 00 32 00 } //1 revcodestamp592
		$a_01_6 = {73 00 65 00 6e 00 64 00 5f 00 73 00 63 00 72 00 65 00 65 00 6e 00 73 00 74 00 72 00 65 00 61 00 6d 00 5f 00 73 00 74 00 61 00 72 00 74 00 } //1 send_screenstream_start
		$a_01_7 = {73 00 65 00 6e 00 64 00 5f 00 6b 00 65 00 79 00 6c 00 6f 00 67 00 5f 00 73 00 74 00 72 00 65 00 61 00 6d 00 5f 00 64 00 61 00 74 00 61 00 } //1 send_keylog_stream_data
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}