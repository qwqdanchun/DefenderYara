
rule Trojan_Win32_NSISInject_RPB_MTB{
	meta:
		description = "Trojan:Win32/NSISInject.RPB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {6c 00 69 00 74 00 68 00 6f 00 6e 00 65 00 70 00 68 00 72 00 69 00 61 00 } //01 00  lithonephria
		$a_01_1 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 55 00 6e 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 5c 00 64 00 61 00 63 00 65 00 6c 00 6f 00 6e 00 69 00 6e 00 65 00 } //01 00  Software\Microsoft\Windows\CurrentVersion\Uninstall\dacelonine
		$a_01_2 = {65 00 6e 00 6b 00 65 00 70 00 65 00 6e 00 73 00 69 00 6f 00 6e 00 69 00 73 00 74 00 2e 00 52 00 65 00 70 00 } //01 00  enkepensionist.Rep
		$a_01_3 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 43 00 68 00 6b 00 66 00 69 00 6c 00 65 00 34 00 37 00 5c 00 53 00 69 00 6d 00 75 00 6c 00 65 00 72 00 69 00 6e 00 67 00 65 00 6e 00 5c 00 4c 00 65 00 69 00 73 00 5c 00 4c 00 61 00 6d 00 65 00 6c 00 6c 00 6f 00 73 00 65 00 } //01 00  Software\Chkfile47\Simuleringen\Leis\Lamellose
		$a_01_4 = {43 00 6f 00 6e 00 66 00 65 00 63 00 74 00 6f 00 72 00 79 00 2e 00 44 00 65 00 74 00 } //00 00  Confectory.Det
	condition:
		any of ($a_*)
 
}