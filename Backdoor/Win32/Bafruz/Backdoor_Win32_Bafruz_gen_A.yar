
rule Backdoor_Win32_Bafruz_gen_A{
	meta:
		description = "Backdoor:Win32/Bafruz.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 0c 00 00 "
		
	strings :
		$a_01_0 = {77 5f 64 69 73 74 72 69 62 2e 65 78 65 } //1 w_distrib.exe
		$a_01_1 = {73 79 73 64 72 69 76 65 72 33 32 5f 2e 65 78 65 } //1 sysdriver32_.exe
		$a_01_2 = {69 70 5f 6c 69 73 74 2e 74 78 74 } //1 ip_list.txt
		$a_01_3 = {6b 6e 6f 63 6b 5f 62 61 64 33 2e 70 68 70 3f 76 65 72 3d } //1 knock_bad3.php?ver=
		$a_01_4 = {73 75 70 65 72 63 61 72 73 69 6e 66 6f 2e 6e 65 74 } //1 supercarsinfo.net
		$a_01_5 = {73 79 73 74 65 6d 69 6e 66 6f 67 } //1 systeminfog
		$a_01_6 = {64 64 6f 73 5f 75 64 70 5f 6c 69 73 74 } //1 ddos_udp_list
		$a_01_7 = {64 64 6f 73 5f 68 74 74 70 5f 6c 69 73 74 } //1 ddos_http_list
		$a_03_8 = {6a 50 68 10 27 00 00 6a 01 6a 00 8d ?? ?? 50 [0-0b] b8 ?? ?? ?? ?? e8 } //2
		$a_00_9 = {64 69 73 74 72 69 62 5f 73 65 72 76 2f 69 70 5f 6c 69 73 74 2e 70 68 70 } //1 distrib_serv/ip_list.php
		$a_01_10 = {54 6d 6f 6e 69 74 6f 72 5f 62 74 63 64 } //1 Tmonitor_btcd
		$a_03_11 = {8b 45 08 8b 00 e8 ?? ?? ?? ?? 3d c2 01 00 00 7d ?? 6a 50 68 10 27 00 00 6a 01 6a 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_03_8  & 1)*2+(#a_00_9  & 1)*1+(#a_01_10  & 1)*1+(#a_03_11  & 1)*1) >=4
 
}