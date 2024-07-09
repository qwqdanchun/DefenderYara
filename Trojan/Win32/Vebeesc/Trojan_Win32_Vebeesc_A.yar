
rule Trojan_Win32_Vebeesc_A{
	meta:
		description = "Trojan:Win32/Vebeesc.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 "
		
	strings :
		$a_00_0 = {63 00 6d 00 64 00 20 00 2f 00 63 00 20 00 74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 69 00 6d 00 20 00 } //1 cmd /c taskkill /f /im 
		$a_00_1 = {63 00 3a 00 5c 00 64 00 6f 00 77 00 6e 00 } //1 c:\down
		$a_01_2 = {6d 6f 64 4d 61 63 00 } //1
		$a_00_3 = {00 00 61 00 74 00 20 00 30 00 30 00 3a 00 30 00 35 00 00 00 } //1
		$a_00_4 = {43 00 72 00 65 00 61 00 74 00 65 00 4f 00 62 00 6a 00 65 00 63 00 74 00 28 00 22 00 57 00 53 00 63 00 72 00 69 00 70 00 74 00 2e 00 53 00 68 00 65 00 6c 00 6c 00 22 00 29 00 2e 00 52 00 75 00 6e 00 20 00 22 00 63 00 6d 00 64 00 20 00 2f 00 63 00 20 00 } //1 CreateObject("WScript.Shell").Run "cmd /c 
		$a_02_5 = {c7 45 fc 17 00 00 00 c7 85 c8 fe ff ff ?? ?? ?? 00 c7 85 c0 fe ff ff 08 00 00 00 c7 85 b8 fe ff ff ?? ?? ?? 00 c7 85 b0 fe ff ff 08 00 00 00 8d 95 c0 fe ff ff 52 8d 45 b0 50 8d 8d 60 ff ff ff 51 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_01_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_02_5  & 1)*1) >=5
 
}