
rule Trojan_Linux_MobUn_A{
	meta:
		description = "Trojan:Linux/MobUn.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {5c 00 73 00 72 00 76 00 63 00 65 00 2e 00 6c 00 6e 00 6b 00 } //1 \srvce.lnk
		$a_01_1 = {5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 6d 00 73 00 73 00 65 00 72 00 76 00 69 00 63 00 65 00 2e 00 65 00 78 00 65 00 } //1 \Windows\msservice.exe
		$a_01_2 = {5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 73 00 72 00 76 00 75 00 70 00 64 00 61 00 74 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //1 \Windows\srvupdater.exe
		$a_01_3 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 6d 00 6f 00 62 00 69 00 6c 00 65 00 75 00 6e 00 69 00 74 00 2e 00 72 00 75 00 2f 00 69 00 6e 00 64 00 65 00 78 00 2e 00 70 00 68 00 70 00 3f 00 67 00 65 00 74 00 73 00 74 00 72 00 3d 00 70 00 61 00 72 00 61 00 6d 00 } //1 http://mobileunit.ru/index.php?getstr=param
		$a_01_4 = {5c 73 65 6e 64 73 65 72 76 69 63 65 2e 70 64 62 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}