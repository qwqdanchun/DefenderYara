
rule Trojan_Win32_AccountDiscovery_A_net{
	meta:
		description = "Trojan:Win32/AccountDiscovery.A!net,SIGNATURE_TYPE_CMDHSTR_EXT,03 00 03 00 0d 00 00 "
		
	strings :
		$a_00_0 = {64 00 6f 00 6d 00 61 00 69 00 6e 00 } //1 domain
		$a_02_1 = {6e 00 65 00 74 00 20 00 90 02 40 75 00 73 00 65 00 72 00 90 00 } //3
		$a_02_2 = {6e 00 65 00 74 00 2e 00 65 00 78 00 65 00 90 02 40 75 00 73 00 65 00 72 00 90 00 } //3
		$a_02_3 = {6e 00 65 00 74 00 31 00 20 00 90 02 40 75 00 73 00 65 00 72 00 90 00 } //3
		$a_02_4 = {6e 00 65 00 74 00 31 00 2e 00 65 00 78 00 65 00 90 02 40 75 00 73 00 65 00 72 00 90 00 } //3
		$a_00_5 = {2f 00 64 00 65 00 6c 00 65 00 74 00 65 00 } //-3 /delete
		$a_00_6 = {2f 00 75 00 73 00 65 00 72 00 } //-3 /user
		$a_00_7 = {2d 00 75 00 73 00 65 00 72 00 } //-3 -user
		$a_00_8 = {2e 00 6e 00 65 00 74 00 } //-3 .net
		$a_00_9 = {5c 00 75 00 73 00 65 00 72 00 } //-3 \user
		$a_00_10 = {63 00 6d 00 64 00 6b 00 65 00 79 00 } //-3 cmdkey
		$a_00_11 = {6e 00 65 00 76 00 65 00 72 00 5f 00 6d 00 61 00 74 00 63 00 68 00 5f 00 74 00 68 00 69 00 73 00 } //-3 never_match_this
		$a_00_12 = {6e 00 65 00 74 00 75 00 73 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //-3 netuser.exe
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*3+(#a_02_2  & 1)*3+(#a_02_3  & 1)*3+(#a_02_4  & 1)*3+(#a_00_5  & 1)*-3+(#a_00_6  & 1)*-3+(#a_00_7  & 1)*-3+(#a_00_8  & 1)*-3+(#a_00_9  & 1)*-3+(#a_00_10  & 1)*-3+(#a_00_11  & 1)*-3+(#a_00_12  & 1)*-3) >=3
 
}