
rule Trojan_BAT_CryptInject_PJ_MTB{
	meta:
		description = "Trojan:BAT/CryptInject.PJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_81_0 = {73 73 73 73 73 73 73 73 73 73 64 73 73 73 73 73 73 73 73 2e 4d 79 } //01 00  ssssssssssdssssssss.My
		$a_81_1 = {64 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 2e 64 6c 6c } //01 00  dffffffffffffffffffff.dll
		$a_81_2 = {64 64 64 64 64 2e 64 6c 6c } //01 00  ddddd.dll
		$a_81_3 = {66 66 66 66 66 66 66 66 2e 64 6c 6c } //01 00  ffffffff.dll
		$a_81_4 = {64 66 64 64 64 64 64 64 64 66 66 2e 64 6c 6c } //01 00  dfdddddddff.dll
		$a_81_5 = {73 73 73 73 73 73 73 73 73 73 64 73 73 73 73 73 73 73 73 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //01 00  ssssssssssdssssssss.Resources.resources
		$a_81_6 = {24 24 6d 65 74 68 6f 64 30 78 36 30 30 30 30 30 37 2d 31 } //00 00  $$method0x6000007-1
	condition:
		any of ($a_*)
 
}