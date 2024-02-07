
rule Trojan_BAT_Keylogger_CXFW_MTB{
	meta:
		description = "Trojan:BAT/Keylogger.CXFW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 4b 65 79 6c 6f 67 67 65 72 5c 6f 62 6a 5c 44 65 62 75 67 5c } //01 00  \Keylogger\obj\Debug\
		$a_01_1 = {73 00 79 00 73 00 5f 00 64 00 61 00 74 00 61 00 5f 00 63 00 61 00 70 00 74 00 75 00 72 00 65 00 5f 00 } //01 00  sys_data_capture_
		$a_01_2 = {65 00 63 00 68 00 6f 00 20 00 47 00 61 00 74 00 68 00 65 00 72 00 69 00 6e 00 67 00 20 00 44 00 65 00 62 00 75 00 67 00 67 00 69 00 6e 00 67 00 20 00 49 00 6e 00 66 00 6f 00 72 00 6d 00 61 00 74 00 69 00 6e 00 } //01 00  echo Gathering Debugging Informatin
		$a_01_3 = {65 00 63 00 68 00 6f 00 20 00 43 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 20 00 4e 00 61 00 6d 00 65 00 3a 00 } //01 00  echo Computer Name:
		$a_01_4 = {69 00 70 00 63 00 6f 00 6e 00 66 00 69 00 67 00 20 00 2f 00 61 00 6c 00 6c 00 20 00 3e 00 3e 00 } //01 00  ipconfig /all >>
		$a_01_5 = {64 00 65 00 6c 00 20 00 25 00 74 00 6d 00 70 00 25 00 5c 00 73 00 79 00 73 00 5f 00 64 00 61 00 74 00 61 00 5f 00 63 00 61 00 70 00 74 00 75 00 72 00 65 00 2a 00 } //00 00  del %tmp%\sys_data_capture*
	condition:
		any of ($a_*)
 
}