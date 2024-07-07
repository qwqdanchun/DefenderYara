
rule Trojan_Win32_OffLoader_SPAK_MTB{
	meta:
		description = "Trojan:Win32/OffLoader.SPAK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 03 00 00 "
		
	strings :
		$a_01_0 = {67 6f 6c 64 2d 70 72 6f 78 79 2e 6e 65 74 2f 6c 69 63 65 6e 73 69 6e 67 2d 61 67 72 65 65 6d 65 6e 74 2e 70 68 70 } //4 gold-proxy.net/licensing-agreement.php
		$a_01_1 = {72 00 65 00 73 00 74 00 61 00 72 00 74 00 20 00 74 00 68 00 65 00 20 00 63 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 20 00 6e 00 6f 00 77 00 } //2 restart the computer now
		$a_01_2 = {59 00 65 00 73 00 2c 00 20 00 49 00 20 00 77 00 6f 00 75 00 6c 00 64 00 20 00 6c 00 69 00 6b 00 65 00 20 00 74 00 6f 00 20 00 76 00 69 00 65 00 77 00 20 00 74 00 68 00 65 00 20 00 52 00 45 00 41 00 44 00 4d 00 45 00 20 00 66 00 69 00 6c 00 65 00 } //1 Yes, I would like to view the README file
	condition:
		((#a_01_0  & 1)*4+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1) >=7
 
}