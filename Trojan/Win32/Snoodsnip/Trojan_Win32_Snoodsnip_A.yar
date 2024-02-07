
rule Trojan_Win32_Snoodsnip_A{
	meta:
		description = "Trojan:Win32/Snoodsnip.A,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 63 00 20 00 6e 00 65 00 74 00 73 00 68 00 20 00 64 00 75 00 6d 00 70 00 20 00 3e 00 20 00 43 00 3a 00 2f 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 2f 00 6c 00 61 00 6c 00 61 00 2e 00 74 00 78 00 74 00 } //01 00  cmd.exe /c netsh dump > C:/WINDOWS/lala.txt
		$a_01_1 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 63 00 20 00 6e 00 65 00 74 00 73 00 68 00 20 00 65 00 78 00 65 00 63 00 20 00 43 00 3a 00 2f 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 2f 00 6c 00 61 00 6c 00 61 00 32 00 2e 00 74 00 78 00 74 00 } //01 00  cmd.exe /c netsh exec C:/WINDOWS/lala2.txt
		$a_01_2 = {73 00 65 00 74 00 20 00 64 00 6e 00 73 00 20 00 6e 00 61 00 6d 00 65 00 3d 00 } //01 00  set dns name=
		$a_01_3 = {73 00 6f 00 75 00 72 00 63 00 65 00 3d 00 73 00 74 00 61 00 74 00 69 00 63 00 20 00 61 00 64 00 64 00 72 00 3d 00 } //01 00  source=static addr=
		$a_01_4 = {72 00 65 00 67 00 69 00 73 00 74 00 65 00 72 00 3d 00 50 00 52 00 49 00 4d 00 41 00 52 00 59 00 } //00 00  register=PRIMARY
	condition:
		any of ($a_*)
 
}