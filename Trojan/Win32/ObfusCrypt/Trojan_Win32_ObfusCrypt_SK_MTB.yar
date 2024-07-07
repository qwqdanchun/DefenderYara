
rule Trojan_Win32_ObfusCrypt_SK_MTB{
	meta:
		description = "Trojan:Win32/ObfusCrypt.SK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {83 fe 01 0f 8d 90 02 e0 c7 84 24 90 01 08 c7 84 24 90 01 08 c7 84 24 90 01 08 c7 84 24 90 01 08 c7 84 24 90 01 08 c7 84 24 90 01 08 c7 84 24 90 01 08 c7 84 24 90 01 08 c7 84 24 90 01 08 c7 84 24 90 01 08 c7 84 24 90 01 08 c7 84 24 90 01 08 c7 84 24 90 01 08 c7 84 24 90 00 } //1
		$a_02_1 = {83 fe 01 0f 8d 90 08 00 09 81 84 24 90 01 08 81 ac 24 90 01 08 81 ac 24 90 01 08 81 84 24 90 01 08 81 84 24 90 01 08 81 ac 24 90 01 08 81 84 24 90 01 08 81 ac 24 90 01 08 81 ac 24 90 01 08 81 84 24 90 01 08 81 84 24 90 01 08 81 ac 24 90 01 08 81 84 24 90 01 08 81 ac 24 90 01 08 81 ac 24 90 00 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=2
 
}