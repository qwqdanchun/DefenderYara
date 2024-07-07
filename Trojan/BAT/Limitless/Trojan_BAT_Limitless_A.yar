
rule Trojan_BAT_Limitless_A{
	meta:
		description = "Trojan:BAT/Limitless.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {4c 00 69 00 6d 00 69 00 74 00 6c 00 65 00 73 00 73 00 20 00 4c 00 6f 00 67 00 67 00 65 00 72 00 20 00 3a 00 20 00 3a 00 20 00 52 00 65 00 63 00 6f 00 76 00 65 00 72 00 79 00 20 00 52 00 65 00 63 00 6f 00 72 00 64 00 73 00 } //2 Limitless Logger : : Recovery Records
		$a_01_1 = {2f 00 63 00 20 00 72 00 65 00 67 00 20 00 61 00 64 00 64 00 20 00 22 00 48 00 4b 00 43 00 55 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 22 00 20 00 2f 00 66 00 20 00 2f 00 76 00 } //1 /c reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /f /v
		$a_01_2 = {53 00 65 00 6e 00 64 00 69 00 6e 00 67 00 20 00 53 00 6b 00 79 00 70 00 65 00 20 00 4d 00 65 00 73 00 73 00 61 00 67 00 65 00 2e 00 2e 00 2e 00 } //1 Sending Skype Message...
		$a_01_3 = {5b 00 3a 00 3a 00 2d 00 2d 00 20 00 53 00 74 00 65 00 61 00 6d 00 20 00 55 00 73 00 65 00 72 00 6e 00 } //1 [::-- Steam Usern
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}