
rule Backdoor_Win32_VB_KN{
	meta:
		description = "Backdoor:Win32/VB.KN,SIGNATURE_TYPE_PEHSTR,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {2a 00 5c 00 41 00 43 00 3a 00 5c 00 44 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 73 00 20 00 61 00 6e 00 64 00 20 00 53 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 5c 00 41 00 64 00 6d 00 69 00 6e 00 69 00 73 00 74 00 72 00 61 00 74 00 6f 00 72 00 5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 49 00 6e 00 64 00 65 00 74 00 65 00 63 00 74 00 61 00 62 00 6c 00 65 00 73 00 20 00 4b 00 72 00 79 00 70 00 74 00 65 00 72 00 5c 00 64 00 65 00 6d 00 6f 00 6e 00 69 00 6f 00 36 00 36 00 36 00 76 00 69 00 70 00 } //01 00  *\AC:\Documents and Settings\Administrator\Desktop\Indetectables Krypter\demonio666vip
		$a_01_1 = {49 00 6e 00 64 00 65 00 74 00 65 00 63 00 74 00 61 00 62 00 6c 00 65 00 73 00 2e 00 76 00 62 00 70 00 } //00 00  Indetectables.vbp
	condition:
		any of ($a_*)
 
}