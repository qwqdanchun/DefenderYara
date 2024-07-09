
rule Trojan_Win32_Dridex_NW_MTB{
	meta:
		description = "Trojan:Win32/Dridex.NW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {8b 45 10 39 [0-03] 90 18 8b [0-06] 8b [0-03] 8b [0-03] 35 [0-04] 83 [0-02] 01 ?? 8a [0-02] 88 [0-03] 8a [0-06] 22 [0-06] 88 [0-06] 8b [0-03] 89 [0-02] e8 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}