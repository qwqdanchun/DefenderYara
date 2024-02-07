
rule Trojan_Win32_Straba_MA_MTB{
	meta:
		description = "Trojan:Win32/Straba.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 07 00 00 03 00 "
		
	strings :
		$a_01_0 = {44 52 43 46 56 54 47 59 2e 44 4c 4c } //03 00  DRCFVTGY.DLL
		$a_01_1 = {52 64 72 66 76 74 4b 68 62 67 } //03 00  RdrfvtKhbg
		$a_01_2 = {4f 6a 6d 6e 54 74 67 62 } //03 00  OjmnTtgb
		$a_01_3 = {52 73 57 73 64 } //01 00  RsWsd
		$a_01_4 = {47 65 74 43 75 72 72 65 6e 74 54 68 72 65 61 64 49 64 } //01 00  GetCurrentThreadId
		$a_01_5 = {47 65 74 54 65 6d 70 50 61 74 68 57 } //01 00  GetTempPathW
		$a_01_6 = {57 61 69 74 46 6f 72 53 69 6e 67 6c 65 4f 62 6a 65 63 74 } //00 00  WaitForSingleObject
	condition:
		any of ($a_*)
 
}