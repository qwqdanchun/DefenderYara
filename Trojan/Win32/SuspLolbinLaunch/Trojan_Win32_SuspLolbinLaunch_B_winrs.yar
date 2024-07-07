
rule Trojan_Win32_SuspLolbinLaunch_B_winrs{
	meta:
		description = "Trojan:Win32/SuspLolbinLaunch.B!winrs,SIGNATURE_TYPE_CMDHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_00_0 = {77 00 69 00 6e 00 72 00 73 00 2e 00 65 00 78 00 65 00 00 00 } //2
		$a_00_1 = {77 00 69 00 6e 00 72 00 73 00 20 00 } //2 winrs 
		$a_00_2 = {20 00 2f 00 72 00 3a 00 } //1  /r:
		$a_00_3 = {2f 00 72 00 65 00 6d 00 6f 00 74 00 65 00 3a 00 } //1 /remote:
	condition:
		((#a_00_0  & 1)*2+(#a_00_1  & 1)*2+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=3
 
}