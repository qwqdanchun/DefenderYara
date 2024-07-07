
rule Trojan_BAT_Spynoon_FCAA_MTB{
	meta:
		description = "Trojan:BAT/Spynoon.FCAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {34 00 44 00 5a 00 35 00 41 00 5a 00 39 00 51 00 51 00 33 00 7b 00 51 00 51 00 51 00 34 00 7b 00 51 00 51 00 30 00 5a 00 46 00 46 00 5a 00 46 00 46 00 7b 00 51 00 30 00 5a 00 42 00 38 00 7b 00 51 00 51 00 51 00 51 00 51 00 } //1 4DZ5AZ9QQ3{QQQ4{QQ0ZFFZFF{Q0ZB8{QQQQQ
		$a_01_1 = {5a 00 38 00 30 00 4e 00 61 00 76 00 42 00 61 00 72 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //1 Z80NavBarControl.Resources
		$a_01_2 = {31 00 32 00 7b 00 51 00 30 00 5a 00 32 00 42 00 5a 00 31 00 33 00 7b 00 44 00 5a 00 31 00 36 00 5a 00 31 00 33 00 7b 00 45 00 5a 00 31 00 43 00 5a 00 31 00 33 00 5a 00 31 00 38 00 5a 00 33 00 38 00 } //1 12{Q0Z2BZ13{DZ16Z13{EZ1CZ13Z18Z38
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}