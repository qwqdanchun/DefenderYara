
rule Backdoor_Win32_PcClient_ZG{
	meta:
		description = "Backdoor:Win32/PcClient.ZG,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {5c 73 76 63 68 6f 73 74 2e 65 78 65 90 02 08 44 6f 53 65 72 76 69 63 65 90 02 08 75 70 64 61 74 65 65 76 65 6e 74 90 02 06 25 73 3d 90 02 06 2e 53 59 53 90 02 06 64 72 69 76 65 72 73 5c 90 02 06 2e 62 78 79 90 02 06 2e 44 52 56 90 02 06 2e 64 6c 6c 90 00 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}