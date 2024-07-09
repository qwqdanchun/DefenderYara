
rule Trojan_Win32_Satacom_RPL_MTB{
	meta:
		description = "Trojan:Win32/Satacom.RPL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8a 4d ff 80 c1 01 88 4d ff 0f be 55 ff 83 fa 40 7d 1a 0f be 45 ff 0f be 88 ?? ?? ?? ?? 8b 55 08 03 55 e4 0f be 02 3b c8 74 02 eb } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}