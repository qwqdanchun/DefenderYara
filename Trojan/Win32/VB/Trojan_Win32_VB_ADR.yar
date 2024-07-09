
rule Trojan_Win32_VB_ADR{
	meta:
		description = "Trojan:Win32/VB.ADR,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_02_0 = {50 6a 01 6a ff 6a 02 ff 15 ?? ?? ?? ?? 8d 4d ?? ff 15 ?? ?? ?? ?? c7 45 fc ?? 00 00 00 c7 85 ?? fe ff ff ?? ?? ?? ?? c7 85 ?? fe ff ff 08 00 00 00 c7 85 ?? fe ff ff ?? ?? ?? ?? c7 85 ?? fe ff ff 08 00 00 00 8d 8d ?? fe ff ff 51 8b 55 08 83 c2 34 52 } //1
		$a_00_1 = {63 00 6d 00 64 00 20 00 2f 00 63 00 20 00 74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 69 00 6d 00 } //1 cmd /c taskkill /f /im
		$a_00_2 = {43 00 72 00 65 00 61 00 74 00 65 00 4f 00 62 00 6a 00 65 00 63 00 74 00 28 00 22 00 57 00 53 00 63 00 72 00 69 00 70 00 74 00 2e 00 53 00 68 00 65 00 6c 00 6c 00 22 00 29 00 2e 00 52 00 75 00 6e 00 20 00 22 00 63 00 6d 00 64 00 20 00 2f 00 63 00 } //1 CreateObject("WScript.Shell").Run "cmd /c
		$a_00_3 = {67 00 2e 00 63 00 6e 00 2f 00 67 00 2e 00 65 00 78 00 65 00 } //1 g.cn/g.exe
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}