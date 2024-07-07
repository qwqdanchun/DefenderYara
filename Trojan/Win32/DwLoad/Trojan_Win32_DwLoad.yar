
rule Trojan_Win32_DwLoad{
	meta:
		description = "Trojan:Win32/DwLoad,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {55 00 70 00 64 00 4a 00 6f 00 62 00 } //1 UpdJob
		$a_01_1 = {53 00 74 00 61 00 72 00 74 00 20 00 4d 00 65 00 6e 00 75 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 73 00 5c 00 53 00 74 00 61 00 72 00 74 00 75 00 70 00 } //1 Start Menu\Programs\Startup
		$a_01_2 = {7b 00 41 00 44 00 4d 00 49 00 4e 00 7d 00 } //1 {ADMIN}
		$a_01_3 = {7b 00 47 00 55 00 45 00 53 00 54 00 7d 00 } //1 {GUEST}
		$a_01_4 = {41 00 63 00 74 00 69 00 76 00 65 00 54 00 69 00 6d 00 65 00 42 00 69 00 61 00 73 00 } //1 ActiveTimeBias
		$a_01_5 = {25 00 73 00 5c 00 25 00 73 00 25 00 78 00 25 00 78 00 2e 00 74 00 6d 00 70 00 } //1 %s\%s%x%x.tmp
		$a_01_6 = {53 00 74 00 61 00 72 00 74 00 69 00 6e 00 67 00 20 00 75 00 70 00 67 00 72 00 61 00 64 00 65 00 21 00 } //1 Starting upgrade!
		$a_01_7 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 25 00 53 00 } //1 http://%S
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}