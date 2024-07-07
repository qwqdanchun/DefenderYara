
rule Trojan_Win64_AbuseCommMain_EG{
	meta:
		description = "Trojan:Win64/AbuseCommMain.EG,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 41 00 36 00 46 00 41 00 34 00 38 00 35 00 36 00 35 00 30 00 38 00 46 00 32 00 31 00 39 00 38 00 34 00 36 00 38 00 41 00 37 00 46 00 43 00 42 00 34 00 46 00 31 00 39 00 34 00 44 00 37 00 42 00 35 00 32 00 42 00 45 00 36 00 33 00 32 00 33 00 36 00 34 00 44 00 38 00 31 00 43 00 43 00 45 00 36 00 46 00 34 00 44 00 41 00 44 00 36 00 46 00 41 00 42 00 42 00 46 00 33 00 41 00 34 00 39 00 } //1 tox:A6FA4856508F2198468A7FCB4F194D7B52BE632364D81CCE6F4DAD6FABBF3A49
		$a_02_1 = {41 36 46 41 34 38 35 36 35 30 38 46 32 31 39 38 34 36 38 41 37 46 43 42 34 46 31 39 34 44 37 42 35 32 42 45 36 33 32 33 36 34 44 38 31 43 43 45 36 46 34 44 41 44 36 46 41 42 42 46 33 41 34 39 90 01 0c 00 00 00 00 4c 00 00 00 00 00 00 00 90 00 } //1
		$a_02_2 = {41 36 46 41 34 38 35 36 35 30 38 46 32 31 39 38 34 36 38 41 37 46 43 42 34 46 31 39 34 44 37 42 35 32 42 45 36 33 32 33 36 34 44 38 31 43 43 45 36 46 34 44 41 44 36 46 41 42 42 46 33 41 34 39 90 01 0c 4c 00 00 00 90 00 } //1
		$a_00_3 = {5c 74 6f 78 5c 41 36 46 41 34 38 35 36 35 30 38 46 32 31 39 38 34 36 38 41 37 46 43 42 34 46 31 39 34 44 37 42 35 32 42 45 36 33 32 33 36 34 44 38 31 43 43 45 36 46 34 44 41 44 36 46 41 42 42 46 33 41 34 39 2e 68 73 74 72 } //1 \tox\A6FA4856508F2198468A7FCB4F194D7B52BE632364D81CCE6F4DAD6FABBF3A49.hstr
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1) >=1
 
}