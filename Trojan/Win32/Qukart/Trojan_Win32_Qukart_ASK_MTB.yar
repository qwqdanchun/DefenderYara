
rule Trojan_Win32_Qukart_ASK_MTB{
	meta:
		description = "Trojan:Win32/Qukart.ASK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 0e 00 00 01 00 "
		
	strings :
		$a_01_0 = {55 69 74 5a 49 7a 48 61 } //01 00  UitZIzHa
		$a_01_1 = {69 75 45 42 56 6a 70 6f 43 } //01 00  iuEBVjpoC
		$a_01_2 = {4b 46 45 47 5a 43 75 4a } //01 00  KFEGZCuJ
		$a_01_3 = {6b 4c 73 62 6f 75 70 6f 77 } //01 00  kLsboupow
		$a_01_4 = {52 58 56 7a 67 77 51 44 78 } //01 00  RXVzgwQDx
		$a_01_5 = {56 48 73 4f 50 4e 62 6e } //01 00  VHsOPNbn
		$a_01_6 = {76 53 70 54 44 66 62 74 4e 6d } //01 00  vSpTDfbtNm
		$a_01_7 = {4c 64 4b 44 42 4b 69 61 } //01 00  LdKDBKia
		$a_01_8 = {43 46 73 6f 42 4d 59 70 } //01 00  CFsoBMYp
		$a_01_9 = {4d 45 67 4e 68 4d 64 53 } //01 00  MEgNhMdS
		$a_01_10 = {75 50 6a 6b 41 63 73 68 } //01 00  uPjkAcsh
		$a_01_11 = {46 74 50 7a 77 4f 53 79 } //01 00  FtPzwOSy
		$a_01_12 = {47 43 6f 57 68 59 66 67 } //01 00  GCoWhYfg
		$a_01_13 = {54 48 78 72 45 68 49 61 } //00 00  THxrEhIa
	condition:
		any of ($a_*)
 
}